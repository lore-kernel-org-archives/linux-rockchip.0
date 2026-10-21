Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8FE606AD3D
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 16:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ar+sdM+6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=d//GyDh9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9xhnilGAYhAHIXL8f20v+g/Z5tn33+bwCh7RRiozhA=; b=ar+sdM+6GYisVY
	75vMHF/wVTq//vJKiwg13pBM/P48GTErW/EW0VRR8HbRNg2V8ALpOp4pbu9q5JqklaJZKFMc/hJKP
	IwgNVNj3usn2qMRdYMRF/psEJisxZAaa9iTPG2vK/reuaiGUOpTlKX8JsxJr5FmHO57vea06sa4HF
	L0zcoJDcfyZ4WnqBvGuJOYX+nbFIk8WKQ+DqaL5u8KLr4eYxky1HkfDiWMWTOSHCJa90l6CUVJA3C
	ucVN0nSEWT1LtyG01GwcUk1BaGqWmjE/svUy0yG03nWC4u7BKqrm/zrKSe74j6DhsvHdo6Zc52Otb
	krxmYvSfXvsiHZI829Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYwF-0000000CNRP-36iQ;
	Wed, 21 Oct 2026 16:13:15 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvt-0000000CMs0-3DFA;
	Wed, 21 Oct 2026 16:12:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7C9554479F;
	Wed, 21 Oct 2026 16:12:53 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1792599173;
	b=EIkQ568GjFRNS2Y52wPLXyvc8f5Jh+9+Qhs/SICS2TRjXx1ImOtCJFY3II2xBd6C9KfY
	 AlfJdnp2CPMoC+t/IBnLgBJPrtF84lBUuwzjjmrq0bWkoZtjt5L89KpqouGjkg/M8DbCk
	 McRhDU6Jck7PhMvDti6dSm7/IFlMu6kCPQ4puz6QzEHEqGwAj4VAmv+PkipPtxY67qdF3
	 K9CRuzoV5Tws5x5iVJCzVZ7h4vJlS8rE+2lYfQVBxyIam/5Sv0LMRlGnqxt0qixLBYn+8
	 LmRKnJgB3mbVo7OiIUSjCAuK9M7XKTRZ0bpgJHbMshaPOYhayCNAUjKV+O2zZt8rSMg==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1792599173;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=WY4ZEuURDiNmK6i91k8nTN7t5MwK2F4DFp8c3nugGjQ=;
	b=C8EYqbaB+TfnwyN0Cw2Rk8LNSK+Z2x+mOD63+afcaYpy+axCss2k9VfRswKtNVNkYBDa
	 sxZOpQ20M3G4C8Q9nnPvzZEqwiX3lOUetGRDq8vISESBffUS0DvbTI7EKt7RTnlB0QHL1
	 XKEEf86D6O7aWEUeF2NiTJG3IyEDMH7u5H19kXNc9nIRg4LcOZZn8nl+OTn4w9JhscmXG
	 9JFtv7+g/lit2t3Xpd+X8J/OloS7vICTyE6VWymxfVLXadEa+9qgbdiH2TBmcJ6YlSSt5
	 ksrDtyHTvP7lIj6seg9fXZMT1HDHGi2eXBsAjswxPE9RZZa5xMdA9s6RIRCymAol12w==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id C58CE1F0182F;
	Wed, 21 Oct 2026 16:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792599173;
	bh=WY4ZEuURDiNmK6i91k8nTN7t5MwK2F4DFp8c3nugGjQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=d//GyDh9Q8mEJYia/2d2C9i9N7gIFXeUkdAjmltYK94QqbZCID9c+qRZHBYe7os3y
	 Cc+O5K7WXUhFm21gObU/obbZE6mwrIXttogXBvpJwQprURS+VamFjhjmdo+4taeDWj
	 u/FQZRlI5H7PGMKRq79q+9+eo5LlWdLq8h0Pk6gr3u35FfSchUSY4kAQ/Rjrp9/Ag5
	 LDE2ayUW0BPt5A9kGy1jTLnMi00Aaca0ipBYuu1vw0nbdgOSLZeJM50locKONFzERL
	 L/ZHWJNjhvYJ2Dx519fTX4NDFtA9CTktRKvYx66ZlynBVvA+dVjNBDhMdhbhevdM3q
	 mGIPuiE0bf+wQ==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id D927E43404;
	Wed, 21 Oct 2026 16:12:23 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Thu, 22 Oct 2026 00:11:22 +0800
Subject: [PATCH 25/27] dt-bindings: arm: rockchip: Add Forlinx OK3572-C
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261022-add-board-ok3572-c-v1-25-0b0fd85a31ee@qq.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792599138; l=940;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=oauBPTMgwrpEfcYOz8hlG+zW49i1/JZ++ifkxeoDUZ4=;
 b=n2lIa41639g6ID0rghs3WoNNMv7QeAjmDoPk8c0SVRA3+qL8scQhxIssd4e0qw1PHqJhVeq/R
 SluQoGY23TuBCWO1u9LnwDxY6ogyJVzIFE5riu34wg3crDq98cgOfX+
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

The board uses the FET3572-C system-on-module and falls back to the
RK3572 SoC compatible.

Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a799bb843f74..2880ea741e73 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -331,6 +331,12 @@ properties:
           - const: forlinx,fet3588-c
           - const: rockchip,rk3588
 
+      - description: Forlinx OK3572-C with FET3572-C
+        items:
+          - const: forlinx,ok3572-c
+          - const: forlinx,fet3572-c
+          - const: rockchip,rk3572
+
       - description: FriendlyElec NanoPi R2 series boards
         items:
           - enum:

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
