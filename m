Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F0C9EDEBEC
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 19:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9JFpKdTjZv6vTetZpU/e4Dv5mhQ/tAwEd+P06L9nZA=; b=ClW95fY+GXK3ak
	aoy3meWSuhiGtQiUQp//aIFhLpCp2nO49N2VshVLJZ2o2Q6e4Ce5maDfteIAvZKx2+d1FD4dp04W3
	hVHFRoDO2G8cnTgJ4mqhNnQI8UCpLog3xi1bl3NaLw7dX20cfbPIdwWYJF59yZgYXGJpCiL8g6wHd
	li7KtbdmoyK0DPREzQ5q2VDiNGDQfYrUs4wz3FLvsJ+6m+17B6lp5C4i+tbS9hByfJJ1eeTKVezy1
	lZ5JCYbnSKmUuk1bV8Uf0iuxFQ5m1Vu92SMapIUt/d76w4sho4DFElBOp35ebAxCQ9S1TWXbY1J7D
	v2g4dyUgyayVuMGP1niA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVaO-0000000Fouy-0pGd;
	Tue, 03 Mar 2026 19:39:16 +0000
Received: from mail-ua1-x929.google.com ([2607:f8b0:4864:20::929])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVaK-0000000Fory-3dqe
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Mar 2026 19:39:14 +0000
Received: by mail-ua1-x929.google.com with SMTP id a1e0cc1a2514c-94ddba39060so1715532241.1
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Mar 2026 11:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772566751; x=1773171551; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hpAqgqnxsYIXlo7xalO5qgaLwP1g0ilpL3ajza9+KEE=;
        b=AcHoe5Vpw1KRX9iakLVy0yZRAKtIH2QLLE8F0v80vN7wqX83xe+dTCU5PHHj6yHlvQ
         sh0RZwssynRH4p6LUu36OzrhZ2dnF1DDVkWvkaKO8KrWDlL46pd7OyjnZCEnSwwHB8Ho
         Igl2Ir3H/ytroF27mlMfS3yiZ8BomZbE9YZTM88KrcRl6zsOT3tGSxb052fuwR5QPWFq
         BA5XiQoLt4lTsJFtk+8pTaZ98cLppNWBNdqLsaW43go41jkaKMOeoNT6z/ZEyIM0w1WL
         tNbOlWMt3F1DW8zo+xuYwPckOjRLQvRmjow+9L4Rn4ynmtUe2R1G75PWJZOilhG65DRh
         0hgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772566751; x=1773171551;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hpAqgqnxsYIXlo7xalO5qgaLwP1g0ilpL3ajza9+KEE=;
        b=agBstDSAVRNIDEKSocKITkY2rE/+vlca71lj90lyl2BrX0nccIi6p7SxExHr2w99cu
         aPZRRFbp1k2oLVKx8G7FTeatxGQ/cVSn1oufiWCtESewym3xN5SrXFSxVCmZUaPMqaj3
         xQFz/mfau5/fF/8xaKjBRPti3QllyEeF6z4DLuTioH4xX3y5KPzDoFfBURsMdS/3fesf
         HRNaUmwJkRUQwjXU0a5pchp0o/c58YRvx++Pl/AQg9tD3eaNcGXdDZ3zXjonHdGi23md
         RnBf2mXmgJn9rTUlaUkSDeC4xT9KRl5vlv7DjLzdduq8Xmto7/zTjTxq9uYJsNIn57UA
         E1Uw==
X-Forwarded-Encrypted: i=1; AJvYcCWuVP6OFz/M9rfvuSci+STzyHMR0nysle/kb3T7/WvJgfrCBA+fjlgUHr3vPYG/IZr9UfjJIaUcm412PeFFVA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwVREZ0qj+sh+/j8u37YphXXs7Ba/H0QqYudbSYIVLxZm+Am2Mu
	pEJwSkzHu3DV7zej4ie/X430XpOc+KlAEdLUMS0hh0xh85T9XnLgRzM9
X-Gm-Gg: ATEYQzx5D1Wp+jGCc4cMxD2L/spyRXDWYODnRl+5v9yk1wqqhddGrPkyX/Ido362rvf
	/fJwm0V1oMoMv0nTnuGOiM+dY42VbuRgngorl8+sxwRWrCVTupQ7eRrEhEfdAQv/VfSz+O9Oljr
	4E7kYAPa6GqQToYg2eTFdYlLDo+HUAiAazimxvKy/AuMPKA4jRQZpnziwTo8OPY6gfYb4QubOti
	dSBPy/GggvWTLyaICyXHT4tgU96KWDM+HKO5owiWGJNS11znWhS9iy7gPps1ptxiTOwJK8MWhaP
	EF2hiNNbK0edHH67LGjt9D7PNSJ7CYoX6BsGAb6U1HDl0s3+iVtE8aOU2URysC6NudrZUkrmTAg
	Y/i0h4pu1EZAa3oH4uR6hmYBpv/eGndgOx5qcQ3ubnZvNkDO6zP3K0tyBtRQhmc9O/A6uXv6SVb
	kzc3zoDOVd9MagsqEQkx3DIKr6U8jf+5wEYKDjbzSwkFxDHcMXO7sLOapRWpow0ehYRIYk
X-Received: by 2002:a05:6102:1610:b0:5ed:675:e355 with SMTP id ada2fe7eead31-5ff3250f641mr6894908137.27.1772566751414;
        Tue, 03 Mar 2026 11:39:11 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:8875:499e:12bf:3287:5753])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e7af30asm17780456137.3.2026.03.03.11.39.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 11:39:11 -0800 (PST)
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
Subject: [PATCH 2/3] ARM: dts: rockchip: Improve the RTC description on rk3288-firefly-reload
Date: Tue,  3 Mar 2026 16:38:54 -0300
Message-Id: <20260303193855.828892-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260303193855.828892-1-festevam@gmail.com>
References: <20260303193855.828892-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_113912_913952_296F9E22 
X-CRM114-Status: GOOD (  11.07  )
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

Node names should be generic, so use 'rtc'.

Remove 'clock-frequency' as is not a valid property.

This fixes the following dt-schema warnings:

'hym8563@51' does not match '^rtc(@.*|-([0-9]|[1-9][0-9]+))?$'
Unevaluated properties are not allowed ('clock-frequency' was unexpected)

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-firefly-reload.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-firefly-reload.dts b/arch/arm/boot/dts/rockchip/rk3288-firefly-reload.dts
index a55270672732..8b491b002992 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-firefly-reload.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-firefly-reload.dts
@@ -197,11 +197,10 @@ &hdmi {
 };
 
 &i2c0 {
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
-		clock-frequency = <32768>;
 		clock-output-names = "xin32k";
 		interrupt-parent = <&gpio7>;
 		interrupts = <RK_PA4 IRQ_TYPE_EDGE_FALLING>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
