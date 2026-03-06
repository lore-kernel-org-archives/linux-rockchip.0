Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0325F513EE
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Mar 2026 02:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eM+HgODcxvJsTHMAfVQgrVGgm1ykfZBlYfJLHgzi6ms=; b=Om0IZkh7U6B/5u
	oUMJdc92ptICmupxME+xm/lu1XbKAhaxCfwOM2M3HQ75lxH2sPJBsWmJVGZkcJTh3SKRskxp8LWBc
	W3Dvy7CW+xJBVEJIpBfkISUimD5iUM4Cf1L/68VdrKfnF7HFKcq9se+Sx1mYWxCusTVjjL/YjZ5ln
	1sbnwYVPlyWx6qP/kdATYul+nmMW38O23KNc5RGMA9ib1JubSCmfeNpEMHuBL5zydJUjbEmrWSk1h
	nKT4E///I7w26XyLkzKHQ+3NUiBfcMaWE9QplMqSPMhV/fCmxIYPVvpgsH3cPigZ1Ik0X7un6Wnw3
	oIENfsA6W/96Tvq6fj4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyLDE-00000002tv6-2koy;
	Fri, 06 Mar 2026 02:46:53 +0000
Received: from mail-qt1-x864.google.com ([2607:f8b0:4864:20::864])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyLD7-00000002trI-2E2z
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Mar 2026 02:46:47 +0000
Received: by mail-qt1-x864.google.com with SMTP id d75a77b69052e-50698970941so105743261cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 18:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772765200; x=1773370000; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6pObow7U4f+Fx/cYWK3hP7CP2OEJsOd2Sjmo2yIVQOg=;
        b=X3vTkaHKYQdsqMjw7TCunwPCDt8N/LqNv4h8MlXAe4SnHRoSgSBcDhaXaNAmYVCvV1
         DKzvvaieO2Nk38PE4W9AfSLbkdp54Tx8v9RGWt6ISovpCO4WPq1lqNWCG4Ed7T/6MZxI
         /4DCyqI+cCSMXL8dvcBJ1TFLHI4ESGFBBeqif66NvRRmD/DdnjgmVHLp1fEUh3VkfC1S
         KlUbr09wpgkG8nQQFD7WP1XHYyxJ8xUHcdsKxpZi44GBKIAN60SkN6ZIW2XnXmuXMU9y
         FnAHqrq1jlT253AwpC41eHS+YcyXxl+Z+BNM7PfIpqfRlnj9hMcLnAjEzIUQZ18NF5SK
         RKCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772765200; x=1773370000;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6pObow7U4f+Fx/cYWK3hP7CP2OEJsOd2Sjmo2yIVQOg=;
        b=b1GPIHsbI5et7GNYlBRc8uS/pLsVsfba6HCt4b/ZPxWqXsvDT+eodNoZ5bzjOrLYCy
         JIqNZePYr17ul7P323IPJofesDmn8716K1DVg5me5/vjvh4bUvvjhjYoDvz5jUQrd4SO
         pTgcgAFbrkTYQjJcSuN3c2pjMy4i0RWNvtE4/SVY+BRTMPec18cUD1jDCPdYI/gsWm4i
         lMaWgm8v2R8Csduemq/mPHQmdHecIK8N1V8H1RvivzDK/qzUwo3rg6k1xO5cn3CxeKj6
         wmHkJyb5E3/ujvu6d2QrNBLKye6sN2gmhig5Drp7SRNQ7eUu3t9qijLX+JTFAt7LEx48
         JN2g==
X-Forwarded-Encrypted: i=1; AJvYcCVdVWdwSCejB/eVU0UUTA2m7GSRGjhttnLerwdyc1Q/T0WSwPMBVwcc3SpzICFXANe2rF8RL/58skNDXYaoLg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzZ/6gX2hgA4EmqkrICfGp2LTD1LY3hLPOtVkjy8KnTfEQPEW5w
	sUleXSWv29hdjdiheYJyKhZSZ7XQf2m16nWqcvAV13OYoH4AU+Wemi05d5zzFG7VuXdbLRDfQjR
	D+4cngAZZ/sg0LdyW3d3MrUf18t/hdOr6/282
X-Gm-Gg: ATEYQzxjY+zHLzVEG+2HeBhtJ2lAFD2zD5bzUPCZGPRr8lczAJe5ALirtjKHZxBMprK
	jXKOuq+vEE2pqfPRWEd0E3X504LESXcuMcPVTQ56bQXeWR27xheWYrKQIwpFvF7NrqR+P6P4EiM
	cJQGZBUgHluHySApXxDZlxyEjZPTq5Kv5PMhag48dLh29nshblYKi3ewGF1R6ohtu0QF+mALeX5
	1ARsqLv9FV7v3XUmODVJd94imKSjoT/oGE56rlT9uIyE8Y1Pk0GqQ35i/vwEvcPa06BStVKoOfP
	ClmN5a5xkPu4dZAqI0JQQEbuKigcaK2BrVIpnwWRxkxVLqGxRpYFXf4Bnp5fELbW88GdCQV3f9g
	baVJi5W1jU3RKWdYdlJQg9UBXzIPUuYqYrRYNPZ6o0OdT
X-Received: by 2002:a05:622a:450:b0:506:1edb:2cdc with SMTP id d75a77b69052e-508f4705675mr8675321cf.6.1772765199702;
        Thu, 05 Mar 2026 18:46:39 -0800 (PST)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 6a1803df08f44-89a31412832sm168366d6.11.2026.03.05.18.46.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 18:46:39 -0800 (PST)
X-Relaying-Domain: ausil.us
From: dennis@ausil.us
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Hsun Lai <i@chainsx.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Dennis Gilmore <dennis@ausil.us>,
	Mykola Kvach <xakep.amatop@gmail.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] Add support for Orange Pi 5 Pro
Date: Thu,  5 Mar 2026 20:46:31 -0600
Message-ID: <20260306024634.239614-1-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_184642_485028_9FED24E7 
X-CRM114-Status: GOOD (  10.35  )
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

From: Dennis Gilmore <dennis@ausil.us>

This series adds initial support for Orange Pi 5 Pro. The network
driver was just added. The only thing missing is the second HDMI port
that is connected via a DP to HDMI adaptor


The series was tested against Linux 7.0-rc2

Please take a look.

Thank you,

Dennis Gilmore

Changes in v3:
- moved leds from gpio-leds to pwm-leds
- remove disable-wp from sdio
- rename vcc3v3_pcie_eth regulator to vcc3v3_pcie_m2 to reflect the
  purppose
- actually clean up the delete lines and comments missed in v2
- link to v2 https://lore.kernel.org/linux-devicetree/20260304025521.210377-1-dennis@ausil.us/

Changes in v2:
- moved items not shared by orangepi 5/5b/5 Pro from dtsi to 5 and 5b
  dts files
- removed all the comments and deleted properties from 5 Pro dts
- Link to v1 https://lore.kernel.org/linux-devicetree/20260228205418.2944620-1-dennis@ausil.us/

Dennis Gilmore (3):
  dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
  arm64: dts: rockchip: refactor items from Orange Pi 5/b to prep for
    Pro
  arm64: dts: rockchip: Add Orange Pi 5 Pro board support

 .../devicetree/bindings/arm/rockchip.yaml     |   1 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-orangepi-5-pro.dts   | 311 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 184 +++++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi | 202 +-----------
 .../boot/dts/rockchip/rk3588s-orangepi-5b.dts | 181 ++++++++++
 6 files changed, 691 insertions(+), 189 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
