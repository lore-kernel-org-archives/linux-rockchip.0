Return-Path: <SRS0=iGaN=IJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11A0FC433E6
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8F5F564F99
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8F5F564F99
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wr48zEZxcREcoZMdUIFq+9+finLVG1t8gCDlS8DekhU=; b=ck4xz6UlK+Gpc7UoqnLTlbho0
	kv9VfiAn4KIqL0qY1QHRFJbhNDRNPGBm/xWhZJLzE3bIX5LaqxpstTf/BwJUwOMCoiDbDGYZVnZ/u
	GQfY1x8+OpGmcbihDpj+V/VBuwVnpZlD/F+htMypBLeJNSyZeivQ/Iz6B6AhCvImSVOzyzlRPKy5a
	fZj6f5YD9lR4ne67OWZ22RO4j4NuFrW/JCPnKFRL914OvyXJOlWq8MyaDBgkqU/TPU5I3pX06ofKh
	3KEByBx6e5V2KSfavqM6eDQ81vZQ9AAtvkKiIdABYBA9PbqHzj4uHAsvhi5uwHD0Q/D+RBCQ+n6oY
	hj9z+TY8Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKNR1-009UE5-8l; Thu, 11 Mar 2021 15:41:11 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKNQw-009UCS-79
 for linux-rockchip@lists.infradead.org; Thu, 11 Mar 2021 15:41:08 +0000
Received: by mail-wr1-x432.google.com with SMTP id 7so2403136wrz.0
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Mar 2021 07:41:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ssl1iA7M+yjQgL0tdJM6ww1IB2abRHT8PVziTs2Mluc=;
 b=uV0pMhDzaz1GVXPWhNOl4ltw/m0ib3QSPlmU13jsCAD8j6S3lXnGvfQ3eAZyyPWSvs
 MZf7igUMPMyehp6+5cD6v0XPVuQkjMta4RMSEWyq+3EtU0Y67Ruhi7hiQdXKSYfvFcWE
 qQk4sShgwwtyLz3koVtF7pOqfSv82Ds1bRNbHGFHzGnjDjTZcRLdWIov1YOK40/S/PAJ
 DAq50hONyoJBazW7n+ByyIklAD4ZFqntEDTbMQzp7ktvcJRnbUSjCT/qc8ug3bJt31XN
 SDb8c5VBi2xTTIxzQI1eFWTPpGJwaZpeGhkgZqfM3CKk9PYU/ihJAcN+2xg4QL5IRrVw
 uiaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ssl1iA7M+yjQgL0tdJM6ww1IB2abRHT8PVziTs2Mluc=;
 b=PLXymeOCbOceZ+wOg+f6a2tL9XWPc5uguPDbM657FnhLKfApFmD61ihDKClEsrxjvm
 KnEPkMxOaNbCPtzYF7Y4o0ZWT8y901CVz4Yaqa0nSeFnjxzT/tI9SDdx1d7hIxpEAuNN
 oV3/8xqXs2qHaXEBr2QMtOyKJfi0CuwFSaf4tgnn5Vz+W1MP5+aCgzbrYysl3plyZBlU
 INwaj95n1vNTF2aoqro4ZAOmMy1Po8kSNoCqT6ouXE736H2PlzozOf1RfwDTAB/JFp6+
 Cdz6eaKfRzuyGULQL81D6osMaqOwPF8cXgaRxMPITil9BFrP61tAtiNShjuV4mpaR5TC
 vp7A==
X-Gm-Message-State: AOAM5306xukEaUibupHsA5yhZxNA/V5u6zfKh/zHfXFTY1i71QUQKc+b
 qorQTEW/GjoCFirJui5/tt8=
X-Google-Smtp-Source: ABdhPJykA0Zp7nDR2YtIXj7sKTeSrV/YQpNVe+k/BleazGZ0VeBDADL8vXMQnpYVTVzI+rrkLkkD/Q==
X-Received: by 2002:adf:ce8a:: with SMTP id r10mr9340135wrn.17.1615477265973; 
 Thu, 11 Mar 2021 07:41:05 -0800 (PST)
Received: from arch-x1c3.. ([2a00:5f00:102:0:b16d:9752:8f38:7d6b])
 by smtp.gmail.com with ESMTPSA id a17sm4008547wmj.9.2021.03.11.07.41.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 07:41:05 -0800 (PST)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v2 03/10] media: hantro: imx: remove duplicate dec_base init
Date: Thu, 11 Mar 2021 15:40:48 +0000
Message-Id: <20210311154055.3496076-4-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_154106_292303_3B22E358 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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

The vpu->dec_base is already set by the hantro driver itself.

Fixes: 8e4aaa687863 ("media: hantro: add initial i.MX8MQ support")
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index 1f48c1956cd2..cb1ac02c03d2 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -150,7 +150,6 @@ static irqreturn_t imx8m_vpu_g1_irq(int irq, void *dev_id)
 
 static int imx8mq_vpu_hw_init(struct hantro_dev *vpu)
 {
-	vpu->dec_base = vpu->reg_bases[0];
 	vpu->ctrl_base = vpu->reg_bases[vpu->variant->num_regs - 1];
 
 	return 0;
-- 
2.30.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
