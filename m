Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5F1DCF2576
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Oct 2024 15:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UZ4vvmAaC6275DOO1SKV9FxYMFd1gfQmSd0bGW54U5o=; b=UnoqaMZoqXEVWy
	mecOwlRc+sbCY6OIH9NGqBzL8gAj4Dv1ZZ5E1nv7Tep4q6l8y6vgr7zIghCSxcyCHoJnoK2w6Mi3k
	H0HZuP3Zu/RSHOCY3L/J7Mn5+vXUokzLyTWhnn1bRil3KWX8isvt09NZGnf0UpYB46op5SCP7Ohht
	GF6C4kWSU9J76uqWEfNzqo5aIWclNtYbO/pAVyfpUNB3SksSX7490/AKJTx+GrGV577aJQmlqRvCP
	U/skpCZZnzcTNzx/EWFFbRkNEU7GhL5n3cCoNF23JJtExEEDKJ/VYf71oAAIGGqWcrTkR1fQzGDHI
	tYPXPtlaD9wyqFNTIqaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t00k6-00000002rYI-3JfH;
	Sun, 13 Oct 2024 15:42:50 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t00ih-00000002rDF-45wO;
	Sun, 13 Oct 2024 15:41:25 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-431286f50e1so12656405e9.0;
        Sun, 13 Oct 2024 08:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1728834082; x=1729438882; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=CsPJewwB5IvvxkmdERVsHKdiFqgiQNMaWLL2puTpWUk=;
        b=fyleZVH6/FWc4J/fT8v4rAFHq6cmcssVv50vudQoPJkGd6vW9mXgJxZv6JX/wCBofC
         wGCzL1SRAFg5YrMbidGet+9IDaupCSPm6ruH883hvvcLL0gO8csoYk497oSJuTV7Miud
         zGrSrtScDFX87qQFZ9eICy+u7IVr0Hixkwr7ymk10EfvRL4D8zEM3xDLxegqmc8Rnknz
         MWBBSk5eTB+gkNwl6+qH85XAzZ21DA6dGuM470tc4EybpgsUq3PesFGVP0WV1zeLsgX1
         WHHHPCuDmecvnxXRpKVq4mKqm31pvQR0iJk3Aj3xtmbTeNT88tYaCDkZww/OYF6l0QnT
         YQWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728834082; x=1729438882;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CsPJewwB5IvvxkmdERVsHKdiFqgiQNMaWLL2puTpWUk=;
        b=ofey0VNTBQMZ4FY8vOx0enQ6caD/9la2UBz2qLytv+mvVUZXeJ1gQ4koHUenVnaqxm
         KKblCeuVoszZVj8O4k0WMhhkUy4lgo6Q5Y7V+moYrQt64z5mk7fnUHXaOjb0ptE8ZcD7
         Nmo1vIRD6+Bex58rtz3TjU78yg6AL01Qa/Sb9jXs9cZitGffjj+F2cgWKUsI2jLL9k0h
         oZeWyJ0sJJ8T2VEx1gS01zNvJOHh9fU6ItaxATYFMdLZ96OpDxeRMIp+/lKJaOTtJ6Kp
         Uo/8Yk853gMnfwMeTcu2zXISah7/WxGHlfUB5I9qonAIKocGByvmTNSSlkU2q1N6ZNW4
         Ujpg==
X-Forwarded-Encrypted: i=1; AJvYcCWTPAp6+894MNZ+/wVmoeHZkw6ERtJzVPkXBHkE8Ff/JgWnuQD0KdfPQCPvPTLBLW+40ZhpgI/K44P6okVHMhk=@lists.infradead.org, AJvYcCXUjhnS2ugc6DEcjQY6W/IyE2b4OjxW6Y0q4Ivfr8R3ADWVXVj5HmPC9NPzKQEcl63LgCM9mhgVupXY06YpvE2v@lists.infradead.org
X-Gm-Message-State: AOJu0YyPuKc5hvOBk5mqRxxQxZ/bjtgJs8M4fwWtNUbBaLt2rzuGDUbH
	Wu/WwcJnju4oRke0/V+nU2nrJixmmWttvPbJd5ur2+sSE3fyKG3Q
X-Google-Smtp-Source: AGHT+IHgrEYi1YlHIlrkzs6Td76e71adRbBemav3YpY8doMdMxvf1ZX1XZ42XIn1qpbvJ7sKKdys6g==
X-Received: by 2002:a05:600c:444f:b0:42c:b62c:9f0d with SMTP id 5b1f17b1804b1-431255e03d0mr71238585e9.17.1728834081649;
        Sun, 13 Oct 2024 08:41:21 -0700 (PDT)
Received: from localhost.localdomain ([2a02:908:1587:1e60:ba33:7ef4:2f9b:8303])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a0e83f83fsm27498466b.125.2024.10.13.08.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2024 08:41:20 -0700 (PDT)
From: Cenk Uluisik <cenk.uluisik@googlemail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andy Yan <andyshrk@163.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	"GitAuthor: Cenk Uluisik" <cenk.uluisik@googlemail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add board device tree for rk3588-orangepi-5b
Date: Sun, 13 Oct 2024 17:41:00 +0200
Message-ID: <20241013154107.25017-1-cenk.uluisik@googlemail.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_084124_066114_7D3EC745 
X-CRM114-Status: GOOD (  13.08  )
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

Add initial support for OPi5b that includes support for USB2, PCIe2, Sata,
Sdmmc, SPI Flash, PMIC.
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3588s-orangepi-5b.dts | 26 +++++++++++++++++++
 2 files changed, 27 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 09423070c992..45249ce15175 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -154,3 +154,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-odroid-m2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5b.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
new file mode 100644
index 000000000000..107b65a5e7ea
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3588s-orangepi-5.dts"
+
+/ {
+	model = "Xunlong Orange Pi 5B";
+	compatible = "rockchip,rk3588s-orangepi-5", "rockchip,rk3588";
+};
+
+&sdhci {
+	status = "okay";
+};
+
+&sfc {
+	status = "disabled";
+};
+
+&wireless_bluetooth {
+	status = "okay";
+};
+
+&wireless_wlan {
+	status = "okay";
+};
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
