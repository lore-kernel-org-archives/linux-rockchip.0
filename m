Return-Path: <SRS0=fCHL=I6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1393C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:43:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 443626135E
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:43:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 443626135E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/bD7IJIeBcs+pRekvWEhaoDv/13TMX6dcZXZRLTyCCY=; b=S26qyM6xh0bZPhaa6cRfKl6aR
	mKl+5xn2945UpouSwzTDrV8AruMtkWIAuyxyY7Vs1imr3/r9q1FmV6efpXkFhhjYrrH4pYafoBseu
	t9MKPrEwqIKwI+oPqDjNeV+Q8rpeLQX/UH4Qb5h5TrBJ6UrOZy+ls+BhVd6CqOCS3AxwgK/N/P6yq
	89Oizipl4t//By7N03iW90iNTDQ0+yAebvfAcN91I/ZHtKpY9bXc297rVMI6iNyam/wPArEjpRiar
	/XbVsk8kBsQb+5GSRa68+sLeV74m5ZmlcFSq2h3k8Op6f9+qc+w6myDgsFA2Wnp6Ws3r8c8G5P7vh
	uOWwViRKQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRyY7-009scm-5I; Thu, 01 Apr 2021 14:43:55 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRyY0-009sZi-MR
 for linux-rockchip@lists.infradead.org; Thu, 01 Apr 2021 14:43:51 +0000
Received: by mail-ed1-x531.google.com with SMTP id x21so2256512eds.4
 for <linux-rockchip@lists.infradead.org>; Thu, 01 Apr 2021 07:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zVDA2U87siFM4bZ03zT66KCDipDzfZC9XU/CesvHFfk=;
 b=ppjMXHiKLN4nrgzpuZWnErAVl4VqKZhSm767onbkZd3jCkdF9RFeJcLceb3RjPrQP/
 0cRXkoEpt0a+YJ4pvQELXNYptTgiOZjodVCpqi/hdUOVJ7bly6TetsSrZJp2rG8n10LZ
 NVipJJUp6zrh944qg6i+6/y3xf+raLRS1kTntUju58niMldgO2LwSze05TjwaWeClZkH
 TdWXEi5vTK8EZKxw9cnM1rHgp51UMYq44cbMPaqXxKApsbnD47EPbqQXr1TrC4EkHvJ/
 g7afBz7qMgp8U2UJt6Pw7wAaSVvBEUrPI+mbS1aZ22kH0Nx9bhrqLk06iZ/qgmmLh/Hh
 EBdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zVDA2U87siFM4bZ03zT66KCDipDzfZC9XU/CesvHFfk=;
 b=RB3ptmPRPFk+IxdLxygIl2dgqN3zMlL8T6VyIJPvKMbXIX/ThqvQMtvjUiWiSCNYjw
 2fZ+alveGJXDIz0K+Rt2vvbQRGeFg+sWUrrJEAunFmdVFnVEMTx3AHsLDJS9ByUisamu
 jSW22+eb8SoSdbPpUdAGawjd3xEwl5RSOaEc6VCZp4yQrrJAzUG2D3PJdXpKLuaEYwP/
 xRMD/Kd7qSHTcwBpdBhYwknvRM5PElzCMAfCEowCsdhETLIVtbkFJRv9lPcGJ1b/j6oy
 +oXlBEaSFokT4PW23xR769Iv2ZOCdgyNLCq5qy+jfHf/iOY3Xj9RgiDgkyTwnwD83NPj
 ECIg==
X-Gm-Message-State: AOAM533xc4L8VIi7dzIbeLDFByBdAxxqbTILV4oarT866CDry8XPwh5X
 S0D/dEFQv3YL5N643Yjo0okiNEbX3eL9+w==
X-Google-Smtp-Source: ABdhPJxDjWYWAJ6CH7cpMYUtIYM3bzWT+WYeumva0k/FHVEhLjz31ru+X9G8m029yNHv5J5ZNSvlWA==
X-Received: by 2002:a05:6402:c11:: with SMTP id
 co17mr10540834edb.246.1617288228170; 
 Thu, 01 Apr 2021 07:43:48 -0700 (PDT)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id nd36sm2854950ejc.21.2021.04.01.07.43.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 07:43:47 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v4 3/9] media: hantro: imx: remove duplicate dec_base init
Date: Thu,  1 Apr 2021 15:43:30 +0100
Message-Id: <20210401144336.2495479-4-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
References: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_154348_821392_AC9B3C83 
X-CRM114-Status: GOOD (  10.75  )
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
