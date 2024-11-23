import { SongService } from './song.service';
import { Controller, Get } from '@nestjs/common';

@Controller()
export class SongController {
  constructor(private readonly songService: SongService) {}

  @Get('list/songs')
  getSongs(): string {
    return this.songService.getSong();

  }

}
