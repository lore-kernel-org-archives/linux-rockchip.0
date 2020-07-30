From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 1/3] spi: rockchip: Config spi rx dma burst size depend on xfer length
Date: Thu, 30 Jul 2020 23:28:51 +0100
Message-ID: <159614813119.1710.15143804942434946004.b4-ty@kernel.org>
References: <20200722083737.8820-1-jon.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200722083737.8820-1-jon.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jon Lin <jon.lin@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, 22 Jul 2020 16:37:35 +0800, Jon Lin wrote:
> The burst length can be adjusted according to the transmission
> length to improve the transmission rate

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/3] spi: rockchip: Config spi rx dma burst size depend on xfer length
      commit: 4d9ca632c847ab88f2f7e7e2747aea966f1390ce
[2/3] spi: rockchip: Support 64-location deep FIFOs
      commit: 13a96935e6f66bafb6da92791120546a4bf20889
[3/3] spi: rockchip: Fix error in SPI slave pio read
      commit: 4294e4accf8d695ea5605f6b189008b692e3e82c

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
