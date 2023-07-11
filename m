Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EF70EB64DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jul 2023 17:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2jda+a0vBoueA4zFTY3bOK+SwcoJPZEq8qk/QYvIpQ4=; b=LKsOUwqMyBWSrM
	dyi2H3RItWaaDzbGCjo/Yd8mD3PhXbwX5OuLYWdG3CbA7pX/f1SwOPH2XOLfX9vg0KVu20mZyFiwg
	E7W522UbPYplUM5kXDM8qeUObWZNWHlq+JKjh+o1k2LaCmBBnEG9adZhXpL0sMtve35qGhuj1WsMn
	dc7CD90EngMRrmWXV7N3F9Wi/5tj0OtRU33o09QVjsRXfg+u9UovB4ssqqUjCsCb9D0rylCz+Q16h
	nO5ma/Xt49Q9m8TnhCjQZEdA+ItFfDpplege6zKUHqubbS3VEcN8uCZ+YpmvOsytog+5lWE4R2WKO
	3cr39pFxxP7oGpKZYPbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJGvo-00FUJ8-1C;
	Tue, 11 Jul 2023 17:13:44 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJGvh-00FUH4-22;
	Tue, 11 Jul 2023 17:13:41 +0000
Received: from jupiter.universe (dyndsl-091-248-213-212.ewe-ip-backbone.de [91.248.213.212])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BB6D36606FD5;
	Tue, 11 Jul 2023 18:13:34 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689095614;
	bh=zkoGz/x1Q/pDR1kqIW7+X33wiVyNSQbwTUWJIEyKbJk=;
	h=From:To:Cc:Subject:Date:From;
	b=XxW8O4kegDe7y7iFxSSWFaHGyFYv6U7oJxPJFJrPmmfer8VWjoZE5sspjYF/wjdJK
	 WWC/rPljbhJWgTKjAnX8H7SHJqj1JyzuvOd4OV0Cn65dvbMGM/o2+2c3RUK8FPb9jb
	 qVxleJuJoDkeyY03v/93tfpzDJQN4hodflopUGHvXP4YhM7fxmmV/UAfgmyC6mD54F
	 EuvBLtG1ETOJB9TvpwWwivho7pBPaBKsW3qL3e/eyk6dEokdZbrCSK+GWeleaqmV5Z
	 p2F46fuQdg+3Zqr425H0Sa9C7hF9AJJMOeeazorx51YXPMeM1ilblB2zhl9SgryvE6
	 HZkIqbmK6uPuw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id DFD18480592; Tue, 11 Jul 2023 19:13:32 +0200 (CEST)
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
Subject: [PATCH v1 1/1] arm64: dts: rockchip: rk3588-evb1: add SATA
Date: Tue, 11 Jul 2023 19:13:30 +0200
Message-Id: <20230711171330.52535-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_101337_898026_EDD7DD2D 
X-CRM114-Status: GOOD (  10.20  )
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

Add support for the SATA0_0 port found on the RK3588 EVB1. The
second port (SATA0_1) does not work, which matches the downstream
behaviour.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index f06b2ddcfcb6..eeab8f0478a5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -49,6 +49,10 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 	};
 };
 
+&combphy0_ps {
+	status = "okay";
+};
+
 &cpu_b0 {
 	cpu-supply = <&vdd_cpu_big0_s0>;
 };
@@ -759,6 +763,10 @@ regulator-state-mem {
 	};
 };
 
+&sata0 {
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
