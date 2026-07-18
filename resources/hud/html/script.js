window.addEventListener('message', function(event) {
    let data = event.data;
    if (data.type === 'updateHealth') {
        let healthPercent = (data.value / 200) * 100;
        document.getElementById('healthValue').innerText = Math.round(healthPercent) + '%';
        document.getElementById('healthBar').style.width = healthPercent + '%';
    } else if (data.type === 'updateHunger') {
        document.getElementById('hungerValue').innerText = Math.round(data.value) + '%';
        document.getElementById('hungerBar').style.width = data.value + '%';
    } else if (data.type === 'updateThirst') {
        document.getElementById('thirstValue').innerText = Math.round(data.value) + '%';
        document.getElementById('thirstBar').style.width = data.value + '%';
    }
});