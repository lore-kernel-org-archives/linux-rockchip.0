From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] clk: rockchip: Fix video codec clocks on rk3288
Date: Wed, 10 Apr 2019 16:37:33 -0700
Message-ID: <CAD=FV=W=gPgYNrVAXYa=9bz1e5+KBD1Xu7UK-pPkH25esFiW9A@mail.gmail.com>
References: <20190329215455.159717-1-dianders@chromium.org>
 <CAD=FV=V22Z2ziNZs5syzd1wpT4AwpXtTHP52wKvN5drgf06Z8Q@mail.gmail.com>
 <AM3PR03MB09665B2755982816D2FC37E4AC2E0@AM3PR03MB0966.eurprd03.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <AM3PR03MB09665B2755982816D2FC37E4AC2E0@AM3PR03MB0966.eurprd03.prod.outlook.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Ziyuan Xu <xzy.xu@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Elaine Zhang <zhangqing@rock-chips.com>, LKML <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>, Ezequiel Garcia <ezequiel@collabora.com>, linux-clk <linux-clk@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Apr 10, 2019 at 11:38 AM Jonas Karlman <jonas@kwiboo.se> wrote:
>
> On 2019-04-10 17:45, Doug Anderson wrote:
> > Hi,
> >
> > On Fri, Mar 29, 2019 at 2:55 PM Douglas Anderson <dianders@chromium.org> wrote:
> >> It appears that there is a typo in the rk3288 TRM.  For
> >> GRF_SOC_CON0[7] it says that 0 means "vepu" and 1 means "vdpu".  It's
> >> the other way around.
> >>
> >> How do I know?  Here's my evidence:
> >>
> >> 1. Prior to commit 4d3e84f99628 ("clk: rockchip: describe aclk_vcodec
> >>    using the new muxgrf type on rk3288") we always pretended that we
> >>    were using "aclk_vdpu" and the comment in the code said that this
> >>    matched the default setting in the system.  In fact the default
> >>    setting is 0 according to the TRM and according to reading memory
> >>    at bootup.  In addition rk3288-based Chromebooks ran like this and
> >>    the video codecs worked.
> >> 2. With the existing clock code if you boot up and try to enable the
> >>    new VIDEO_ROCKCHIP_VPU as a module (and without "clk_ignore_unused"
> >>    on the command line), you get errors like "failed to get ack on
> >>    domain 'pd_video', val=0x80208".  After flipping vepu/vdpu things
> >>    init OK.
> >> 3. If I export and add both the vepu and vdpu to the list of clocks
> >>    for RK3288_PD_VIDEO I can get past the power domain errors, but now
> >>    I freeze when the vpu_mmu gets initted.
> >> 4. If I just mark the "vdpu" as IGNORE_UNUSED then everything boots up
> >>    and probes OK showing that somehow the "vdpu" was important to keep
> >>    enabled.  This is because we were actually using it as a parent.
> >> 5. After this change I can hack "aclk_vcodec_pre" to parent from
> >>    "aclk_vepu" using assigned-clocks and the video codec still probes
> >>    OK.
> >>
> >> Fixes: 4d3e84f99628 ("clk: rockchip: describe aclk_vcodec using the new muxgrf type on rk3288")
> >> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >> ---
> >> I currently have no way to test the JPEG mem2mem driver, so hopefully
> >> others can test this and make sure it's happy for them.  I'm just
> >> happy not to get strange errors at boot anymore.
> >>
> >>  drivers/clk/rockchip/clk-rk3288.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> > Any thoughts about this patch?  I'm 99.9% certain it's correct and
> > it'd be nice to get it landed.  Heiko: I assume you're still
> > collecting Rockchip clock patches and would be the one to apply it and
> > (at some point) send a pull request to the clock tree?
> >
> > -Doug
>
> This clk fix is needed to make MPEG-2 decoding work on my RK3288 Tinker Board using the
> rockchip vpu patchset and a patch to add RK3288 specific MPEG-2 code [1].
>
> Also note that the same change was suggested in a previous patch [2] from by ayaka.
>
> If possible please also add the CLK_SET_RATE_PARENT change from [3] in a possible v2,
> that fixes assigning the aclk_vcodec clk to 400Mhz in the rockchip vpu driver.
>
> [1] https://github.com/Kwiboo/linux-rockchip/commit/1f78093e05c7360515a185f48b7c5cb8ba1e3e15
> [2] https://patchwork.kernel.org/patch/9725553/
> [3] https://github.com/Kwiboo/linux-rockchip/commit/9216da3f1521a0be5889235abe7fa093a4894160

Thanks for the pointers!  Now I'm 99.9999% certain that my patch is
correct instead of just 99.9%.  ;-)

IMO the CLK_SET_RATE_PARENT should probably be a separate patch but it
does seem like we need it.  ...and actually the patch adding it should
have a Fixes tag of the same commit.  Prior to that commit the parent
of "aclk_vcodec" was "aclk_vdpu".  As a gate clock it would
automatically have CLK_SET_RATE_PARENT so you could easily set the
rate.  ...and it looks as if the downstream video codec driver in
Chrome OS relies on this too.

I'm happy to add that in a v2 if Heiko is happy with it.

-Doug
