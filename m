Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA05DCCD1BF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Oct 2025 17:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=el0ROdwhATJUJtuFZd8mn0bzFP1on71BPLBWVvZZSf0=; b=vWvJFyDRvBBrue
	37m7M9nkSKzUV16mOGWeJfKhCa15Zd0LQRyunW07L/NwzXdyDhjAA17TqSFhygPGtSrFYE7Lkc6pN
	TpzYpaz1oIA5yMRQqqxPe8werwzQrtCWZAqSsQ15c7nFItfkoxLGyJ9dHlaMDSvBwDZ85dLWACRXU
	bpHPjKL0J4xUf7G0Qm6O28ZicNEKLijkgzo54wAgYNCgC20c46MZM/mE9EfxvP5lgzCp6a7tFH+oG
	4yEnMp//00qOOA/qdK/oDyL7pXO54QAMThVZTOVCz7ohQ3oofGKjagg4SIY9qlnwYC5HCitM6kWlp
	rmswh02ac5q34R4NLUUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCLnh-0000000A8Pn-0ukX;
	Fri, 24 Oct 2025 17:42:05 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCLnf-0000000A8P0-0qtB
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Oct 2025 17:42:04 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-b6d5b756284so434824466b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Oct 2025 10:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761327721; x=1761932521; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bzLI87gVSsw12bcRQHm4zXKzF2cdEbYasj1bN4s+jM0=;
        b=YtxSTEvbSyYxIIVxz2DILE9RStJcljDPr9WpCLtNJadWtrwjdeiPvYukwmbYsN6ynU
         tlkcmEjYPQOr4CYDtwXSlEoUCdL1ssxUi0hg5O019zG6+fmqOfaO+Ru0WwEX4yrZ1der
         OW/j2zdUvJ9VWBAK7rYQlrDsuARs3ieqIgQtF+EiB6HjTHPv1VR5BFQ/ZV9EiGqFsmh0
         2A2xqlvjdRtR2IxV0YTuDqaWiVFSb6/Wvv+m0DUBS4xmMwzENILDxxlgTWYyzrOVVU8V
         RXAzAXmFTVtkE70HgX4WGU2Vw0UYDGCgtD4bExJ+OXKc1xQsWH5gZMOef4c0hkaysL4/
         wVHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761327721; x=1761932521;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bzLI87gVSsw12bcRQHm4zXKzF2cdEbYasj1bN4s+jM0=;
        b=VpnZ1/OknjR8OEHzcQsO9F3Gqtjzv5yBjMqbz4EzUQF413fd0ct8YZVRn+4sWhdHuD
         DwMmREeQ3nkTnHtIL2SteI9LI8Ojwm/4+5/3IfcxrHmWBPJ1xmocDLwEc2md8JXG9csA
         nitMLcSI8/tihEGtFTYOX6qCx0+1hW9RMN9XeTFG6bGOIGhEFlgG5PZ/N9SbXoTVfZdF
         /4sqOncRdGdW99X2U/y4G/G+I8c3TC5+8LOw00BMcQKVi/430YBVQBwDfdqpXlHdNW4t
         unHfaIXReRhOYiodvtMIpkc43R9VCV+bwNJWIRmwxucjGeAnTfunANrOP4VOARGB2BbT
         /U3A==
X-Forwarded-Encrypted: i=1; AJvYcCUw1HRabWa3pbmcLegfKiZZdBmZ0soiEOMQvJYQthGkqfrVmoVyGwaZAJPaiqLQAoxaCFMn3LZ7DR98BtzKPQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyV8Nyub2xHvl4W6vjyUC7Rqbh/MzCp6OfiUPKpUUA13c0DqEFM
	6u3iUgckJhusTZqhkdjKN3i0ED+I3uVkhZ6/PlkoM5s+ZBbqbWlEVl6O
X-Gm-Gg: ASbGncsN7rBQMSOqz8q3sL9LjNyXVKXSIOkx+KSYrJ/m95MUWfvVhj6Gn7negiMKrSt
	k9Qo4SUDrrHdiJH62RJgYhE0yPtC6L8F+/0Lv+AufTRFjJIQwlptWmI5V+jyPQ4Y5JpQ7DzCHeA
	//xx2GJ0f2lONY1DSCksupZb+SYYSlWTJEGnyaoeigIiq0CN+GQygc00/Q1/AP8OdRhuyWYBz4J
	TuCiXnbXedGDBRg5PUKUg3yq8zwdPjeqwHElyQ5WfivgrlqvLZlkLLZE9tCtsQ10QzHToJAxbMg
	3AQsR9vuC4azlilA3rONidK43RwFodq9p1V+8EPCUeIuXQprqfZmu/rgTmBWvvGQEG63X+yAvTI
	Yn9N/fmNYEMqtLZoqfGcmK08aEEPenA5ZhAOR72s/stDjFvNWeU60lGQE8P6HjGvI3zCfhRCEpt
	EQUsvtSbA5hEX2mXuJV5j8Iqjh8a+66UlJ88tfTgxiUpfP/1egI2vCGGwEmP0=
X-Google-Smtp-Source: AGHT+IGsywe6fvei+hAvPha34NkEyxNo/q2u1ZRQacwWPUUZaTx/YX5nzymYXv40loyt4fMWa8J9Eg==
X-Received: by 2002:a17:906:fe45:b0:b60:d888:32d9 with SMTP id a640c23a62f3a-b6471d45a8cmr3700021066b.11.1761327720554;
        Fri, 24 Oct 2025 10:42:00 -0700 (PDT)
Received: from alina-IdeaPad-Gaming-3-15ARH05.. (pool185-5-252-158.as6723.net. [185.5.252.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d5130d517sm586822666b.3.2025.10.24.10.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 10:42:00 -0700 (PDT)
From: Mykola Kvach <xakep.amatop@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Michael Riesch <michael.riesch@collabora.com>
Cc: Jimmy Hon <honyuenkwun@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: orangepi-5: fix PCIe 3.3V regulator voltage
Date: Fri, 24 Oct 2025 20:38:20 +0300
Message-ID: <20251024173830.49211-1-xakep.amatop@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_104203_249815_CCD4373F 
X-CRM114-Status: GOOD (  10.36  )
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

The vcc3v3_pcie20 fixed regulator powers the PCIe device-side 3.3V
rail for pcie2x1l2 via vpcie3v3-supply. The DTS mistakenly set its
regulator-min/max-microvolt to 1800000. Correct both to 3300000
to match the rail name, the PCIe/M.2 power requirement, and the
actual hardware wiring on Orange Pi 5.

Signed-off-by: Mykola Kvach <xakep.amatop@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index ad6d04793b0a..83b9b6645a1e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -14,8 +14,8 @@ vcc3v3_pcie20: regulator-vcc3v3-pcie20 {
 		gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
 		regulator-name = "vcc3v3_pcie20";
 		regulator-boot-on;
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
 		startup-delay-us = <50000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
