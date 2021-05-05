Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA568C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 15:18:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A02960200
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 15:18:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A02960200
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kynesim.co.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OOmvmNWTfePLZzhLi2r3lOWoA7AyTCi6qjHQHv5OHyg=; b=VPDGCGdQsTrQzLaXruNXMD+uM
	8S2M0E52J+qH8x8F7S+ZkRrh60dW48quC5J4Nt7BI0CCRAWIv4VPynJ3kvQILWcUHMFjbIj3Ha0Cw
	0nLcxO7Jk7f0It2s+QvWaSFcna710Q9c178j8kp0h/iG6qigCd+G0o8vAXooK98cTtrtO9PM3bnAF
	JlzuTzkUebhEur77ZW8etgxFIQ0GjPY1801QOxXk1RAKCdm13BaNTOhApLr6O4XaC+DDMxYQTHhgl
	9Mw9Fpk4nLWJJrOX1R5sJZ3qeVS7dLXM+rBz3V0b87E2f62LAVDtWq4FnM7jH6Q1F+zoYAGl4kRMH
	ArPuKDYJA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leJI2-001XH1-Be; Wed, 05 May 2021 15:18:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leJHz-001XGP-AZ
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 15:18:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:In-Reply-To:References:Message-ID:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=TfAnoiyhV+Z09G0GA+tcCNjs/YV2vvtrOh2X+fFwA7A=; b=cuqBBhg4dOq7S7X5b+4HEKluWY
 fkjE6Qus2bZsX++ikL0+qhUa5YvJCP/tWh262wi61iBsDn1xwRWURgWdYRAWag+1IjZKnkp8hTzDO
 +plHFQNjgP5k96HgEI+vHMk+ZgvQ2BPyXHqX26nh0OMWIws15td9HhnaxYGusji9CpijYFLppTLFr
 LgENYVwGN+xm2td2lxUpQxjR5P/sjXaijTZkOkSh2kdUQYst4RixRS8Euraf782dHmvT8DFPkX9WE
 IeljNsKsOkMpUnDLeiT7ZZ0xEI3hReRJY3Co43MdEE6qF7hRqlTCe+7TQue1NQNKiwoKXnc+C1KIf
 i/tB5dyg==;
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leJHu-004rl2-JB
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 15:18:13 +0000
Received: by mail-wm1-x336.google.com with SMTP id
 y124-20020a1c32820000b029010c93864955so3642977wmy.5
 for <linux-rockchip@lists.infradead.org>; Wed, 05 May 2021 08:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kynesim-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:references:in-reply-to
 :user-agent:mime-version:content-transfer-encoding;
 bh=TfAnoiyhV+Z09G0GA+tcCNjs/YV2vvtrOh2X+fFwA7A=;
 b=UyzvQD43RrH8HN0tRXh+S4kPKxLLqTxcAsoAzHIlVsqJGmrIFeDVHf/QgT13vdRJFx
 3xOJa6Ucez9q2GObA0jOjUJfFQsrCJ/WapRgcOs08uE/2eTes1FZrAIUMK9Ci9HxSusI
 rzrj02MCjK/eZtWqF9AH1oQSWGEqgAeq+uhmYd1joS7snD9lXUMBqyqGSbWCeNAXI2UC
 AI1QWUr5Ks8meduoKRF+pSSniBQjkM1sxIfDUCLe+JQLv514GldGM+lTjzCLGo+BaxRn
 zblddZUMOk1zGS+qPYmko93lZ85kFypxtb/XvVC+upJa/XFgqOno/L0ggZCBQ4InZWUb
 00Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:references
 :in-reply-to:user-agent:mime-version:content-transfer-encoding;
 bh=TfAnoiyhV+Z09G0GA+tcCNjs/YV2vvtrOh2X+fFwA7A=;
 b=SeCvAp4cXusK/2B6u9zDIRt8WU8nUJpQHtBi+V5hzZA/zAkLfQVgDkb5VqTdDpldIb
 +X/gn1i+kZcZS9848fH6CMe8Gz+7vnHfvdZHx8OZzaGhQceKjHcouF4iEupdDkYohJxG
 GsADug+AlqNyX8SAIUSRaNebSU3LE9Rk0cz7tAbXaIcX3Bx8c/OPldG7h+zH/pcDSYxX
 paUnnNoYUrbruv9tj7mXlYqkIWQv4QQt6GHs2ddOgX1AGTBfeXISP6SQiDyWTjk/NbHR
 b+mjFb+6MVtOfvU5852Ki0Xpv+ThWrGiWN+y8yiqg369Uz+VY9+adbVrgdUFTxdrtPpc
 qd8Q==
X-Gm-Message-State: AOAM532G8OzM2n2lI1kOpMLuoNwx0dGaYGEcUxAdAmXoSoixncOZHzea
 WVuaeHJmhDHY2jzJ+l2FBU7c0Q==
