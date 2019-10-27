From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 2/4] arm64: dts: rockchip: Add core dts for RK3308 SOC
Date: Sun, 27 Oct 2019 18:45:59 +0100
Message-ID: <12893370.vt1eeOlM6n@phil>
References: <20191021084437.28279-1-andy.yan@rock-chips.com> <20191021084616.28431-1-andy.yan@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191021084616.28431-1-andy.yan@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Andy Yan <andy.yan@rock-chips.com>
Cc: kever.yang@rock-chips.com, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 21. Oktober 2019, 10:46:16 CET schrieb Andy Yan:
> RK3308 is a quad Cortex A35 based SOC with rich audio
> interfaces(I2S/PCM/TDM/PDM/SPDIF/VAD/HDMI ARC), which
> designed for intelligent voice interaction and audio
> input/output processing.
> 
> This patch add basic core dtsi file for it.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

applied for 5.5 with changes:

- dropped spi high_speed pinctrl, as it's not part of the spi binding
- dropped peripherals-req-type-burst as it's not part of the dma binding
- dropped sdmmc_gpio pinctrl
- removed a number of unneeded empty lines
- reordered things to better match our alphabetical sorting

Heiko
