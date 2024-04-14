import React from 'react'

export default function Ledger({ trips }) {
  return (
    <div>
     {trips.map(trip => {
      return <div key={trip.id}>
        <p>Company: {trip.company}</p>
        <p>Job Number: {trip.job_number}</p>
        <p>Miles: {trip.miles}</p>
        <p>Start Point: {trip.start_point}</p>
        <p>End Point: {trip.end_point}</p>
      </div>
     })} 
    </div>
  )
}