X-Google-Smtp-Source: ABdhPJyHndaGkURk6bVTdnyc6vFbT0sT8jqvwJ4aoftxCkncVRQimQ9YzkMukIQrIcenRhYqY439CQ==
X-Received: by 2002:a05:600c:284:: with SMTP id
 4mr20003728wmk.88.1620227886676; 
 Wed, 05 May 2021 08:18:06 -0700 (PDT)
Received: from CTHALPA.outer.uphall.net
 (cpc1-cmbg20-2-0-cust759.5-4.cable.virginm.net. [86.21.218.248])
 by smtp.gmail.com with ESMTPSA id l21sm6008566wme.10.2021.05.05.08.18.05
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Wed, 05 May 2021 08:18:06 -0700 (PDT)
From: John Cox <jc@kynesim.co.uk>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com,
 kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, kernel@collabora.com, cphealy@gmail.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
Date: Wed, 05 May 2021 16:18:06 +0100
Message-ID: <6bd59glrp4fq3j3ngmbl5p4u7aethvrv34@4ax.com>
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
In-Reply-To: <20210420121046.181889-7-benjamin.gaignard@collabora.com>
User-Agent: ForteAgent/8.00.32.1272
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_081810_777464_5E27325D 
X-CRM114-Status: GOOD (  15.86  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

>The HEVC HANTRO driver needs to know the number of bits to skip at
>the beginning of the slice header.
>That is a hardware specific requirement so create a dedicated control
>for this purpose.
>
>Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>---
> .../userspace-api/media/drivers/hantro.rst    | 19 +++++++++++++++++++
> .../userspace-api/media/drivers/index.rst     |  1 +
> include/media/hevc-ctrls.h                    | 13 +++++++++++++
> 3 files changed, 33 insertions(+)
> create mode 100644 Documentation/userspace-api/media/drivers/hantro.rst
>
>diff --git a/Documentation/userspace-api/media/drivers/hantro.rst b/Documentation/userspace-api/media/drivers/hantro.rst
>new file mode 100644
>index 000000000000..cd9754b4e005
>--- /dev/null
>+++ b/Documentation/userspace-api/media/drivers/hantro.rst
>@@ -0,0 +1,19 @@
>+.. SPDX-License-Identifier: GPL-2.0
>+
>+Hantro video decoder driver
>+===========================
>+
>+The Hantro video decoder driver implements the following driver-specific controls:
>+
>+``V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP (integer)``
>+    Specifies to Hantro HEVC video decoder driver the number of data (in bits) to
>+    skip in the slice segment header.
>+    If non-IDR, the bits to be skipped go from syntax element "pic_output_flag"
>+    to before syntax element "slice_temporal_mvp_enabled_flag".
>+    If IDR, the skipped bits are just "pic_output_flag"
>+    (separate_colour_plane_flag is not supported).

What happens if it is a dependant_slice_segement or
output_flag_present_flag?  Those flags are all dependant on
dependant_slice_segement being false.  I'm guessing 0 but it maybe
should be documented.
Likewise if output_flag_present_flag is false pic_output_flag will not
be coded, so maybe express it as "after slice_type" rather than "before
pic_output_flag"?

Regards

John Cox

>+.. note::
>+
>+        This control is not yet part of the public kernel API and
>+        it is expected to change.
>diff --git a/Documentation/userspace-api/media/drivers/index.rst b/Documentation/userspace-api/media/drivers/index.rst
>index 1a9038f5f9fa..12e3c512d718 100644
>--- a/Documentation/userspace-api/media/drivers/index.rst
>+++ b/Documentation/userspace-api/media/drivers/index.rst
>@@ -33,6 +33,7 @@ For more details see the file COPYING in the source distribution of Linux.
> 
> 	ccs
> 	cx2341x-uapi
>+        hantro
> 	imx-uapi
> 	max2175
> 	meye-uapi
>diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
>index 8e0109eea454..b713eeed1915 100644
>--- a/include/media/hevc-ctrls.h
>+++ b/include/media/hevc-ctrls.h
>@@ -224,4 +224,17 @@ struct v4l2_ctrl_hevc_decode_params {
> 	__u64	flags;
> };
> 
>+/*  MPEG-class control IDs specific to the Hantro driver as defined by V4L2 */
>+#define V4L2_CID_CODEC_HANTRO_BASE				(V4L2_CTRL_CLASS_CODEC | 0x1200)
>+/*
>+ * V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP -
>+ * the number of data (in bits) to skip in the
>+ * slice segment header.
>+ * If non-IDR, the bits to be skipped go from syntax element "pic_output_flag"
>+ * to before syntax element "slice_temporal_mvp_enabled_flag".
>+ * If IDR, the skipped bits are just "pic_output_flag"
>+ * (separate_colour_plane_flag is not supported).
>+ */
>+#define V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP	(V4L2_CID_CODEC_HANTRO_BASE + 0)
>+
> #endif

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
