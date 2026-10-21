Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369526072B00
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 16:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LwFkmLVl;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=feOiJJ7C
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y6qq/DWCLPOnIi4w2EXgKNM9iAtLaKwuyAs9F5HpSpU=; b=LwFkmLVlz3Y72o
	tWLEayIkooPJyy3cvhTC8ip1FvULEgaW4OPmaq0h7wzW38Djv0CAytjGECfIqYi4Z/BPwn/GDm08F
	PeSuaXgT623NzTuvVCwN5AcBRXDUwPOCLarrVcEkGD/Cw2NiHq1oLwMYXhFrzgNbzVgQRo3AnSMtY
	OBzTsnmqD3QJev47T0GoLij30RLYFNvM1Ytc9hqBwny8cs6U+Nz5Tzx3RXTLlrs4qrS6VaTJgz2O4
	qH7wDdce0/EHFRF5G5Opu3IGfUBiw61L/DrXV61+/Ja10w9V/12XdpoJBJAMZo430f1Cuqq5aU30g
	vp3fKwqKmiMWWpiVPwLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvm-0000000CMhA-1g5i;
	Wed, 21 Oct 2026 16:12:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvc-0000000CMTP-3k3Q;
	Wed, 21 Oct 2026 16:12:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8EB474479B;
	Wed, 21 Oct 2026 16:12:36 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1792599156;
	b=V1AKN+hUQEhmgjm0wYRZG7snHlVnxQE5pSI9FKW/TCzF6Khr+f87coE8Cnu62Pk+YXg6
	 7D0z7PRFyAENaBXH0VVC2/ik/WPhY2u8d2GyCNDI8PnrgH9AX+/XJ7+SwM0R2aZXAvfVH
	 iI1qtdQ4stieYTvxCUvMKICbFwuKH4dTt29u+S9VUt0kQiugyK7oMLmq/PLNt7UOqQISk
	 Anx7T+y82ExaUVALX/4q4As2GZ5I/oCpwzaaHHECVGWAkSo4c2fzZwC08Iq4Xg7QvvNpb
	 DPqPw/qXSFFWzUsbM05SpzzbiQUz2ACeIaIvHE9EIKo1CfE6icTgI9q0Kfpn7yfmVLQ==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1792599156;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=HkfHwPyLmt0lyg8sxRRrXUSzNOY48bkzXVEumriQRkI=;
	b=dqDoS20fyPrd52S0C2OV53JBdMUqJw2XPA/xwDMXM6xQQdLHaUwx1/g9aJUEMTnrWlix
	 QcmfDa2+laMmZZseOzGUDVDzmHoREArw7bmm3vwuDBuKF5veKNuCbUCPw2yRsRg8d6A3w
	 z9l9VClgsX/1Ob5n36CxLgk5+q8rn3XY6AilUjhJEXxON2c7gGYMDN2dhnfyvN/oSagvo
	 UZjwupfOqtp4ApVR8ZUOoCjo2pcG2Gf0vm9K9P8zau+t7Dizrp6kZskgzrZSbR/ykFGZk
	 EXHkbIbn2xuNnjjN3TF3OMazrorhLoE+NnfADuQEeosIKpTpIpMJeFLU8M2qI5CcvqQ==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 033081F01579;
	Wed, 21 Oct 2026 16:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792599156;
	bh=HkfHwPyLmt0lyg8sxRRrXUSzNOY48bkzXVEumriQRkI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=feOiJJ7CaEdz4v99fj7u0fDU4oEE8dM0UXT+qfqynL8DOF0iF3/EezTvUrBd/EC/l
	 jpANYZh5G45vk99pDDJlpoOE9B6g558+gs2u4nkqDOOE3+rPDt6TbG4Js0zAx4qgfW
	 rwwP6YBENPZ5c54O/ryZEhsp0Fhpt2sVyzNVnV5E9kDSOvy1kjv9pLygRtACtPPwkx
	 Gh3CAp5Wiqk4QisanjuQhlpLyKWZvxxel7urfaHoWxqOcKLObXmeBGLnMsX7VR5Lik
	 97qvwQNcZKh1/bUk10BHvZ5b0KSUke0/k9FcNa4ivBOP1A2pXBaWJDZ+TrFY2RrsH0
	 g+3F02DYhYQcA==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 64558433CD;
	Wed, 21 Oct 2026 16:12:23 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Thu, 22 Oct 2026 00:11:09 +0800
Subject: [PATCH 12/27] dt-bindings: serial: snps-dw-apb-uart: Add RK3572
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261022-add-board-ok3572-c-v1-12-0b0fd85a31ee@qq.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792599138; l=863;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=D1FXViPVwujIOTT9x4HkdtazDzg/Nd0v50dhD62lfCw=;
 b=bXyhxcCQAaxGkzUkidwaNd9WBOseIQ1bn1C/gLwHjeftMUjLXEIu+l0mtI8wNJbpQezhprCb9
 eiCgnJoV0jgBq1kJsV9P1ps6h5idPRU5RDnkGRCmnonnKH3T6X+xldJ
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

Add the RK3572 UART compatible using the Synopsys fallback.

Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 664305de4986..4567f8e76c9f 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -70,6 +70,7 @@ properties:
               - rockchip,rk3528-uart
               - rockchip,rk3562-uart
               - rockchip,rk3568-uart
+              - rockchip,rk3572-uart
               - rockchip,rk3576-uart
               - rockchip,rk3588-uart
               - rockchip,rv1103b-uart

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
