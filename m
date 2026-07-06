Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 821E7C44500
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 22:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HL4SOu3lQRxm7MtxeRDOnuVatO8en8UwbnOU0iFBY04=; b=VX3ytwXOt0ee3g
	pLz7O24CGzwEc6XSYxydou1/yY6ERGTeefX/ESb7QYRxqg9ZrPwfF1DIyRfo+gQHICniO2iFzy2Bz
	o7tetCg9C1VDhBL6hUBMy9qCRWgNhgB/0uKJwhdreqdVLUjrfuGJm8Cmu//tdooXEkdkjUv1EwTBl
	w707086bztR7rfwLkqHLNsxXKpGXkeXmkAJn3tUUKv359neaJ0XmzPgZCn9Z+nFohjftEpYEnqhL0
	AWirm4Nzb0/xzZWQFRLoMRPVG7V/YwftJb0hoij6zpW+qyOrEckq0Q44SZ32MhgVHgUvBziHg8/6e
	4S+dO8sWCm2hGuK3n1gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgrvg-0000000Dj8T-25tZ;
	Mon, 06 Jul 2026 22:36:44 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgrvc-0000000Dj2h-2BZt
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 22:36:42 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-472326ca506so2344465f8f.2
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 15:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783377398; x=1783982198; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xqBkhvyelySc3loJx/J76CZgVdNYoTTPG8StLA3hSFU=;
        b=g6N1aKTlEbTeV2cihkx40ECxnyZP/crLC3Pw5LEd1ucw2VjkMe+GboqQLjvfSGpZjt
         93dPVfo/3ROOetbKthwvl2C4+tIUJjHU1YzsYwK4rTHzkjrMmOiInG6cMqGunncSShKv
         wTbfFWKFXD0mcXU4e5q7TyWcMAFBV9opu96gGh9TWy9lZIh0qiC6Iomjb0rkfRm9ZVu3
         IW4xjq38hFJVfnPivM2WbdiuDR7b9322VBJMat0+e6fp66NaYS6VqHtaUWfLzEh/f3gG
         7U+oY1BNYg9dz3AhmtqT+k5xH4OPcDBn89/dEB2rZpy0+c+fpcoTUhu3WJVMtJs+s3U9
         pj2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783377398; x=1783982198;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xqBkhvyelySc3loJx/J76CZgVdNYoTTPG8StLA3hSFU=;
        b=dvJ7Ja6yMiYQ6vkhDhG6IVFjAW4EDrQZdmlL/4cIFSwqlLV80pvWeX28+1sXX1xBsU
         RkQAykmCWDIouL2iEPuU+1j8ymFtp8RFW/mQIkPzOdD/NHsGeVA3wQF9smNtO0TQhkAT
         KPqvKT0or/H7XxgOomAoYm0XeuQul/wF726/JlJ7I5/TT+gh6y923oRLPifJvZ6avP3U
         HUi1iFiV2/Q7Ns5K2x97LkGg4712XUOL+76GKp2c/CJuCH5tNeOvMuQqfL4CDcO8tZTB
         MFuZtl5UJAW6Dh22ubiL3zLZgfuV3DJGfvxwpEfV7KNcTprG+IKEmSdMUTnP1Klz8wEl
         j95g==
X-Forwarded-Encrypted: i=1; AHgh+Rovszv8YOq1LKbwhtqUputIe+nYhzk7SUZPGuEvpUEKZCauQyVCsBBc/IzkogkxJAeMtucyVJGlOJF8XQKcKw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyokm9JVZgY1OstGYwoMlwgZ8Vmdbn2rNS0fr5YZcAolCNSvkes
	FEcr99HuX3V+yKZcqlqkpAQ6unI+e1xZidbyPHidL4nIgNPrVMKZ8il3
