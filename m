Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4F726077CDA
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 16:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CcgSiKJp;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=i7Gno09O
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaZFiBoXRCt0KDkXMf4Ww9scRrR3TUY4AmgUFpD/qbs=; b=CcgSiKJpkjArgy
	War554B0qZV9ZYRIaw03iHXcAgAGrJB1G7sDXbnHAhWj42P/s8kQAnvl6BdSqTeeBMRl1Ljo48rSB
	AxE2p8854/zaDCtZ+s7unJnMPt7r9xvB4uZp9CXA0595aYM5szWUGyletUXvoWAmZEllOWtfyC6Kd
	OkGuzB8lL6TpG2GpzydcZfIRSxtVI9Yeppux9BsIAJ8AM+9Yh4rjbbYSiPyBmgu8oM8k9D3gxWdHd
	XIkZQ5eIbtG3LMhrwrEUIXKduPJ/e7+XvxErRe5GIbG/AGNGy8999ZSNUg0a8m6aL6rQ+B9Om2EdC
	chEkQ27XZN2u0pu2zwAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvw-0000000CMvK-1OzQ;
	Wed, 21 Oct 2026 16:12:56 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYve-0000000CMVt-2u0O;
	Wed, 21 Oct 2026 16:12:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6CEAB43FB2;
	Wed, 21 Oct 2026 16:12:38 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1792599158;
	b=kQBo5XwDJjI2oTJt9m522nDBPHsvZ1CWtvBsWBcim7dFRQbszYHeKzg+Rpndas9XZp1b
	 YsM0eSZnBXelbvqECzYqPX12EsJc/fk+2Z3tR3zsMwJUtLV6tKsof73iniAi2B2po08CH
	 YKlhtTv/3LrXbZp6S+R7FDMo8u1aNYMx4JXF9lF+LVwB+Yg7XCFlJIIRme1wIbwgP8Gn0
	 NwDm4S8p9RZTW/rQpwWR4KUH0lciNALA9ABBCPK3l8+jX5WezecBP2689kb512L2yok+b
	 PLDr/eow9/CGv2tlAWk87Px+9820+pF3oSdfUfsoXFtqfQ6Dsegrfk/A+lhW5tt9zVA==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1792599158;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=j4tXjeXuIFwdGre8TfOudfHUOYNQAoGCEGDBy7Hf0QE=;
	b=gARGmV4TrShlWR15jBwZzTxX2gext7H2eNn1ED0LM2BSFUqkuJ3A+859Kij35xW69PRd
	 9Ay11Ml/wPgB8hLen4h4qnNMfkjwD4poLrOaCle/KeWj3YW631W/yuLtMmN+INi8unPG1
	 0zP3NPykkgiwDqgdS4fdjYZqTNGbUBElVEcu92aKv0hZAL/MJPvGf2WhfJpCSbb32Ln2D
	 v0DNQQ3Uk/DD+rtNObiL8IRYlpeZkLrV72PCp34L7tw9g6QFHjs/3h+36wfWTKwhYRYHe
	 WmELftiMK6PP9e2CtQz/U8vTlF3l8osRJgzVQqvQJhQ1aF+SnIz8TS6khFPC34sxV7g==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 1FA0A1F01574;
	Wed, 21 Oct 2026 16:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792599158;
	bh=j4tXjeXuIFwdGre8TfOudfHUOYNQAoGCEGDBy7Hf0QE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=i7Gno09O7aBsF4PAOu5pm+P0ICVnjT3zcXIQ+kxHg0jO/NB6dXNynKudUwEDN2anv
	 9MzijZ1Wu9HwkAlcclnOrYDd5ajh3Q4JNbAm1NzY7sD2TulYiFsdk5ar+NsIOKW56t
	 pstZBiJs9U4sDmK670er8L/DDli8MTUiqXYOiKhRzdG1qsiCuxX1TRc6NGaLF59K43
	 rgRAgy5KWJ5LSfNHRJPCWN1+1f+gy3nH9CKE0CC9Vj778KnhghUybyBEG2sUMMfAzk
	 B3SQTaIwvtfl64uWWhPw9+ux3uIq7i8fY2UcwPLM12mCzxCehN8crIBIoCKiN35TWN
	 cmkpYKOGWKoRQ==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 7E6A8433DA;
	Wed, 21 Oct 2026 16:12:23 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Thu, 22 Oct 2026 00:11:12 +0800
Subject: [PATCH 15/27] dt-bindings: thermal: rockchip: Add RK3572
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261022-add-board-ok3572-c-v1-15-0b0fd85a31ee@qq.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792599138; l=1043;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=7k7vf74VdFarETYGBuBSnEXvPu9QBBXuBjc821VO3k8=;
 b=MiGBFVzdbKwSSpjdPn72pCR5H82wS/DLvQWUmjMShXqg0Rsc6AzPpC2HrRTVBRF2Se/JOaBPd
 b0g0HY0FTWOAOGDZRcF41L3Z5uMMjOioB4NkawGBAoyJtsTxdHDxs9Q
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

Add the RK3572 thermal sensor compatible.

Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
index 9fa5c4c49d76e..7102a581ef72b 100644
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
@@ -21,6 +21,7 @@ properties:
       - rockchip,rk3368-tsadc
       - rockchip,rk3399-tsadc
       - rockchip,rk3568-tsadc
+      - rockchip,rk3572-tsadc
       - rockchip,rk3576-tsadc
       - rockchip,rk3588-tsadc
       - rockchip,rv1108-tsadc
@@ -151,6 +152,7 @@ allOf:
             contains:
               enum:
                 - rockchip,rk3568-tsadc
+                - rockchip,rk3572-tsadc
                 - rockchip,rk3576-tsadc
     then:
       patternProperties:

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
