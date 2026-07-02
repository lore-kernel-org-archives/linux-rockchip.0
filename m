Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA46AC43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 20:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0A0/r4VN6mAct3akz8oSLacHSZyKMTGp0LHphaHVkpk=; b=4HXut8QliTQMwk
	LSP2C3xQ02zJWiQ8RGAXMBxBi9VV+biTZXd+bjMS0D387lu1O09Ts50gjBNl/ljCuHqt0Soe4FXDe
	PxOwkcLO2OvrrB7f18UjO9RrDdUDHAKhwH9iND81wbLK3XjIXhzI4B+9DWvAg6STGD5NCLAFt4CD+
	FVw9lp3LjrqaD23FITFI53GwOh2L9RGiSspFSgDjI6wgDnRmvjk4yUki+dFCaP76e2d8sdFRaL8HT
	3p1dNqXHaGwZySK12k15t9eURo4oH3nHtFWyUY1dt3UHyXOr9DdUxC8Z9tBsbByzk2CGEIX+FCh7+
	/lxsw2xZ+ig4gWRoFcLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfNxm-00000005RFy-46EM;
	Thu, 02 Jul 2026 20:24:46 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfNxk-00000005RFa-2sQK
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 20:24:46 +0000
Received: by mail-pl1-x643.google.com with SMTP id d9443c01a7336-2caced6038eso3335215ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Jul 2026 13:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783023884; x=1783628684; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S7SbA7ycahWUErlYSR2TVfzipS+E9GQHT+mGlSn86I8=;
        b=pDli11hd7bC1TMgFXNW+vQdXvNdAFVHVlyJ2m5iLL4WDSTFOdGgQojxBGxBVziytLT
         +/lbJvFo0GlAoKMo9H4sa2xTIIkiEcz/gqNuTLDuvA+F56wPeShv8NPmrqPM3QZCwvoL
         BTR67qh888nykX+cgWIyk83UN50Ta5H5FTTVYqagp4NDbdl32X/x+hoKcz+c/Kx6g5NA
         NnjZb3YZY1zSPijTRWRID1IQp+X2qUHLinuTOu+XkIaI3mC8mOVob8z6OR+AjjAh/VD+
         vU1jRLnqfmy5Rhf41RhmrcF7orn/6vDzzPSWlKcUTfwOnTGLG4irg8+ORCp3d8Ye3UAq
         PbRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783023884; x=1783628684;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S7SbA7ycahWUErlYSR2TVfzipS+E9GQHT+mGlSn86I8=;
        b=eKrQEO65kBEf1h910VwS880DVq5shH1v0m3OizsaPV0mmaHrwotuNUlXKgFBuush5z
         QHkhYlf9dSQ0qGqVftaewX9roNVH3mPo+YuFCqGXsglMybdc2UBxlDXGXYMqAN/h7t+1
         Ko61/Jlb9v1QcOK0d9Ocvd2oJFUVp82HBDIzbyhiYHP7P+wz9idBpE5KC3WmlhCf3dBa
         gSB00YV31t8ex0F4MJ22iht3zazz8p1tHMzMPkGHtaEVFAwPL+OeKArupiwf4EqpAhml
         0oTStJsX9u/yIT9dmSgX58weyNLy2bwAZhH9PCLSV+ej7FW5dwvDSsSMWNiZLoPGyhlL
         ciog==
X-Gm-Message-State: AOJu0YwIVqMhO8ev7cJoLy+pCxY2qx5kbHHziDhd8UxANQ1xDJpA5d5z
	RQsirAn2+o3AElhMPtU89UWfMn1nf3wsbWzNkNJ5K4DBCEfAyzdClFpk
X-Gm-Gg: AfdE7cm9AiaHaX/UsnYe+NVNWrrQEANjyriM3SE9wjNfeTAVjtJ4mEh+3cP9mXv2/Fq
	dW2lXyblRWbi9RWpzrCNUfddrXh8i+Sc1HimuuIykzCEIjJEQApsBBSNeGc/sFRLrNvwsvj4Tc2
	chZDekj2wqF+cDpxkevGEaEKpXxJSNAY061H/g2dyj3UDTK0/FIbF/6AY5+V3Ji3/RsIZZxgWUc
	YGrCaIfqVOgsNYuyi1Nk+LRjRlrCOSBYSh8I8Xnjli0JE7lR7YZ4UVTWvci7kkn5vv4q/kzQTm4
	PVXhw/LplIhAUMe3rtM0KYBXbOUXNduvIS/8ATUxZBysS3fL3a2+4kyzD73rd/3Dlm+ONr4zEm+
	NnM2KPcgTToz/APtAyOKY+R8qxESQCA/QvXbFqdCQyichOGHOgWQ3gtwK7YnKqO3CEU6xaeF7K+
	2/y3/PbipQmBc=
X-Received: by 2002:a17:902:f68b:b0:2c9:b2c1:1401 with SMTP id d9443c01a7336-2cacaa929b2mr13566205ad.5.1783023883433;
        Thu, 02 Jul 2026 13:24:43 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2cac73b36e5sm5941975ad.8.2026.07.02.13.24.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 13:24:42 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH] rockchip: arm64: dts: rockchip: Fix incorrect interrupt for the 9Tripod X3568 v4
Date: Fri,  3 Jul 2026 04:24:29 +0800
Message-ID: <20260702202429.2341789-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_132444_749576_ED67520B 
X-CRM114-Status: GOOD (  12.18  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

The recently changes for 9Tripod X3568 mistakenly configured
the WiFi host-wake interrupt trigger type as IRQ_TYPE_LEVEL_LOW.

However, the associated pin `wifi_host_wake_irq` is configured
with an internal pull-down resistor.

When the WiFi module enters a low-power sleep state and leaves
the pin floating, this pull-down bias drives the pin low.

Since the interrupt is incorrectly set to level-low, this combination
traps the kernel in an endless interrupt loop.

Correct the interrupt trigger type to IRQ_TYPE_LEVEL_HIGH based on the
actual hardware logic: the pin is kept low by default and driven high by
the WiFi module to wake up the host.

Fixes: 993555b5476c ("arm64: dts: rockchip: Add AP6275S support for 9Tripod X3568 v4")
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
index e3f53fcf80e0..b48c0c9ba112 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
@@ -799,7 +799,7 @@ wifi@1 {
 		compatible = "brcm,bcm43752-fmac", "brcm,bcm4329-fmac";
 		reg = <1>;
 		interrupt-parent = <&gpio3>;
-		interrupts = <RK_PD4 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <RK_PD4 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "host-wake";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_host_wake_irq>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
