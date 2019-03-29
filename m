From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH] clk: rockchip: Fix video codec clocks on rk3288
Date: Fri, 29 Mar 2019 20:28:04 -0300
Message-ID: <CAAEAJfCvZ_y-No6vQbf_3kUSyuPYujTjW8XhZHiB=-GU2_NWHQ@mail.gmail.com>
References: <20190329215455.159717-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190329215455.159717-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Tomasz Figa <tfiga@chromium.org>, Ziyuan Xu <xzy.xu@rock-chips.com>, Ezequiel Garcia <ezequiel@collabora.com>, ryandcase@chromium.org, Elaine Zhang <zhangqing@rock-chips.com>, Matthias Kaehlcke <mka@chromium.org>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-clk@vger.kernel.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, 29 Mar 2019 at 18:55, Douglas Anderson <dianders@chromium.org> wrot=
e:
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
>    domain 'pd_video', val=3D0x80208".  After flipping vepu/vdpu things
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
> Fixes: 4d3e84f99628 ("clk: rockchip: describe aclk_vcodec using the new m=
uxgrf type on rk3288")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> I currently have no way to test the JPEG mem2mem driver, so hopefully
> others can test this and make sure it's happy for them.  I'm just
> happy not to get strange errors at boot anymore.
>

I won't have access to this hardware for a few days, but I am happy
to provide a simple test tool.

Still haven't reviewed this, but thanks for chasing it down!

EZe

>  drivers/clk/rockchip/clk-rk3288.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk=
-rk3288.c
> index 5a67b7869960..4d767f9c3a80 100644
> --- a/drivers/clk/rockchip/clk-rk3288.c
> +++ b/drivers/clk/rockchip/clk-rk3288.c
> @@ -219,7 +219,7 @@ PNAME(mux_hsadcout_p)       =3D { "hsadc_src", "ext_h=
sadc" };
>  PNAME(mux_edp_24m_p)   =3D { "ext_edp_24m", "xin24m" };
>  PNAME(mux_tspout_p)    =3D { "cpll", "gpll", "npll", "xin27m" };
>
> -PNAME(mux_aclk_vcodec_pre_p)   =3D { "aclk_vepu", "aclk_vdpu" };
> +PNAME(mux_aclk_vcodec_pre_p)   =3D { "aclk_vdpu", "aclk_vepu" };
>  PNAME(mux_usbphy480m_p)                =3D { "sclk_otgphy1_480m", "sclk_=
otgphy2_480m",
>                                     "sclk_otgphy0_480m" };
>  PNAME(mux_hsicphy480m_p)       =3D { "cpll", "gpll", "usbphy480m_src" };
> --
> 2.21.0.392.gf8f6787159e-goog
>


--=20
Ezequiel Garc=C3=ADa, VanguardiaSur
www.vanguardiasur.com.ar
