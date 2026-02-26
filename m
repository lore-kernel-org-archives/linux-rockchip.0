Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AC5EFCE09F
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Feb 2026 14:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DxC7w38raaPoUsI7stKu+JtIX5AZM0o1bjmrJcG97I=; b=EkvhAGutKQRwTL
	WgNRq59ijOdD2dYx4B2MkF1zbk1kEwerzs8E8LPzlYQIecg09KYwK3H/jd91iRaRpC0PpxpPOaxkw
	MmmMlEm8ds8+ZKeYUnrOjW+1QWpEr23fu3IBF6mlBJbgwM870igSfWJKNBz4D5RF+yuZnhGUE+LXe
	jip/TG5W8QEOvk59D2fE1Ds+S6tc69J0a66U+C3OIPrz5H7PZynIzI8Sgj3ncjSkdXcEvSjxXLb2w
	TZ4q4YDglcpu0PtmQ3uYtaRCa04tJCLO1QEJQQcOAVBNuRxZDaE6PDCjruA9dJ9IIR6OfOELmVpXX
	8Bt0UNjZiwzr0KJgtAhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvcfk-00000006NAp-199v;
	Thu, 26 Feb 2026 14:49:00 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvcfg-00000006N72-3BtC
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Feb 2026 14:48:57 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4806cc07ce7so11276835e9.1
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Feb 2026 06:48:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772117335; x=1772722135; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5YO7JbDBqxD4DBw7ty3YGZqtipo2bF2AYeLLxY9iiX8=;
        b=eJs6ZA8tdPdwlzfIaE8+qs6UNyPMNyNrDeSmCZTDCAPN78LUZduS+ctV+l883IqS9A
         eVR9plZRUpd/MAPTv/pxfzcATjtCraEQ8Od0Oo8bDTdCYui0KCWmYRCFloL9jBRUKcTD
         7v7c3epvEcWdGmDSk6oMdyuHyGSmJT4tJzabslMHkcV0WfYjBYJklJy+v8T/MsT9XEMJ
         7snlQjyAwpwsVcFaF9bSqBD02XENz0aM3WHpCQZ22rt1fXC60u2WtFWMp5lIZOdsc6+X
         gmY4ul4MvS1E0l4Rcf4J6HmnJyoEA3ZGfjMN13FLsbmXIINbBuCyp4JjdgEqXahE87To
         DEiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772117335; x=1772722135;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5YO7JbDBqxD4DBw7ty3YGZqtipo2bF2AYeLLxY9iiX8=;
        b=kQWSVltam8tUtFPz89t/Vyvtpxp+btWAVhkfGF2yv4mSW2kkv9IKhkD8e+noEaEch6
         tJyZi1dkrf/OR1GS/GESqhbWaG+fF/MHM8bF+bLN70esXlpAuBCgX6eMsYitUDbeXiAe
         qw+bf+KZVfrfJ1Oy/Eg29JtnXIW73b+7L0lVEPodHHz1D505znDq0TZ5kPgelSYTj69F
         Cqf6nKjBaSq32EqRnylH1m+/nPqvMFPzfA1pciEQjxEnbZ2y/22ub5yWXR21v+HCu499
         i0PRUe7syxR4sXqxsWqXntvAHAZoOxe4+YH88d95uO3pdCPtZgZIztNhSRaJKyAsnrkx
         c/9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVCaUt03cKQUXDZa608cl7ntZLhFkJmbP3RH+oiKAbHGSke/e5KomKIVTDJJsBX5AotcHNbFXjNp6n5cIDkfw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwRj4KQXgl0inA+jzeYo1Q+7RI/+J7yBJYs56CC0czJM2h23n7s
	T5Urp0YVs/M1gdFtlyZpC0nczr0A/Ws/QWprY4v3vg7oP1rkZluApX9P
X-Gm-Gg: ATEYQzwveN0SJVfYhc0OcvFecFhTZgiI78K/L2urm4VwxJtBi7Qx46GI/gCr3btPFWf
	Cg1yBAoRlKfhXFo+I8/iFoxUsexLwGi+vqVRfINfAR5X3p9yDfkrKQCsXrIlzWuedC0SNuQengl
	HMJRxFkh2VPt3H96QXSRlUvjpJovaJWQQkK0np7rThcyGIGurPe4hFbgbQ/n/S9scAZ0/wzWtBH
	Dg661npVkBFp1FUplL5IXMpJiqv6iotaPKywlRiBaxeWI60YtpZJpXBLJnwBR9+Yvh8t8Q5PMS3
	vnuUMCJneciEEWfqXUA+R1KKON1ZoQ/aNQF4Pg9OBa3aGCD7JYnT7juo73C013831eujZrKt2vd
	TGumFqgRI+N2j93eooLe0mQzE0N8xia4tJPV3HBdxiOsmeeO057LaWDXSMvo10jWorYDDuFiW3S
	8uXXtVAT8nb+GLatTM2cfUoVeeutzEy1hdkVFO0CNSqY44psZ4P6TUyI2A1sfrBvjSEKsYGSFCp
	Q2GEt8=
X-Received: by 2002:a05:600c:a16:b0:483:7783:5363 with SMTP id 5b1f17b1804b1-483c3deb544mr34230505e9.26.1772117334537;
        Thu, 26 Feb 2026 06:48:54 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4766:6506:d16b:e2d5:7fdc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfbb465bsm91497075e9.3.2026.02.26.06.48.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:48:54 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 2/2] ARM: dts: rockchip: rk3288-veyron: Fix the Bluetooth node name
Date: Thu, 26 Feb 2026 11:48:42 -0300
Message-Id: <20260226144842.2727107-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260226144842.2727107-1-festevam@gmail.com>
References: <20260226144842.2727107-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_064856_815491_A6AB1378 
X-CRM114-Status: GOOD (  12.07  )
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

Node names should be generic, so use 'bluetooth' as the node name.

This fixes the following dt-schema warning:

'btmrvl@2' does not match '^bluetooth(@.*)?$'

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts | 2 +-
 arch/arm/boot/dts/rockchip/rk3288-veyron-jaq.dts    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts b/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts
index 6a0844e16279..26817848c154 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts
@@ -177,7 +177,7 @@ &sdio0 {
 	#address-cells = <1>;
 	#size-cells = <0>;
 
-	btmrvl: btmrvl@2 {
+	btmrvl: bluetooth@2 {
 		compatible = "marvell,sd8897-bt";
 		reg = <2>;
 		interrupt-parent = <&gpio4>;
diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rockchip/rk3288-veyron-jaq.dts
index 0d4c50e05558..cba2898f8b7d 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-jaq.dts
@@ -48,7 +48,7 @@ &sdio0 {
 	#address-cells = <1>;
 	#size-cells = <0>;
 
-	btmrvl: btmrvl@2 {
+	btmrvl: bluetooth@2 {
 		compatible = "marvell,sd8897-bt";
 		reg = <2>;
 		interrupt-parent = <&gpio4>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
