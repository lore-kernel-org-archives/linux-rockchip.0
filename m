Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E666077CCF
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 16:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Eq91IeH+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=CzkaX/53
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RjO8OMYAIVZ2VI89/qIg6ZKLc4vgl0qUFpc9hp/RNY=; b=Eq91IeH+m6ihen
	uD0ulT/qYCL2LDT8qA2GuPFCUVPkYz/jMfOQasb0GnGkEgKAru+JFCPe4BGY1HcZn87oU3IN5ENAR
	s+xfQGrmbF6JtoOe5vfF+jeNYMuCjT6hdGI5XOnxk6BQAYxPjQmr/PFSHKwXTzVXyY0Asgb0SNxKj
	gt7fiSh1DHP4umh3cIKUNg/9ReWRIc7AAIfqrSMSR9tfMxKx0lMkFhQNt/s8w1iZ75cnxftluHPyc
	m4He6o4FZ9CxwgPjlJbFS4sAGfocgEJzD1onKH2LB3YkKp0YLmhGmAHJHIxHc8WOsvL8NC7JrHX0g
	fihw/TiKeXwwyZYxX7Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYw0-0000000CN1i-2uUv;
	Wed, 21 Oct 2026 16:13:00 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvg-0000000CMXU-0NUW;
	Wed, 21 Oct 2026 16:12:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7A44260416;
	Wed, 21 Oct 2026 16:12:39 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1792599159;
	b=BXdii8qVS0p4GaHWr72K07lh+W2iWmbJLdKMRsOjLUG4046A9333HkvypZ+FT+/jCPq9
	 L4GHDYKb7rmkyi2+I1OKl+7/OcskgrRwhDKi96RrAeWv1vzG/jYDEO5JzHdQht+mjvKPU
	 2FGFM/JRu0BuUQCi1F0AYW/BpiwmN+Uvdxs0tI2w0huTmzeHDXs41XgTj6su2Ctj1cpgT
	 wFQeT0RJJ9WsIsgICr4oIWD4Pd7cQ+YaaoWoLr2BrTux0CG1/cvOZum8FFNCrIMM6Yl8g
	 Rdavs85X6ZrNV9noMRQTgLfeIXRgBghOxC2Lh2yMzGSg9hFVnyCDEl803COdXu7gqPg==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1792599159;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=9OhtDeWco/qHepZsdYaoSDfBdVEmkEvICiVjHgzAKVQ=;
	b=MBSphSDwZ/XvIwMqVeugBoPtPguRNqf5he2HKHVgMVskTMANsK6T7sNhBRxEwaXFuRnU
	 dHDcviebuCGCXO46bwu8pRtMU8hxZX707Kk87rIAZMpMSgx2trjcIhqC86F+c67pVzk6K
	 5i5B1Pyd/dzCXfP5Rz6TeURj+xdyGGjw+VHjWT/S5TmYUN6xdML+SSnw5a1u5VaKMRX8G
	 38bMVPJqBbnRk8vib23VJIA1xSONfvc0L5o2gvifoHFjTJtIoj90xirEhjgN3d/JoVc7k
	 VNeiqJ5VKGCf67vu/rSs6E1cFx/vbDpqgsGZC1FxcV0SC1GR35viJ4Dku1P39Mmfo9w==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 44D091F000CB;
	Wed, 21 Oct 2026 16:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792599159;
	bh=9OhtDeWco/qHepZsdYaoSDfBdVEmkEvICiVjHgzAKVQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=CzkaX/536RR5KOhF4NfhQvSmZXufiBgO7UyIGJ7LXBIDH+dEFrlPhoIs8JZFDVP7h
	 aD7fdMqI9mPmRdpfoQe7On8fpOJGiJI25AxBP4c/s9qktiHOE5R/BbbdsTEZsESoSe
	 Hw1BTmH0CNyNACXr8LD+vc1uLaXy5pI0jar0T4jW4uLzGXWslsO9syazkqZyZEAlZf
	 IwV/FdYOwQdPCQVsAndZBfX9qg7lNyvDbxh4Bt10Hqn7CWniI5EJEm1zsjVuymuwxF
	 NteIHhYo2fKvlZ3eofppxrJ/KQkvVVDhcp2haTT//zKje/YjHSkTuQyVjwhZcW+TJu
	 hOG2mV6fYtBkA==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 250A8433AF;
	Wed, 21 Oct 2026 16:12:23 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Thu, 22 Oct 2026 00:11:02 +0800
Subject: [PATCH 05/27] dt-bindings: pinctrl: rockchip: Add RK3572
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261022-add-board-ok3572-c-v1-5-0b0fd85a31ee@qq.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792599138; l=808;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=7Cwg4wq5+C6jKGQLPpMc9LwBD2h7LAV97O69wvTBPj8=;
 b=EF4whsGfJl4BJ74dJFmiD0OLdXtnmpjaJdIa5SjqcpJ1E5QnilqIGFxGptEjeUZVlzPmMEbVw
 ox/BKH2IxLdDM2nkeGE4jgZCgSye/1RSrtxMlFnb3A+fVMODRy/G6Ux
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

Add the RK3572 pinctrl compatible.

Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 81747bb53056..cbecabd8e307 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -48,6 +48,7 @@ properties:
       - rockchip,rk3528-pinctrl
       - rockchip,rk3562-pinctrl
       - rockchip,rk3568-pinctrl
+      - rockchip,rk3572-pinctrl
       - rockchip,rk3576-pinctrl
       - rockchip,rk3588-pinctrl
       - rockchip,rv1103b-pinctrl

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
