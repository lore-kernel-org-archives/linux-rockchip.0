From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: fix vcc_host1_5v pin assign
Date: Mon, 10 Sep 2018 15:07:43 +0200
Message-ID: <2254080.m30pKOgRkt@phil>
References: <20180906153947.19495-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180906153947.19495-1-katsuhiro@katsuster.net>
Sender: linux-kernel-owner@vger.kernel.org
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 6. September 2018, 17:39:47 CEST schrieb Katsuhiro Suzuki:
> This patch fixes pin assign of vcc_host1_5v. This regulator is
> controlled by USB20_HOST_DRV signal.
> 
> ROCK64 schematic says that GPIO0_A2 pin is used as USB20_HOST_DRV.
> GPIO0_D3 pin is for SPDIF_TX_M0.
> 
> ROCK64 schematic:
> http://files.pine64.org/doc/rock64/ROCK64_Schematic_v2.0_20171019.pdf
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>

applied for 4.20 after adapting the subject to also list the actual board
this affects :-) .


Thanks
Heiko
