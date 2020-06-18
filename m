From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] ASoC: rockchip: Fix a reference count leak.
Date: Thu, 18 Jun 2020 17:48:30 +0100
Message-ID: <159249891020.8643.15196266849523031585.b4-ty@kernel.org>
References: <20200613205158.27296-1-wu000273@umn.edu>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200613205158.27296-1-wu000273@umn.edu>
Sender: linux-kernel-owner@vger.kernel.org
To: kjlu@umn.edu, "wu000273@umn.edu" <wu000273@umn.edu>
Cc: Liam Girdwood <lgirdwood@gmail.com>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Sugar Zhang <sugar.zhang@rock-chips.com>, alsa-devel@alsa-project.org, Takashi Iwai <tiwai@suse.com>, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

On Sat, 13 Jun 2020 15:51:58 -0500, wu000273@umn.edu wrote:
> Calling pm_runtime_get_sync increments the counter even in case of
> failure, causing incorrect ref count if pm_runtime_put is not called in
> error handling paths. Call pm_runtime_put if pm_runtime_get_sync fails.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: Fix a reference count leak.
      commit: f141a422159a199f4c8dedb7e0df55b3b2cf16cd

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
