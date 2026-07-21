Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39C14C44532
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 13:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LpJMbct5OcD7BS2N/CMqpisisw4sTJkVDq0ZObFHBYs=; b=EWu479YGBGzCn+
	HGZAJzgQu3rdRXBA3l51Q+cyWlrrTxNMMW7dFCFAtVIA80yU63trjaUZcfK92XOBovxwnU8HaYEyz
	JzWUTUNrCKGAUbDxmK+4uVnL4my5NVcw5wXOZdc64MqHmy+xpMicnrUDa0acD7fVkXpE6lOJXjFO0
	vwcSSw85YcN7/4uuyMucOAHuxq9GnpShs/D4oxrUTGtQCZ010E7MV4T7MCa9/lQPVQVst2pieE9sW
	PGvQBmlGzoNVwcJnAPnuVRu0UsQDQOEI7m9IYF395sTROSK+Gy23MVIGNBnSxWlBB7bRJdKAAm7Bz
	g3cxgVrJ8FGVwY73zA4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAw7-00000009afu-2uRb;
	Tue, 21 Jul 2026 13:55:07 +0000
Received: from mail-vk1-xa35.google.com ([2607:f8b0:4864:20::a35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAw5-00000009aeD-0vm5
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 13:55:06 +0000
Received: by mail-vk1-xa35.google.com with SMTP id 71dfb90a1353d-5c11362f67eso6032984e0c.1
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jul 2026 06:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784642104; x=1785246904; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=i2PlaeHicSjwm9RU3yTM3r1gOKB/KIi551qDeGreVpA=;
        b=D7SBoN/QNC73Y75HpkdayK3BRcWM2dh1MpvYUWi4VsJ4h0E/r9AwPBFom50VFEnIUU
         9GnSiK9bNrhDsKx1tpD1/oBrT1DSWmDYjIt7AdvQ9OBaP4H3YVcDTEG7D/yZD8ulNO3V
         7IgpAks2xwe9x7vsGTF07gNADo4rjSRV6Xrj6tW9QCELIQcaroeH5nXzv7bpMNrVQ4Ii
         2LyWdzGRuS3qngzAU579Ii0VLAyWnoowvz9aoLY0XeMIMQMCefWN6OHwsIl18mk3IXmr
         HQ+9taqxhggP8oRIhQT4Rg8DKB4YYxivrdrpdMbbBj3RSARUNDXLIxPK/EkybdPafyF/
         L3Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784642104; x=1785246904;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=i2PlaeHicSjwm9RU3yTM3r1gOKB/KIi551qDeGreVpA=;
        b=qVz6kxKOvMWAFUDN/e3hSUerHOVOspPIf5Wimxp4Td40CLQIKSdndb1/Vg27KPBu53
         t5GiPAe1AaSD2facH76YAlsxQysyzpTftdkS2sNWIUjyWwzCkSEM5uSnp5GrEhJbqHBp
         ktg+nNomTDxxr1PEYhNjpXhZTl5OpFK1/wu9hMSi6V8K2wK90EOtwwhkZd7LG/BjFZIC
         SKBRwPZAYioqqivxl8xitBvvFauRZAo4KL6RMLF/qouQvQQqJuQBHGJTdk8IFqrEYa5T
         2D13XFBjQ3dxivoJocacPUUwwnFTGwqeD0uKUc0DeCHBuRed13CEs4yWVGKVg3rrxIA7
         pM9A==
X-Forwarded-Encrypted: i=1; AHgh+Rphm4oSr8bZJCqhqsKPWvoPp3jF0n8v0umyjmnlHzzHx8wet3lbs3vf4LgyWHiDstWGcALv9ruykoEEZ9AiuQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzMHoL6jMTcK/ONLnb3lw7idhNXI/FvlZWfBJUUBOuH7bEgTR9S
	1Ga6pqKLVgi0o8zBtoVvKbrgenXc+e/di9xGAbCBllOqVSug1DzlyKQFQVwZpw==
X-Gm-Gg: AR+sD10ZhsxPXhCkoKhT+qjQVXnzjwLLqH028hzbRcTiSDHhTH0NNRsqEADvLaKQt33
	pnq4EwyWsMhd1pGmJPi0qJgfSObynYfEOmbhefQ65JzlET3BqyKTSSIR6z4nD504UhzDxfeMRLt
	aRsvi29keLKylsTGaaSMUr+OPhJnxtwAD6eaaJMWYy1tllyDEdhYWDafITIpofEtW8PN3JcbjOg
	T7UlH7BImT53/WKChNPG1444gKKtN8dIabndXFsHifQZIjcTy+3LXRDdi8ukZ6d0VsPOZ+AGgkm
	hvEK5a/VCEK+nRREVavsmQ4n7CINLIoLtE88XENVjE7NB9e+K28lwBk4fTbY8FVEcFCn02pei9F
	ztkW0374oGQIOplSrBz+VkK6NNIqZt16yRRT5QVRCUSlhR7AsTblDBQjrz9AgWzCLA8YrKR5Qtr
	41tYGRF5roG0eDriiZ52hnNZR0YiK3+9mZZjxOHTXfNdb0pJranw==
X-Received: by 2002:a05:6122:3119:b0:5bf:d3cd:3d64 with SMTP id 71dfb90a1353d-5c1afc0dee1mr5588051e0c.0.1784642103839;
        Tue, 21 Jul 2026 06:55:03 -0700 (PDT)
Received: from fabio-X870-EAGLE-WIFI7.. ([2804:1b3:a801:a24:fdfe:648c:2808:d17c])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5c1eecc9b1csm13271387e0c.2.2026.07.21.06.55.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 06:55:03 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	ivan8215145640@gmail.com,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: Fix rk3566-bigtreetech-cb2 touchscreen property
Date: Tue, 21 Jul 2026 10:54:50 -0300
Message-ID: <20260721135450.45286-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_065505_266970_EA033A4C 
X-CRM114-Status: GOOD (  11.47  )
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

The TSC2007 driver uses the ti,max-rt property to specify the maximum
touch resistance, but the rk3566-bigtreetech-cb2 device tree uses the
undocumented ti,rt-thr property instead.

As a result, the configured value is ignored and the driver falls back
to its default maximum resistance value of 4095.

Replace ti,rt-thr with ti,max-rt to preserve the intended resistance
threshold of 3000.

Fixes: bfbc663d2733 ("arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2")
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Use the documented ti,max-rt instead. (Sashiko)

 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index b6cf03a7ba66..04cf285e6c2a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -569,7 +569,7 @@ tft_tp: touchscreen@48 {
 		reg = <0x48>;
 		status = "okay";
 		ti,x-plate-ohms = <660>;
-		ti,rt-thr = <3000>;
+		ti,max-rt = <3000>;
 		ti,fuzzx = <32>;
 		ti,fuzzy = <16>;
 	};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
