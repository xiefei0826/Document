rs.initiate( {
   _id : "rs0",
   members: [
      { _id: 0, host: "cluster-mongo1:27017", },
      { _id: 1, host: "cluster-mongo2:27017" },
      { _id: 2, host: "cluster-mongo3:27017" }
   ]
})