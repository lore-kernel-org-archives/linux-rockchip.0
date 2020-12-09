Return-Path: <SRS0=aL02=FN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 008C3C4361B
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 19:13:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5BDDA23B99
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 19:13:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5BDDA23B99
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j9kncU2546RhO/RT2zMaig5pirpTV5bUCgoRLtSRrxc=; b=g8CLQjIhgSv+p8U1Ntn6Wtxcc
	sxc3PxlFgx8WCrBZoD67qNWtAalSg+ATUH3xp15c4CfUnZl1L1u0MhGCSktMQFBzucdn7c2F7SWFs
	jZnq/p/8nm84qZV7wkPjMse25X5g/BV/d9R7jO56xjf7budTOqr0SayM6XPo1lZMwnDy/PO1ugHo+
	fnOCd5OxNvZlHWuM33uWfZ3xr2F9MVuYrpLPvTXV18qusPjeC2ISGeRCDjC2eJWMkCukZK9DDwSMp
	/oe/8Kd1UVsvocZGvve347aoDeICGO8h8zGGiByJa8f5tN6uqdann8KEECGGdTpW6kkL3RWEgP9qM
	nyiUuB+5g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kn4tm-0003Zq-9V; Wed, 09 Dec 2020 19:13:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kn4tk-0003ZS-1G
 for linux-rockchip@lists.infradead.org; Wed, 09 Dec 2020 19:13:13 +0000
Received: by mail-wm1-x344.google.com with SMTP id a6so2508600wmc.2
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Dec 2020 11:13:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QGsNCoFyuXYlWc+RPgiCYoYd99VmiPtmS4GDMy0qrO0=;
 b=JofIVOagIWas3YcijaSw42IPCrj+ur815zgh0C9+Sr7Gu2cmNPwAAP4LaRQD7BMs1+
 h8TTYyuoOys+8zvJHgr+zh13TxvGf07PJ8nWpPtkJN4VwlvM/jbHl/Ziw5yovt1Gexef
 6XyA4FegR9VUCCWDeuEW3bwRVWhDUYFGIFkM8OZ9LVDvy85ypJ7vX+uUH4OX/siOHP+g
 VxqroOjBvogVISIzZrnO7DCoa8IFu4IpLfq21qbCmRp7IKW2LzVpoxcBGe9Cw6446j5M
 lVeIEdISib9TWcDmwvcrd6wIm9n3Ozf7oBnvDSjC/lAWXBi49eatxmBvOoj3bJtkmwp9
 QUPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=QGsNCoFyuXYlWc+RPgiCYoYd99VmiPtmS4GDMy0qrO0=;
 b=l0Mkf+/ckhXRAEVpSps00K+WGHyi2h0c72uovjFIx1+CG1BVkXorRHhRKCBbmqYbFt
 49WzVOmMs9CE32uMVSoAs+HLekzaA0eLc94/WqhvUUnXePR4mzt3NlRebMcWLHY0RQLy
 8W+Nvs3QahHN8DHizPQGqpKh8iCZo18tjwEe1rnMCsg9fZEATF1ubdGhes+jObDKBtvF
 3S5F2dtriBkRGPs0IfXcJNfWb8paTgxWO2PQ5VCVCe92fpuTdLE402VXVB+3Sd1JfBCa
 vR41BakRsrmCNaSYMN/cexrH3264Mt9Qj/zdH47hpHjFotGbWLUIRgsNkbVhO0TLi4m7
 mS3A==
X-Gm-Message-State: AOAM533ouol89O5+iiOtQ5b3uXsaIAElLJ0xyDdagkjG4zFhxfaJSk/3
 BNu3okKgtivits2kevAW6SdwbnE/DzV8DA==
X-Google-Smtp-Source: ABdhPJyYSU7HkwSz2JP0LWF+J7I6cZyVaBUFHcgx/kyIFI/ezHt9cub7pVPGD3EZqfehuZIRP09xIQ==
X-Received: by 2002:a1c:bc57:: with SMTP id m84mr4304369wmf.163.1607541189699; 
 Wed, 09 Dec 2020 11:13:09 -0800 (PST)
