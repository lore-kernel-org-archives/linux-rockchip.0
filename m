Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE90AC61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 16:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BJme4xfALI9btAWQBJ7bdVyBhezWSlrHcnxO8BQJLhA=; b=m09sGMjGnuNNS3
	mcCl4WDn3mCj/nCsV3oJspI+ETnNV5rg9oIks0eVQKggVjz31kZXKssg5UlVfF0vsASgkz865dDjI
	qqWNJJ/JIAX+aoBJJeXyYzFU0h4o9xPN9c2/cH3a4kjjntXcpoxW09EI82/eqci3OTJRWtNiPqiR7
	ht1m55zgY7T8pLQsOnELI6NxFC7k57I2189KaxLvIxK5PSzFUNyiZzyEAcuEzOYIJyDpD5HvyFwHO
	KFxKkoPxo2IIy8lwJnv8xZV1sn38h63ZCKSb3TKOX/+BL0aP1oN++c9Oj3RlfuWb5ldoxBeq0jCbd
	AsIcjckbHMCKvgkPmJPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcTan-00DzLF-0A;
	Wed, 15 Mar 2023 16:03:09 +0000
Received: from mail-il1-x12c.google.com ([2607:f8b0:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcTac-00DzGH-22;
	Wed, 15 Mar 2023 16:02:59 +0000
Received: by mail-il1-x12c.google.com with SMTP id l9so7496595iln.1;
        Wed, 15 Mar 2023 09:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678896178;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wRz/HSIpijcdIS7EAx/rH+emYIVog1BleYIOJz3yCDA=;
        b=n2+4Zg0ywjblhdc4TgC2ZkT8MSD58Ub8tdekflwI7COtFuQOL37HsaU3PoS1ySWHwC
         w93SLcgIK5nWxlfu8hIDE479eCzRBN0weYm/OO+2iMNcENQX66xk01prC80LGT4D3nnQ
         0DC6k0F2sKe9R150SZKKdJMGVhln2Nx550iOSXXFh8fon3RPwJZdIBdFhieaplNkdVdu
         A9LXf1I2kizqFUZPZY5RDUJWko/stAPQ5EImnFgkLYtTPnhHEwcuXhU+Oml0CyMbPYuK
         lzs9FyI+fQiCxYDR7ujLj7OswVtL/DAQeQIggH96e0I305ly026hnVOUJQLajPl5353A
         K9fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678896178;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wRz/HSIpijcdIS7EAx/rH+emYIVog1BleYIOJz3yCDA=;
        b=AR2cFIU5dJ4u9JfDk3TrIU4XqlM+FE374d4KP5o9BuagIE1KT4Ts7XmFitQIf34As/
         sJMfIWE77zbIIaFtY0ne14f2MNGRe6LWIjY226AQtkn8UtZK3ewQaRu1HgrKj+IsaC3m
         HfCnVxbADmJujSrlIunAH5aOkdr7l4LIl///UiM6LTP7e2+3MMNq9TDijMdwqmYKy1ir
         i5YmyLYls5RTCPlqCmvFrskFIYU4dM6UuhOkvkqgdBM2tI4hdztKvZOZk4UKT+JNlU6j
         guAgULYQHHP4Tt4dqu6kSvUWI+Unogll75CvQshy4ul00TeCTst/O9YIQ2mJJqOm6i0i
         mVSA==
X-Gm-Message-State: AO0yUKVBcNJ+OIYH+wN7purNWViUI+vvSSvlkz/kvSpSEW90MYufdA+y
	bP5vppo1zfG+bnuxyFETV4s=
X-Google-Smtp-Source: AK7set9XPptg+3RJGT4hYzH5sV/zhxw6eSuTRF1kBECbAXdXVGwoiEHP06XLHG4jqEVWYwsfIuCmLA==
X-Received: by 2002:a92:cb90:0:b0:318:a974:ab52 with SMTP id z16-20020a92cb90000000b00318a974ab52mr4847649ilo.21.1678896178065;
        Wed, 15 Mar 2023 09:02:58 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id l2-20020a92d942000000b00313fa733bcasm1730725ilq.25.2023.03.15.09.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 09:02:57 -0700 (PDT)
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
Subject: [PATCH 4/5] arm64: dts: rockchip: fix gmac support for NanoPi R5S
Date: Thu, 16 Mar 2023 00:02:27 +0800
Message-Id: <20230315160228.2362-5-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230315160228.2362-1-cnsztl@gmail.com>
References: <20230315160228.2362-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_090258_672343_B5642EE5 
X-CRM114-Status: GOOD (  12.75  )
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

- Changed phy-mode to rgmii.

- Fixed pull type in pinctrl for gmac0.

- Removed duplicate properties in mdio node.
  These properties are defined in the gmac0 node already.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
index e9adf5e66529..2a1118f15c29 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
@@ -57,7 +57,7 @@
 	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy0>;
-	phy-mode = "rgmii-id";
+	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac0_miim
 		     &gmac0_tx_bus2
@@ -79,9 +79,6 @@
 		reg = <1>;
 		pinctrl-0 = <&eth_phy0_reset_pin>;
 		pinctrl-names = "default";
-		reset-assert-us = <10000>;
-		reset-deassert-us = <50000>;
-		reset-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
 	};
 };
 
@@ -115,7 +112,7 @@
 &pinctrl {
 	gmac0 {
 		eth_phy0_reset_pin: eth-phy0-reset-pin {
-			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_down>;
+			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
