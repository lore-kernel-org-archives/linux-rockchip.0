From: Jacob Chen <jacobchen110@gmail.com>
Subject: Re: [PATCH v11 02/11] media: staging: rkisp1: add document for rkisp1
 meta buffer format
Date: Tue, 19 Nov 2019 18:16:49 +0800
Message-ID: <CAFLEztRQfYE_Mssiq4KxK-QyJEe+KT4eTsvnLZQK5T=uVADUqA@mail.gmail.com>
References: <20191114051242.14651-1-helen.koike@collabora.com>
 <20191114051242.14651-3-helen.koike@collabora.com> <09d4f683-d03d-46c9-e9d2-b8cceb72446e@xs4all.nl>
 <9cb116f6-64f4-1510-b128-8657d6d4889b@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <9cb116f6-64f4-1510-b128-8657d6d4889b@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Helen Koike <helen.koike@collabora.com>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, mark.rutland@arm.com, devicetree@vger.kernel.org, Eddie Cai <eddie.cai.linux@gmail.com>, kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>, Jacob Chen <jacob-chen@rock-chips.com>, gregkh@linuxfoundation.org, Jeffy Chen <jeffy.chen@rock-chips.com>, =?UTF-8?B?6ZKf5Lul5bSH?= <zyc@rock-chips.com>, linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>, robh+dt@kernel.org, Hans Verkuil <hans.verkuil@cisco.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Shunqian Zheng <zhengsq@rock-chips.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org, Li
List-Id: linux-rockchip.vger.kernel.org

Hi Helen ,

Helen Koike <helen.koike@collabora.com> =E4=BA=8E2019=E5=B9=B411=E6=9C=8814=
=E6=97=A5=E5=91=A8=E5=9B=9B =E4=B8=8B=E5=8D=886:59=E5=86=99=E9=81=93=EF=BC=
=9A
>
>
>
> On 11/14/19 6:21 AM, Hans Verkuil wrote:
> > On 11/14/19 6:12 AM, Helen Koike wrote:
> >> From: Jacob Chen <jacob2.chen@rock-chips.com>
> >>
> >> This commit add document for rkisp1 meta buffer format
> >>
> >> Signed-off-by: Jacob Chen <jacob-chen@rock-chips.com>
> >> [refactored for upstream]
> >> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> >
> > checkpatch gives me:
> >
> > WARNING: Missing Signed-off-by: line by nominal patch author 'Jacob Che=
n <jacob2.chen@rock-chips.com>'
> >
> > Looking at this series I see duplicate Signed-off-by entries for Jacob =
Chen and a total
> > of three different email addresses:
> >
> > jacob2.chen@rock-chips.com
> > jacob-chen@rock-chips.com
> > cc@rock-chips.com
>
> And I see a name in the Maintainers file as Jacob Chen <jacob-chen@iotwrt=
.com>.
> I was wondering if I could replace the email by jacob-chen@iotwrt.com, or=
 if I should
> keep the original ones.
>
> Helen
>

"jacob2.chen@rock-chips.com"/"jacob-chen@rock-chips.com" is me and
"cc@rock-chips.com" is another one.
' jacob-chen@rock-chips.com' is invalid now,  so you could replace the
email by 'jacob-chen@iotwrt.com'.

> >
> > It's confusing.
> >
> > Regards,
> >
> >       Hans
> >
> >>
> >> ---
> >>
> >> Changes in v11: None
> >> Changes in v10:
> >> - unsquash
> >>
> >> Changes in v9:
> >> - squash
> >> - migrate to staging
> >> - remove meta-formats.rst update
> >>
> >> Changes in v8:
> >> - Add SPDX in the header
> >> - Remove emacs configs
> >> - Fix doc style
> >>
> >> Changes in v7:
> >> - s/correspond/corresponding
> >> - s/use/uses
> >> - s/docuemnt/document
> >>
> >>  .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    | 23 ++++++++++++++++++=
+
> >>  .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      | 22 ++++++++++++++++++
> >>  2 files changed, 45 insertions(+)
> >>  create mode 100644 drivers/staging/media/rkisp1/Documentation/media/u=
api/v4l/pixfmt-meta-rkisp1-params.rst
> >>  create mode 100644 drivers/staging/media/rkisp1/Documentation/media/u=
api/v4l/pixfmt-meta-rkisp1-stat.rst
> >>
> >> diff --git a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l=
/pixfmt-meta-rkisp1-params.rst b/drivers/staging/media/rkisp1/Documentation=
/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> >> new file mode 100644
> >> index 000000000000..103b5cb79b7c
> >> --- /dev/null
> >> +++ b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt=
-meta-rkisp1-params.rst
> >> @@ -0,0 +1,23 @@
> >> +.. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> >> +
> >> +.. _v4l2-meta-fmt-rkisp1-params:
> >> +
> >> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> >> +V4L2_META_FMT_RK_ISP1_PARAMS
> >> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> >> +
> >> +Rockchip ISP1 Parameters Data
> >> +
> >> +Description
> >> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >> +
> >> +This format describes input parameters for the Rockchip ISP1.
> >> +
> >> +It uses c-struct :c:type:`rkisp1_isp_params_cfg`, which is defined in
> >> +the ``linux/rkisp1-config.h`` header file.
> >> +
> >> +The parameters consist of multiple modules.
> >> +The module won't be updated if the corresponding bit was not set in m=
odule_*_update.
> >> +
> >> +.. kernel-doc:: include/uapi/linux/rkisp1-config.h
> >> +   :functions: rkisp1_isp_params_cfg
> >> diff --git a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l=
/pixfmt-meta-rkisp1-stat.rst b/drivers/staging/media/rkisp1/Documentation/m=
edia/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> >> new file mode 100644
> >> index 000000000000..4ad303f96421
> >> --- /dev/null
> >> +++ b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt=
-meta-rkisp1-stat.rst
> >> @@ -0,0 +1,22 @@
> >> +.. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> >> +
> >> +.. _v4l2-meta-fmt-rkisp1-stat:
> >> +
> >> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> >> +V4L2_META_FMT_RK_ISP1_STAT_3A
> >> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> >> +
> >> +
> >> +Rockchip ISP1 Statistics Data
> >> +
> >> +Description
> >> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >> +
> >> +This format describes image color statistics information generated by=
 the Rockchip
> >> +ISP1.
> >> +
> >> +It uses c-struct :c:type:`rkisp1_stat_buffer`, which is defined in
> >> +the ``linux/rkisp1-config.h`` header file.
> >> +
> >> +.. kernel-doc:: include/uapi/linux/rkisp1-config.h
> >> +   :functions: rkisp1_stat_buffer
> >>
> >
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
