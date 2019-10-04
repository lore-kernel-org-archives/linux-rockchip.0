From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: fix RockPro64 sdhci settings
Date: Fri, 04 Oct 2019 22:05:01 +0200
Message-ID: <1725946.B0GZWAYfbM@phil>
References: <20191003215036.15023-1-smoch@web.de> <20191003215036.15023-2-smoch@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191003215036.15023-2-smoch@web.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Soeren Moch <smoch@web.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 3. Oktober 2019, 23:50:35 CEST schrieb Soeren Moch:
> The RockPro64 schematics [1], [2] show that the rk3399 EMMC_STRB pin is
> connected to the RESET pin instead of the DATA_STROBE pin of the eMMC module.
> So the data strobe cannot be used for its intended purpose on this board,
> and so the HS400 eMMC mode is not functional. Limit the controller to HS200.
> 
> [1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
> [2] http://files.pine64.org/doc/rock64/PINE64_eMMC_Module_20170719.pdf
> 
> Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
> Signed-off-by: Soeren Moch <smoch@web.de>

applied as fix for 5.4

Thanks
Heiko
