import React, { useState, useEffect, useCallback } from 'react';
import axios from 'axios';
import moment from 'moment';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';

function App() {
  const [currentTime, setCurrentTime] = useState('');
  const [joke, setJoke] = useState('Loading...');

  const fetchJoke = useCallback(async () => {
    try {
      const response = await axios.get('https://official-joke-api.appspot.com/jokes/programming/random');
      setJoke(`${response.data[0].setup} - ${response.data[0].punchline}`);
    } catch (error) {
      setJoke('Failed to load joke. Check your internet connection!');
    }
  }, []);

  useEffect(() => {
    const timer = setInterval(() => {
      setCurrentTime(moment().format('MMMM Do YYYY, h:mm:ss a'));
    }, 1000);

    fetchJoke();

    return () => clearInterval(timer);
  }, [fetchJoke]);

  const handleJokeClick = () => {
    fetchJoke();
  };

  return (
    <div className="App">
      <header className="App-header">
        <h1 className="display-4 mb-4">🚀 Build Tools Workshop</h1>
        <p className="lead">Welcome to learning about build tools!</p>
        
        <div className="row">
          <div className="col-md-6">
            <div className="info-section">
              <h2>⏰ Current Time</h2>
              <p className="time-display">{currentTime}</p>
            </div>
          </div>
          
          <div className="col-md-6">
            <div className="info-section">
              <h2>😄 Programming Joke</h2>
              <p className="joke-text">{joke}</p>
              <button className="btn btn-primary btn-lg" onClick={handleJokeClick}>
                Get New Joke
              </button>
            </div>
          </div>
        </div>
      </header>
    </div>
  );
}

export default App;
