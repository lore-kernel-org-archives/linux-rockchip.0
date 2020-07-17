From: Tzung-Bi Shih <tzungbi@google.com>
Subject: Re: Speaker pops with max98357a on rk3399-gru-kevin since v5.7
Date: Fri, 17 Jul 2020 10:27:51 +0800
Message-ID: <CA+Px+wU1S1EqtW-yZH9z9aCF3ggSriBqy73SRYy8q61x0GkdQQ@mail.gmail.com>
References: <f2ca985f-7dbd-847a-1875-dd0e1044ef02@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <f2ca985f-7dbd-847a-1875-dd0e1044ef02@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, ALSA development <alsa-devel@alsa-project.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jul 16, 2020 at 7:49 PM Alper Nebi Yasak
<alpernebiyasak@gmail.com> wrote:
> I have been getting "pop" sounds from the speaker on my rk3399-gru-kevin
> for a while, and bisected it to 128f825aeab7 ("ASoC: max98357a: move
> control of SD_MODE to DAPM"), but looks like the pops were somewhat
> expected:

I am not convinced the pop comes from 128f825aeab7.

> As of v5.8-rc5 I'm still getting the speaker pops. More info below, but
> not all pops coincide with "set sdmode" messages, and vice versa.
> Reverting that commit stops the pops, but then the "Speakers Switch" can
> no longer mute the speakers.

(I don't have a rk3399-gru-kevin so I got another test machine with MAX98357A.)
(I was testing with and without an audio server.)
Observations:
- I can hear the pop either with or without 128f825aeab7 (with and
without sdmode-delay).
- The pop noise is not always.  Higher probability after stopping
playback than before starting.
- As you also mentioned, the pop noise is not directly related to
SD_MODE transition.
