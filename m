Return-Path: <SRS0=C1nv=MB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DE31C07E99
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jul 2021 10:32:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4B292613D1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jul 2021 10:32:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4B292613D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QxBpEISWP6fZmf9XcX/nGSXJc2DMBHuQAs72lFAoSts=; b=jhyxWIJpRnd8W0
	c0OyKWL4Xgwud+9ZcRGttRjeAZAZFv+UOdUBi0uW9fvONLbbu78qB/qy9jB1nn7P1kjb66ZGvqA/H
	5lNmPaqXAMc7dX2mUdaFZgM3yskLA0/Cm7m0T1HFs9xqxB6dv7XumPo/91rsDyvxKJ8nj0MI0GWYJ
	vK+J2A/maeLUfOvAqWfoXmgmaVBkRJrfOBQpa8qXnuaQHZPhZIXcwOX98skHDHEmHyP0VXFnzAu9L
	XkC1qGTFqqtl/9aa/mnwIVTEdpGqr/dEI957N2Ej5v1sa6Fp0Y/tOuz61oYnib10cFh/cV5fRZoFu
	+iOmd4omLT1MWcnIAspA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1nne-001X16-Ep; Fri, 09 Jul 2021 10:32:02 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1nnJ-001Wst-Pz; Fri, 09 Jul 2021 10:31:43 +0000
Received: by mail-ej1-x62c.google.com with SMTP id i20so15311445ejw.4;
 Fri, 09 Jul 2021 03:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=AV0itCy7+VSBd3Vis/NNTVsow+Jfw/GotJ/dIEDBhVY=;
 b=anZ1nB7jMfSF/BbJg/7OUb7JRZa+f+T42NmPKrSux5SApcRiWTOl0wBIx0GPyPI7vu
 u9KfAcLV5QoM390qW2EjDO12itATk6FybnFX+ZhyFo60CrP0+snLP5r02bBeTNdWu0q1
 YkAktOcdzlJaoEfWu/1yiXZTgmGF3b1iWP2KoupKkJfBfyGxSJ2OooD5YK02fVK+0+RR
 /jbPPRtw7EIV6xizwA73xKvlHU2aRxX53pcKZwVtalwsMq11iAc7kMa5U28NRWsv0KX6
 8yrj/MlnmtHU/+n8ETvJycRDtfZ8IoZjsjwUwjb23aceU81TakIjAIyR/dmuxspREmQN
 FMhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AV0itCy7+VSBd3Vis/NNTVsow+Jfw/GotJ/dIEDBhVY=;
 b=uTzd+ArQnP04Tn/d9M3XctWEdgK1CMpzndwwhS+pEhnbKFNdfgo4sVUU++tB7e/0Xa
 Gpm+V7acdUyjovkptHy12jnwx5L3SeiqHbVussLkxb7RslZ+qO8e8uVhTocgroS2FMXW
 TR5+wtH8LiQmls+VpcztWeCuSAqm3QzELtU/GxhLjvyieg6/2rim86IeOCfMqEdiYCEy
 sURURb1ti7EJ0nZXJdmTCqQMC1CQrCP9peu9qNhnlihqZwhwSNKQc14D8H+YxWTksAlx
 w1ZzM2R44r9he0KKH/jMplDB6xmaqAdKHgsjiviUAUkqA3KQK09QvlvHp7FuwP4mID4G
 Ls/A==
X-Gm-Message-State: AOAM5331iNBE0/WmWTlrH70GlHezZ/rGQik/Ob3HHPw11SgxPewXjVQL
 z4KZHceWnweGYQk2D1sJT/o=
X-Google-Smtp-Source: ABdhPJy2WkJz4UO1xDyhUCmcuIp8rOMlK4AzxuR9rvZrefzpo11yy+9cnOmhMOhgzWDCxlQ6Lrc48Q==
X-Received: by 2002:a17:907:a04e:: with SMTP id
 gz14mr3062361ejc.24.1625826700118; 
 Fri, 09 Jul 2021 03:31:40 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c2sm2180978ejz.73.2021.07.09.03.31.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Jul 2021 03:31:39 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: rk3188: add space after &grf
Date: Fri,  9 Jul 2021 12:31:34 +0200
Message-Id: <20210709103134.1750-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_033141_888986_53D32995 
X-CRM114-Status: GOOD (  11.06  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fix layout by adding a space after &grf.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3188.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 793a1b911..6764776cc 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -638,7 +638,7 @@
 	power-domains = <&power RK3188_PD_GPU>;
 };
 
-&grf{
+&grf {
 	compatible = "rockchip,rk3188-grf", "syscon", "simple-mfd";
 
 	usbphy: usbphy {
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
