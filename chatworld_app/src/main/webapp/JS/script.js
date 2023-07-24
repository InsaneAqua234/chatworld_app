var datetime = new Date().toLocaleTimeString().replace(/:\d+ /, ' ');

document.getElementById("time").textContent = datetime;