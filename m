From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 5/7] arm64: dts: rockchip: rk3399: Correct MIPI DPHY PLL clock
Date: Wed, 20 Sep 2017 12:28:53 +0200
Message-ID: <3623375.lOpq1n2kRD@diego>
References: <1505725539-6309-1-git-send-email-nickey.yang@rock-chips.com> <1505725539-6309-5-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1505725539-6309-5-git-send-email-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Nickey Yang <nickey.yang@rock-chips.com>
Cc: mark.yao@rock-chips.com, robh+dt@kernel.org, mark.rutland@arm.com, airlied@linux.ie, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, briannorris@chromium.org, hl@rock-chips.com, zyw@rock-chips.com, bivvy.bi@rock-chips.com, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 18. September 2017, 17:05:37 CEST schrieb Nickey Yang:
> clk_24m --> Gate11[14] --> clk_mipidphy_ref --> Gate21[0] --> clk_dphy_pll
> 
> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>

applied as fix for 4.14 after polishing the commit message a bit


Thanks
Heiko
