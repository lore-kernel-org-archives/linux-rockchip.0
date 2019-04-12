From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2] clk: rockchip: Fix video codec clocks on rk3288
Date: Fri, 12 Apr 2019 13:22:31 +0200
Message-ID: <7155822.nnOPNdQpWs@diego>
References: <20190411135555.235625-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190411135555.235625-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>, Randy Li <ayaka@soulik.info>, Ziyuan Xu <xzy.xu@rock-chips.com>, Ezequiel Garcia <ezequiel@collabora.com>, ryandcase@chromium.org, Elaine Zhang <zhangqing@rock-chips.com>, mka@chromium.org, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 11. April 2019, 15:55:55 CEST schrieb Douglas Anderson:
> It appears that there is a typo in the rk3288 TRM.  For
> GRF_SOC_CON0[7] it says that 0 means "vepu" and 1 means "vdpu".  It's
> the other way around.
> 
> How do I know?  Here's my evidence:
> 
> 1. Prior to commit 4d3e84f99628 ("clk: rockchip: describe aclk_vcodec
>    using the new muxgrf type on rk3288") we always pretended that we
>    were using "aclk_vdpu" and the comment in the code said that this
>    matched the default setting in the system.  In fact the default
>    setting is 0 according to the TRM and according to reading memory
>    at bootup.  In addition rk3288-based Chromebooks ran like this and
>    the video codecs worked.
> 2. With the existing clock code if you boot up and try to enable the
>    new VIDEO_ROCKCHIP_VPU as a module (and without "clk_ignore_unused"
>    on the command line), you get errors like "failed to get ack on
>    domain 'pd_video', val=0x80208".  After flipping vepu/vdpu things
>    init OK.
> 3. If I export and add both the vepu and vdpu to the list of clocks
>    for RK3288_PD_VIDEO I can get past the power domain errors, but now
>    I freeze when the vpu_mmu gets initted.
> 4. If I just mark the "vdpu" as IGNORE_UNUSED then everything boots up
>    and probes OK showing that somehow the "vdpu" was important to keep
>    enabled.  This is because we were actually using it as a parent.
> 5. After this change I can hack "aclk_vcodec_pre" to parent from
>    "aclk_vepu" using assigned-clocks and the video codec still probes
>    OK.
> 6. Rockchip has said so on the mailing list [1].
> 
> ...so let's fix it.
> 
> Let's also add CLK_SET_RATE_PARENT to "aclk_vcodec_pre" as suggested
> by Jonas Karlman.  Prior to the same commit you could do
> clk_set_rate() on "aclk_vcodec" and it would change "aclk_vdpu".
> That's because "aclk_vcodec" was a simple gate clock (always gets
> CLK_SET_RATE_PARENT) and its direct parent was "aclk_vdpu".  After
> that commit "aclk_vcodec_pre" gets in the way so we need to add
> CLK_SET_RATE_PARENT to it too.
> 
> [1] https://lkml.kernel.org/r/1d17b015-9e17-34b9-baf8-c285dc1957aa@rock-chips.com
> 
> Fixes: 4d3e84f99628 ("clk: rockchip: describe aclk_vcodec using the new muxgrf type on rk3288")
> Suggested-by: Jonas Karlman <jonas@kwiboo.se>
> Suggested-by: Randy Li <ayaka@soulik.info>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.2

Thanks
Heiko
