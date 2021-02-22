Return-Path: <SRS0=vRnG=HY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12D83C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 16:16:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 804C464E61
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 16:16:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 804C464E61
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kynesim.co.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VD2wC+yQM7LXcEBS/IsgFfSuFGznVcQ5HXjcFVnZ76M=; b=DdclrtDxdSUbqg9zHGrDkfnnZ
	0fOOOnhrM6IDCgiAepSIUJhKzWib/Iufjd79SAlGa1e4DeqkDuDaA+OcsNxerbxMmvQQKwl2dfhDP
	lcTgKW5tpEBZdEqJcKz77xe8nZeeATQ70cQR6BD9oToO/XGpoOrbctz33q48doccQOorAdpdI8Tr0
	9sFaqoRBa7lQw1vsMpDCoRJmU4ERQ9P4QYK1ANxc9WIJJON/vJ2YAlW8PLivR7Mt/k7hut2Kgq5Ot
	Pme0C8n4Rxa/3PhVS91lk5MI5WJNBTRD377Dt2FvuMFVBkoFFwGGc0z7aIt0zEA6LAJauBRJNgujM
	FTdxg/s/A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEDt9-00015U-Bp; Mon, 22 Feb 2021 16:16:47 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEDt4-00013y-JP
 for linux-rockchip@lists.infradead.org; Mon, 22 Feb 2021 16:16:43 +0000
Received: by mail-wr1-x434.google.com with SMTP id v15so19699934wrx.4
 for <linux-rockchip@lists.infradead.org>; Mon, 22 Feb 2021 08:16:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kynesim-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:references:in-reply-to
 :user-agent:mime-version:content-transfer-encoding;
 bh=JfoS7b6/sOvQdhiQ4TqWKAxzwfRkbo3cRQSKpQASk6g=;
 b=Y/DvtKO8oaONQpL5G+ZUBUdkYAK5x3McgfepTCzgv16leBTZ1JwM6jKzn55dD41HBU
 KvQZFaZfKAg+qV7cHqJyNbzhAYEK+m2D6F7zYWWJXs/cYANdASp0KeeTMDLOmyThKENf
 EfAb2EDffplRkf7JPnpGu8sIomDhruCDOYVbfXT8AwPOc85qWdJvBHCTTcGd4ERnEAtP
 9XNNxJYLj6cCzznnpJeHSgbBAKhfpfU/dnuO9WrSgexyHLAGrhOVCKnQ6pbFFFjHwyfK
 u4RGL2SmwGqvR24f2zpuxhg8PsPg0FXBVphxKcfcFNwo7a10YzyDOdXbBWakNT/SD8Cn
 C9Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:references
 :in-reply-to:user-agent:mime-version:content-transfer-encoding;
 bh=JfoS7b6/sOvQdhiQ4TqWKAxzwfRkbo3cRQSKpQASk6g=;
 b=rXv2dQwvT5mNQVC5lXyLcU1Cm0TIjb/UjgxZtFG8Ce1Am6rNGlJcSMsD3vSDvKRjEm
 2kprUnBN6rR7JjXr+0RnHR1gsTuObqvmxYT2pTos9brjtNwAbFoek9o3bzjYKHLHVib5
 qwDB3CvzQu/Hqigd4W5uAI3ZYfcBVN0aOsmZHtPkqZWXJPjJmmwczfGjXIeauwZbeLGD
 2j1z3ptgyux1plV7dU7a7O/UaNbGy3WjbR/r1tY90jd9034YM+TRepbYnmDxgxFJ0rOr
 aSenKyiFBQIJhhpazSgqDvfkpQz5qGCufuns9fG8m/PYwQPVQoV9El4P1mMVKuqJkmsu
 Mbbw==
X-Gm-Message-State: AOAM530y6AbmsPfll06DJwxMg1lJQCGGXReR+jmsH879PVpFCV4KPRzy
 Dx8jgduZmJ/+zGaLp5HhSH3krg==
X-Google-Smtp-Source: ABdhPJze7PUB/iMhOeCzbnwQZ0ILac4Yvbp1oX/ft5wHD4R8VP2Ac1Az+dZZ6bOHD17qoIXDYH6Wpg==
X-Received: by 2002:adf:9565:: with SMTP id 92mr22083905wrs.201.1614010599943; 
 Mon, 22 Feb 2021 08:16:39 -0800 (PST)
