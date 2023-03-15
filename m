Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64204C61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 16:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mApDV4YxYCJsIS60dgJTNSLMl4QRMqIl+tPbnj0kalc=; b=fbOrDssYkQVe+X
	K4F6bsFH33ESfwAAzbt/btL816eH6lVvGC5MbMpZCAbH0mjRW4VfatWzgZSxRov3SfelkMeF2pnkv
	5FXAqt2GO8HhTtZ0+o/8VjWfCJycrtOwIXu/UAc+jYh+20XzaZu7GAfxolBaBvxxrXR5TsHkP3/wu
	+spWNxS/aZ/DQgXKaiVrdGjqwyy8Ma82yHY9DJWmTFl5DvAp9FZ2kPXgulezHXA88RvED5GUye3gI
	VhvtWG6gsm5+ZBPLJSng/h7d61qDPuPWFLiS3Mfx6p184OpPjLfxbvkGpAE8g1xqifsy+QIq4v52X
	XYPFyd2qKwc+hNg2f24g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcTac-00DzGP-28;
	Wed, 15 Mar 2023 16:02:58 +0000
Received: from mail-il1-x12c.google.com ([2607:f8b0:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcTaY-00DzDr-0W;
	Wed, 15 Mar 2023 16:02:55 +0000
Received: by mail-il1-x12c.google.com with SMTP id r4so4618636ilt.8;
        Wed, 15 Mar 2023 09:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678896172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2aBbm9JNzxZf/5Es771aqwdKA5ulU2AUAgnhTScsKOU=;
        b=JPGLRbfw0oafn4hqfinB+/WmSXcV0r+6HKtrkuWKTdX0HMpqs7eluX/l9vosleBaxe
         c5+gnJzRwQlm97NMXrjv5VuC9OTwZWBjLJttJF7YOyVbKwV1N4GCIJyy1ZiO1h18yJet
         zv5XwngUxFvJz2CDWdp+Ua/2XNJZkA0+E7JiUCATy8kg7yh5y955v5LeQEtgU6Vmh3/5
         5Bc5qFavb/GNE6McR8YcYHvORLXLicVPK8twYgQs0plsyNYu+PImaU4ey5x6gGZiG76n
         IL9TkjuUP28MQ0NWH9zm52q7H2c6sfj2g6+4tWE23Fe67498TEf9046iSuPXCYlSUkrF
         /aVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678896172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2aBbm9JNzxZf/5Es771aqwdKA5ulU2AUAgnhTScsKOU=;
        b=atGgwSg/zunVATnaY/gAdXbkg/lIWfVmK94ytDN74vUQKcunZM74l2jbinDT8tr0Y6
         7hgESfZH/Gchr+gVEboOpm4a/hICgnFMVdemR9QUMpdGnQBZE/GnrBbfj3vnJwdWFdyz
         yXgTcXa5CcKXRxFUDOq3cmfstVlEToFpY/xJktulp/oojtV4BZlHZVLa724J4/6U0GLB
         7cqK6hidjJjFDI5IA5vTJAbdec/+mm65J5BIKL09/CkzrhzTiy/B8jDQcpRs1ggM1Ffx
         ao7A8ObiHSGKzvfMJSFrQHYbuUodJNPA6kE3wpOukIZoflR2P2M1W9qiaT+g+v7khhS0
         Kubg==
X-Gm-Message-State: AO0yUKXC7WAeuuFYMJUsPhicEhI0WyKUtlqjeEndVBQm/9B47YpprDTD
	Wt6ssl49DifVAGTp3PXN3B4=
X-Google-Smtp-Source: AK7set+s4R8QTN//+CuBe3wKC8Ujg7F8GXkcQBVQ+aIUzuMvegvUyczAeH/+Jwvl7uY4FGKz8pZ7ig==
X-Received: by 2002:a92:db06:0:b0:323:38b:549b with SMTP id b6-20020a92db06000000b00323038b549bmr5131486iln.31.1678896171989;
        Wed, 15 Mar 2023 09:02:51 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id l2-20020a92d942000000b00313fa733bcasm1730725ilq.25.2023.03.15.09.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 09:02:51 -0700 (PDT)
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
Subject: [PATCH 0/5] arm64: dts: rockchip: improve support for NanoPi R5 series
Date: Thu, 16 Mar 2023 00:02:23 +0800
Message-Id: <20230315160228.2362-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_090254_202443_6F959A3D 
X-CRM114-Status: GOOD (  11.71  )
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

- Added NanoPi R5C support
- Enable rk809 support for NanoPi R5 series
- Minor fixes for NanoPi R5S gmac

Tianling Shen (5):
  arm64: dts: rockchip: create common dtsi for NanoPi R5 series
  dt-bindings: Add doc for FriendlyARM NanoPi R5C
  arm64: dts: rockchip: Add FriendlyElec NanoPi R5C
  arm64: dts: rockchip: fix gmac support for NanoPi R5S
  arm64: dts: rockchip: enable rk809 audio codec on the NanoPi R5 series

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-nanopi-r5c.dts   | 112 ++++
 .../boot/dts/rockchip/rk3568-nanopi-r5s.dts   | 582 +----------------
 .../boot/dts/rockchip/rk3568-nanopi-r5s.dtsi  | 611 ++++++++++++++++++
 5 files changed, 731 insertions(+), 581 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5c.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
