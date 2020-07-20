From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Subject: Re: Speaker pops with max98357a on rk3399-gru-kevin since v5.7
Date: Tue, 21 Jul 2020 01:40:14 +0300
Message-ID: <846feea6-e2b6-3a0e-b05f-d70e898f9ea5@gmail.com>
References: <f2ca985f-7dbd-847a-1875-dd0e1044ef02@gmail.com>
 <CA+Px+wU1S1EqtW-yZH9z9aCF3ggSriBqy73SRYy8q61x0GkdQQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CA+Px+wU1S1EqtW-yZH9z9aCF3ggSriBqy73SRYy8q61x0GkdQQ@mail.gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Tzung-Bi Shih <tzungbi@google.com>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, ALSA development <alsa-devel@alsa-project.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 17/07/2020 05:27, Tzung-Bi Shih wrote:
> I am not convinced the pop comes from 128f825aeab7.

Maybe some pre-existing defect in rk3399_gru_sound got exposed by
128f825aeab7 or the machine driver needs some changes to complement
that commit?

> (I don't have a rk3399-gru-kevin so I got another test machine with MAX98357A.)
> (I was testing with and without an audio server.)

Your observations are also a bit different from mine, which IMO also
suggests the machine driver is the true culprit -- I'd guess the pops
you hear would be from a different problem in your test machine's
machine driver?

(Let me restate my observations to contrast with yours, as I feel my
previous explanation was too wordy:)

> Observations:
> - I can hear the pop either with or without 128f825aeab7 (with and
> without sdmode-delay).

I never hear pops without 128f825aeab7, but always hear pops with it.
(no change when I remove "sdmode-delay" from the device-tree)

> - The pop noise is not always.  Higher probability after stopping
> playback than before starting.

I always hear one pop when starting playback, and two pops (with a few
seconds between them) when stopping playback.
