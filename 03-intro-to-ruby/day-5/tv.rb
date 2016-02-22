class TV
  attr_reader :volume
  attr_accessor :channel

  # set some vars to use throughout the app
  def initialize
    @pre_muted_volume = 1
    @muted = false
    @volume = 1
    @channel = 3
    @max_channel = 100
  end

  # increases the volume
  def volume_up
    unmute
    @volume += 1 unless @volume == 32
  end

  # decreases the volume
  def volume_down
    unmute
    @volume -= 1 unless @volume == 1
  end  

  # sets volume to 0 if muted
  def mute
    unless @muted
      @pre_muted_volume = @volume
      @volume = 0
      @muted = true
    end
  end

  # sets volume back to original setting
  def unmute
    if @muted
      @volume = @pre_muted_volume
      @muted = false
    end
  end

  # goes up one channel
  def channel_up
    # checks if volume is greater than 1
    @channel += 1 unless @channel == @max_channel
  end

  # goes down one channel
  def channel_down
    # checks if volume is less than 1
    @channel -= 1 unless @channel == 1
  end

  # sets the current channel directly
  def channel=(channel)
    # checks if channel is greater than @max_channel
    #   or less than 1
    unless channel > @max_channel || channel < 1
      @channel = channel
    end
  end
end