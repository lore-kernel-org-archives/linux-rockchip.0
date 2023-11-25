Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84DE2C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 14:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FPvNwvMVDRE61OJPkEOwQDaqc6S2IhvWdmmJ/3RKSI0=; b=CSF94T/taK6wAL
	gnt/mwFlVGYhOnxFKsmkxpdweLO9AFZogiWUqQquA9nemB3hyZ9LhAZrp9ZdKi5gRMsRrJe0Ek1En
	+uNIP8N/2mFdgyPdDYpEfF/xI3tz+8/w+IlnEQZ9laxAXe4qYRGMzGfmyLOSelusjX35BN4tuO+OG
	PMUjExMyeyEWImQ4tqXSKYCxZSOTpTOaM/ZzBtwQ6RZ7HTeYWskz2YfzVOFNt8YwyZWpZ5PqPaytc
	iSbSXb0BLVRXEhbNW9ZidAY5M057wX1AF8iXUX+JVq1T4aT6YAB369gMmWFbxKCDHBYT/WI7hmAMX
	4UPELOfM38MKZfn9zHsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tpt-009MXe-2B;
	Sat, 25 Nov 2023 14:40:45 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tpi-009MPk-2H
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 14:40:38 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-2859bde1d62so770779a91.2
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 06:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923224; x=1701528024; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R00GpAOQ8unl7IA5WlLg5PzZVU6FbtaGJNh4ebAEgak=;
        b=zMdZHwnT20ZpA5OAhuci4Pn2T9bWRpngHSeyX4m9t5S3rxr+OziOUzlcDBrCyYJuiy
         VaRXGINhWrXPTf31ZBRAY9PNkfgu0k9mpsK62bXEuphon2LncTLlk1PJ4n4+edvvX/NZ
         icTXk0A2AQkhrhkM2j77CkDuFn30OcfHxQV2ZgfhqBzXKBuQIWxW/qlzdaNc21V661as
         mDYjj4HF30mBhqYgJjJZGJ41YNRKuGcElREPxXky59I7OdLSvdRyxd3mOHV5yp0OOjiR
         o1CiZ+W+u2Hv79onAcgDphZFHJXSTJdQhUf3I0+ZHJASvKy9jPepZgNb33ENwD9JzA4e
         1k/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923224; x=1701528024;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R00GpAOQ8unl7IA5WlLg5PzZVU6FbtaGJNh4ebAEgak=;
        b=ne1ojBC2E7mAVT7+6wiVMnq4lx6r8n3z+iYVgoxIhr7cuiOmIBixtuSehR/TY54yhw
         TU5GGN80CDZxbmOTWllRMk+7IZnAbzV2AfGAjFxv2G8Us5PUmliRNI1SU0/LnVffioqh
         bnJI0+8UynV/8xL4TWfXm32eXuJtlEgwCqqGiVTh6RzUWMfrNBYBFCdWeJAUKhUp8+eC
         B2hSZj7NTiYfZB7UqfkOyDX2eIF5pDkgz/h9dFRNHMaJms6XA14mtoGV1GA6O5JqZx0h
         E+sjDHI807N1HH44jdqmSDDgBRnFehcoo0RJQ7dGYoX8tKmDhyBCcHDvi6F6Dcapcbmx
         dexg==
X-Gm-Message-State: AOJu0YzVThugy+eFQ+6mnxXAWjZTiLidjMUjwDv4pYXTqVEbEz3eAOcm
	CI83LUdldKNXfniu2AByOrCLJg==
X-Google-Smtp-Source: AGHT+IFQA2BGKsZZ1umze64aNrYyQwAcNAiC1NU5/UBm08aKE+MoPLYYZKae3/4MCaWcUNo8WCX0Eg==
X-Received: by 2002:a17:90b:4b8c:b0:27d:3f43:d9c0 with SMTP id lr12-20020a17090b4b8c00b0027d3f43d9c0mr5022781pjb.24.1700923224234;
        Sat, 25 Nov 2023 06:40:24 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:23 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 00/10] arm64: dts: rockchip: Pack Edgeble NCM6A, 6B DT
Date: Sat, 25 Nov 2023 20:10:02 +0530
Message-Id: <20231125144012.58668-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_064034_742097_34B8EDB0 
X-CRM114-Status: GOOD (  10.31  )
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

DT patch set for Edgeble NCM6A, NCM6B SoM, and IO board.

Any inputs?
Jagan.

Jagan Teki (10):
  arm64: dts: rockchip: Drop edgeble-neu6b dcdc-reg4 regulator-init-microvolt
  arm64: dts: rockchip: Add edgeble-neu6a-common DT
  arm64: dts: rockchip: Add common DT for edgeble-neu6b-io
  arm64: dts: rockchip: Add Edgeble NCM6A WiFi6 Overlay
  arm64: dts: rockchip: Add vdd_cpu_big reg to rk3588-edgeble-ncm6
  arm64: dts: rockchip: Add Edgeble NCM6A-IO 2.5G ETH
  arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
  arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
  arm64: dts: rockchip: Add Edgeble NCM6A-IO USB2
  arm64: dts: rockchip: Add LED_GREEN for edgeble-neu6a

 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588-edgeble-neu6a-common.dtsi | 466 ++++++++++++++++++
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dts  |  14 +-
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 236 +++++++++
 .../rockchip/rk3588-edgeble-neu6a-wifi.dtso   |  56 +++
 .../dts/rockchip/rk3588-edgeble-neu6a.dtsi    |  25 +-
 .../dts/rockchip/rk3588-edgeble-neu6b-io.dts  |  80 +--
 .../dts/rockchip/rk3588-edgeble-neu6b.dtsi    | 383 +-------------
 8 files changed, 765 insertions(+), 496 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-wifi.dtso

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
