Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0800A60A5BFC
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 16:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=l1MKFl4g;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=flBvReiR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSuTrUkU62ert9BLRgrEgQjIqK1NLJPwPWiUUXkvuQs=; b=l1MKFl4g4Xcjg9
	WAYtdaQ7iCuBD44VUQl4ZQw5v33rW7r7uQ+NHowq0glV0IROVnFhOlbJIsCi2/FhUO/TYOZ4BSn69
	aoNBXf+24JAOgQF/RH5+coVihgqijcaWIsrcS4p7mFdAXQQC+juzFsfZ7gQXv/0Uy3FCUEaEzICEc
	SI3x8lM37Lf/rNQaLlYZMiZng6ESsuymuseexjQowMJBG24V0DaqAiD55B9BG/nF5i4TuLwAgTem5
	x2qUS3klX8CQornC/5brR7+1m7vMOtz2jD59JRDsyiG3ZznXpYVhypG1iimDrGhNuQTKHWlZ/JLOj
	K5mFTt3Z1XNy3OfyDeHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvW-0000000CMMN-1Nqh;
	Wed, 21 Oct 2026 16:12:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvU-0000000CMKr-1Kty;
	Wed, 21 Oct 2026 16:12:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C025543B67;
	Wed, 21 Oct 2026 16:12:27 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1792599147;
	b=dmTxHXHvGV2c6tgx08tXf98A+m/6Zhdw4Gsm5OIcRTSP/tqYtf18yEc2M2FI8nxLyFKo
	 3I92NFiJncxKD6tHgKssl/363nfP83QAl6EncBDT5G1mf0Io1Kql6JPku1Sdb9eDBp4jh
	 6bq+64wme/9MZOrZsYH+cSltD0IitSAmEpTlj0d1KnJBwoDkyHuCVkM0vouf7sycdKcHy
	 K8v6NUW4TjvwQDyimbPB6WurlvP7k8mklCHUTRMOjts0mmlIMAGpxcql669sxZxkmTC/n
	 ifuPt5N34TeALeXsfTVEVeOohWOn9OOQMg2aGSlofXCjYul/pGuNOw+k72GFMlubKcw==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1792599147;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=2kXkfQKoyKeTCN2Sv/f7Ax6sxo++in4BRNf4KH18Q2k=;
	b=rvVrchBJi+wJUUCSkgmuD5JateOzxnXCSbvi0buYtCeRz7POG70r6Tqto5xwW2NfsOYq
	 I2JKBQGPXwJvNE+1nLpD9AjclJKEy/vPVhj/YMi9FaURtFVtJUwDOECSQdz2GEaLoZBwT
	 vOGsnMg0xptoEHvSWSZmFTcVOJQtRxV9vFMlPyWtZwrxdjqlzA81EZmQ0gim6O9TiGbMQ
	 OoVRf+h1+1Mpmo+CN43vVboA8WPjBkhMuh/LTtw9qDrqYzdHy1bOxtqiQEx25+7M9sl5N
	 xeGquDreuafq8fa3Y+/gsr6VSO3SfN207oDX4N99rc8Ajn0pEgET3pP+CpfGOlU2/tQ==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id BA37B1F000CB;
	Wed, 21 Oct 2026 16:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792599147;
	bh=2kXkfQKoyKeTCN2Sv/f7Ax6sxo++in4BRNf4KH18Q2k=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=flBvReiRnAUF9Q8w2biO4TsWdzjOXL9gVwLQtPfZYUrnxaVeiGBqSh1bJNqdpnuI/
	 XgtaY5Ffn7/9eStfKzXr/a1Dw4Zh1W/EFDzz6F87Dz5Tl0Xp01h8wcU+hYBd3RURhZ
	 52CvQnHI8+xMt69U3miF+uKwIPM772VG0yV2fm420SGz5ZhgXo9Rc1qn0ePfObB/FC
	 V2GGszH1FXmHG+egTebuA/mbfUu8YvSscZ6mnIisfJhMBOG6G+weI8ixEW+liA6ZnD
	 poYUNqx25KXupG0S+zJmi3G5ft9GU69b8OC3/qA/ZSGAy3O0iubWO9j0kv9rqBa1qE
	 fve68FA5IM16w==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 1354E433A7;
	Wed, 21 Oct 2026 16:12:23 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Thu, 22 Oct 2026 00:11:00 +0800
