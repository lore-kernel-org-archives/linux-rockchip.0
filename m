Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5703C2BD09
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jul 2024 16:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnNrnd6VTXN59yKjlZXfHBS26fdUu5FEKANWxp31qVY=; b=dWK4NsbefPw+CK
	YZOKrlAOIwlDe2cPl/kPqnHavLQq/21cnwWR9o5EUykqNVm492vkQwfpl5sDYYR3Bz9inE8RARuEg
	NlPt7p2SfRRds3/shrHJoInHLNB24bY/DarUOej1kmTwdO0avZyqQPYseC7dGeK16noDNUblKYSQb
	D/IeDjH/Uaj8PVv409dhnRn8PrmMVFddiaa0OmPA+AnzzKluKvWXwJjwjkWtnGTKFncMb3FCS83ME
	u9qIKwBXnGfHkVh14mq5IhQmQS0HUigsz/zPo4tfn/9E40DvFHwt+R6wCobMNdwot8tk7pmUKFtLg
	HXzM7mhrMau6JAidXIzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSJR0-00000000j7O-3ymh;
	Fri, 12 Jul 2024 16:47:50 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSJQ0-00000000ie5-1wYv;
	Fri, 12 Jul 2024 16:46:49 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-2c5362c7c0bso1718724a91.1;
        Fri, 12 Jul 2024 09:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720802807; x=1721407607; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PlSTu8e9NEa7x8cqCEciuuE7yj+zz0dZw/tC3iuljOI=;
        b=MDnhtNeqqF9JwfytBV9Z/57I8y9mwI1QYSf90pF+ygobi94wmidnM0GJY4Nl32RXnE
         YCDikAoPf0XHDjRjH+yPSdZYoW+O98S2/VFqHPPRJJOEYtjK29C6IOFEgtKQZ88TON3S
         Pxn/XPflPr4SSvUR4ykp0oObBiNSmZTWa3D0gGF8sE7u9EUp6TWAbFsRXembfJlVu8ti
         8gBSgLphN+dZyU1JWSyCfUtiZTmIAhLN83EQUeJlpZu4XIkWBWJrZDSpnzjDWSA7V5Vc
         AvEYZ8AwoGp+Xs81W3NqjTkwiB06OqxsYWj+G0/6zPwHqeHWxJA8Wm2YXyK3lALTlZYX
         +ipw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720802807; x=1721407607;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PlSTu8e9NEa7x8cqCEciuuE7yj+zz0dZw/tC3iuljOI=;
        b=W0OG/kKUcvDYOBmbqk3RniB43zAMQqmk3WyVzrt8CBgc+9TST56oA0DYXABLax3PYI
         LnDdJH3t9FgC8GWoASlFbnnQPySE4yPe7awP7vktzshLRbAfcyuuRk1/n1FmUQ3QJ+ca
         FRPF9YsOkvEEjjR5f6PBo0PBYyIgye5AUP6zBs1RGwDV/L0RUkHR4x8pNfuU87xFPfLD
         F8HCOnCanKZqncmTQKvW7fY0YCW58e9tpGfNLAaCSRbqwzHWQVuuV181IvT8PBOMflmE
         0M5gqM6PTeGHJKGsYdPgIHkWMlY7aOHsdJG837LiWYv0Ut7FDFVs5+h8XHvixDjG3XPy
         Vi5A==
X-Forwarded-Encrypted: i=1; AJvYcCW5YhR16Bke3QzceXjwcYQ9hn6J6pddYM9x7SxEM2L/6eqYIMIpGPXF4tQpfl6GYyB/oRDvPP65XDCtFEEOFbdKn1cUjLBZzUPaXu2ruKViUNHIZ/yt7wcJ0xVxxQhsMsnvHJYE3GF/NpiDdVyBT/8s4wTRgYxXeHk=
X-Gm-Message-State: AOJu0Yyi3zMxlmD+591UaQUUmBszcOPe3mWCcoqGKdRju9HbSR5qDMYb
	sKVmTOPherIW5DCfvN01u6M+fuzFCr4L9vIHzdXL0W4YKXAnsf7h
X-Google-Smtp-Source: AGHT+IE3gd839oKFIr0D0QdBOBET0btxNgDgPKYQ9uzxuv19+FxgjT5x6cE0vXTyKc33JJRvBRpF1w==
X-Received: by 2002:a17:90b:d85:b0:2c9:6b02:15ca with SMTP id 98e67ed59e1d1-2ca35d4b0f0mr9339931a91.39.1720802807357;
        Fri, 12 Jul 2024 09:46:47 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cacd65a663sm1765436a91.40.2024.07.12.09.46.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jul 2024 09:46:47 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH-next v3 3/3] arm64: dts: rockchip: Add missing pinctrl for PCIe20x1 node
Date: Fri, 12 Jul 2024 22:15:51 +0530
Message-ID: <20240712164554.1763-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240712164554.1763-1-linux.amoon@gmail.com>
References: <20240712164554.1763-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240712_094648_523167_968E75BF 
X-CRM114-Status: GOOD (  15.83  )
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

Add missing pinctrl settings for PCIe 2.0 x1 clock request and wake
signals. Each component of PCIe communication have the following control
signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to generate
high-speed signals and communicate with other PCIe devices.
Used by root complex to endpoint depending on the power state.

PERST is referred to as a fundamental reset. PERST should be held low
until all the power rails in the system and the reference clock are stable.
A transition from low to high in this signal usually indicates the
beginning of link initialization.

WAKE signal is an active-low signal that is used to return the PCIe
interface to an active state when in a low-power state.

CLKREQ signal is also an active-low signal and is used to request the
reference clock.

Rename node from 'pcie2' to 'pcie20x1' to align with schematic
nomenclature.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index c5ac233264fc..a1e83546f1be 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -326,7 +326,7 @@ &pcie2x1l0 {
 
 &pcie2x1l2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_2_rst>;
+	pinctrl-0 = <&pcie20x12_pins>;
 	reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
 	status = "okay";
@@ -363,9 +363,15 @@ hp_detect: hp-detect {
 		};
 	};
 
-	pcie2 {
-		pcie2_2_rst: pcie2-2-rst {
-			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+	pcie20x1 {
+		pcie20x12_pins: pcie20x12-pins {
+			rockchip,pins =
+				/* PCIE20_1_2_CLKREQn_M1_L */
+				<3 RK_PC7 4 &pcfg_pull_up>,
+				/* PCIE_PERST_L */
+				<3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>,
+				/* PCIE20_1_2_WAKEn_M1_L */
+				<3 RK_PD0 4 &pcfg_pull_up>;
 		};
 	};
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
