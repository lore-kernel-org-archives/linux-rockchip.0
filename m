From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] clk: rockchip: add a type from SGRF-controlled gate clocks
Date: Fri, 14 Jun 2019 18:57:37 +0200
Message-ID: <2861779.VsSVQ8N6Tg@phil>
References: <20190606090934.4443-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190606090934.4443-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-clk@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, mturquette@baylibre.com, sboyd@kernel.org, papadakospan@gmail.com, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 6. Juni 2019, 11:09:33 CEST schrieb Heiko Stuebner:
> Some clk gates on Rockchip SoCs are part of the SGRF (secure general
> register files) and thus only controllable from secure mode, with the
> most prominent example being the watchdog.
> 
> In most cases we still want to define this as a real clock though,
> to have complete clock tree and not reference the generic base-clock
> from the devicetree.
> 
> So far we've just defined this as factor-1-1 clocks in the clock init,
> so define a special clock-type for it so that this definition can be
> part of the general tree-definition and save some boilerplate code.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied both for 5.3
