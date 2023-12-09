Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A561C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Dec 2023 23:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ELEa2Xiuba+Til3VGRhWyp4/IrTj2uR/sZludn88OC0=; b=jqgGK8zDxgxOCa
	XiB1cW8cSKYc3CeakgxEuroZGGpOAzI4th8ZVDvf+xZoGb0crTGrIP/AUa1M/f6R1+XK1In8ZmLBl
	H8EdRQvnOcWfu532pI1B7R2JfpWAwC6tT3kXihqMMsWQt0pCEQTxp8gmueG0HRuZ0Zh1rxQs8acmk
	dWg+2yfyTgI7mL94TVI8aJhQ7JTyBhtnfQM8/n+voHTWhnK+WNK6D8HpGr5LVLcioWuT4Ps5uaUzr
	KjMPslKiZUGV6uvNItC5ZFv2FVwKD0SkQ3nmmcPMFQVNUmMFqDdj+C2Zr9MwMeh/zkwU9mEbvP+5v
	jSusbS+O974NR1tb/ufw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rC6sU-000iYi-0V;
	Sat, 09 Dec 2023 23:36:58 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rC6sP-000iY7-2v
	for linux-rockchip@lists.infradead.org;
	Sat, 09 Dec 2023 23:36:55 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40c3f68b649so8257875e9.0
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Dec 2023 15:36:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1702165011; x=1702769811; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AYYU1x78IPUuzbhoiwMxDZ66s1bw3Uj1uSYC3CI9Ffc=;
        b=uRoOe6ecNgukVm6dZgPkxoUIL+nMPuwwjynkUbuUTjXH1ew+Wx0roJu+4T2wKCbx7J
         sAHTUWszR4R2EPu4RZnxoMy30Nx2ZLeeyXIAEJTqejYfJ4a7fMD2T6XxsxL5KmxP+Myg
         7Kib50WZ3EQJnCetlrBdfwivlsAbsbG3TDBiO9XRAH0gsYtTF/M9u2HYe4/72JcTzxFz
         2ZwQEA1N8fwc5vfrG2HrFL8sX34MkmYepRs4fO0WrTXIqwdOIvGeNOdKSqHgo3YPs7ZE
         NUGAHnzFQl6ftwqAznI/VZr7HG+PFpgPJhEPsRGRZ/dvRsiA5wEzl6r4pUjevphH3sxD
         PtvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702165011; x=1702769811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AYYU1x78IPUuzbhoiwMxDZ66s1bw3Uj1uSYC3CI9Ffc=;
        b=hbUa/hc+FKYTlIcpaOLDz8VvDih3Z8LWAEuNG/yJGm5w5YQcwIUpd0HSoaGKdMCWso
         +zGckRTOYBTvYu/pq35z567eciMJGCEd7IQ9TBwyGK5ujG1bUBfVBDl9i52CkvXg4hWF
         hVBnaUR0+pffQelFzfKBChrEwSN5nyieH1RPYA/CwdfiuF7D3o1AhM3jQ+tzPybNU3zj
         E37vhmw7wrJcSvl6V6M3tDjKmwRT9hcod10vGdSowg90EzXi9HTI1sXAd6biZ72om4V1
         ErfI5SHV2Cyb+G89b0CJ+oqqhElyOByR5uq9BxFtPmWV3Tfke1mjPV0B2Ovj8+voc8xl
         jsCA==
X-Gm-Message-State: AOJu0Yxz9NpHwYPkEj6f73DAynYlfZXhWBVWx3aTrTs1lNDzcTiDw1ju
	l3jWn3sE2tdZpI/2bAYp6MSwpIxppmtqAOFVmuU2/w==
X-Google-Smtp-Source: AGHT+IGVNoiaYBfiOk+d/jQsCSMpewzgt4JgqKjme9LAspqITcJHUASRoLP5rkaIwYaUpaI4GJBL+g==
X-Received: by 2002:a05:600c:188f:b0:40c:2e1c:8f8e with SMTP id x15-20020a05600c188f00b0040c2e1c8f8emr735719wmp.219.1702165011564;
        Sat, 09 Dec 2023 15:36:51 -0800 (PST)
Received: from localhost.localdomain (host-212-159-138-247.static.as13285.net. [212.159.138.247])
        by smtp.gmail.com with ESMTPSA id fc7-20020a05600c524700b0040c44cb251dsm139854wmb.46.2023.12.09.15.36.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 15:36:51 -0800 (PST)
From: Shantur Rathore <i@shantur.com>
To: 
Cc: heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Shantur Rathore <i@shantur.com>
Subject: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
Date: Sat,  9 Dec 2023 23:35:36 +0000
Message-Id: <20231209233536.350876-1-i@shantur.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231209232109.348999-1-i@shantur.com>
References: <20231209232109.348999-1-i@shantur.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231209_153653_968581_4FA34982 
X-CRM114-Status: GOOD (  11.23  )
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
+ devicetree

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
