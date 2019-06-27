From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 0/4] hdmi on rk3229
Date: Thu, 27 Jun 2019 12:40:31 +0200
Message-ID: <1889663.L4fA2jsj6U@phil>
References: <20190614165454.13743-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190614165454.13743-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, justin.swartz@risingedge.co.za, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, mturquette@baylibre.com, sboyd@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 14. Juni 2019, 18:54:50 CEST schrieb Heiko Stuebner:
> The hdmiphy needs its clock reparented to the actual hdmiphy-pll
> that gets generated in the hdmiphy itself.
> 
> This incorporates adapted versions of Justin's original patches
> and also the needed clock adaptions to make it possible to
> reparent the hdmiphy clock.
> 
> Heiko Stuebner (2):
>   clk: rockchip: add clock id for hdmi_phy special clock
>   clk: rockchip: export HDMIPHY clock
> 
> Justin Swartz (2):
>   ARM: dts: rockchip: add display nodes for rk322x
>   ARM: dts: rockchip: fix vop iommu-cells on rk322x

applied all 4 to relevant branches for 5.3

Cheers
Heiko
