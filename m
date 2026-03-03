Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76AFCEDEBEB
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 19:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yl3UoUyVFjTnpLlzOHWDiLSiUmW/FVfbxA8WV0P+a6g=; b=zO3O0bOhaM7BBE
	gQY8bAit4cBwO9MOez+73cZ0+iOied2gzA2tAaICW7pPfz0mzhLoYu7rGIY8TORvz3vRUrQkeOiL3
	fmDg/oaEtgLTmX+zk304WCJRarEn9l1TQjY0Gilc4eSmQhVHZSsttUrGJXRPOoOXDdZGa/OdVAfc7
	MNDdEvmV9PXjLN54+88EkFRgxTkrNXz5XtYsvtG4VtiCfw0eydNycJsVMxb2FS9MWHoLgErFfsoDw
	SvWL62VEMrdWjSw/qp0nkxjOjJkxadwGbv4Y/fviqHF8SeDItYbi8TF5y+ghAHi6WftgLPDBCtm5L
	w/YsxRAGLxrxu/PVgbKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVaK-0000000Fos4-2hYm;
	Tue, 03 Mar 2026 19:39:12 +0000
Received: from mail-vs1-xe2e.google.com ([2607:f8b0:4864:20::e2e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVaI-0000000Foqq-07ab
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Mar 2026 19:39:11 +0000
Received: by mail-vs1-xe2e.google.com with SMTP id ada2fe7eead31-5fded42aa7cso4059351137.0
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Mar 2026 11:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772566748; x=1773171548; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BB0QVBpGQ94Lw9CGC203QszMp5Otiswv82HpkthV6hY=;
        b=JkEWeqVdu8qS+xKVS037MCU5Mjylo8LZl0EGXsSV2/bvsnJ5lwsh1R8cmRTuZpnSVD
         zV7oinHMZx6C0/NzRGdwebktBoAWpe4rdnF3akV94Qqhh3oGZ0jJl8PVsIMigsOFmF4u
         /9Eo+S4C7C/tMbVGOj+iDPoIP3FHmwxOjXZCKmjbI4lHof/8AhEXgyUpxqVeB/YMsmz1
         9yzJk9eg9MsC5uJkIf/CqKUzYJEMoILxWWjeYyDgK+GxWEwA620tBlR7glhqZG//83sq
         +FWuVsphHH+cWDBTsmVZSpA5qLQMTanqz79aWfGGq4rkVAnky7aBwtsINSvunPwL2PTX
         1kIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772566748; x=1773171548;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BB0QVBpGQ94Lw9CGC203QszMp5Otiswv82HpkthV6hY=;
        b=UXpnSmgMRGGLJ6/VT9qT3fexS0NO99frOFO5U0djlq9qq+PTg19awIkcew9sbRCCH4
         bC0jVZN8sWwdftuzsxLzhksMLkrwr2RZjfKQDiM8gEHNkLhss0oWF/dQMwzURyNdFceh
         91f9p9hcWr/4ZR97BhJOuU9SvK+roLV+vCUtvMxzlUVGETnNvIgwKj8utdiqmrkPKasd
         hmSunmuBwtMOqvwR7RP1O/h6kOVO+rkNwmvOLUBqiwq61caMfJ4gHSNt+V8XcAmM3A2X
         GjGualF3dINPY0OxwxTY8qgxihEYRp6KnJZGVtJSaSVG4fQRxIYefYiNPb79VskwjRT8
         QrRw==
X-Forwarded-Encrypted: i=1; AJvYcCWTyyhbuXURtH/LRDyrXitmy6f6x5k4s8uHgKe7yQBGck5p08eK0c1it8njdsRHBkHaqNkxtTeSq/B4rL7YKg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxDdNJ0fN5/+7asGUwyfZB97Jz2J1EUkLd8GHR+WhdssPFwfNo1
	72+p4HSI1hE2DiJKngYU7vn/EqjUgdsbca0ypqzgsYHCsIRuDXiVjqU3
X-Gm-Gg: ATEYQzzI182uznoOoOSplSG8cvKlcz8JqrMFADw+072W3aobpuK+GU8IVQdTOkWfl5e
	HU7FYKnqY76UVxyjIleaeB6rmebXkYVxkqjZHVWMgitJJLJE0Qb7lrRCucPdKJ174gU/SARJA11
	5uxTuHsAizRo6WGDMzKVsQJl+DqMJN5YOpNBX9id3YI5w244eF78XC3fmaJLw1h6iCZjJJhbY4G
	Soj75ZIgSNdl/RjdnfynA6EZv9moYrFLVPs7Ee/bK/kDydFrVwo5/Pw/3MbQNH7R/DNmOP0D3SD
	H/wHH+c58JoZvC5lAYbBrY6qBpaQ0VLd5EOEK4fnXhCZsqRrxOm9dMuOiXqUvUiS9lMSA9BrKnN
	kQJ36kXVEv1Y7l1c8brzgu2nWOAb4cavUjZqi+woKoXwUFnEVs3f83+RpDmvrj7LdiF68DORs8Q
	RhjUVTab3elWSDUy8fWuxdwDte7hY5cafpcc1Kwz9gRa8U4Vb+igfxe8v0G7DE0rdss33h
X-Received: by 2002:a05:6102:304d:b0:5fc:2b29:afee with SMTP id ada2fe7eead31-5ff3237e661mr8739890137.18.1772566748110;
        Tue, 03 Mar 2026 11:39:08 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:8875:499e:12bf:3287:5753])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e7af30asm17780456137.3.2026.03.03.11.39.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 11:39:07 -0800 (PST)
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
Subject: [PATCH 1/3] ARM: dts: rockchip: Describe the touchscreen interrupt on rk3288-phycore-rdk
Date: Tue,  3 Mar 2026 16:38:53 -0300
Message-Id: <20260303193855.828892-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_113910_065888_86A0DE79 
X-CRM114-Status: UNSURE (   9.88  )
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

According to the phyCORE - RK3288 Hardware Manual, GPIO5_B4 corresponds to
the touchscreen interrupt line:

https://www.phytec.eu/fileadmin/legacy/downloads/Manuals/L-826e_1.pdf

Describe it to improve the devicetree representation.

This fixes the following dt-schema warning:

	'interrupts' is a required property
	'interrupts-extended' is a required property

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts b/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
index a878a2632de0..fb2f585caba2 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
@@ -86,6 +86,10 @@ &i2c1 {
 	touchscreen@44 {
 		compatible = "st,stmpe811";
 		reg = <0x44>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ts_irq_pin>;
+		interrupt-parent = <&gpio5>;
+		interrupts = <RK_PB4 IRQ_TYPE_EDGE_FALLING>;
 	};
 
 	adc@64 {
@@ -199,7 +203,7 @@ sdmmc_pwr: sdmmc-pwr {
 
 	touchscreen {
 		ts_irq_pin: ts-irq-pin {
-			rockchip,pins = <5 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <5 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
