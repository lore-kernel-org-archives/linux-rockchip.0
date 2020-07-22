From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] ASoC: max98357a: move control of SD_MODE back to DAI ops
Date: Wed, 22 Jul 2020 01:57:09 +0100
Message-ID: <159537940424.49432.9219488915928063357.b4-ty@kernel.org>
References: <20200721114232.2812254-1-tzungbi@google.com>
Return-path: <alsa-devel-bounces@alsa-project.org>
In-Reply-To: <20200721114232.2812254-1-tzungbi@google.com>
List-Unsubscribe: <https://mailman.alsa-project.org/mailman/options/alsa-devel>,
 <mailto:alsa-devel-request@alsa-project.org?subject=unsubscribe>
List-Archive: <http://mailman.alsa-project.org/pipermail/alsa-devel/>
List-Post: <mailto:alsa-devel@alsa-project.org>
List-Help: <mailto:alsa-devel-request@alsa-project.org?subject=help>
List-Subscribe: <https://mailman.alsa-project.org/mailman/listinfo/alsa-devel>,
 <mailto:alsa-devel-request@alsa-project.org?subject=subscribe>
Errors-To: alsa-devel-bounces@alsa-project.org
Sender: "Alsa-devel" <alsa-devel-bounces@alsa-project.org>
To: Tzung-Bi Shih <tzungbi@google.com>
Cc: linux-rockchip@lists.infradead.org, alpernebiyasak@gmail.com, alsa-devel@alsa-project.org, cychiang@google.com
List-Id: linux-rockchip.vger.kernel.org

On Tue, 21 Jul 2020 19:42:32 +0800, Tzung-Bi Shih wrote:
> Partially reverts commit 128f825aeab7 ("ASoC: max98357a: move control
> of SD_MODE to DAPM").
> 
> In order to have mute control of max98357 from machine drivers, commit
> 128f825aeab7 ("ASoC: max98357a: move control of SD_MODE to DAPM")
> moves the control of SD_MODE from DAI ops to DAPM events.  However, pop
> noise has been observed on rk3399-gru-kevin boards due to this commit.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: max98357a: move control of SD_MODE back to DAI ops
      commit: 04a646ff5acaa9a0a6634af1c94e0d5c8115e5db

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
