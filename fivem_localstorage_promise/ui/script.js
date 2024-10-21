const resource = GetParentResourceName();

window.addEventListener('message', (event) => {
    if (event.data.type === 'save') {
        // console.log("Recieved data about " + event.data.item + " Trying to save");

        localStorage.setItem(event.data.item, event.data.data);
    } else if (event.data.type === 'get') {
        // console.log("Trying to send data about " + event.data.item);
        let value = localStorage.getItem(event.data.item);

        $.post(`http://${resource}/localStorageData`, JSON.stringify({
                value: value
            })
        );
    } else if (event.data.type === 'res') {
        localStorage.removeItem(event.data.item);
    }
});