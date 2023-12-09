Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE7B3C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Dec 2023 23:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lh1lvYFryGv3cRcaGE/Bio4IP8VZHcgPhCImwjqRVCs=; b=q9JkoksPwKsJ8L
	W85vsV8b5pEIroOdCiAQA9j5mUhkaKin55zSTRGUc/TcE6M2EvGJEFmh+PA39PfrV6APpl7hzR/wZ
	4/L/B4GalEKaRlzQ0m/hMucFUyk1jni1pbJvVEj9i2Pf3Yp56rADzXGGnSvcBH6B5VHwhaqbbOoQY
	cs+82CxljSNhtvEFFClO/bVDB4g6pUve3IAjrLg4g05j5tB2pQ8+Ok4xPsPToDjxR8RkJvk5X9QrX
	LBFsgjScL6CxQYMUowWFJv+x2XtLkSS70/E9FLtXoZ30h2GyiGseXZ9bSuvlH8t0REzl+YAszPmbg
	Yu5GWpz9HB7FdRI35WGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rC6eY-000gSJ-23;
	Sat, 09 Dec 2023 23:22:34 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rC6eV-000gRE-2B
	for linux-rockchip@lists.infradead.org;
	Sat, 09 Dec 2023 23:22:33 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3331752d2b9so2323252f8f.3
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Dec 2023 15:22:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1702164148; x=1702768948; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=n62IauQpUWIlNcCw3G8Fszbjug1LgBhpQTowo9eXHl4=;
        b=e4WJNWYzFXbMYOG23yk0rQ9wKL95lLrF01mMz9rLuCz9U8n4JDCKsxDtIVUq8Hmj8H
         COJV8y2EArA1o7zXO61x0pKfl9g2TKgwYgdzj2CTQp9OD3nF+saXXg8RkrwYC1fj8fkA
         drb8RkEqcxU5n2AVCCZBfhX3+C/g8K3Z0omnXyrawKNd3/PBZBz3XNHgbBYYU3eiVoFe
         HJVxChrEH3MpXh90nIyk/ZseeS9eR+MqOSPnvW3wD/4+dxnl9j4R4vcwL8uRZQSeclz2
         JB4+UFfM2DJWmz1URo0jJAdyD0iMQtjef4lv8swlL5+gRvXf+sHJI8+fyh0p40ubLpbs
         r4lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702164148; x=1702768948;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n62IauQpUWIlNcCw3G8Fszbjug1LgBhpQTowo9eXHl4=;
        b=gkYlqoaXmTK8zl7qC7ZdEBrwdv4LgkZDLGTL+cwMJDVHdCt13g1Ehfm+nlv2th19dE
         87CyT4HTDsqa3dlBYx1OMDnzoL1RTEzojndxbdyw3tHM97gKSSgl1Xa1/kWyQFDyp+mB
         SW+5LEl0NKsksPdo8du30Gvx8uldX4TkpzyDu7jmKSt1OH7pWygra1WKdjZfiok4syjS
         lWx6U52nB1AoA8kqurkt4XiI2ZsnXUYPDoKVzqRnr61caAzEft4KaOrhlPvyAIHUN9c4
         sToyJmEzbudWaZWHvSKbJJmEGXlp3YPcPJvju28i/jDeP1xK70/wGitKb7kEvdnStxIk
         cYQw==
X-Gm-Message-State: AOJu0Yz4vpxTlZ4UM3qV7big/c/MoFGPheu+FmJ+nG3+A+bjIjEvu2LJ
	Src8XoPNKsXeKFRKJOzukQb8FU+5PRDqSs5NLVV05g==
X-Google-Smtp-Source: AGHT+IFuoeNtokjD1IiK55berShCI0hX1y6+ptGPJxALp/5eGfoqGgmT3UgS0nC2HE/x97JrCa9nYg==
X-Received: by 2002:a5d:457b:0:b0:335:4f4a:acca with SMTP id a27-20020a5d457b000000b003354f4aaccamr1054783wrc.24.1702164147956;
        Sat, 09 Dec 2023 15:22:27 -0800 (PST)
Received: from localhost.localdomain (host-212-159-138-247.static.as13285.net. [212.159.138.247])
        by smtp.gmail.com with ESMTPSA id w13-20020a5d608d000000b00333357a77c4sm5185038wrt.34.2023.12.09.15.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 15:22:27 -0800 (PST)
From: Shantur Rathore <i@shantur.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	Shantur Rathore <i@shantur.com>
Subject: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
Date: Sat,  9 Dec 2023 23:21:09 +0000
Message-Id: <20231209232109.348999-1-i@shantur.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231209_152231_919487_CE7FF338 
X-CRM114-Status: GOOD (  10.89  )
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

USB port regulators should be controlled by PHYs
so we remove always-on property and let PHYs manage the
regulator.

Typec port has misconfugred phy-supply and now that we are
removing regulator-always-on, we need to fix the phy-supply
so the PHYs are able to turn power to type-c port.

Signed-off-by: Shantur Rathore <i@shantur.com>
---

After this patch the ports were confirmed to power up and down
in u-boot when doing usb start and usb stop.
At boot the regulators were off, the devices connected weren't
powered up, on usb start the PHYs are able to power on the ports
and on usb stop they were powered down.

At the boot, the ports were powered down which was again powered
up by Linux kernel when booting up.


 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index bca2b50e0a..bd2824aa48 100644
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
 
@@ -863,7 +861,7 @@ u2phy0_otg: otg-port {
 	};
 
 	u2phy0_host: host-port {
-		phy-supply = <&vcc5v0_host>;
+		phy-supply = <&vcc5v0_typec>;
 		status = "okay";
 	};
 };
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
