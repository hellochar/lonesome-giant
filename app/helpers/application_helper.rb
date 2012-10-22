module ApplicationHelper

  def soundcloud_client
    @@soundcloud_client ||= Soundcloud.new(:client_id => 'lonesomegiant')
  end

  def soundcloud_tracks
    soundcloud_client.get('/tracks', :limit => 5, :order => 'hotness')
  end

end
