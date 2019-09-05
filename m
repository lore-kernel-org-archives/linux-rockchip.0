From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v1 0/3] clk: rockchip: support clock controller for rk3308 SoC
Date: Thu, 05 Sep 2019 13:22:43 +0200
Message-ID: <8098861.lOb4sKEy6F@phil>
References: <20190903115947.26618-1-finley.xiao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190903115947.26618-1-finley.xiao@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Finley Xiao <finley.xiao@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, zhangqing@rock-chips.com, huangtao@rock-chips.com, tony.xie@rock-chips.com, andy.yan@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Finley,

Am Dienstag, 3. September 2019, 13:59:44 CEST schrieb Finley Xiao:
> Finley Xiao (3):
>   dt-bindings: Add bindings for rk3308 clock controller
>   clk: rockchip: Add dt-binding header for rk3308
>   clk: rockchip: Add clock controller for the RK3308

applied for (hopefully still) 5.4.

I did change the binding patch to name the i2s mclk inputs explicitly
as you can see in [0] as placeholders in dt-bindings do not necessarily
work that great.


Heiko

[0] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v5.4-clk/next&id=2d1fb8e983dc0669f276b176142798a228dc0f38
