Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBD95EB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 16:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uFywQLPKZ3jYbT5f0hfR2AUroVB+ocNrUU54uetkjA=; b=T17e1lVnlpxPkI
	sJR7H5XHNhJz6u62sK3f7EJC6QDoG3x/Ryje2iwkLGx94DQcIGRU0CEuKI0In2OTNce8zBp6gKcKo
	83cThKPITogkfOjNzOoGLwqyZ8a3zz8UAzpj6mtYOxNbXtUstqCxfJilVo0OrDDj+g99sr/ji4CU2
	evIBfTsgr2+gdwqI6qlYrdLI86t10NoGlqMlTcwcMToSGVXSpdwB6bHacvMY1AaLyruWqjGgYZOxO
	/crf/AHN4rib/72e4otLDXgcR8VoBZva+D58CvLM+XquKau5kZH4n3LsuuIfa31pFfqjXW5DRCLn7
	pDj094QI7BmGdXueCgMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu8b-00CFWn-0V;
	Mon, 10 Jul 2023 16:53:25 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu7s-00CEqM-0o;
	Mon, 10 Jul 2023 16:52:42 +0000
Received: from jupiter.universe (dyndsl-091-248-189-246.ewe-ip-backbone.de [91.248.189.246])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A3BB26607012;
	Mon, 10 Jul 2023 17:52:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689007952;
	bh=uaW3HH5gaQAF27KPDqGks6sLcRizP/fPz2qLsQGc7Ag=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=El/Zs90obycRKg1fy0jYWamDvct6KGWlzWQXcBL1MSvVC/4k+P9Kh1i1KqfGC0hJj
	 hOZ9oiS4waXnI7t21Zl0QMgZ7ynyM/m11vfwyZyns7YxEsxwMIunhcznA1Rq0hUVQn
	 AEN+5LG5ERQBFJ/WNuBPnyJGBoQ+RKgYyBeuRhRCKYqDJxAlpuj4KV7AyA1RkCOWFn
	 kDGuoNE3x0e/s6GO8Fhszf5CIUvjKeFVKjY7O9m6dsxwqGkMTBjYPkTPhrtLMrQCFx
	 jQNsjKJJYjECl/2E4zRwu/2YQHhWNuBn0YwOiOIC7wIqiee9w6JPpkuPXV0UqMVOHt
	 AaAJ3qOVcRYig==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 29FEC4807F1; Mon, 10 Jul 2023 18:52:28 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 12/13] arm64: dts: rockchip: rock-5a: add ADC
Date: Mon, 10 Jul 2023 18:52:27 +0200
Message-Id: <20230710165228.105983-13-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230710165228.105983-1-sebastian.reichel@collabora.com>
References: <20230710165228.105983-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_095240_446147_A0928FAC 
X-CRM114-Status: GOOD (  10.19  )
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

Enable ADC support for Rock 5A, which has the following ADC channels:

Channel 0 = Boot Mode Config
Channel 1 = Recovery Key
Channel 2 = PWM Fan
Channel 3 = Headphone Hook
Channel 4 = System Input Voltage
Channel 5 = Board ID Config

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 01822dda0b2d..156c93b22382 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -286,6 +286,11 @@ rtl8211f_rst: rtl8211f-rst {
 	};
 };
 
+&saradc {
+	vref-supply = <&avcc_1v8_s0>;
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
