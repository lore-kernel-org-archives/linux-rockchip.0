Return-Path: <SRS0=UDvA=OE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1527C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Sep 2021 15:08:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A51CB610A6
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Sep 2021 15:08:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A51CB610A6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uihQe+HI503+uAvv/ILGoCBYlRuAmG57oVMLZ0BfFwI=; b=bepFlHvuAy//GR
	0PtL3AhOqaIX8qNXzID4LqY1Eu69xxGCquOOiPH/tBYZhjOl/EEtHxfagFZnkKULs9byT8blQZxxt
	sPbvBbAUa4nvVv45KO1r6+Pxfd0SYzKcpioDjvUXzsMMvskvM2+GRvie4FYNiUt28NkIzYEaK1yUD
	yZqwv4UZWmjjMdyBv5AdWAmOl4vOmYld50n27lIjEcS3dFTMOIxyyMy6FPyqhwteJieRWcpL/v868
	3a4vYlyl6wCnALYJUEsI80OHoisWeKoMTJ1uRg6ijwIOm/IEMKJyoqhy5Yv0rlGwbd+nfQKmbHeb2
	AQ+zO7YpJPt1xiFRT25g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQA3A-00693I-9I; Tue, 14 Sep 2021 15:08:44 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQA2g-0068rw-QN; Tue, 14 Sep 2021 15:08:16 +0000
Received: by mail-wr1-x42e.google.com with SMTP id i23so20798170wrb.2;
 Tue, 14 Sep 2021 08:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CRIlQg+upo5hP8weBxz0PNmeSI1bR0RemM+MM+p+Is0=;
 b=WIPErERmvzG8kE+ee3gXEEaoYRJv5QdAd6mEUXBL1KiRLiBqfHT99QafcJEsV5HQRE
 EyxBpxCwwlSJTmhJLueVm9BDnrqkSpOWCvzem0bbVGlCwj6Uk6gNuaiJG5UGDNpuS5mL
 oZbVBZH/yTYcYVqsLKoffx7F5Wg3XXotg/OwQRSsRZ+739oVRz2CE+sMMnWOwgWvsTPS
 G5JUUr5Rs22DDBvIyc/XSk9Q2u1E3IZKdoY+s9nbedyu6asgEULeAijPb918sjmFwaVn
 6OFA+zvQRmxBZSYZkhkmjVp5xtk87vDER4PZ9tOpQ132GQLmgBlAXm59c8vx3ohTPvWW
 ZNZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CRIlQg+upo5hP8weBxz0PNmeSI1bR0RemM+MM+p+Is0=;
 b=YWGDRW57V3cSWcTT4jE+d2Wcet+17u1Wj/Ro9pRrw2vCRdelmh0u7FOsZTPOBA42so
 vF8O7qdQutvjtnNxidnVzYTMW5vLq4oGy+Hw096ahaC8bL504BKwjjUAm1gI98MjgPKJ
 fcIbhyUHS3+gaHfqzzjofBqz9a472FkI/8gPdTvfXw9nybHCI/EGyNuiWF3x4U/qQU2o
 BwanpjVOAVheEgikaSqhrgXQhO/Cc7R/1cn0cpq3wPfd4KY4Mw7WPaazvagtQJ2x0FLC
 M+aCNFqjX186HoiF9YcOId2dNcqiRrMA1GqhmbbvNfiHLiIldI3ifV5Lfv3bK9v4pCQz
 ZK8Q==
X-Gm-Message-State: AOAM530aFyNTSq1uiAwE38pHIaKa5fh/zSUKETlZEpr25ssYTKtS43AY
 oK9UEG1WLIwk6rX2udE6pg==
X-Google-Smtp-Source: ABdhPJxFKWizTvgkbxISpyz7IpsBM8Sxby+VDRXDNDfqeOTD9NprIar1qRNoqr847/8XwV7/VlJmrA==
X-Received: by 2002:a5d:6ca2:: with SMTP id a2mr19329229wra.291.1631632092081; 
 Tue, 14 Sep 2021 08:08:12 -0700 (PDT)
Received: from alex-ThinkPad-E480.. ([2a02:810b:f40:4200:b79e:d9e1:c821:37f2])
 by smtp.googlemail.com with ESMTPSA id
 k1sm10589441wrz.61.2021.09.14.08.08.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Sep 2021 08:08:11 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
Cc: Jonathan McDowell <noodles@earth.li>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] drm/rockchip: handle non-platform devices in
 rockchip_drm_endpoint_is_subdriver
Date: Tue, 14 Sep 2021 17:07:56 +0200
Message-Id: <20210914150756.85190-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_080814_930980_C42DF5E3 
X-CRM114-Status: GOOD (  12.72  )
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

As discussed at [1] rockchip_drm_endpoint_is_subdriver will currently always
return -ENODEV for non-platform-devices (e.g. external i2c bridges), what
makes them never being considered in rockchip_rgb_init.

As suggested at [1] this additionally adds a of_device_is_available for
the node found, which will work for both platform and non-platform devices.
Also we can return early for non-platform-devices if they are enabled,
as rockchip_sub_drivers contains exclusively platform-devices.

[1] https://lore.kernel.org/all/20210316182753.GA25685@earth.li/

Suggested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index bfba9793d238..81a5ec30ef4f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -275,10 +275,17 @@ int rockchip_drm_endpoint_is_subdriver(struct device_node *ep)
 		return -ENODEV;
 
 	/* status disabled will prevent creation of platform-devices */
+	if (!of_device_is_available(node)) {
+		of_node_put(node);
+		return -ENODEV;
+	}
+
 	pdev = of_find_device_by_node(node);
 	of_node_put(node);
+
+	/* enabled non-platform-devices can immediately return here */
 	if (!pdev)
-		return -ENODEV;
+		return false;
 
 	/*
 	 * All rockchip subdrivers have probed at this point, so

base-commit: 6880fa6c56601bb8ed59df6c30fd390cc5f6dd8f
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
