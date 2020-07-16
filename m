From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Subject: Speaker pops with max98357a on rk3399-gru-kevin since v5.7
Date: Thu, 16 Jul 2020 14:49:29 +0300
Message-ID: <f2ca985f-7dbd-847a-1875-dd0e1044ef02@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Tzung-Bi Shih <tzungbi@google.com>, Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, Alper Nebi Yasak <alpernebiyasak@gmail.com>, alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

I have been getting "pop" sounds from the speaker on my rk3399-gru-kevin
for a while, and bisected it to 128f825aeab7 ("ASoC: max98357a: move
control of SD_MODE to DAPM"), but looks like the pops were somewhat
expected:

On 12 Feb 2020 13:55:15 +0800, Tzung-Bi Shih wrote [1]:
> Possible drawback: may generate pop noise when BCLK=on but LRCLK=off.
> As the datasheet[2] mentioned:
> > Do not remove LRCLK while BCLK is present.
> > Removing LRCLK while BCLK is present can cause unexpected output behavior
> > including a large DC output voltage.

[1] https://lore.kernel.org/alsa-devel/20200212055517.122728-1-tzungbi@google.com/

As of v5.8-rc5 I'm still getting the speaker pops. More info below, but
not all pops coincide with "set sdmode" messages, and vice versa.
Reverting that commit stops the pops, but then the "Speakers Switch" can
no longer mute the speakers.

I don't really know much about these things, could anyone have a look at
it? I'll try to read relevant documentation and code to make sense of it,
but wanted to send an email in case there is an immediately obvious
solution (besides reverting) and maybe just nobody had the time to
implement it yet.

Thanks in advance.

---

I've experimented a bit on a Debian userspace (with #define DEBUG 1
to get sdmode messages), here's what happens without PulseAudio:
- When playback starts, speaker pops with "set sdmode to 1".
- During playback, toggling "Speakers Switch" sets sdmode to 0/1 and
  mutes/unmutes speakers without any pops.
- Pausing/resuming playback (like seeking on a media player) make pops
  without changing sdmode. Also pops when playback ends (e.g. when
  "speaker-test -l 1" quits).
- A few seconds after playback ends, speaker pops for the last time with
  "set sdmode to 0".
- Within that few seconds, toggling "Speakers Switch" sets sdmode to 0/1
  and makes a pop each time.

It's mostly the same with PulseAudio but:
- Pause/resume during playback doesn't make any pops.
- The penultimate pop happens a few seconds after playback stops, when
  PA says it's suspending the max98357a device (no sdmode changes).
- The final pop comes a few seconds after that (still with "set sdmode
  to 0").

Even without any playback it makes several pops during boot when e.g.
PulseAudio starts/stops running in the display manager or in the user
session.
