import 'isomorphic-fetch';
import fileSystem from 'fs';
import bleacon from 'bleacon';

function buildPOST(params) {
	const statusUpdate = {
		"train_status": {
			"rpi_id": parseInt(process.argv[2]),
			...params,
		}
	}
	console.log(statusUpdate);
	return statusUpdate;
}

function api(params) {
	const url = 'http://knowit.filip0.com/train_statuses'
	const trainStatus = JSON.stringify(buildPOST(params));
	return fetch(url, {
		method: 'POST',
		mode: 'cors',
		redirect: 'follow',
		headers: new Headers({
			'Content-Type': 'application/json'
		}),
		body: trainStatus
	}).then((response) => (
		response.json()
	)).then((response) => (
		console.log(response)
	));
}

bleacon.on('discover', function (bleacon) {
	api(bleacon);
});

bleacon.startScanning(/*uuid,major, minor*/)