Subject: [PATCH 03/27] dt-bindings: soc: rockchip: Add RK3572 PMU and GRF
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261022-add-board-ok3572-c-v1-3-0b0fd85a31ee@qq.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792599138; l=3106;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=wJ94JN5Tzv4cmoYUSh00gVquJOC/PZzfdtSiGGYQM2U=;
 b=vP/t2ay2LwL1h3PbCoXFv8+wP3AFNmubZrHnyotQ/xf9gkVyzVsFDhbGn6+V5Idt9pTZYGUU3
 dUO0oMsepxhC0j2EdjEbgOIsLlgApcxnPm83NvnT40ro+SPr5f73l46
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

The RK3572 PMU and GRF blocks are system controllers shared with the
clock, power-domain, and USB PHY drivers.

Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml |  2 ++
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 12 ++++++++++++
 2 files changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index 1cff2328cd01..43dcaa77ffdb 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -28,6 +28,7 @@ select:
           - rockchip,rk3528-pmu
           - rockchip,rk3562-pmu
           - rockchip,rk3568-pmu
+          - rockchip,rk3572-pmu
           - rockchip,rk3576-pmu
           - rockchip,rk3588-pmu
           - rockchip,rv1126-pmu
@@ -48,6 +49,7 @@ properties:
           - rockchip,rk3528-pmu
           - rockchip,rk3562-pmu
           - rockchip,rk3568-pmu
+          - rockchip,rk3572-pmu
           - rockchip,rk3576-pmu
           - rockchip,rk3588-pmu
           - rockchip,rv1126-pmu
diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 7bcb4e2f47ec..3c4e7d1e9a07 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -30,6 +30,12 @@ properties:
               - rockchip,rk3568-pipe-grf
               - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
+              - rockchip,rk3572-ioc-grf
+              - rockchip,rk3572-nvm0-grf
+              - rockchip,rk3572-php-grf
+              - rockchip,rk3572-pipe-phy-grf
+              - rockchip,rk3572-pmu0-grf
+              - rockchip,rk3572-sys-grf
               - rockchip,rk3576-bigcore-grf
               - rockchip,rk3576-cci-grf
               - rockchip,rk3576-dcphy-grf
@@ -95,6 +101,7 @@ properties:
               - rockchip,rk3562-pmu-grf
               - rockchip,rk3568-grf
               - rockchip,rk3568-pmugrf
+              - rockchip,rk3572-usb2phy-grf
               - rockchip,rk3576-ioc-grf
               - rockchip,rk3576-pmu0-grf
               - rockchip,rk3576-usb2phy-grf
@@ -258,6 +265,7 @@ allOf:
               - rockchip,rk3308-usb2phy-grf
               - rockchip,rk3328-usb2phy-grf
               - rockchip,rk3399-grf
+              - rockchip,rk3572-usb2phy-grf
               - rockchip,rk3576-usb2phy-grf
               - rockchip,rk3588-usb2phy-grf
               - rockchip,rv1108-grf
@@ -309,6 +317,10 @@ allOf:
         compatible:
           contains:
             enum:
+              - rockchip,rk3572-nvm0-grf
+              - rockchip,rk3572-php-grf
+              - rockchip,rk3572-pipe-phy-grf
+              - rockchip,rk3572-usb2phy-grf
               - rockchip,rk3576-dcphy-grf
               - rockchip,rk3576-vo1-grf
               - rockchip,rk3588-vo-grf

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
