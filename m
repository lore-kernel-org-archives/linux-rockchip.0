Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDE2FC46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jan 2024 20:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=68jhpiRW94xUDkmq7TsJU87cmT5UwuQgHeCnb3i9Igk=; b=RTcJKfaeRZPmwq
	/EeTpKLQl63R3Cjr1UxAiyQ9azcs8yBTKj6bKEgERziRqhTnNsZlLJMelPTH+9zRgcKsULEqZlQ39
	QhI+FRRKcM0v5MC8MH09f5PDdTKJYUG2jxSZpxxMHVIxs9RniOOCdi5tf+UIEPuEytSCWEDRbXBQa
	P+2BZGV0EIcoCDRfChBHh1yeUyIzS87cDfvimzEpeKwHwAwbWqUrpO5NIAj4XR7thZpGzyhyQ/Mlf
	N9g+/M7rAnHo3SQg5YzM7MpGGOc9xVUsf8X7zReLPBJZawI/7k2pJfJUlDSlvOHGEhwmk7bCK0T+v
	+jV9FtjPeVzmdJHG0EBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMDGc-001qWr-0c;
	Sat, 06 Jan 2024 20:27:38 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMDGY-001qWH-36;
	Sat, 06 Jan 2024 20:27:36 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40d858c56cbso8874855e9.2;
        Sat, 06 Jan 2024 12:27:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704572852; x=1705177652; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+qZcxiKBLoslTbSETaLsQdzVkOAcIfS6HTz3Ex8jpyI=;
        b=BJO/LaY6sTr9CplZQGl8yNtX2vCd4sbEAXA5S2w+wvtCevfNnYMTGiYZRZN8Xi1ZTb
         phLGQXwmAFTbLaKpb/QBEtfhIOf01T78W6nk1MPRdW68WNq7WThcZvcXDJn8UtxzpTBv
         LUKY0Mljz3NjTw/+QyB1b4oFb7Y8rh/0hCvoQS4Olqf7VKwq7mXuyobYw5dpF/Ev494o
         Jwvahr7JtbBXKkfVige6wkRYg4D88sxfG8VLYc5UPCW+RCcp73Zctnke6xPV5J75dkX9
         6SF20b/Itg8036ZB9RMWS0egcWCeDhZq7BcL7CSEckngLgIn9g1EZOfo3eVzB6RJEMMY
         Iv6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704572852; x=1705177652;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+qZcxiKBLoslTbSETaLsQdzVkOAcIfS6HTz3Ex8jpyI=;
        b=q03WDEhobmxOA+TKaG8Cy0FXt5wAPEJ8+qBzpHBCUbIr6FTJkDcrniesasRjfOdlls
         RlBXoauxgQl2iYbZq5shOAHm3I1tzbjUcqqHDnbe4ZoksAqE33Z3CimlKUjWSnMlJ6Zq
         TMIECHdIHgF9l5VhkAoPbfOGA3FtTCHlx0go3+4Pn9DTEPv+yGhyFQroReik7Ue7Eqo1
         qHDc38v5cKfcK4DubyCKtBv8AhBPxQHyP50y++lKYTAKzvwbOtt2fRQLf4LuRxrNfUoS
         ex0nczdhqLIyct/94ge6XhSe7VeYCqpHcJedYKG4ByahlZvPS4SiZc9No5vNtENeXaoJ
         0adw==
X-Gm-Message-State: AOJu0Ywf7Ont2i+0DZr07cVlAEjoiLKDJ4qGOyEum+OJ40oCwstADK7G
	e1/RWqWp7lnKsUr1bXjtfG0=
X-Google-Smtp-Source: AGHT+IF5iAofWhWU64cSQMRwO2U7enBcruZdFFzhEg/Z1fcKWSrXAkhwpvhmzOYS1vOSXDKhsckfwA==
X-Received: by 2002:a05:600c:cc6:b0:40e:3ce8:a5be with SMTP id fk6-20020a05600c0cc600b0040e3ce8a5bemr695925wmb.164.1704572852308;
        Sat, 06 Jan 2024 12:27:32 -0800 (PST)
Received: from latitude-fedora.lan ([2001:8f8:183b:50fb::d35])
        by smtp.gmail.com with ESMTPSA id k5-20020a05600c1c8500b0040e418494absm1707955wms.46.2024.01.06.12.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jan 2024 12:27:31 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Christopher Obbard <chris.obbard@collabora.com>,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <szucst@iit.uni-miskolc.hu>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Alexey Charkov <alchark@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: add rfkill node for M.2 Key E WiFi on rock-5b
Date: Sun,  7 Jan 2024 00:26:45 +0400
Message-ID: <20240106202650.22310-1-alchark@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240106_122735_020859_E91EC3D1 
X-CRM114-Status: GOOD (  10.42  )
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

By default the GPIO pin that connects to the WiFi enable signal
inside the M.2 Key E slot is driven low, resulting in impossibility
to connect to any network. Add a DT node to expose it as an RFKILL
device, which lets the WiFi driver or userspace toggle it as
required.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 741f631db345..a5a104131403 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -59,6 +59,13 @@ fan: pwm-fan {
 		#cooling-cells = <2>;
 	};
 
+	rfkill {
+		compatible = "rfkill-gpio";
+		label = "rfkill-pcie-wlan";
+		radio-type = "wlan";
+		shutdown-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
+	};
+
 	vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
