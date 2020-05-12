From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v1] ASoC: rockchip-i2s: add description for rk3308
Date: Tue, 12 May 2020 17:44:44 +0100
Message-ID: <158930188455.55827.16068992221946601782.b4-ty@kernel.org>
References: <20200507113238.7904-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200507113238.7904-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, Johan Jonker <jbx6244@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, robh+dt@kernel.org, lgirdwood@gmail.com, linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, 7 May 2020 13:32:38 +0200, Johan Jonker wrote:
> The description below is already in use for rk3308.dtsi,
> but was somehow never added to a document, so add
> "rockchip,rk3308-i2s", "rockchip,rk3066-i2s"
> for i2s nodes on a rk3308 platform to rockchip-i2s.yaml.
> One of the rk3308 i2s nodes also has a different dma layout,
> so change that as well.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.8

Thanks!

[1/1] ASoC: rockchip-i2s: add description for rk3308
      commit: ab436c974e08d9254999d7a84d86b1d4c1749230

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
