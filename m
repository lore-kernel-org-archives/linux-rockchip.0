From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] clk: rockchip: Fix video codec clocks on rk3288
Date: Wed, 10 Apr 2019 08:45:45 -0700
Message-ID: <CAD=FV=V22Z2ziNZs5syzd1wpT4AwpXtTHP52wKvN5drgf06Z8Q@mail.gmail.com>
References: <20190329215455.159717-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190329215455.159717-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>
Cc: Tomasz Figa <tfiga@chromium.org>, Ziyuan Xu <xzy.xu@rock-chips.com>, Ezequiel Garcia <ezequiel@collabora.com>, Ryan Case <ryandcase@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, Douglas Anderson <dianders@chromium.org>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, LKML <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-clk <linux-clk@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Fri, Mar 29, 2019 at 2:55 PM Douglas Anderson <dianders@chromium.org> wrote:
>
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
>
> Fixes: 4d3e84f99628 ("clk: rockchip: describe aclk_vcodec using the new muxgrf type on rk3288")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> I currently have no way to test the JPEG mem2mem driver, so hopefully
> others can test this and make sure it's happy for them.  I'm just
> happy not to get strange errors at boot anymore.
>
>  drivers/clk/rockchip/clk-rk3288.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Any thoughts about this patch?  I'm 99.9% certain it's correct and
it'd be nice to get it landed.  Heiko: I assume you're still
collecting Rockchip clock patches and would be the one to apply it and
(at some point) send a pull request to the clock tree?

-Doug
