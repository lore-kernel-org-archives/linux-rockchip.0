Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98FE3C44529
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 13:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mD8/YN1czYwoPsB9UqbtaOvOkewapzxEwzcHWQbFeow=; b=IoYF9YWYkiindF
	qQYfnliqrJhI0WvrO/qnkyrja6q8Li5qhttjsWg+fT46z/T9AgjaLR8p9wnIuxsMSk9O5mr877bjX
	l3fScMif+63YkiCCuwbZqAu0gWXfUcTHKyEs8ymksGh1Ph0bMnQckRE0P0DbK+9mctHgv/BxJTnbt
	avna5ST1xqkhG+3nyakIWL8khbxsLjzJsbtNJHymmjfYinO5H44qoKAIMUBOaes1CnYnMPINlHJeU
	5RlOWeaJZ4fE2TB0pM64g6QIlF2eICnKylAodBV812hUMu3ruSfcEYPXZcuQ4cwNvmGMBEbivWXLT
	MRtLv7wizk3Nf92X/Svg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAcn-00000009YLj-1EB9;
	Tue, 21 Jul 2026 13:35:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAce-00000009YDz-3J0n
	for linux-rockchip@bombadil.infradead.org;
	Tue, 21 Jul 2026 13:35:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=BIe2hT1tS/hkONRpAbeJmIad5iezlCwLptmTsdS8/DQ=; b=o9L7gTXEodrgq4COPlFEYbM2/T
	YSomkXnbgQlD+aoYfW/hPowIlpn+w0F+BrAakPteQVML/YkLBpo+XWkjkXwvprjOKCVAp9/EWnwAs
	nYb7V+3NIz3ikB8g2r9/XA8WWQag6UxiXn1bvJL142KHR5VJqK2jyR6Zxmt6wNiQebflUaauNX68B
	e8En3u8m1AN4rtYRiQnaRXalFLPteF/GGKeJWLQZp+ogrS+CppgG6jhIvz7zH9bPmiBfhfeBesKcG
	a9KhtYFFtb9McLc24tyZLnmF9C+bENzk8eMsEH1gKgm2nm8O2eY+ty3qKNFsp4N9guBhfwGIHEmZH
	e7q0YoFw==;
Received: from mail-vk1-xa34.google.com ([2607:f8b0:4864:20::a34])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wmAcb-0000000HaVL-43NK
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 13:34:59 +0000
Received: by mail-vk1-xa34.google.com with SMTP id 71dfb90a1353d-5bf83925ddaso2733337e0c.1
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jul 2026 06:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784640895; x=1785245695; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=BIe2hT1tS/hkONRpAbeJmIad5iezlCwLptmTsdS8/DQ=;
        b=inpt/CRwPNFfYdWdIO7wHx/2ROpxzfZoKLvbe5AM8s9iBu+N7ePlHUPda0/MiIBghX
         o6h/jNVYLKjz3KCgN3WI1L1JmFuK7YESzESqajhiCzWpzMtYxGlUdPv0jV0JxgN8jel1
         ywv9oJvI21PpkSVkTYfe9wGkfColzzvvbCnJvOn3QWlfm1HXdkNSaOTmLFVxhDgLrkAq
         +jgqngkl/jbXD78qgTAWUWjUoNJOwebUzq4OWAhdA/Km8qUEdtz8wD1ANIu2rEHXMdkB
         CU7xH/iPrUy6sLeOH1HMjF2p05Mfn/pjPgsJI6bi++UsKRMl5sANBR6RRvG2mEFp/fE6
         yTCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784640895; x=1785245695;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BIe2hT1tS/hkONRpAbeJmIad5iezlCwLptmTsdS8/DQ=;
        b=LXsElqBpyxoWwQ2X2FuFosbYKQw2PDC9wM2qMQEWPaEzrr8wkbMh7YHPEnajkSFdEx
         V4HHwqEOp16oSdMphH42EZPdWP1+g59srnhAwYmtOBlESdV4UjgApwVfH0EOvNmKi4V1
         Pdad1mBvvmnmvKHRquM276upS5lUq27X/Q5SxYQrkjUf0cUIzMAFz+InhJ2UOZVhUM7U
         b9Dd88qvzGUEAzOv9q6TbyWTCGma2tFytbYVNFGgUd1B4DOfjgHCXI/IyrQQdr8UpyhL
         NMLAAQhHhNI92eCAHu7ujvHMXXfPQVjo/YHic5ukufMqDOdPhs09OiteOyKR6XKoczy+
         zt4A==
