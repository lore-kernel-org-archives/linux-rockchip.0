From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v11 02/11] media: staging: rkisp1: add document for rkisp1
 meta buffer format
Date: Thu, 14 Nov 2019 17:47:00 +0900
Message-ID: <CAAFQd5CLhUtTAWr_zF5ZPH7kPMQxjwzUMDYWowbbbc9bLowmRQ@mail.gmail.com>
References: <20191114051242.14651-1-helen.koike@collabora.com>
 <20191114051242.14651-3-helen.koike@collabora.com> <09d4f683-d03d-46c9-e9d2-b8cceb72446e@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <09d4f683-d03d-46c9-e9d2-b8cceb72446e@xs4all.nl>
Sender: linux-kernel-owner@vger.kernel.org
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Helen Koike <helen.koike@collabora.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Mark Rutland <mark.rutland@arm.com>, linux-devicetree <devicetree@vger.kernel.org>, Eddie Cai <eddie.cai.linux@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>, Greg KH <gregkh@linuxfoundation.org>, Jeffy <jeffy.chen@rock-chips.com>, =?UTF-8?B?6ZKf5Lul5bSH?= <zyc@rock-chips.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Nov 14, 2019 at 5:21 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 11/14/19 6:12 AM, Helen Koike wrote:
> > From: Jacob Chen <jacob2.chen@rock-chips.com>
> >
> > This commit add document for rkisp1 meta buffer format
> >
> > Signed-off-by: Jacob Chen <jacob-chen@rock-chips.com>
> > [refactored for upstream]
> > Signed-off-by: Helen Koike <helen.koike@collabora.com>
>
> checkpatch gives me:
>
> WARNING: Missing Signed-off-by: line by nominal patch author 'Jacob Chen <jacob2.chen@rock-chips.com>'
>
> Looking at this series I see duplicate Signed-off-by entries for Jacob Chen and a total
> of three different email addresses:
>
> jacob2.chen@rock-chips.com
> jacob-chen@rock-chips.com
> cc@rock-chips.com

I remember there used to be two different people named Jacob Chen in
the project. Also FWIW at least one of them
(jacob2.chen@rock-chips.com) is not at Rockchip anymore.

Looking in my inbox, I don't see anyone matching
jacob-chen@rock-chips.com, so that could possibly be a mistyped
jacob2.chen@rock-chips.com?

Best regards,
Tomasz



>
> It's confusing.
>
> Regards,
>
>         Hans
>
> >
> > ---
> >
> > Changes in v11: None
> > Changes in v10:
> > - unsquash
> >
> > Changes in v9:
> > - squash
> > - migrate to staging
> > - remove meta-formats.rst update
> >
> > Changes in v8:
> > - Add SPDX in the header
> > - Remove emacs configs
> > - Fix doc style
> >
> > Changes in v7:
> > - s/correspond/corresponding
> > - s/use/uses
> > - s/docuemnt/document
> >
> >  .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    | 23 +++++++++++++++++++
> >  .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      | 22 ++++++++++++++++++
> >  2 files changed, 45 insertions(+)
> >  create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> >  create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> >
> > diff --git a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> > new file mode 100644
> > index 000000000000..103b5cb79b7c
> > --- /dev/null
> > +++ b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> > @@ -0,0 +1,23 @@
> > +.. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +.. _v4l2-meta-fmt-rkisp1-params:
> > +
> > +============================
> > +V4L2_META_FMT_RK_ISP1_PARAMS
> > +============================
> > +
> > +Rockchip ISP1 Parameters Data
> > +
> > +Description
> > +===========
> > +
> > +This format describes input parameters for the Rockchip ISP1.
> > +
> > +It uses c-struct :c:type:`rkisp1_isp_params_cfg`, which is defined in
> > +the ``linux/rkisp1-config.h`` header file.
> > +
> > +The parameters consist of multiple modules.
> > +The module won't be updated if the corresponding bit was not set in module_*_update.
> > +
> > +.. kernel-doc:: include/uapi/linux/rkisp1-config.h
> > +   :functions: rkisp1_isp_params_cfg
> > diff --git a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> > new file mode 100644
> > index 000000000000..4ad303f96421
> > --- /dev/null
> > +++ b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> > @@ -0,0 +1,22 @@
> > +.. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +.. _v4l2-meta-fmt-rkisp1-stat:
> > +
> > +=============================
> > +V4L2_META_FMT_RK_ISP1_STAT_3A
> > +=============================
> > +
> > +
> > +Rockchip ISP1 Statistics Data
> > +
> > +Description
> > +===========
> > +
> > +This format describes image color statistics information generated by the Rockchip
> > +ISP1.
> > +
> > +It uses c-struct :c:type:`rkisp1_stat_buffer`, which is defined in
> > +the ``linux/rkisp1-config.h`` header file.
> > +
> > +.. kernel-doc:: include/uapi/linux/rkisp1-config.h
> > +   :functions: rkisp1_stat_buffer
> >
>
