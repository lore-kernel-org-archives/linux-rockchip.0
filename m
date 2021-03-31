Return-Path: <SRS0=G7C5=I5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71C8DC43461
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CBCC261026
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CBCC261026
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uPgXfCYBtQWKGpRkf9mZyAElYuoQ5c+W+UefNUFGi7Y=; b=FAkAwNUzGmq4v5t+7Gxccz9zT
	vWA+e2WLwPyaBPXgaotiUkjSrmzdZw9IGuSqutSEbKGewLcQByFMDdr/upwCTyLVRhO5aCoBRvvtk
	hLnOrADZ9fI3PW6piCIvgX2KoxwcsY4WR8WuOHKZ91x3e55T2dGaMFbvC/FmiXy4H0hRyjbFFNhr2
	ZRISQ/jxKGOfwbIJjFHCgMJLiBDeB2Eai/q8mOQYx4m1RnxUXCMVhz//OrdWtflmHNj87LUQgoC85
	McxMejFrJKngCLCZNzcaBku2oaSkWBspqsRflydr0XSGSq3t937FEv5OHOL6xAvCrHcuVdwV3gI0l
	g/VOBP/4A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRekm-007CYx-89; Wed, 31 Mar 2021 17:35:40 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRekf-007CVv-4d
 for linux-rockchip@lists.infradead.org; Wed, 31 Mar 2021 17:35:37 +0000
Received: by mail-wm1-x333.google.com with SMTP id
 u5-20020a7bcb050000b029010e9316b9d5so1549920wmj.2
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Mar 2021 10:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RKzjLcplK3Qj6N++ugVsRlEJA8YUUn4W3Fexo0s7VWk=;
 b=Y2kJKmF/QEmz1+0o48IS5Tb0knr0LPos4GWWgf3flr4f7Vinr2UFj65rRD9zQZ8AxU
 ES3d1m308XPWizeyaHi0Rd8DpZ7wQ0Tn3QaDTtf0yZRckbCxgAdIcMYD8dxA4tLilcjP
 spzCJ/XjFkJ08xXrn11ba5WuKKLsfBkvGyeB8wR1kmH7eXHYQBdKaBUdMhYpmLBJkuWv
 BULfWxBlA69G5kWTqLso3NZMyQvl5A6JBlI1tOcypC5cLxv8tq885Xs/sHFWvEUdFpxX
 9cJPGaTmoLTS+KVH3XmvTeR4Ze+KnDSJS6MPobSW77H/ns0B7HeZSavgR9y15B+kwNLG
 lChQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RKzjLcplK3Qj6N++ugVsRlEJA8YUUn4W3Fexo0s7VWk=;
 b=Dh5UpXjHjof70E5bA431yMz9W4XCiFAWAsN3830R0fxKJifbvHs2fd3btz+V1HG8LZ
 9HkjmrS1ClMzszUP/455HwHi9qGjDquYJbfziBEpt7SMpLeXjyVYWU0Z/w8gf+DmylUF
 tZ9rt8HgoBxJnxyvrZKowaPP3hKriDkBCsDIvcOs0f/qhH0zRh8SfHbT59QGWFX0yE3B
 dZFUJsQzyvVyp6i9bLeVOe1A2I7CkL+EpS8XfbRivHkVYWM59AMmeTB9pcsDtz49DGra
 X61blH1WPMBWtAtOnVgfZz75MYlZHbJYEA1VHiI47CpPo7b47jYnxwOGlC/LcD2pst/I
 2cnQ==
X-Gm-Message-State: AOAM531DuAvamzR7e02ATdubJUtJDMz5O/+sh5/8vzmtHlvJxpsgVU53
 nOEHfm4MXBlYFekzUUgBrAw=
X-Google-Smtp-Source: ABdhPJykb1Gm/yG5gTGpyJoWqqGtDWKZ9GLEauQ0tzwUU0osQDKIEr317Nvq1XzoroUShjfr7aJ+kA==
X-Received: by 2002:a05:600c:35cd:: with SMTP id
 r13mr4251681wmq.186.1617212131818; 
 Wed, 31 Mar 2021 10:35:31 -0700 (PDT)
Received: from arch-x1c3.. ([2a00:5f00:102:0:6e1d:cfb9:fb12:552d])
 by smtp.gmail.com with ESMTPSA id 12sm4714200wmw.43.2021.03.31.10.35.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 10:35:31 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v3 4/9] media: hantro: imx: remove unused include
Date: Wed, 31 Mar 2021 18:35:15 +0100
Message-Id: <20210331173520.184191-5-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210331173520.184191-1-emil.l.velikov@gmail.com>
References: <20210331173520.184191-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_183536_083995_6D0ED845 
X-CRM114-Status: GOOD (  10.32  )
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

From: Emil Velikov <emil.velikov@collabora.com>

The current imx8 code does not use the jpeg encoder. Remove the
unnecessary include.

Fixes: 8e4aaa687863 ("media: hantro: add initial i.MX8MQ support")
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index cb1ac02c03d2..f36c1bd681ba 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -9,7 +9,6 @@
 #include <linux/delay.h>
 
 #include "hantro.h"
-#include "hantro_jpeg.h"
 #include "hantro_g1_regs.h"
 
 #define CTRL_SOFT_RESET		0x00
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
