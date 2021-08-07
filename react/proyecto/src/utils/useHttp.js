import {useEffect, useState} from "react";
import axios from "axios";


const useGet = ({url, params = {}, initialState = []}) => {
    const [data, setData] = useState(initialState);
    const [error, setError] = useState(false);
    
    useEffect(() => {
        const get = async() => {
            try {
                const { data : productos } = await axios.get(url);
                setData(productos);
            }
            catch (error) {
                setError(true);
            }
        }
        get();
    }, [url]);
    return [data, error];
}

const usePost = async (url, obj) => {
    const [error, setError] = useState(false);
    const [data, setData] = useState({});
        try {
            setData(await axios.post(url, obj))
            }
            catch (err) {
                setError(true);
            }
    
    return [data, error]
}


export {useGet, usePost};