Return-Path: <SRS0=Y7pG=FI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5715BC4361A
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 23:52:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D43BA22CB3
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 23:52:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D43BA22CB3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r4yFAxVQmnpxLY8cQPhcjgpmX8fMfASavQuyvF5pnN8=; b=opCtHAJH8KfkrWZIIj7rOJ8/Em
	umCB05rN5I27fEzuFsEFJtftfhgkH7VepUc7qwXlrz/P5Ph6Av1I1HaeW3dLWLDFx8X1gUQMGEjqO
	o3WzPECCDStwvssOfPx9OsNrTRzK4vJ4FWVEy/CtkDjF5AiFSz3n4UuKxh2J7CtPkM0yynM//qEZ7
	XEjblKl4fEpr7t5dIoSwLmmOuDEcV4W7S+w5XPf/KUEnbsVw3ndA1/IlJJUgcAeK9O/43uVpnp83N
	Jjb5Jjirtsd8mfXKtrjyzzG23p/jvqpudTXNrNeI45lyEAOOLKPA8ElpNyWIbk0woTcUed+Vk4blx
	weGp9Crg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1klKrj-0006Zh-LX; Fri, 04 Dec 2020 23:51:55 +0000
Received: from mail-oo1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klKri-0006Z6-1J
 for linux-rockchip@lists.infradead.org; Fri, 04 Dec 2020 23:51:55 +0000
Received: by mail-oo1-xc44.google.com with SMTP id t23so1817621oov.4
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Dec 2020 15:51:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=xEkMnTiVHY+tC4E6hkhP6genGPHTd0rY7OtoiGotd8g=;
 b=rd0aiJ3ctb+1EhFlogqQIof+oUylf8/J7pGvmiqigxpJDioooFy/xANBc1OnaBeSVn
 vGfoaF0At8VJukQuiv7UX5YLX4AMwQ7B+ZlkTzzAvrBKADUjhAn/gjezQADZg+HNqYg6
 SyJYpebRTj+vQoWUWKel1L0jqNSoRHaPfflS6YryvVP269mn1ubj9QAG/LmzOf/5vheU
 FvZBOxmRLjs0BLo8VzmrYZ7zM0mvwQxfL2lZPWz/eNrjWO8ZJYZZCeJBzjPelR2kHqfq
 5HhiFF9mh75NBYgIe+UQdJc55+zhINqzuTByWRyVMK3iDfhewsAb7faQgsIDfGnUNh7P
 Nwxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=xEkMnTiVHY+tC4E6hkhP6genGPHTd0rY7OtoiGotd8g=;
 b=UC73+f4pxq13PWM+2fnjRr9ETa2rHL5rpKYDykzVAnrGvjHSbfz0WugI7L1taCWLx3
 7KUItfs0AzH3P5Y1l3t4rKoaKzLkoVs8iic69VSFy8G7BRDcb/lnnBBxESCUDE+bLaR1
 fXB37TD6MGAT9+pCuhlfANVML04v8OGbsm57fubtyLFuhBsT4safKJLgxCBFAG28WhjA
 arCHXYmcjho9pDIIoAZKQWMFuO6d+AVJHsqX7NESq0VXmjohDRC8nO7mIlTUwm77zl/6
 u6LrTOjz8MySwTuZbDkLheokKM792gXpKYUi4gInPD9aDufXFmy3rf2qvXtkkm6gQOAp
 f9Dw==
X-Gm-Message-State: AOAM530CbTp/A8IFHmu+uKTO+bLpNoGlA3dsvVaSKl4TVuOP3Onk+suR
 VQEjnNdOs0xvCJ+UfxD1kkd9/4iyTlu8Wg==
X-Google-Smtp-Source: ABdhPJypWDrjey6sPHgLyA6MYay2DhOehGE8F6wPc7fjNGF9WQu/jt2OVGaDwMyEY3yUKKD2D+Zebg==
X-Received: by 2002:a4a:4988:: with SMTP id z130mr2777945ooa.34.1607125911964; 
 Fri, 04 Dec 2020 15:51:51 -0800 (PST)
Received: from linuxmint-midtower-pc ([135.26.31.16])
 by smtp.gmail.com with ESMTPSA id l12sm1026266ooe.27.2020.12.04.15.51.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 15:51:51 -0800 (PST)
Date: Fri, 4 Dec 2020 17:51:50 -0600
From: Travis Carter <traviscarter2@gmail.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 gregkh@linuxfoundation.org
Subject: [PATCH] staging:hantro: Fixed "replace comma with semicolon" Warning:
Message-ID: <20201204235150.GA8626@linuxmint-midtower-pc>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201204_185154_218328_57A2C96A 
X-CRM114-Status: GOOD (  11.58  )
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
Cc: devel@driverdev.osuosl.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Corrected the following Warning:
drivers/staging/media/hantro/hantro_v4l2.c:319: WARNING: Possible comma where semicolon could be used

Signed-off-by: Travis Carter <traviscarter2@gmail.com>
---
 drivers/staging/media/hantro/hantro_v4l2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index b668a82d40ad..e1081c16f56a 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -316,7 +316,7 @@ hantro_reset_fmt(struct v4l2_pix_format_mplane *fmt,
 
 	fmt->pixelformat = vpu_fmt->fourcc;
 	fmt->field = V4L2_FIELD_NONE;
-	fmt->colorspace = V4L2_COLORSPACE_JPEG,
+	fmt->colorspace = V4L2_COLORSPACE_JPEG;
 	fmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 	fmt->quantization = V4L2_QUANTIZATION_DEFAULT;
 	fmt->xfer_func = V4L2_XFER_FUNC_DEFAULT;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
