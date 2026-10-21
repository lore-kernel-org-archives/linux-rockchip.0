Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E5E6079719
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 16:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aM/r6yBb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Rpozbc8I
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D1AakfaIQ239o6ZhxmtfdA6ztlD3MoMWkmTK26X4ZXg=; b=aM/r6yBbdQnlKT
	noVoXEcNiKvkOxweGtkbtCZTCyba8CVklbHv89T21WyVMIgSG/FE8EJUXYZKJzGEsxOTmX1AUePqv
	i7SXxr33XIoSe15akFOcpdKlREaLRSTUXSclhlxy2aMlOUw0nwaIWHLcK2JRl2N5uvnRpwZAGpp3K
	jbjkwLEJ75alRIbHsEbdrYNWyq2VeMwvYf8Za5CUfqBUNdQFLFxqrqbNLkRoNmUcmaYDqKP9pPoWS
	IPzvUJqys45kZQhOMWvqBVpuNynric5HErKrNzBHxPR/YPlGA84/64+4O3eskPVPtho1efcoHeZB7
	5ZBhpUUGzsjALZgOOlhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYw4-0000000CN80-1fgW;
	Wed, 21 Oct 2026 16:13:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvi-0000000CMaq-2rqD;
	Wed, 21 Oct 2026 16:12:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5349F44507;
	Wed, 21 Oct 2026 16:12:42 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1792599162;
	b=iIYiUvHqIWCLRtfGH/pbe6hR0t66fHGe8hU1NQZhIBgPx3Bvn+m3Y65BMmsniCozjP9o
	 MuCTOSf8dj7mnZTlh657ATeXxiZlZYNgzZUxh0/1jCuvJFg6KUtK0kqVygjtn+rAOA5fS
	 sYTBZ1EW2QS7DNEsIoYT1P58rbT1c2LrjPfy9zRZt1zdMi6hzaC11/lHSzhOuCigg8uUZ
	 +MTy3k+MDCZVFeTBVkPHZZj3cQOkkdNK+BeesnshXx7gIXrI8KJjb0CZNBLLCtfMcxA4p
	 c4g3p2CNJTIANd7cP6V325tmDX0qi5CyHXDBwrMQkA9JMtmF9NxosAUT0DGYvw0Jt6w==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1792599162;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=LOPkZEV6Cm2zaHtJqPrEJTh7x8w9jJnwNm2gyHPm88Q=;
	b=EAsCfMDcA6XzviBGbt3Zd7v6Q3pjbQOx1ricdadB8w8FXf5KfOEpGiJ5cHvYPSoOUCmm
	 0mOhJ9WFRB8mDtXjp2Fv6MSD4Ro5QpazB9Bs7Q2eltm5wSLPk/qy/S9GodV96RH3ifI0D
	 Yq5BIPXVB9onNODoGBWEOJd6xYx+kZqxd4esoPR4YOQq10YfJm74qmLvs/9cXmqUslAoq
	 awEj+SHouYRzjxUjJvU5m8juAxLvlowQS1STXcL+EPHWUZtjDalIKl1B8dto348AVxXt5
	 6nzjZY2H2dcwortmNbBcaeC/Zsm6h8nE+3qfUISdAnfBMGQul3YZmauafc1Im9lmYaA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id E90FA1F000C4;
	Wed, 21 Oct 2026 16:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792599162;
	bh=LOPkZEV6Cm2zaHtJqPrEJTh7x8w9jJnwNm2gyHPm88Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=Rpozbc8IOvAbks8ZA0EvIQUx1BkFLLVX5UXLwniPNqaWNZcSPXitSxS8P77cQ3JGB
	 tEc00Xrvuq6SEtbb8HwYfnmmw9xsoh2FnMlgm9SGq8UN4A85RVITPkRvKwRS1WxbYD
	 BAQ6QyAPESg38vmoE+Bi130pDqGqq1xGaKd8XhnrdV6VlbUdAJa2c2QhL7vehfb8JD
	 x+pYwM5pP57ckdlsNRsX+n/qqWMC4idp7zuKQ+lgN355b0TL0ZW1/da9ZwaQ0eBbKV
	 iEeRWKn9Nrcou+qLzv2M6Kj5/sQFQserPjhJ1pPVkRVuOEhJuYHXYD3ySKQ+bJ0Ars
	 aPp85USWsmE9w==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 75B1F433D5;
	Wed, 21 Oct 2026 16:12:23 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Thu, 22 Oct 2026 00:11:11 +0800
Subject: [PATCH 14/27] dt-bindings: net: rockchip-dwmac: Add RK3572
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261022-add-board-ok3572-c-v1-14-0b0fd85a31ee@qq.com>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
In-Reply-To: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
To: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, Lee Jones <lee@kernel.org>, 
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, Ulf Hansson <ulfh@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: Cunhao Lu <1579567540@qq.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 mfd@lists.linux.dev, linux-gpio@vger.kernel.org, netdev@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-mmc@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792599138; l=1343;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=K0gxmniHOFyS01yuDpywB04Gh4PRTh2NilGC49wF0Uw=;
 b=OW/ekGJbf8lwNEJWQYNfv3I5mTkDqbhiK8fSThBAA6vigH0ZL6//v8ZHW4Ee27ozpu2t/IsRo
 PGs709KxeCcBq41j/NY9kIAySAoZFX0TROVz+O/VTBtFCliJJ/ZCfYn
X-Developer-Key: i=1579567540@qq.com; a=ed25519;
 pk=sUTWrzlIwT4C7ctjNfVZAzzg0G7QUn2XxRGpYsw4RtM=
X-Endpoint-Received: by B4 Relay for 1579567540@qq.com/20261015 with
 auth_id=1177
X-Original-From: Cunhao Lu <1579567540@qq.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: 1579567540@qq.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Cunhao Lu <1579567540@qq.com>

Add the RK3572 GMAC compatible using the snps,dwmac-4.20a fallback.

Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 80c252845349c..83b0a81b4f3b7 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -27,6 +27,7 @@ select:
           - rockchip,rk3506-gmac
           - rockchip,rk3528-gmac
           - rockchip,rk3568-gmac
+          - rockchip,rk3572-gmac
           - rockchip,rk3576-gmac
           - rockchip,rk3588-gmac
           - rockchip,rv1108-gmac
@@ -54,6 +55,7 @@ properties:
               - rockchip,rk3506-gmac
               - rockchip,rk3528-gmac
               - rockchip,rk3568-gmac
+              - rockchip,rk3572-gmac
               - rockchip,rk3576-gmac
               - rockchip,rk3588-gmac
               - rockchip,rv1126-gmac
@@ -137,6 +139,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - rockchip,rk3572-gmac
               - rockchip,rk3576-gmac
               - rockchip,rk3588-gmac
     then:

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
