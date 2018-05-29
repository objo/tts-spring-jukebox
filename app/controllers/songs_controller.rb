class SongsController < ApplicationController

  def list
    @songs = [
      ['Wild Side', 295],
      ['Honesty', 302],
      ['Youth Gone Wild', 328],
      ['November Rain', 306],
      ['Coming Home', 345],
    ]
  end

end
