Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AFC3C76195
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Mar 2023 08:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eRaD5MYPMGFPfTsJqoLcI0zXBqRAFXfMuw2kk4K3a5U=; b=LLkzaD13v5VD5I
	rC2Ku59tjgovWk827xlyfSZ7Jsd81KJMvtGNuVO9l4kDiOHAKaVolt8qKv4aQKclifvqjdNMPcsWS
	Ivz1+1lECv3ao6I7nlZ9JukmXsi/tiWEiRn7VSn2Xbsu9cCDnm4DW/8zPnV7AC62p3GwzY9/oGplz
	wwHcbVqk/4njcBx44fI5X/WPZiRzPR1tkocEYtihBUkDulhBd8bPVjpJd5nKdwSRo7EOS1EkrXAkg
	N1HacqMDDwuMeaiL2In6XdE6sLt9m8dn4eLwC0wxloaOlXhgyoeXIcxiJZBfygOu44E/NtejrjEEW
	n+JgnElfvwhWZ5lXFqhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdS4Y-004S2B-00;
	Sat, 18 Mar 2023 08:37:54 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdS4U-004S10-1M;
	Sat, 18 Mar 2023 08:37:51 +0000
Received: by mail-io1-xd2d.google.com with SMTP id o14so3333371ioa.3;
        Sat, 18 Mar 2023 01:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679128669;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Uj5y3Q4bbaamaIyxx6XTYPdTTmcpPBcLA68lxFuK26s=;
        b=eqsU7mQnCU1oCif1caT2y8sIPcuMf0EDImnoZXbeye6yPxrfwiGnbEjzrczpFxXA27
         vCH8RdmkPzEdtdRNadxPzuS9ljOda0vH/AvAlvM5JciF01m+7dUMJceZLjmYm+1T6zTg
         Hn+Oeq7BkpYN7tih24v8HUwUBfQpUjQK1I2Hqs2bKPC9teKYHk5qNs4mPpMFpJFlHyyo
         gRd8Vts13+DyNRfy66MIAsX3NfizOcVgW7zRgkUG8Eoi9m7RVUA0NkBYxBZsHqU1pUNO
         p/7IofjzS9NyLIoyditHN9RhXjb82GWMxfX9OXvlvO0GHpjiUw1uptk9AVe9o9TYEGGe
         YYmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679128669;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uj5y3Q4bbaamaIyxx6XTYPdTTmcpPBcLA68lxFuK26s=;
        b=lJuuju1/DMLUPpAtiZITetJSDb61oMAn/Ta7BGvjGMt5NLyK7Wmh+aWWGcugDUrUFK
         PBf1mVs3kCUyPVWGzVpvv9cOYHCEouIJ9xCcDBCnCAJpg61hfgtI2HW7CPJuujfb9F4b
         0S/zwspzlb+Unl9tKtOsRtADqbSBAnGDnyxC8KTk/P83xlPYrVWO7/lx/UxLiVsLUjJY
         +BRIwoeEopayUMupqO3bBLzpJ+KhtZlWlYlvzfw7k842vKOPKNnPBXLlMhxBZ4HsAp2n
         qqU2rGk7ca5BhhaqZR+Hctw79UhWI/d1bQruu4RwGned3rlbtKsBelDE2rSNPskI2M0C
         ILyw==
X-Gm-Message-State: AO0yUKW0kQbYgLbnM3VRtNd/9X9UI5Bprrd6we/BbXoTxdGMvfpL7ejL
	hxHPQLUXwCs95qfALAxh22A=
X-Google-Smtp-Source: AK7set/4EcmtmNA4FIZASjWPhDetnke0wB4EEkQW/9c3Re/qzQHjJSrKhIOwnrev5Kn5CdG91I38uQ==
X-Received: by 2002:a6b:441a:0:b0:752:ed8f:2e9f with SMTP id r26-20020a6b441a000000b00752ed8f2e9fmr941373ioa.13.1679128668822;
        Sat, 18 Mar 2023 01:37:48 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id h8-20020a6b7a08000000b00746041ecbf9sm1174834iom.39.2023.03.18.01.37.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 01:37:48 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Andrew Powers-Holmes <aholmes@omnom.net>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Vasily Khoruzhick <anarsoul@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] arm64: dts: rockchip: improve support for NanoPi R5 series
Date: Sat, 18 Mar 2023 16:37:40 +0800
Message-Id: <20230318083745.6181-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230318_013750_464297_E5ACE89E 
X-CRM114-Status: GOOD (  12.05  )
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

Hi, this patchset added new device NanoPi R5C and some minor fixes
(gmac, i2s1) for the NanoPi R5S.

Changes since v1:
- https://lore.kernel.org/linux-rockchip/20230315160228.2362-1-cnsztl@gmail.com/
- Added Fixes tag
- Collected Acked-by tag
- Fixed a typo error in dt-bindings (board -> boards)
- Removed non-existent audio node for NanoPi R5 series
- Updated my E-mail in NanoPi R5C dts

Tianling Shen (5):
  arm64: dts: rockchip: create common dtsi for NanoPi R5 series
  dt-bindings: Add doc for FriendlyARM NanoPi R5C
  arm64: dts: rockchip: Add FriendlyARM NanoPi R5C
  arm64: dts: rockchip: fix gmac support for NanoPi R5S
  arm64: dts: rockchip: remove I2S1 TDM node for the NanoPi R5 series

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-nanopi-r5c.dts   | 112 ++++
 .../boot/dts/rockchip/rk3568-nanopi-r5s.dts   | 582 +----------------
 .../boot/dts/rockchip/rk3568-nanopi-r5s.dtsi  | 590 ++++++++++++++++++
 5 files changed, 710 insertions(+), 581 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5c.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi

-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
