Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7236BEA8128
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Feb 2026 14:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JVWBUAvUA7+c8ot6MwS9UkW8kxdVxfuAnfsL/KyutrA=; b=F5Bp6192GfMaCI
	pT1vj/dBLzEM7u2w4S3Ls9no2r40h7rKKWaUfvP+zfNyjKBdOGEL3Hs97Ks58FtPux0prEwuOicuz
	faxhX0mj/IbK1gjrST0rc0EsjLG/SzUDaasv/fHdC9snMyP1sIVrjssbTxlJo2bONFj5ItT8pPQEV
	uQAxkmlT3qYLBx2agag6AhDGNZ7qbHwQwfhcXX+mhoyk/rjB8PiZac7SgQUSBh88fIR1rWO+dU++1
	myNf0QXJ3BjQDwju7uvVhLDGK/kwtAugmGQGVGJJj0k5wOZ9udVp0u/fqjFpEF190VGDlcGlbb4/G
	WeDvSF6vNJ0gktMAgTYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpp3D-0000000H3yS-0gB0;
	Tue, 10 Feb 2026 14:49:15 +0000
Received: from mail-yx1-xb12b.google.com ([2607:f8b0:4864:20::b12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpp3A-0000000H3xB-0PWS
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Feb 2026 14:49:13 +0000
Received: by mail-yx1-xb12b.google.com with SMTP id 956f58d0204a3-649df3c22d4so3628564d50.3
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Feb 2026 06:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770734950; x=1771339750; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GNCXerJx3sFfDg6KS7EVW/a5lfhIGse5nvrVk7F3w1A=;
        b=Mf9TuYXYEUSflGa3XUwqBvX4W6DO9440fwYc2/QSF57g+Q8E6tal7BnZUerIsYNKmV
         rsqrSB8xyHJzDgbVWejJnGjoX+yYKiuPDw5WU26kMbs7JYctak6ifzdDx1kp2/Vbh9HE
         OCAY2X1QP6zw0ise1vwmZ92xRXYntFv0hIf2RqzzERI3uFmt4DXF0y6Tt7RXn5oAKq+B
         54APq/SRrYFfP179cvJUosEuMJEPEciFP9hGrOEqwIEB+mOaWaTY9YijLpeYeK9GB8aF
         j9kjGeix/G9h8CvnM/YxwzfvIMgsigtfPYnJS08zhffNE6HKpfhdQiFXXEsN1bs2cCvN
         zGdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770734950; x=1771339750;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GNCXerJx3sFfDg6KS7EVW/a5lfhIGse5nvrVk7F3w1A=;
        b=pbeVhraF9UrK3969vqJNQfNiHM8j4r5wKA3F3Czh+Gj4kPzFd0gV7iQPJzZlZ+rCs9
         rUVW7cSSJcFRELGQ2yxovVU9EBeEAwHDz7rk2LM36pdrUOSaS5CXqM4CctmfzsZBeMVV
         k27JjmieAXYx0brgohY+TmyZr51nrM4AIGw8t1x5yoFINW+0mo+ZiXouCI+4ROtzPMIE
         emS9eweI2jKeBEr9M9dfsKXgPDzbeXmc98khJMfF0/W71mZIIedgWGc2e2s5s7ByzSAc
         99MY+ggenQj3C12PlxZ5r8Q9DYiBclP/tT3/ExHRoKLTB8xrzUMpwNY6rbT1s9kD5hLe
         28MA==
X-Forwarded-Encrypted: i=1; AJvYcCVFyAEgml6/+NZTNwDYsDJCPHS9hPruWUohMwoNM0n+TMMM8apTuAnBWQLyHzU/AjQPvGPUKLpKr9Pj5wiLHw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxeU+gL0pyoIhuWhHp7rPnav+afbRAvEShgyIJ1qncTlP8wR15o
	hxIZd8MHSgZ0gcvUsQGAXD4tqZzRYwnPP5oRUcV0O1YNa59FV+mq4Ko7
X-Gm-Gg: AZuq6aLrReem2A5lsZRokt9GCNc3NQjNZNLMGYbDKW2KFVWgxzZUihwkR1nk3F4SiAt
	92CeIIYi+kLxhypIGn65eDzR96B76yi9i+desBxI97pDza/BYr5WaBw3B/FYEcDVc4uWlqzA1NA
	5vsRpnFgl/oJirhJoKeuJy406P791E0z4yJdoQ4VvA9DzImyevW/xpsU2Gup4qqP1Ai7850P0dn
	NyUMAKiahbfdyNvbRCjvauQPVqX0nLW9Tj00F9y6ccqC9hpzjvFQljxuGlfH3NDAIZxFerpReMJ
	PYORW0fPDFDfAxLC+lAr7qidlZBlwsW/6Nac3FB+kz2DbHba0jyVHtxWPb4pfpFgiVXxTylAV6j
	arrkhDcOuPOo4q3QrFjH9Me3rK/73VuM1f1LjtEXAI1st6CP3Ho54jg/epQRkWIzqiC2xTVmSyD
	MX4YYIjuP5/CA/FaoVzNaibkoKDnGPsc2ViwKkC3DbwkhGUes=
X-Received: by 2002:a05:690e:124a:b0:649:f09d:a6e3 with SMTP id 956f58d0204a3-649f1e5286bmr10865997d50.19.1770734950183;
        Tue, 10 Feb 2026 06:49:10 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:7e95:428c:8802:872e])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64acd247ee5sm12086263d50.6.2026.02.10.06.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 06:49:09 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
Date: Tue, 10 Feb 2026 11:48:42 -0300
Message-Id: <20260210144845.317048-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_064912_145043_70C76E16 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
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

From: Fabio Estevam <festevam@nabladev.com>

Add the PMU GRF and IOC compatible strings for the RV1103B SoC.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes since v2:
- Used a more specific compatible name: rockchip,rv1103b-pmu-grf

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 0b8e3294c83e..2cc43742b8e3 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -63,6 +63,7 @@ properties:
               - rockchip,rk3588-vo0-grf
               - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
+              - rockchip,rv1103b-ioc
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
@@ -98,6 +99,7 @@ properties:
               - rockchip,rk3576-pmu0-grf
               - rockchip,rk3576-usb2phy-grf
               - rockchip,rk3588-usb2phy-grf
+              - rockchip,rv1103b-pmu-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
@@ -231,6 +233,7 @@ allOf:
               - rockchip,rk3036-grf
               - rockchip,rk3308-grf
               - rockchip,rk3368-pmugrf
+              - rockchip,rv1103b-pmu-grf
 
     then:
       properties:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
