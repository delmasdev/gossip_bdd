<!DOCTYPE html>
<html>
<body>
  <div>
  <h1>App ruby Gossip BDD - THP</h1>
    <h2>Delmas</h2>
      <h3>Ruby version: 2.5.1</h3>
   <h2>How to install and test?</h2>
      <h4>Download or clone the repository</h4>
        <code>$ git clone https://github.com/delmasdev/gossip_bdd.git</code>
      <h4>Run the command bundle install to install the necessary gems</h4>
        <code>$ bundle install</code>
      <h4>Update your database structure with the migration command.The database in not uploaded to github, so it is necessary tu run the differents migrations:</h4>
        <code>$ rails db:migrate</code>
      <h4>Add data into your database with the seed file:</h4>
        <code>$ rails db:seed</code>
      <h4>Open the rails consol with rails consol command and check if datas have been created by using the following command:</h4>
        <code>$ rails c</code>
      <h4>Use Table Print Gem with "tp"</h4>
        <code>tp User.all</code><br>
        <code>tp Gosssip.all</code><br>
        <code>tp Tag.all</code><br>
        <code>tp City.all</code><br>
        <code>tp Comment.all</code><br>
        <code>tp PrivateMessage.all</code><br>
        <code>tp GossipTag.all</code><br>
      </div>
      <div>
        <h2>Database structure</h2>
        <p>5 tables:</p>
        <ul>
          <li>users</li>
          <li>gosssips</li>
          <li>tags</li>
          <li>cities</li>
          <li>comments</li>
          <li>private_messages</li>
          <li>gossip_tags</li>
        </ul>
     </div>
</body>
</html>