Received: from localhost
 (p200300d1ff007700bf13caf5dd9666bd.dip0.t-ipconnect.de.
 [2003:d1:ff00:7700:bf13:caf5:dd96:66bd])
 by smtp.gmail.com with ESMTPSA id j7sm4763614wmb.40.2020.12.09.11.13.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Dec 2020 11:13:09 -0800 (PST)
Date: Wed, 9 Dec 2020 20:13:07 +0100
From: Sebastian Fricke <sebastian.fricke.linux@gmail.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH] media: rkisp1: rsz: crash fix when setting src format
Message-ID: <20201209191307.smr27xutbizjp56w@basti.Speedport_W_724V_Typ_A_05011603_06_001>
References: <20201209161510.31399-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201209161510.31399-1-dafna.hirschfeld@collabora.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201209_141312_116427_1713E84B 
X-CRM114-Status: GOOD (  18.34  )
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
Reply-To: Sebastian Fricke <sebastian.fricke.linux@gmail.com>
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Dafna,

Thanks for the patch, I quickly tested it and did some proofreading.

I was able to recreate the crash with following commands:

"media-ctl" "-d" "platform:rkisp1" "--set-v4l2" '"rkisp1_resizer_mainpath":1 [fmt:YUYV8_1_5X8/900x800]'
"media-ctl" "-d" "platform:rkisp1" "--set-v4l2" '"rkisp1_resizer_mainpath":1 [fmt:YUYV8_2X8/900x800]'

# This causes the crash:
"Unable to handle kernel NULL pointer dereference at virtual address 0000000000000004"

This patch fixed the problem.

On 09.12.2020 17:15, Dafna Hirschfeld wrote:
>When setting the source media bus code in the resizer,
>we first check that the current media bus code in the
>source is yuv encoded format. This is done by

s/is/is a/

>retrieving the data from the formats list of the isp
>entity. This cause a crash when the media bus code on the

s/cause/causes/

>source is YUYV8_1_5X8 which is not supported by the isp
>entity. Instead we should test the sink format of the resizer
>which is guaranteed to be supported by the isp entity.
>
>Fixes: 251b6eebb6c49 ("media: staging: rkisp1: rsz: Add support to more YUV encoded mbus codes on src pad")
>Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Tested-by: Sebastian Fricke <sebastian.fricke.linux@gmail.com>

>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c | 9 +++++----
> 1 file changed, 5 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
>index 813670ed9577..79deed8adcea 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
>@@ -520,14 +520,15 @@ static void rkisp1_rsz_set_src_fmt(struct rkisp1_resizer *rsz,
> 				   struct v4l2_mbus_framefmt *format,
> 				   unsigned int which)
> {
>-	const struct rkisp1_isp_mbus_info *mbus_info;
>-	struct v4l2_mbus_framefmt *src_fmt;
>+	const struct rkisp1_isp_mbus_info *sink_mbus_info;
>+	struct v4l2_mbus_framefmt *src_fmt, *sink_fmt;
>
>+	sink_fmt = rkisp1_rsz_get_pad_fmt(rsz, cfg, RKISP1_RSZ_PAD_SINK, which);
> 	src_fmt = rkisp1_rsz_get_pad_fmt(rsz, cfg, RKISP1_RSZ_PAD_SRC, which);
>-	mbus_info = rkisp1_isp_mbus_info_get(src_fmt->code);
>+	sink_mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
>
> 	/* for YUV formats, userspace can change the mbus code on the src pad if it is supported */
>-	if (mbus_info->pixel_enc == V4L2_PIXEL_ENC_YUV &&
>+	if (sink_mbus_info->pixel_enc == V4L2_PIXEL_ENC_YUV &&
> 	    rkisp1_rsz_get_yuv_mbus_info(format->code))
> 		src_fmt->code = format->code;
>
>-- 
>2.17.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
