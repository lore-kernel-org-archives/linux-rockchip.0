Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A0EACF2579
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Oct 2024 14:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KQntwWU5s3XXMchf52GruFdWcCv3HYJM3iLE9Tjr9hQ=; b=VCbEd1ywHr8fBt
	r/TwE7Awq5FGQsOuIAp5rV/y6G3sFcCgAVJzqBNdykTh14YWn7bwxgXlSCTHXkdMg8Ao8xfiSQfiL
	ZK772FovBGgnXXKKDXE0XLngt1PziYzBekL9FPdXuY1A19NLeKb1jR8kb8s4qUX/jqLADDXvEtdip
	citPWzxv0VfVRzdtWWhBZm4aHGshgBDg/IooGuWbIyj3deeHvVpHQhqEKUjkx9yjiPcJ+68oMWasC
	FPhZZ5zPUzF8vaHGEkuBv7do97rD6iKeg43y+FJta2ZQZsVkv24LGzolSQmV7XUZ8b9w18OlA6Oqi
	Xa4sWTLb2JO02fjtbXpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szzdg-00000002moU-2p3A;
	Sun, 13 Oct 2024 14:32:08 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szzcH-00000002mf8-49E7;
	Sun, 13 Oct 2024 14:30:43 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5c9709c9b0cso783590a12.1;
        Sun, 13 Oct 2024 07:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1728829839; x=1729434639; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=L0glNYA5rVjsDnyfMCJSUHAQP7BmZHrAonKDRalhrkE=;
        b=gUL43mnvoAEWLaQ0G2B9OYIHVDfmTT89EXOXOSu3MG3fz6Nxbq07KjTOcyOpnUzFAT
         r/p1Qd+bqXNHjrFjOXEC0znRCLPgAf5JVA4kJiKCNR392aoNrJ/j3Qfc8YB1r/FaUBkF
         gLj+jHjhkcEC2P2x/cBNU6M8zd9HZx82ur3SE2w/AHcyORiPnsmnwiqu61jiNmo9cOZL
         kRbGhtD+AZqMy1qdyF6yrg8MRnoXajfzYL2EELVcNamyFmZVGsWmtkhBVgmX6LLJHA9I
         gw67DONIx3K8SkMqaUFNLFHK+kiUIT4EEedWwUOLPlqsDfSLquewdwqrYvlYF7omdo5o
         FvWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728829839; x=1729434639;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L0glNYA5rVjsDnyfMCJSUHAQP7BmZHrAonKDRalhrkE=;
        b=l1svKS1mIEYcUVmjKH00uT/T5imo3Wqs3KuKfHyGweS/IMVSwh/0tyq9lUk9cAPCC7
         V+d3zAfW30/8QQnpWzgqYT+0nZT6AT76aUAAJ58Hk6JLS0aY+tmjmrw043INaHWKAHSv
         sumAa7Eg4qO8OeLd+ysODvIyV5r52Lgc3gGXwZaihDYvRb2aZDTtUQN/3DwI17sY4Mdm
         AKqCLEYALJ+YxphiX6S+RIjn1C3ZIQLxSivwPkKfUf4BiPkOL6PEgwwMFbnY07HhdkPE
         TfwhLxeNwRZlMIghVDrciG6z0W77LV7KT3OoYB6QsKRSvVJnzLHj1r3/y+vUoWhTVOlV
         JlEg==
X-Forwarded-Encrypted: i=1; AJvYcCV0t/KymeX5xZbf+MTX5bVOOH9wsOQKD2gFMHw/ZIZGoumwzQorTw51WJi69hWbfMlHqjDlIbQ0E3aCwsUG6CYJ@lists.infradead.org, AJvYcCXRJjZGp7DVNRyfp6baicBMUX9ntk6lJ018TdGXjw7n4cBUry0zl0VOShTS4l6wdSZ5Vlx/JhyFnCoV4OFSiLU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyM2grnEFg88a4RRmy/GLkzXTVdGH0ZAbYNWO1AOx/MgLz88YNC
	44d6wUPsqjDB+jLIDb6SjFDGi8Uamf2Zc3YnYrkpuHXa9zRUCR+U
X-Google-Smtp-Source: AGHT+IFKXJhAqy3N9LwfreF+1hi3YEC45npDa52jeGv4glBoubxV5vad2zdUq+GQY4jnDZUy2Xchzg==
X-Received: by 2002:a17:907:3689:b0:a99:5021:bcf0 with SMTP id a640c23a62f3a-a99b93cb817mr918249966b.34.1728829838441;
        Sun, 13 Oct 2024 07:30:38 -0700 (PDT)
Received: from localhost.localdomain ([2a02:908:1587:1e60:ba33:7ef4:2f9b:8303])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99ef5d6b93sm192205866b.80.2024.10.13.07.30.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2024 07:30:38 -0700 (PDT)
From: Cenk Uluisik <cenk.uluisik@googlemail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Andy Yan <andyshrk@163.com>,
	"GitAuthor: Cenk Uluisik" <cenk.uluisik@googlemail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add board device tree for rk3588-orangepi-5b
Date: Sun, 13 Oct 2024 16:30:09 +0200
Message-ID: <20241013143016.16145-1-cenk.uluisik@googlemail.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_073042_084419_AF279571 
X-CRM114-Status: GOOD (  12.78  )
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
