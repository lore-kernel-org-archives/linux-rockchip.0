Return-Path: <SRS0=J3GV=B3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 503BBC433E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 11:50:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1DF5320674
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 11:50:51 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="BAQIpXuD";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="B44MqFYD"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1DF5320674
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fjN0o6K0LAC5F7oqkFyMJSIepI8Xwfyy1AgBxXF5FlY=; b=BAQIpXuDgL4cXx5qjb/F4c+bN
	jco4kDczaojpwyKgRLIfQMS0gnuHTQeJd8DHQDW09ZSyZXdYiACOOHwj6Sgbdr2pWJmonplr7/vi4
	xrXV2uS2CqtbJ7Lf4bZTTmvsKm8bMwOU74I10xVEMUEpBFy1091hPmhRIYjzyfmfCQNaB08d08UoF
	oZMEjj2Unsucr5y3qpXG9kNLbfMwVtv55RVsHojyNi2WpvJFzbYjNGUazLxD+eWXWlpI4Qij8MwvO
	jQpgy0+RJ5qs6ltoD0zCj4I7I2crE2ZV0C2dKcA8iXPaHDpN2mABXZBxd3WpvXeiLcKQBJ+wGKJRc
	gNWroh+ow==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7df4-0007gW-0O; Mon, 17 Aug 2020 11:50:46 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7dez-0007fd-Tj
 for linux-rockchip@lists.infradead.org; Mon, 17 Aug 2020 11:50:42 +0000
Received: by mail-ed1-x541.google.com with SMTP id di22so11989916edb.12
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Aug 2020 04:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eHVM9jcI91pbY88fFWyW6/wr9C6nSlMI8HS38tOD5lY=;
 b=B44MqFYDydR5LrxwZuIC8SbBeM7mDhBlRLP+u1OkCEMj12vEzkqTyq+YDHeuJlADBF
 u6pC34lc0zwts2nJQNbbFXAHK5Ih7W5KUg345hP+KFm9BaLkSzhxUGrOuSyGftoXqo0/
 1rtQOH9zc7S6kbb6fa2TxdPdP+aGOzP8NuHv0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eHVM9jcI91pbY88fFWyW6/wr9C6nSlMI8HS38tOD5lY=;
 b=QzV9CzQ9R/u1ejYuEp01S1DHFMiUfVGRCbKwAMSecou5VprVsu200xj29xDw9y3gCF
 vambLWGQ8C/OP1qlGGKXOtCFiU9BvNEVAbek9kNEaKxCPOHGuOw/aKi9RMg4Xu+Txoes
 lSIrfqR37e4WufTPTuhbBEnM70RU9J8z7HjFDGn4tekJr3ZLZx8aNoztw5YrPdFd4NVq
 iwCF9WOoeUPtRn7zGcVUvf1xk8DcWR3U4pYfCMwLUVD01fbqdL4PVqqHI5zVDweeAnyr
 A8q9S1yG/DIUy7b4jytYtYR3UZmn3A3nUQFU4y1ZMD505s45UCgWt9sKQGOCR4cPYUvR
 pn4g==
X-Gm-Message-State: AOAM533IMRRV0kZ1nHs0WzMlLK5218/ytVIP+IQwArCeSFUKcUV9fxi5
 TB0ESbebHP1C8kZEIOz0Ceh7qi5Xm0vk4Q==
X-Google-Smtp-Source: ABdhPJzsL9DEtl1iJAbQhZqGhC3YXTP9gBeTQ31bDv+eH8VHv6cv/nG5ZqPQ4eJV67EtGxBG5VytrA==
X-Received: by 2002:aa7:d343:: with SMTP id m3mr1396782edr.326.1597665038871; 
 Mon, 17 Aug 2020 04:50:38 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id b20sm13408494eds.7.2020.08.17.04.50.37
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Aug 2020 04:50:37 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id l2so14658274wrc.7
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Aug 2020 04:50:37 -0700 (PDT)
X-Received: by 2002:adf:f849:: with SMTP id d9mr14932260wrq.295.1597665037189; 
 Mon, 17 Aug 2020 04:50:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200703171019.19270-1-dafna.hirschfeld@collabora.com>
 <20200703171019.19270-5-dafna.hirschfeld@collabora.com>
 <20200722125328.GA1828171@chromium.org>
 <8cc4f3a2-d116-ec0a-a838-b35859cdc34e@collabora.com>
