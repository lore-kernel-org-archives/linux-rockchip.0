Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E28C8CEB2C9
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 21:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kEdDIbgfkWKBofscsWKGbbUU0r4bNBlnHFAeFzFltcM=; b=HZ7tOKsSRAzBVI
	+jtubOdBZhEyZP4bbjuM2yb9vPx4DEsouHrrSICiRrZeGP1IkCWiFtL8ACmMFOG3JGis0dhQ6htVM
	SpJcUgw2g4bHj63uIMnPb365CPmDEDfHSrgQLDSKjUCrSYdwE3cEtgRwmDc2Q0eF0w5I9BLze6hR2
	yNS8EP4zHHjvfWu1Dpy8s+HmxOcKORRo2gzyqtVcoO3yGz78T9YK4vIBZIWmfEgcC/6yqsTKyuaek
	ZqvhGMDYjT99JByTQt2zciXBGEYdVORg/+GULPjFz7HUM5yO1VhXgd/vcwCBBM57cIk8x8DdPGnyO
	qofXTVa9lNCjbbVKQOlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svNhc-00000000rs0-43aO;
	Mon, 30 Sep 2024 21:13:08 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNcA-00000000r4q-2gDf;
	Mon, 30 Sep 2024 21:07:32 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-718816be6cbso4129857b3a.1;
        Mon, 30 Sep 2024 14:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727730449; x=1728335249; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kzJZvIAboYocgxdwgFUevxFj0WeoKQNCloTNimtHndQ=;
        b=iSbxdIcVf38gHRsDECFQJZDbU/uUb+341hPZj/VaVlgkHixm7MPwc/NWTbaSleW6Kb
         l4n/PaoRzLBihlL5iBftQLuYavMRk/edG2bFFUjhq2EA8Nd9uUl1Yh25Hlkqqo4o0Di4
         dTGYRrWwniDs+08dqK8aDvoe9LCoXGiCoxv3mxbWr4xyaeJnKLwN7pd1QK44xMFY8xoL
         gR5Z8gXw/jkjCbCkvifM+LjTpDkRXTSMqMg2a1+vYv+8eK7Cgnyl+5hgNdYwg8mbcEGr
         TBgOqI5a5xJctUdznyD6ImM/+9m24a2+ketCljsyH12Q8ZjAWsds3MvPKsyoO/SBcWVL
         Mfqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727730449; x=1728335249;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kzJZvIAboYocgxdwgFUevxFj0WeoKQNCloTNimtHndQ=;
        b=J23yMRV9y8cuY/umgThS9oK57qew7Jd2C8NlOQJAV0DPuVkfukejPBh6dcll/lliXt
         MkM1ag+rKVT9F9gt+0Gxab04KEwRRNMFyz8Oa1Rx8jEerPeKfq7QwxmX93ZcOuQV226P
         dMV1gzIebwADXsx0BPRJyiNmy5vXzWGUybr08uNAFWak2JA1R1kkYol6w9OpLBa0kH5o
         pPU5rYBCmFeJL0049u/vIqRzQ5x8Vt5iKYNbAK3UGcdSGVqORHEGecJmW+EbLDzo/dvd
         0QNP7dhJbp/slf+HCb3aIBff41cpjlicL0innFraV+T041ZvP0A4InNqEF7AjUcD8QGO
         Al3A==
X-Forwarded-Encrypted: i=1; AJvYcCVhsfOLuw2xw7VGTPklwuL+uYeVy5jtTqmKbmtdUfGovY4aKlqzDSxZmrHjTMGbf91gk9TP0jEOE4cCN0KmI/8=@lists.infradead.org, AJvYcCXFqoGTdH4f9yGsP4UczhNmvj8K5+xOiwSIUVdnBzFJl68z8C3HicRodgSdwPE87GfcGWHpYylfskyKpeTawlTY@lists.infradead.org
X-Gm-Message-State: AOJu0YzQ3fDpNFTs8XZc1ATe/yyk3ce2socu6fZ81opTvwqNZO/hb1+E
	MKYZJopqhqVHK+WQbrj//p38Il+oOcyYAr+fCg0C4CZtxKmeFNF5
