From: =?UTF-8?Q?St=C3=A9phane_Marchesin?= <stephane.marchesin@gmail.com>
Subject: Re: [PATCH v2 2/2] drm/panel: simple: Add support BOE nv101wxmn51
Date: Mon, 12 Dec 2016 12:22:58 -0800
Message-ID: <CACP_E+K1_c2ryUOKgqOvj9oJp6EKUc+44J0AiFNAU_C=7WJFSw@mail.gmail.com>
References: <1481181996-27922-1-git-send-email-wxt@rock-chips.com> <1481181996-27922-2-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1481181996-27922-2-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: Thierry Reding <thierry.reding@gmail.com>, linux-rockchip@lists.infradead.org, Linux Kernel list <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Dec 7, 2016 at 11:26 PM, Caesar Wang <wxt@rock-chips.com> wrote:
> 10.1WXGA is a color active matrix TFT LCD module using amorphous silicon
> TFT's as an active switching devices. It can be supported by the
> simple-panel driver.
>
> Read the panel edid information;
>
> EDID MODE DETAILS
>                 name =3D <NULL>
>                 pixel_clock =3D 71900
>                 lvds_dual_channel =3D 0
>                 refresh =3D 0
>                 ha =3D 1280
>                 hbl =3D 160
>                 hso =3D 48
>                 hspw =3D 32
>                 hborder =3D 0
>                 va =3D 800
>                 vbl =3D 32
>                 vso =3D 3
>                 vspw =3D 5
>                 vborder =3D 0
>                 phsync =3D +
>                 pvsync =3D -
>                 x_mm =3D 0
>                 y_mm =3D 0
> drm_display_mode
>                 .hdisplay =3D 1280
>                 .hsync_start =3D 1328
>                 .hsync_end =3D 1360
>                 .htotal =3D 1440
>                 .vdisplay =3D 800
>                 .vsync_start =3D 803
>                 .vsync_end =3D 808
>                 .vtotal =3D 832
>
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
> ---
>
> Changes in v2:
> - fix the vsync_start and vsync_end from the edid.
> - change the commit.
>
>  drivers/gpu/drm/panel/panel-simple.c | 31 ++++++++++++++++++++++++++++++=
+
>  1 file changed, 31 insertions(+)
>
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel=
/panel-simple.c
> index 06aaf79..7c90f16 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -668,6 +668,34 @@ static const struct panel_desc avic_tm070ddh03 =3D {
>         },
>  };
>
> +static const struct drm_display_mode boe_nv101wxmn51_mode =3D {
> +       .clock =3D 71900,
> +       .hdisplay =3D 1280,
> +       .hsync_start =3D 1280 + 48,
> +       .hsync_end =3D 1280 + 48 + 32,
> +       .htotal =3D 1280 + 48 + 32 + 80,
> +       .vdisplay =3D 800,
> +       .vsync_start =3D 800 + 3,
> +       .vsync_end =3D 800 + 3 + 5,
> +       .vtotal =3D 800 + 3 + 5 + 24,
> +       .vrefresh =3D 60,
> +};
> +
> +static const struct panel_desc boe_nv101wxmn51 =3D {
> +       .modes =3D &boe_nv101wxmn51_mode,
> +       .num_modes =3D 1,

There are two modes in the EDID (there is a downclock one). Can you
add both modes?

St=C3=A9phane

> +       .bpc =3D 8,
> +       .size =3D {
> +               .width =3D 217,
> +               .height =3D 136,
> +       },
> +       .delay =3D {
> +               .prepare =3D 210,
> +               .enable =3D 50,
> +               .unprepare =3D 160,
> +       },
> +};
> +
>  static const struct drm_display_mode chunghwa_claa070wp03xg_mode =3D {
>         .clock =3D 66770,
>         .hdisplay =3D 800,
> @@ -1748,6 +1776,9 @@ static const struct of_device_id platform_of_match[=
] =3D {
>                 .compatible =3D "avic,tm070ddh03",
>                 .data =3D &avic_tm070ddh03,
>         }, {
> +               .compatible =3D "boe,nv101wxmn51",
> +               .data =3D &boe_nv101wxmn51,
> +       }, {
>                 .compatible =3D "chunghwa,claa070wp03xg",
>                 .data =3D &chunghwa_claa070wp03xg,
>         }, {
> --
> 2.7.4
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
