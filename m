From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] ASoC: rk3399_gru_sound: Add DAPM pins, kcontrols for jack detection
Date: Thu, 30 Jul 2020 23:27:25 +0100
Message-ID: <159614804536.1473.678464665429263160.b4-ty@kernel.org>
References: <20200721182709.6895-1-alpernebiyasak@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200721182709.6895-1-alpernebiyasak@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org, Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

On Tue, 21 Jul 2020 21:27:10 +0300, Alper Nebi Yasak wrote:
> PulseAudio (and perhaps other userspace utilities) can not detect any
> jack for rk3399_gru_sound as the driver doesn't expose related Jack
> kcontrols.
> 
> This patch adds two DAPM pins to the headset jack, where the
> snd_soc_card_jack_new() call automatically creates "Headphones Jack" and
> "Headset Mic Jack" kcontrols from them.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rk3399_gru_sound: Add DAPM pins, kcontrols for jack detection
      commit: d0508b4f16049a658d68a7c276ba08296c5a76bc

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark
