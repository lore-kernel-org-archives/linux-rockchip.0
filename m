Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2A56C3ABBC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 13:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8tXMTwmHEg1Iu0dlD6C9Fvd9aVYlbuUdOoQqRkFYIyo=; b=hs4QDV95Mq5ERG
	55qRO9I+0Yu5GBZp8wkn2ynFDRVxOXqw6E2NBhN1LU272+y4R2yJ3kxVDJQxNt/f1Xah89fQ1g55k
	guiD9DWETzz+IgENekYAeedTwmOH84uV7h5HwMTiboG7PbDWSmEIUxcSk3Mw7+3clvxnh3WMiT7Wp
	8+RS9UwnuqFKryJv4WkJjhsSt8jSUR2Jhux6PO1dYKhVpwfnVv1nVPuEV3bcwlojRWetI1oCYMT85
	GNw3dIvrayEULuxrTGjSjf7RsQrTwp1ypgqjEg0EiFwh9TfVnWe+LhEElMCHry9ROh4d+DLqG77tD
	fLyuUYGO9cdr6WRrcfsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDNZk-00000003idv-2sav;
	Fri, 09 May 2025 13:15:40 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDMoV-00000003aMF-1D9d;
	Fri, 09 May 2025 12:26:52 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-7c58974ed57so238343985a.2;
        Fri, 09 May 2025 05:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746793610; x=1747398410; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kwBRH74C4Cjpm87bSfrtYSAOX2kIdu6R3gkHd+qGuu8=;
        b=DBBp6EU79LqAV9o8dhoSPPSY1jU8OjycL4TH4WKq7U4Nvav8zmVxrD6uDhPZK6jkbd
         PKxK3Oj+MPn8XrijLqvAwXsR11CFIMwWtvWDEHeL59LbGiwTFFXgHpddsrZjDatSXuvv
         4XcqquhZoHAWiaQyLzYeLA/J05mUh3YIj+teFyaJN+b1cwjljZ4wauwVs0XjZSn0RUSN
         UuJHwIro5R0o7Bszx0TqcYt7OS9nj8SstU5lBJIkQjR79aKixqmtx5/FGkRGJXMgnRo4
         mUMHM359bW9e8oY6iF1+F4Kdc+ugM3XdkFXqaMafyFRs6bs9hU657SC430Jo0JM0ngpM
         JK5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746793610; x=1747398410;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kwBRH74C4Cjpm87bSfrtYSAOX2kIdu6R3gkHd+qGuu8=;
        b=u1bW6zv9sjMYDcgALxBoJ7hrGAiPPSpOQ1S7suN9fi24wzNRGxBWA6aMf3euvdzP+4
         0ptK/vgJrWnufve/ZBZ/ZU6aU7DjTCUuQGQEEmKRCSw80JeEfweK2NcSATVNoOotH/j0
         ud5fNqMAsifwjdh+zZQJSaz0w3sRnMSuW/RXk2hTQ8AndiVScOW93saejdpIfM0L9Khw
         X89AyWtNo329/ypAOOcF1tpOFq0VtGJ6YKUAkNkKtbOOEYt9e2txkVFbH9UFs2T70kaM
         EspZEaPXHANbHW8whAHV5r5GgHtvk9ri1SOcUDVGD83MJ/3tyASJX+JxbqKh9xUhxpn2
         95vQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgabgftMmaydba3qKe2HD4txzunkRdvAd3mnurk79ND7TbPAfLvOszAQAC7vIsyJdZbAaOHrX/kDLTrbkG5xg=@lists.infradead.org, AJvYcCWfj4dKDfyArAwQUKichcReZMxVbJy0XlIHIxBeeoK4ZQNFyAsKX+KvEL2Bwn31CvN1mcJyX5oVCvj7m8W8C3AB@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1IZCCfsz5y+ZhZZB2Sir02wZ0dHDyZ3nmI/WxFPQHh2Gbg0Bx
	1muu0W80TTedtM95FLOvfDScVwuTg233BXzPyt+fScFZzuRQYk2u
X-Gm-Gg: ASbGncvSQ2HfBN04ysgSp1D+QHzT1GpoYCrdJG6Lw8ewDawHxfH6ELiJK5XQ1sRuIKC
	0wYLyXMWEHXMUe7OAEA2jNAuLAEPSxwcWwYs86fzt2qy3WIZRsWGekFgAPurdFT0YD//kTHoK3w
	cA900VkazMvXWlJpWajkgTC8R6wVc7ROzOzYKN1FX9L4dIwSWuSb0R6bvzEODEnOdDv8jIKFLQ5
	4we6pQJ1lwuVIdbZok5PKQFdZV+fr1xMzNh4tDX1So26huOCDWnsSbT3s14u3UKZSdIasxWdW73
	Vjjhrze5cxcwWZPD7EnRRvOOJWnQf1dTaUewn1omdusfwoe0GuJ0
X-Google-Smtp-Source: AGHT+IF13lpklzPbh8xMbJqnVkS8TJNKtSOtn9pjfRhQnXEhuJW95QQJxk5TmDOVOxq1lUF8eH9Cmw==
X-Received: by 2002:a05:620a:24cb:b0:7c5:5d4b:e62a with SMTP id af79cd13be357-7cd011790admr721621385a.54.1746793609859;
        Fri, 09 May 2025 05:26:49 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd00f4e19asm131843485a.4.2025.05.09.05.26.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 05:26:49 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH RESEND v4 0/3] Add Luckfox Omni3576 Carrier Board support for RK3576
Date: Fri,  9 May 2025 08:26:34 -0400
Message-Id: <20250509122637.26674-1-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_052651_327526_8E36D2A3 
X-CRM114-Status: GOOD (  18.03  )
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
Cc: devicetree@vger.kernel.org, John Clark <inindev@gmail.com>, Andrew Lunn <andrew@lunn.ch>, Quentin Schulz <quentin.schulz@cherry.de>, Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

[RESEND]: Addressing Krzysztof Kozlowski's feedback:
- Corrected Cc list: used proper maintainer emails.
- Confirmed Conor Dooley's Acked-by tag in patch 1/3.

This series adds device tree support for the Luckfox Omni3576 Carrier
Board with the Core3576 Module, powered by the Rockchip RK3576 SoC
(four Cortex-A72 cores, four Cortex-A53 cores, Mali-G52 MC3 GPU). It
enables essential functionality for booting Linux and basic connectivity,
with plans for future support of peripherals like WiFi, MIPI-DSI, HDMI,
and Ethernet.

Tested features (on Linux 6.15-rc4):
 - UART: Serial console operational
 - SD card: Mounts and reads/writes successfully
 - PCIe: NVMe SSD detected, mounted, and fully functional
 - USB 2.0: Host ports operational
 - RTC: Timekeeping and wake-up tested
 - LED: Heartbeat trigger functional
 - eMMC: Enabled in device tree, not populated on tested hardware

The series includes three patches:
 1. dt-bindings: vendor-prefixes: Add Luckfox vendor prefix
 2. dt-bindings: arm: rockchip: Add Luckfox Omni3576 and Core3576 bindings
 3. arm64: dts: rockchip: Add Luckfox Omni3576 board support

The device tree is covered by the existing ROCKCHIP ARCHITECTURE entry in
MAINTAINERS. I am aware of ongoing RK3576 upstreaming efforts (e.g., by
Collabora) and welcome feedback or collaboration to align with mainline
driver development.

Changes in v4:
 - Patch 1: Unchanged, Acked-by: Conor Dooley <conor.dooley@microchip.com>.
 - Patch 2: Fixed binding for Omni3576 Carrier Board to use correct enum
   syntax (enum: [luckfox,omni3576] instead of invalid const), added
   luckfox,core3576 to compatible string to reflect module dependency.
 - Patch 3: Updated compatible string in rk3576-luckfox-omni3576.dts to
   match revised binding ("luckfox,omni3576", "luckfox,core3576",
   "rockchip,rk3576").

Changes in v3:
 - Split device tree into rk3576-luckfox-core3576.dtsi (module) and
   rk3576-luckfox-omni3576.dts (carrier board) for better modularity.
   Previous Acked-by from Krzysztof Kozlowski for Patch 2 no longer applies
   due to substantial changes.
 - Addressed Jonas Karlman's feedback on patch 3/3 (Luckfox Omni3576
   device tree):
   - Added pinctrl for green LED GPIO (gpio1 RK_PD5) for proper pin setup.
   - Reordered regulator node properties for consistent sequence (e.g.,
     regulator-name, regulator-min-microvolt, regulator-max-microvolt,
     etc.).
   - Updated regulator nodes (vcc_3v3_pcie, vbus_5v0_typec, vcc_5v0_host,
     vcc_5v0_hdmi) to use 'gpios' property instead of deprecated 'gpio'.
   - Removed pmic-power-off pinctrl state and pinctrl-1 from RK806 PMIC
     node, as they are vendor-specific and undocumented in bindings.
   - Removed pwrkey node from PMIC, as it lacks binding documentation.
   - Added blank line between properties and child nodes in i2c2 node for
     DT style compliance.
   - Removed no-mmc property from sdmmc node to enable MMC support,
     aligning with RK3576 SD v3.0 and MMC v4.51 capabilities, allowing TF
     card slot to support MMC devices or eMMC via adapter.
 - Removed Ethernet support (gmac0/gmac1 nodes) per Andrew Lunn's
   feedback, as it used the generic PHY driver with incorrect RGMII delay
   settings, incompatible with the upcoming MAE0621A driver.
   Collaborating with Andrew Lunn on a device driver, with Ethernet
   support to be submitted separately when complete.
 - Addressed Rob Herring's DTB check warnings, other warnings (e.g., VOP,
   PCIe, OTP, HDMI PHY) originate from rk3576.dtsi and are outside this
   patchset scope.
 - Added RNG node to pick up Nicolas Frattaroli's "add RK3576 RNG node"
   patch.

Changes in v2:
 - Enabled HDMI node per feedback from Heiko Stuebner and Nicolas
   Frattaroli; untested due to upstream driver issues.
 - Enabled Ethernet 1 node per Heiko's device tree philosophy; untested
   due to suspected PHY driver or configuration issues (removed in v3 per
   Andrew Lunn).
 - Clarified eMMC remains enabled but unpopulated on tested board, per
   Heiko.

Signed-off-by: John Clark <inindev@gmail.com>
---
John Clark (3):
  dt-bindings: vendor-prefixes: Add luckfox prefix
  dt-bindings: arm: rockchip: Add Luckfox Omni3576 and Core3576 bindings
  arm64: dts: rockchip: Add Luckfox Omni3576 Board support

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3576-luckfox-core3576.dtsi | 683 ++++++++++++++++++
 .../dts/rockchip/rk3576-luckfox-omni3576.dts  |  53 ++
 5 files changed, 746 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-luckfox-omni3576.dts

-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