X-Gm-Gg: AfdE7cnr93vlMyjWNFRULoCRfiw/XzJEZWmx+gCAbVS+q65c98k/waqKqSYAYW+5chJ
	+QI8qpuT70bU+SGb+edfScEa8G+H4qAtpdoQMl81gqkPyVTEfQMl7Tyy1mqSktHpInIuq1nQyGT
	G8Osf7litiC2wbISeeZwzFvhEgHLxSNMgn39pLBPRguqEYC2CM8fO6mdU21rwGvmYsU93S9FZUW
	NwIvVabaMGnvvI+P/HycuA7k82iS2k2CzzBIji26sqMa4i8ytwtkXHL0TOM7OzWapXWdv7V36sl
	dXl0l5U8HA5oJL+j5V/6Uiwc0aaRqrNU01F8+iylrRlojCqsQx8ESVKsvH6LT2zAtHOvkniM0rc
	eSx/xRxUXW2QmYHPKMFDkm1+A5+vQu7GT7mQth3i6DTwu4Ct5phihI0MWRq+eLiJ5E5yyMXe/kp
	acEiJQxy+jG+FBUB/u3IKK/+U0djtuFm3PxWKpl9ks8GPXhGQDcP4u21g+yhmn3g==
X-Received: by 2002:a5d:6382:0:b0:462:fdf2:3a50 with SMTP id ffacd0b85a97d-47de66a309emr1878338f8f.32.1783377398441;
        Mon, 06 Jul 2026 15:36:38 -0700 (PDT)
Received: from turbine.fritz.box (p5785b224.dip0.t-ipconnect.de. [87.133.178.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9e4d6da9sm27491387f8f.12.2026.07.06.15.36.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 15:36:37 -0700 (PDT)
From: Andreas Zdziarstek <andreas.zdziarstek@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Frank Wang <frank.wang@rock-chips.com>,
	Louis Chauvet <louis.chauvet@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Andreas Zdziarstek <andreas.zdziarstek@gmail.com>
Subject: [RFC PATCH v1 2/2] arm64: dts: rockchip: fix gadget hot-plug on ODROID-M1S micro-USB
Date: Tue,  7 Jul 2026 00:36:27 +0200
Message-ID: <20260706223627.113814-3-andreas.zdziarstek@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260706223627.113814-1-andreas.zdziarstek@gmail.com>
References: <20260706223627.113814-1-andreas.zdziarstek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_153640_598577_0BCA68A0 
X-CRM114-Status: GOOD (  13.53  )
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

Referencing the vcc5v0_usb2_otg switch as phy-supply of the OTG port
makes the phy core enable it as soon as the USB controller powers the
PHY, so the board permanently drives its own 5 V onto the micro-USB
connector's VBUS pin. That blinds the PHY's session detection: VBUSDET
(fed from connector VBUS through the on-board 10k/15k divider) is
always high, no bvalid edge can ever occur on plug or unplug, and the
OTG state machine never wakes from its initial state. A USB gadget
only enumerates if the cable is already attached at power-on. It also
back-drives 5 V against the host port.

The inno-usb2 driver has no role-managed VBUS supply support, and the
practical use of this port is as the board's USB device/download port.
Separate Type-A ports are available for host functions.

Drop the phy-supply so the port never sources VBUS and pin the
controller to dr_mode="peripheral" to match that.

Fixes: 10dc64fe0f98 ("arm64: dts: rockchip: Add Hardkernel ODROID-M1S")
Signed-off-by: Andreas Zdziarstek <andreas.zdziarstek@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts b/arch/arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts
index 33bc5249d729..d9d4a31373a0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts
@@ -602,6 +602,7 @@ &usb_host0_ohci {
 };
 
 &usb_host0_xhci {
+	dr_mode = "peripheral";
 	status = "okay";
 };
 
@@ -627,7 +628,6 @@ &usb2phy0_host {
 };
 
 &usb2phy0_otg {
-	phy-supply = <&vcc5v0_usb2_otg>;
 	status = "okay";
 };
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
