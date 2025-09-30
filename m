Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDE9BCAC5B8
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Sep 2025 05:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=msEhA1QBdP1hk5AzJ2h/NAWlOsu0rvFGz+d3/PmeDBw=; b=UQW2hTWvOBuybf
	zL7QYwyXaYPQS8gP1fdQYpkVJR2dhESCZ7AKU3tCZrgzgxqIKFvyPmlhqYDHI7an2J1M9VUg9YL4Y
	y18lDlWM39VmBU/vvX2i9za2wlVGDwYUj+nVz+O9AK3n29apxpzzyKmpdI7os/M7d9+3xtQ8vXAK1
	zmtOAmdCaUi+12wGYHW+k5Tu+tJ0QagL+TFZBjjWclatfLMwbZkR6toj8Neh0THyWeWhuI1PJAAWb
	IabdAL4sMjYYyX97BcFjxp4FLLe+yb5GoW16cfwVOzMT6vB7RI8uUxzWhWXgWBBmjO3y13LOhX36J
	Gg9FHsrgb34KZVm8w0Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3TFy-00000004HYr-47uL;
	Tue, 30 Sep 2025 05:50:35 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3TFv-00000004HVQ-1f9f
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Sep 2025 05:50:32 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-8593bcdd909so580487785a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Sep 2025 22:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759211430; x=1759816230; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wDWN4g6ghBuiYarXPc9Grf4Kf/+CFy/Pefagl1DF5KE=;
        b=gDG/l3S2mF1RDvN4hCpGFB9dnajDSOAzMW3zYW0dymSpJIRE6oM51dnY1bWpbfEzOI
         2ybVLIKLp3HDU3UoUvqRxeFYxZ5DZNFDmLMiFGQlFCd+D+3SBCy00zIH9JH5Ee9Orpqq
         O8Zq9hSjYQuQAhqFAtWvw1veU8H8qUSdlguYbHQNSpGnZIY2guc78XdGJB/VdG4d9gu0
         c0I3GiyZHIeV7CCYaL+oZTfcSi7FZPj6WuW86dUA+IXM19RbD2vvSwjFVObTktCEBatN
         5rd4GVmIlJHxMuwwFqRiYZqwZcWD9TskprOai7Y4mt0uk82SJ6eVlPInJNyuvysALfZO
         biaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759211430; x=1759816230;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wDWN4g6ghBuiYarXPc9Grf4Kf/+CFy/Pefagl1DF5KE=;
        b=Ji+0swSLbG741c716AlgiB9YDXdx38L6KPX06LOktzifxY+xWY3UaPrQdqsKeU8dYR
         WYymXMPEEROud6Eg9u+TewuQAd3uZ3FFGYFfLNxia6BMpVBI4NHy3/CrLZUKbNEl6kzA
         V+0LEAX5JwIdvKlErSLWb3XFS25pDZBNrt0DVn+rqvWvEK7Ocz75M8shhv78OYNMlj7V
         jEustcynEwJ9moUz+//4RUTmPyriTTc8I2If4iR4t7CaPPh8LFjYwCW9Eau5wjl9dB5m
         Q1ibfYXRR70h087+rR6lCMHctYLUuhYZNfaOqpKdvmAF4b6wvbcXnnuptH6ISEZtn4bp
         1BCA==
X-Forwarded-Encrypted: i=1; AJvYcCU8elwjEigXp21mUDXy7tHb6IoB9PRdkyCzhLuMQve3AoZLoU4sxqbNhwlUf31VUdR7NIUdKfpufX1ETN1AXQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwqGhzITaJF4Q1otaB9FGAEYhtBRD9JI+UN3Nqc95XLcet7QSfq
	zH4670DgvDzefj0hXvDfDVxQBeva5Z1bRnBC866UxdyCSQ8gfxaHdpGz
X-Gm-Gg: ASbGncvmoKI/tPdNkOPAP2n4M3+2M3j1EsmYMuOb4ecNU1hQIOYOzOlodmHqKD43Zoz
	NHjhm8da5CcPhRSWWYhqyA4dE5i7zB725wA5B9kmCfxHcMSxC+A71lz7exjlLTvixy/38Mh71l/
	FmjKYisjj1caEgyy2Fz66CLKovT8SqnJmaci6sM4T+fMLoSMBoRHgih+gBFT/T6NSP3jA/sIZlc
	i8s7vOQF5ZGfaajaY+lGQA49o3sLNQ+LUFaCwfhPDwGEVEcNvQ+n2QkwweWlysvEivikX8zS1lL
	cRcqFW0WKZzi53YRpkaJvye45gBhXy0Y/Ntaca8f0CoU/wWQR8p9xxULKFCrKvdiSuiyjF1EQgp
	rgjiu6vYGsh8kuOUgSXbtIQH9uTIzw5/ggEqxe6b2gAnL
X-Google-Smtp-Source: AGHT+IG9qqjmdiQSDLHuO7EpbaYz9j/RzszkZqlPiHzP5xEh40KEmQHqMDJaw66yqCAcH/AUHfDcug==
X-Received: by 2002:a05:620a:198b:b0:863:a3da:6407 with SMTP id af79cd13be357-863a3da6711mr1776483085a.31.1759211430006;
        Mon, 29 Sep 2025 22:50:30 -0700 (PDT)
Received: from localhost.localdomain ([2a09:bac5:3981:263c::3cf:53])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-85c306b5f64sm971990985a.32.2025.09.29.22.50.23
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 29 Sep 2025 22:50:29 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/3] arm64: dts: rockchip: introduce LinkEase EasePi R1
Date: Tue, 30 Sep 2025 13:50:14 +0800
Message-ID: <20250930055017.67610-1-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_225031_444561_9B99FC2F 
X-CRM114-Status: UNSURE (   9.21  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

LinkEase EasePi R1 [1] is a high-performance mini router.

Specification:
- Rockchip RK3568
- 2GB/4GB LPDDR4 RAM
- 16GB on-board eMMC
- 1x M.2 key for 2280 NVMe (PCIe 3.0)
- 1x USB 3.0 Type-A
- 1x USB 2.0 Type-C (for USB flashing)
- 2x 1000 Base-T (native, RTL8211F)
- 2x 2500 Base-T (PCIe, RTL8125B)
- 1x HDMI 2.0 Output
- 12v DC Jack
- 1x Power key connected to PMIC
- 2x LEDs (one static power supplied, one GPIO controlled)

[1] https://doc.linkease.com/zh/guide/easepi-r1/hardware.html

Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---

Changes in v2:
- Change deprecated "rockchip,system-power-controller" to "system-power-controller"
- Link to v1: https://lore.kernel.org/r/20250925055906.83375-1-jjm2473@gmail.com/

Changes in v3:
- Fix typo ('status = "disable"' -> 'status = "disabled"') found by kernel test robot https://lore.kernel.org/all/202509261328.Grjhp029-lkp@intel.com/
- Link to v2: https://lore.kernel.org/r/20250925092037.13582-1-jjm2473@gmail.com/

Changes in v4:
- Fix missing "Acked-by" message in patch 1/3 and 2/3
- Link to v3: https://lore.kernel.org/r/20250929065714.27741-1-jjm2473@gmail.com/

---

Liangbin Lian (3):
  dt-bindings: vendor-prefixes: Document LinkEase
  dt-bindings: arm: rockchip: Add LinkEase EasePi R1
  arm64: dts: rockchip: add LinkEase EasePi R1

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-easepi-r1.dts    | 692 ++++++++++++++++++
 4 files changed, 700 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dts


base-commit: 30d4efb2f5a515a60fe6b0ca85362cbebea21e2f
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