X-Forwarded-Encrypted: i=1; AHgh+Rpa4YwEz5kgv3jixU2vbpj1boChJx4tvBe8tivM31q9qAlOyhj3qoE6pko53mw0HPq369QgepRB/4/SE74OLw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8Bc8ENshA0kqb/v2S6ov0hBbhu1h4Q+p0CdBxFVGus2QsGT4u
	BK2YzxzuZxVwoPL5qyHwBsov+6hWQZtmm7z1HL7eVsihm/caj32iagC2FmLo7g==
X-Gm-Gg: AR+sD12uqAE++5H01GGBQJofTdV46tteh9WUWsvVguBixBj194Tw8cBqzMhgB/mh/aR
	kEGMYWfX6OYvKrl4Z5yzBfqWDk1z2ozyuq/WDkjIQpXWxQyNjbbc2W+AajelUGwBy2T8NAkYtOU
	dITFHk4Etz4QiWvmcwwz3eullhlDwWFX5AoHAg+eolCGTMTi7UDUHvCy7qZ0XXUB/D1eEdTCtr5
	RXcTVp4UFMK/IhxF/wd80uk3/Bs8ntZprW71BMTD/nSa1qvRyBhVkalm39EnOmWTaeAvIKFBVNM
	Cy0xvIEbHswnbztCAJtOZ3uuZsfbTzIOpLXaI8od1UyceXM+yeJQSNhKSh6TUhpH5yd1XY9jBNa
	n8LNAwu8/Vimr/DGO/mqgCXHbsZtMVSDCMi9rkM29+q4mRjqAHgpT3U4X2/Xz8cQ1P1rv9l8sS5
	L6hxcGC5NGldLo6tQ814FJHH+1vBVR1g1rj45LlenJTy6NHzng4YAedd9eRkua
X-Received: by 2002:a05:6102:3e13:b0:738:be73:55e9 with SMTP id ada2fe7eead31-747534dcb84mr5275283137.12.1784640895443;
        Tue, 21 Jul 2026 06:34:55 -0700 (PDT)
Received: from fabio-X870-EAGLE-WIFI7.. ([2804:1b3:a801:a24:fdfe:648c:2808:d17c])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-74757fad06csm11851362137.4.2026.07.21.06.34.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 06:34:55 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Fix Gru WLAN sideband interrupt
Date: Tue, 21 Jul 2026 10:34:45 -0300
Message-ID: <20260721133445.44283-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_143458_149671_B512A2F3 
X-CRM114-Status: UNSURE (   9.20  )
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

The Marvell WLAN host wake interrupt is wired to GPIO0 8 and is not
one of the PCI INTx interrupts. The PCI device schema therefore
interprets the two-cell GPIO interrupt specifier as an invalid PCI
interrupt and reports dtbs_check warnings:

pcie@0,0: wifi@0,0:interrupts:0:0: 8 is not one of [1, 2, 3, 4]
pcie@0,0: wifi@0,0:interrupts:0: [8, 8] is too long

Describe the sideband interrupt with interrupts-extended, which
explicitly carries the interrupt controller and removes the ambiguity.

Fixes: 48f4d9796d99 ("arm64: dts: rockchip: add Gru/Kevin DTS")
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 3f3cb0eb5809..5435fbc27095 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -505,8 +505,7 @@ &pci_rootport {
 	mvl_wifi: wifi@0,0 {
 		compatible = "pci1b4b,2b42";
 		reg = <0x0000 0x0 0x0 0x0 0x0>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
+		interrupts-extended = <&gpio0 8 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&wlan_host_wake_l>;
 		wakeup-source;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
