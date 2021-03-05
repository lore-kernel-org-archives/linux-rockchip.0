Return-Path: <SRS0=+3Ix=ID=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D99A1C43332
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 18:39:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 607ED650A4
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 18:39:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 607ED650A4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HDOIsFDNJl0N3dc7vWBBtX2I2BmvStpo9FirTxX+4e0=; b=TN+AmB7Up+RlLaxG7WeOcpXI9
	iUUoMXmuD9rwt95qKhiAOkNyCdULXV8C4RaIdqQTz4OG3pb1rUPJyutP0A3AzvY9Dnvc+5I1RV38j
	U9/R0hYpPrhFNcK+HK21/tiqzUZxT+RUStlhNXD5dKsBFGUn3SIsb6MlT0m5xwnvlx8B4jOQgXrYg
	IFIWDIIaKMN90AI7gzlaia1h+uFZBw/HxuPp7qI1EaOJNX5yTBTTHqHazjLjRK4/6ZhcAODNsqgKR
	zUAvy+a2syyX+cFuoq/e6gYj7zyc4bdRi7ACcIdXJRIrdo32c0NKM3Hjf0uu86CNoraoKIGwBIpfw
	lf4Tcvznw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIFMW-00G0Ea-6f; Fri, 05 Mar 2021 18:39:44 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIFMR-00G0Bs-Po
 for linux-rockchip@lists.infradead.org; Fri, 05 Mar 2021 18:39:41 +0000
Received: by mail-ej1-x636.google.com with SMTP id mm21so5335388ejb.12
 for <linux-rockchip@lists.infradead.org>; Fri, 05 Mar 2021 10:39:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ay/VePmX2E/QdxtPcN6EVcrY1//aOiSoLhu5+Byfit4=;
 b=a6a3cisX0udcGADfxE4OE2hEwPSsWnQDpdAmXJJc+Vy1RKa3JKLMgmD/eKbNdVfA4A
 StQZOtXuo3QZh1t/6ubhyM3b2+NpyGJ3lhuLQXKGQ8yEKNp51WNB/Q1YUUn28F7LxAZR
 wL7GM/MAGl+djORupYY6CXx/DcB4t6yUj5K6wSnP67wVDe5epFqhSh5Rcn0gLufmrOlT
 NY9Bvw9rZ/oGTblMv60mnLyDaoI9/xks0ECCKT6Xguqzd3cXmirXnFnJ4Lok7+k4G1o/
 dyHvOFKQ/O34Kpj9USKsyRxf7VOIB7+r2cAq5uAKsI7SQI/NDnVFokFQJ2UbVxrrweCl
 PqRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ay/VePmX2E/QdxtPcN6EVcrY1//aOiSoLhu5+Byfit4=;
 b=ekbER0icwJKvrw/yCcgME3SNP8u0ev/9UQhsGGVhMDJTm1wTztYQhpbvwPEf75ko27
 A0UOSEVrmMT7ZK8mSxeW4kEgzn6fM18Z2Ne8z75XjStd/dlSF/gCZnXI9HJDH1FTW6RG
 xH5dmtBC7jva6wtw0lpGlhg/HY6DVoYmBPnEgdBQebb643l1pof7C7iH51VKawBQ+UjC
 fe8DoIFUuaH31pDOBIK0N2bj3QtBEZ2GtjJ4pHfqoK3RBBoRqmi1JQIx+iugkc3WKLzW
 uu3avLVV/ao5Y36breR/4TGnFOyW6xqQTBhu1zjOUVMlybfJ2LJZdrFHDb+gU7JbFTJE
 Xwlg==
X-Gm-Message-State: AOAM533bGRc1tymbVQpbB1EDl94FZDQ/OmvSQQsD2On2Zwd31pnpnHGr
 FAlKtfzsQH/ylKpFvwofVnQ=
X-Google-Smtp-Source: ABdhPJwEwactJjc4D3Bx7DICv+mc4VyjqP52lF84bycTxInNNIhN5/8ERDGvF9ftNFCzrlU/cOdTVg==
X-Received: by 2002:a17:906:9243:: with SMTP id
 c3mr3279149ejx.388.1614969579120; 
 Fri, 05 Mar 2021 10:39:39 -0800 (PST)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id o1sm2121808eds.26.2021.03.05.10.39.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 10:39:38 -0800 (PST)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 3/7] media: hantro: imx: remove duplicate dec_base init
Date: Fri,  5 Mar 2021 18:39:20 +0000
Message-Id: <20210305183924.1754026-4-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
References: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_183939_963662_81B64D26 
X-CRM114-Status: UNSURE (   9.94  )
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

Cc: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
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
