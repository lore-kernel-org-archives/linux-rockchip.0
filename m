Return-Path: <SRS0=b+1m=NT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07B41C432BE
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 11:43:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BDBCB60EB5
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 11:43:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BDBCB60EB5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bv89Tx/qldMD/Dl0+WimcwWH8FErsforV1Fz5BSP7GY=; b=lD9BbN9bNYSu/m
	ogE6T8GOhTeIfmvJm97zzJBrWXT9qRbWdhC2Op8BDnYJXUC3ANLObcDMwdI1rkOY0JKAbDTaXsJez
	ESbuzaHwF++0z2ny3/mQrAbl5wHwvom4cus7f2gDu/muPm9deGlnmC9ZG635vfOSAN6oZgX41Qo5z
	qBeIU3N2uJ6mdYUMYwFg7WGu76YIUM5huGmULJCZoi51fFz2iuud4/650TPP0wGY0FRS/ebVdPpl1
	ybUx7VljvnfpnuYotjkrVOu7tXqW2n4bMpbCQ3UJ9dYU1Ap/+eMYpPsVMsGCnKWxefrkVp8DzzL+N
	Hs1zdy3rzbw0pUpm9nFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJwjl-00ECNc-6U; Sat, 28 Aug 2021 11:43:01 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJwjZ-00ECMX-3U; Sat, 28 Aug 2021 11:42:50 +0000
Received: by mail-ed1-x52e.google.com with SMTP id i6so13966685edu.1;
 Sat, 28 Aug 2021 04:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/ciX02sKxaW+KjLp+s3okHNDZBthMGDh/mH1d3hrxIA=;
 b=V9AKmYFIV7JdCz7tciME01bsr2lmA9FLBiLCa09DPKevVGPDygozgA8TLqI3eNA++U
 IxTR5IJWgsQAKmGy2JSHTmG3ww2fKMHvgjWervpO+15BDCMGgezfbY2hpa9lcQSTi+ot
 y8kZtCEc67u+YJxUH8kdHJAaE+DisA+49If8EvwqOqlXKf7AVhGB14XlXXcxastjwk4z
 vRP6dSC1UCurgMqtRkWxUQVNRldJR3EPrqrSjUUukaLWPtZL49IDFQrDlefJaduDT3Pl
 XdIkIuaM/+I/BbDIamxWViT9RhbViLpIa0u0B6H65K/o7V0BPByJnZhk/5z2wGhEsBvb
 0Uiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/ciX02sKxaW+KjLp+s3okHNDZBthMGDh/mH1d3hrxIA=;
 b=igskjqCH55/zECMayj3YvQe0sRuM5/IMrN3YBOruokntg4K1zxmcJYgl8V/CXkf3vv
 48eGv9qq5uc3HyjCTk3EFjz/hdb7HPAyl535PPfaJyqpR7nheXL+abCGJkPJk5blvhHF
 V6URxg+pbP0DrBJ3D0tGOz0DAOrqPD2Uku/qGdX1HwmJDVdqB7Vf8hYF+9+U3gSzFExN
 y+vDsH+RA5ut0KCL2oqSykvzVKTIEMOFV5gtbYAz6AWyCRSlma66z2LwrLp3BiUvYq7X
 0VectdtTJGzkn0z965s+KVf28ZKGMfLh+g9gmLOlkQSpN9+6JK6SwPDmYCqqb9Uv5zKN
 0SzQ==
X-Gm-Message-State: AOAM531uXwR0gb+ks+fFNDXs5w00kMXvQvIZ/yXgyLZuOxBnSDJtixqH
 7CBb/xI+pCVmT772/LC72M+q41m4C2CFyR+L
X-Google-Smtp-Source: ABdhPJxXvjZLvMXdKIomq2YJq7EFB2BI2ZlLHohbN0UqLAGKOI8RbvgVeH9b4sOcOtPK1viZUstnmA==
X-Received: by 2002:a05:6402:1c8a:: with SMTP id
 cy10mr14752604edb.112.1630150965957; 
 Sat, 28 Aug 2021 04:42:45 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v1sm4286639ejd.31.2021.08.28.04.42.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Aug 2021 04:42:45 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: change rv1108 gmac nodename
Date: Sat, 28 Aug 2021 13:42:40 +0200
Message-Id: <20210828114240.12231-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210828_044249_193739_83B9A48A 
X-CRM114-Status: GOOD (  11.55  )
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

The rv1108 gmac node is checked with rockchip-dwmac.yaml,
snps,dwmac.yaml and ethernet-controller.yaml.
The nodename should have a pattern: "^ethernet(@.*)?$",
so change to nodename.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rv1108.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 140434384..668fb1513 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -557,7 +557,7 @@
 		status = "disabled";
 	};
 
-	gmac: eth@30200000 {
+	gmac: ethernet@30200000 {
 		compatible = "rockchip,rv1108-gmac";
 		reg = <0x30200000 0x10000>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
