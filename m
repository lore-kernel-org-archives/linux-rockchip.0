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
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC20C43460
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C7C06100A
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3C7C06100A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/bD7IJIeBcs+pRekvWEhaoDv/13TMX6dcZXZRLTyCCY=; b=axkIq1LQ2wwuUQZvTj/FXcT9W
	dtvtxN/5nLfvvtEWyuEiEEc6GdLmk1dg6wmX3/BnPXk8fM/9G3vS/CH9MLm80fe99ZgD0zB76zvM5
	dLbxaInCZKIIiLHva4K9kEMZlk2Dl0prv0qvzah2sfei43JxElXA7l+Tq1yZwKnoRxqeiKva/003N
	Sip8O9bSK14P+5iXvZznBXYDDF1o155hVu0OD14Id0vUjH6HFHKHj7FpK1+nTDjtAKoyFffCbEt6f
	wuWhISsMbrVe4KUPu1D9W9cqtz/yRNgevuViNJy2QSB+XEuAa+dWbbzcMAMQ7/r9LRy5UHlQBmHGA
	ikyypMTmQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRekk-007CYT-Vv; Wed, 31 Mar 2021 17:35:39 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRekd-007CVe-Bs
 for linux-rockchip@lists.infradead.org; Wed, 31 Mar 2021 17:35:33 +0000
Received: by mail-wm1-x334.google.com with SMTP id 12so10534908wmf.5
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Mar 2021 10:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zVDA2U87siFM4bZ03zT66KCDipDzfZC9XU/CesvHFfk=;
 b=jw0NR0Pxj8uM0WtAtSN3Bgx8kGIbnevLfdNHMT2ryH6VkqPIJfsiwiWKndehWXuEae
 02o5ptYoCY1HqW7JVx5GYTxEQ86ueMoILBmWANfovgpvijLay8SAOpvPO2w5zJikUv7o
 TRa5wyI+c5W2fjc+Lfp/sIZIsCQ0DdVzy2f1UqkpK5boYa7hgdY69uc3v2K874YumVN2
 hTD/eUz/m/uVkUksGmO9Rq4/g/+TVr5lxSLEpNC8nnNRnKEDUIrjYhnWgBMRRbqV7EwK
 fmn9d5nil9wTLYtqgCjUnIo5xqSrkWf1w9HiS9zRhWKON5VikosTu6cyZH/ts+vHgck4
 06Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zVDA2U87siFM4bZ03zT66KCDipDzfZC9XU/CesvHFfk=;
 b=C9gcZTXKMaOXYuX4wGHWXWPmxm38O+G3AVzDymXLBrJp2m8wUsDfFgeEK+tJXkXr2D
 dXSnMfhceCnEsYTvPTDU+OWlDbt4Tb/y+j6+ogDhVKiVAYOqdo/95jOb0/7joC2WrN+G
 SilriDEqhpI1U4fkdwrTqp0nLgVVPb7G3KwlG8RtQ2f/AObQ7PqPGi/Pn34yJWUiXDzS
 kFOQuedpSV5PI4dAHEiW9owtVtJdtbSc9VZoJlb8VoKgH6zcVUpH6CaIpOZxsdLVfRMV
 unQ3FNQLjQ9/DIFsn6W8mYD8dDAycZNyg2Psnl2epwtGY9WWtGAR9evtYniXGlP0q2WE
 IHUQ==
X-Gm-Message-State: AOAM532BGyS6WwWHEt9tmkYBLQ+k1gnBeFZDN+pfRxgwdqplwiX0lz9a
 eBMW/FfZ9Sd8otibkuAMcOLjsYVhjCgGrA==
X-Google-Smtp-Source: ABdhPJzuSwFwMSEJJ4VXKWTaJL0XmwpILnO7FdeSPO+nnDztjerBrxyZP6h8rTPDslnjtl6Bjffg5A==
X-Received: by 2002:a1c:3182:: with SMTP id x124mr4127095wmx.41.1617212130737; 
 Wed, 31 Mar 2021 10:35:30 -0700 (PDT)
Received: from arch-x1c3.. ([2a00:5f00:102:0:6e1d:cfb9:fb12:552d])
 by smtp.gmail.com with ESMTPSA id 12sm4714200wmw.43.2021.03.31.10.35.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 10:35:30 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v3 3/9] media: hantro: imx: remove duplicate dec_base init
Date: Wed, 31 Mar 2021 18:35:14 +0100
Message-Id: <20210331173520.184191-4-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210331173520.184191-1-emil.l.velikov@gmail.com>
References: <20210331173520.184191-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_183531_495873_D590E3CF 
X-CRM114-Status: GOOD (  10.64  )
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
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
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
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
