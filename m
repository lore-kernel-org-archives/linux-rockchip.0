From: Stephen Boyd <sboyd@codeaurora.org>
Subject: Re: [GIT PULL] rockchip clock changes for 4.10 part2
Date: Wed, 30 Nov 2016 15:22:49 -0800
Message-ID: <20161130232249.GN6095@codeaurora.org>
References: <2743552.IWmOsK33LT@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-clk-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <2743552.IWmOsK33LT@phil>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 11/24, Heiko Stuebner wrote:
> Hi Mike, Stephen,
> 
> here are some more rockchip-specific clock changes, hopefully still in
> time for 4.10.
> 
> Apart from some smaller fixes there is one new clock-controller for
> the RK1108 (a soc combining a single-core Cortex-A7 with a DSP).
> 
> 
> There was a bit of concern from Rob regarding our softer links to
> circular input clocks which I tried to explain in [0] and [1] but
> haven't heared anything back in nearly a week now from my
> initial reply last friday.
> 
> He did ack bindings with the same behaviour for the rk3036, rk3228
> and rk3399 in the past though, so I can only hope my explanation did
> somehow alleviate his concerns.
> 
> I've Cc'ed him on this pull request, so hopefully he'll protest if
> that isn't the case.
> 
> 

Thanks. Pulled into clk-next.

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