In-Reply-To: <8cc4f3a2-d116-ec0a-a838-b35859cdc34e@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 17 Aug 2020 13:50:25 +0200
X-Gmail-Original-Message-ID: <CAAFQd5A5Y22KmOp7vHTDOKkTPiPmBVnUQ3ydtBs10z3Jjk_=4g@mail.gmail.com>
Message-ID: <CAAFQd5A5Y22KmOp7vHTDOKkTPiPmBVnUQ3ydtBs10z3Jjk_=4g@mail.gmail.com>
Subject: Re: [PATCH v5 4/7] v4l2: extend the CSC API to subdevice.
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_075042_084994_6D000883 
X-CRM114-Status: GOOD (  28.04  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Aug 17, 2020 at 12:24 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
>
>
> Am 22.07.20 um 14:53 schrieb Tomasz Figa:
> > Hi Dafna,
> >
> > On Fri, Jul 03, 2020 at 07:10:16PM +0200, Dafna Hirschfeld wrote:
> >> This patch extends the CSC API in video devices to be supported
> >> also on sub-devices. The flag V4L2_MBUS_FRAMEFMT_SET_CSC set by
> >> the application when calling VIDIOC_SUBDEV_S_FMT ioctl.
> >> The flags:
> >>
> >> V4L2_SUBDEV_MBUS_CODE_CSC_COLORSPACE, V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC,
> >> V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION V4L2_SUBDEV_MBUS_CODE_CSC_XFER_FUNC,
> >>
> >> are set by the driver in the VIDIOC_SUBDEV_ENUM_MBUS_CODE ioctl.
> >>
> >> New 'flags' fields were added to the structs
> >> v4l2_subdev_mbus_code_enum, v4l2_mbus_framefmt which are borrowed
> >> from the 'reserved' field
> >>
> >> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >> ---
> >>   .../media/v4l/subdev-formats.rst              | 78 +++++++++++++++++--
> >>   .../v4l/vidioc-subdev-enum-mbus-code.rst      | 44 ++++++++++-
> >>   include/uapi/linux/v4l2-mediabus.h            |  9 ++-
> >>   include/uapi/linux/v4l2-subdev.h              |  8 +-
> >>   4 files changed, 129 insertions(+), 10 deletions(-)
> >>
> >
> > Thank you for the patch. Please see my comments inline.
> >
> >> diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> >> index 9a4d61b0d76f..7362ee0b1e96 100644
> >> --- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
> >> +++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> >> @@ -41,32 +41,96 @@ Media Bus Formats
> >>      :ref:`field-order` for details.
> >>       * - __u32
> >>         - ``colorspace``
> >> -      - Image colorspace, from enum
> >> -    :c:type:`v4l2_colorspace`. See
> >> -    :ref:`colorspaces` for details.
> >> +      - Image colorspace, from enum :c:type:`v4l2_colorspace`.
> >> +        Must be set by the driver for capture streams and by the application
> >> +    for output streams, see :ref:`colorspaces`. If the application sets the
> >> +    flag ``V4L2_MBUS_FRAMEFMT_SET_CSC`` then the application can set
> >> +    this field for a capture stream to request a specific colorspace
> >
> > What is a "capture stream" in terms of the subdev API? Should this
> > perhaps refer to "source pads" instead?
>
> Hi, yes, I should change it to 'source pad'. I see that for the other colorimetry fields,
> the docs for v4l2_mbus_framefmt already writes
> "This information supplements the colorspace and must be set by the driver for capture streams and by the application for output streams,"
> I guess this should also change,

Right.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
