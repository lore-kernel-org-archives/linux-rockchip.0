From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] ASoC: rockchip: spdif: Handle clk by pm runtime
Date: Mon, 13 Jul 2020 18:27:57 +0100
Message-ID: <159466127771.57184.7108021750802359859.b4-ty@kernel.org>
References: <1594635960-67855-1-git-send-email-sugar.zhang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1594635960-67855-1-git-send-email-sugar.zhang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Takashi Iwai <tiwai@suse.com>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 13 Jul 2020 18:26:00 +0800, Sugar Zhang wrote:
> This patch handle the clk by pm runtime mechanism to simplify
> the clk management.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: spdif: Handle clk by pm runtime
      commit: f50d67f9eff62f8078fe6e98ede3f4fb1defc361

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
