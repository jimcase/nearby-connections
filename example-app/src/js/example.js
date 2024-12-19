import { NearbyConnections } from 'nearby-connections';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    NearbyConnections.echo({ value: inputValue })
}
