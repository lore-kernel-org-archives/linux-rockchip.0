Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D44E5C41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 14:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gS8smzSG9Sa/enfW2q/Cfm7sYsw5mks3qrnpjnXW6Ug=; b=4p5/TFRQDHEhaP
	+uduh99xXc7ITwgQGqBfZ9FgQGxoj6uJMACVyITFXXuTYcQf0H1A3amKPk+q06y8tSYnuHmox1Hjt
	uG5u4SuZ8nWZeAf1mGI0WuU1yiGj4kz30iIBKH63mHzPT8sksgZ1wIfWXFBbrf+FcVmveGN3zVwlx
	kuyA9u0AftzJjRr9nUgRl/dE10dscTFrjqaqnqfgfjVUTGth3WfBMbLoE9e7pXlNchhIrvU9zLlGt
	IIZqvIlgr40/9zZp4axq/CwlMHWHowlaJKh30wOP9C0qM6trYW+n4VI82wQtDMus6OZEkv1/HrGnq
	4/qD0aMxrptw0LA7KWHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGgLL-0065f7-0t;
	Fri, 22 Dec 2023 14:17:39 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGgLI-0065em-1a
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Dec 2023 14:17:37 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-336746a545fso1139855f8f.0
        for <linux-rockchip@lists.infradead.org>; Fri, 22 Dec 2023 06:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1703254653; x=1703859453; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zTCtiAYsIrdczm+vNuwSAVpVmlGA1EeEBWyvRKgRmh0=;
        b=02jCyEsi7UjHjxgNyuwsgOk0KcpTxPb/ppczeo7fnC+rcjMuTugtTnU6f1rP4JvVMW
         h+hf0+Nuju/6Iqfx/wi7ghvLm+idZtDba99S+n7QnDOWIxk6f9ZwTFDth12k3qhJsdQs
         xTShjmyuS+uzCruvS3tDdS+bdJpv4ZQVnAMJk1FazicDTKJTkWcCORfBTEKGMGv5/JG5
         Qth+4kS1W2kwO241ZuLxYimVe/9Rm90QpCOA6WIM+CaiNsr06s+OaC+6X/GDmlYioNiL
         0g/f0v4DWnABjBBz4Dtc4dF0FNCEU7ZG9yM9yVDMjIwIlnCWKSUEfAJla+Te8yZj39ja
         YZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703254653; x=1703859453;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zTCtiAYsIrdczm+vNuwSAVpVmlGA1EeEBWyvRKgRmh0=;
        b=xQ2/FkWSHPhLGDxy8V0kgceeMwfZJ1aFzW7COyRx7Pza79CIIRZaZUfMPpG+I6ZrX8
         axfOmXRdkhfj10Rh+dW7Skkteugkv81OKQ1UQB3SI8TJbm2CycLhPAMiPvSItG4mdbAW
         lKEz9T1HpwnSvvX9/++Ufk4crcA4AfI7mlCowg37/YgoWU4FPbyQtFg0NoA2oMhh+tOd
         6rnj0qw9YTqeu1k7ZOLpirU6I5fffgCId8WC+FYrKjFpBnkORoCBwulMPHFgsCWioK/U
         RBtvYwPO2+WC0d96Oj5eoGa+5NUcVjVP/TjJK/vr84SolpWJDBiPw8RlXTendJxzRxQV
         fMMg==
X-Gm-Message-State: AOJu0Yx/BJxrM9mura+q1mMidQolFCV6cpoclYj8nHHa0CN8vpEHZ77z
	bfDqy1xMHJnEmYwVdXJUxJ4UqScCT1U6e4fPHSSD3XS8AEs=
X-Google-Smtp-Source: AGHT+IFzYbsQit22hpqse7aF3yZ0jFLLRkeTU3nP7KV/VSSNrYpwjsM1nPIBi3AQvfheLpTgmpYioQ==
X-Received: by 2002:adf:f212:0:b0:336:88aa:8ff0 with SMTP id p18-20020adff212000000b0033688aa8ff0mr1210064wro.35.1703254653564;
        Fri, 22 Dec 2023 06:17:33 -0800 (PST)
Received: from localhost.localdomain (host-212-159-138-247.static.as13285.net. [212.159.138.247])
        by smtp.gmail.com with ESMTPSA id e4-20020a5d6d04000000b003367433118bsm4441870wrq.78.2023.12.22.06.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 06:17:33 -0800 (PST)
From: Shantur Rathore <i@shantur.com>
To: 
Subject: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
Date: Fri, 22 Dec 2023 14:16:16 +0000
Message-Id: <20231222141616.508073-1-i@shantur.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_061736_551802_A0FC552E 
X-CRM114-Status: UNSURE (   9.71  )
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, sigmaris@gmail.com, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

USB port regulators should be controlled by PHYs
so we remove always-on property and let PHYs manage the
regulator.

phy-supply isn't sconfugred for the TypeC port and now that we are
removing regulator-always-on, we need to fix the phy-supply
so the PHYs are able to turn power to type-c port.

Series-version: 2

Signed-off-by: Shantur Rathore <i@shantur.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index bca2b50e0a..f7273f7990 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc5v0_host_en>;
 		regulator-name = "vcc5v0_host";
-		regulator-always-on;
 		vin-supply = <&vcc5v0_usb>;
 	};
 
@@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc5v0_typec_en>;
 		regulator-name = "vcc5v0_typec";
-		regulator-always-on;
 		vin-supply = <&vcc5v0_usb>;
 	};
 
@@ -859,6 +857,7 @@ &u2phy0 {
 	status = "okay";
 
 	u2phy0_otg: otg-port {
+		phy-supply = <&vcc5v0_typec>;
 		status = "okay";
 	};
 
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