Received: from CTHALPA.outer.uphall.net
 (cpc1-cmbg20-2-0-cust759.5-4.cable.virginm.net. [86.21.218.248])
 by smtp.gmail.com with ESMTPSA id y16sm28604145wrw.46.2021.02.22.08.16.38
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Mon, 22 Feb 2021 08:16:39 -0800 (PST)
From: John Cox <jc@kynesim.co.uk>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v2 4/9] media: uapi: Add a control for HANTRO driver
Date: Mon, 22 Feb 2021 16:16:39 +0000
Message-ID: <9ql73glgbnjaqqsp8ulqenae5n82kfk0o3@4ax.com>
References: <20210218191844.297869-1-benjamin.gaignard@collabora.com>
 <20210218191844.297869-5-benjamin.gaignard@collabora.com>
In-Reply-To: <20210218191844.297869-5-benjamin.gaignard@collabora.com>
User-Agent: ForteAgent/8.00.32.1272
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210222_111642_846050_57F1741E 
X-CRM114-Status: GOOD (  12.74  )
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
Cc: peng.fan@nxp.com, kernel@collabora.com, festevam@gmail.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 dan.carpenter@oracle.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, p.zabel@pengutronix.de, s.hauer@pengutronix.de,
 mripard@kernel.org, robh+dt@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 jernej.skrabec@siol.net, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

>The HEVC HANTRO driver needs to know the number of bits to skip at
>the beginning of the slice header.
>That is a hardware specific requirement so create a dedicated control
>that this purpose.
>
>Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>---
> include/uapi/linux/hantro-v4l2-controls.h | 20 ++++++++++++++++++++
> include/uapi/linux/v4l2-controls.h        |  5 +++++
> 2 files changed, 25 insertions(+)
> create mode 100644 include/uapi/linux/hantro-v4l2-controls.h
>
>diff --git a/include/uapi/linux/hantro-v4l2-controls.h b/include/uapi/linux/hantro-v4l2-controls.h
>new file mode 100644
>index 000000000000..30b1999b7af3
>--- /dev/null
>+++ b/include/uapi/linux/hantro-v4l2-controls.h
>@@ -0,0 +1,20 @@
>+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
>+
>+#ifndef __UAPI_HANTRO_V4L2_CONYTROLS_H__
>+#define __UAPI_HANTRO_V4L2_CONYTROLS_H__
>+
>+#include <linux/v4l2-controls.h>
>+#include <media/hevc-ctrls.h>
>+
>+#define V4L2_CID_HANTRO_HEVC_EXTRA_DECODE_PARAMS	(V4L2_CID_USER_HANTRO_BASE + 0)
>+
>+/**
>+ * struct hantro_hevc_extra_decode_params - extra decode parameters for hantro driver
>+ * @hevc_hdr_skip_lenght:	header first bits offset
>+ */
>+struct hantro_hevc_extra_decode_params {
>+	__u32	hevc_hdr_skip_lenght;
>+	__u8	padding[4];
>+};

Can you clarify how hevc_hdr_skip_length differs from
v4l2_ctrl_hevc_slice_params.data_bit_offset?  At first sight they would
appear to be very similar.

Regards

John Cox

>+#endif
>diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
>index 039c0d7add1b..ced7486c7f46 100644
>--- a/include/uapi/linux/v4l2-controls.h
>+++ b/include/uapi/linux/v4l2-controls.h
>@@ -209,6 +209,11 @@ enum v4l2_colorfx {
>  * We reserve 128 controls for this driver.
>  */
> #define V4L2_CID_USER_CCS_BASE			(V4L2_CID_USER_BASE + 0x10f0)
>+/*
>+ * The base for HANTRO driver controls.
>+ * We reserve 32 controls for this driver.
>+ */
>+#define V4L2_CID_USER_HANTRO_BASE		(V4L2_CID_USER_BASE + 0x1170)
> 
> /* MPEG-class control IDs */
> /* The MPEG controls are applicable to all codec controls

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