X-Google-Smtp-Source: AGHT+IHunwyc/wkH7CD68flB2cwYZ/fEV5URz+9NNo3tl2FP3eO4wQo9g7Uyz5g3jz0dhYU2qa9Wsw==
X-Received: by 2002:a05:6a00:22cc:b0:705:c0a1:61c9 with SMTP id d2e1a72fcca58-71b25f45f2dmr18712842b3a.9.1727730448999;
        Mon, 30 Sep 2024 14:07:28 -0700 (PDT)
Received: from luna.turtle.lan ([2601:1c2:c184:dc00:f1c9:3376:480c:3b08])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b26537e8dsm6683220b3a.203.2024.09.30.14.07.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 14:07:28 -0700 (PDT)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ondrej Jirman <megi@xff.cz>,
	Chris Morgan <macromorgan@hotmail.com>,
	Alex Zhao <zzc@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jing Luo <jing@jing.rocks>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Joshua Riek <jjriek@verizon.net>,
	Sam Edwards <CFSworks@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2] arm64: dts: rockchip: Enable all 3 USBs on Turing RK1
Date: Mon, 30 Sep 2024 14:06:52 -0700
Message-ID: <20240930210652.1232951-1-CFSworks@gmail.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_140730_703883_B42AAA1C 
X-CRM114-Status: GOOD (  18.79  )
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

The Turing RK1 contains 3 different USBs:
- USB0: USB 2.0, OTG
- USB1: USB 3.0, host
- USB2: USB 2.0, host

This patch activates the necessary DT nodes to enable all 3 buses.

Future work will be needed on USB0: it is not USB3-capable, so the USB0
controller needs to be told that there is no USB3 port. Per Jonas's
suggestion, the USBDP0 node is given a `rockchip,dp-lane-mux` property
that tells the USBDP driver that USBDP0 is not involved in USB so that
it can make the necessary configuration changes in hardware.
Technically, this is USB *controller* configuration, not *PHY*
configuration, so the underlying code may be moved in the future to the
USB controller driver instead, freeing up the (software) dependency on
USBDP0. A TODO comment is added to explain this.

Signed-off-by: Sam Edwards <CFSworks@gmail.com>
Suggested-by: Jonas Karlman <jonas@kwiboo.se>

---

Happy Monday folks,

This is an updated version of one patch broken out from my previous series [1]
that enables USB on the Turing RK1 SoM.

Changes v1->v2:
- `rockchip,dp-lane-mux` added to tell USBDP0 explicitly that it is not
  involved in USB (thanks Jonas)
- Comment updated to more accurately reflect the situation, and to use one- not
  two-space-per-sentence style.

Kind regards,
Sam

[1]: https://lore.kernel.org/lkml/20240912025034.180233-1-CFSworks@gmail.com/T/
---
 .../boot/dts/rockchip/rk3588-turing-rk1.dtsi  | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index 0c4d809a860e..cdc525a8b157 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -683,3 +683,68 @@ &uart9 {
 	pinctrl-0 = <&uart9m0_xfer>;
 	status = "okay";
 };
+
+/* USB 0: USB 2.0 only, OTG-capable */
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	status = "okay";
+};
+
+&usbdp_phy0 {
+	/*
+	 * TODO: On the RK1, USBDP0 drives the DisplayPort pins and is not
+	 * involved in this USB2-only bus. The bus controller (below) needs to
+	 * know that it doesn't have a USB3 port so it can ignore any
+	 * USB3-related signals. This is handled in hardware by updating the
+	 * GRFs corresponding to that bus controller. Alas, Linux currently
+	 * puts the code to do that in the USBDP driver, so USBDP0 must be
+	 * enabled for now.
+	 */
+	status = "okay";
+	rockchip,dp-lane-mux = <0 1 2 3>; /* "No USB lanes" */
+};
+
+&usb_host0_xhci {
+	extcon = <&u2phy0>;
+	maximum-speed = "high-speed";
+	status = "okay";
+};
+
+/* USB 1: USB 3.0, host only */
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	status = "okay";
+};
+
+&usbdp_phy1 {
+	status = "okay";
+};
+
+&usb_host1_xhci {
+	extcon = <&u2phy1>;
+	dr_mode = "host";
+	status = "okay";
+};
+
+/* USB 2: USB 2.0, host only */
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
-- 
2.44.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
