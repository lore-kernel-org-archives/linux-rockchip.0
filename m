From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] ASoC: rockchip: add format and rate constraints on rk3399
Date: Wed, 01 Jul 2020 23:22:50 +0100
Message-ID: <159364215573.10630.1998520137231805857.b4-ty@kernel.org>
References: <20200630091615.4020059-1-yuhsuan@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200630091615.4020059-1-yuhsuan@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, Yu-Hsuan Hsu <yuhsuan@chromium.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>, Tzung-Bi Shih <tzungbi@chromium.org>, Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>, Cheng-Yi Chiang <cychiang@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, 30 Jun 2020 17:16:15 +0800, Yu-Hsuan Hsu wrote:
> S8 and S24 formats does not work on this machine driver so force to use
> S16_LE instead.
> 
> In addition, add constraint to limit the max value of rate because the
> rate higher than 96000(172000, 192000) is not stable either.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: add format and rate constraints on rk3399
      commit: 1eb96c198aff13162de4857e19f9488d59c4acb1

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
