Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240C9606A338
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 16:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=l9yeL+rJ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=BpT0otQS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3oBHz/NWVlhMAzxOL01weZSAaPVf3c7e4257QOCDnk=; b=l9yeL+rJuRVb0F
	Wd6TjkZVd8SqX1DQpnoXclsfzpju5Lkd67SeEQ9z9sVgczSY6sBLbRmJgFS1Ownx/8LMGjwCCsCh4
	0GHAhQbjfPOWaptoxmZgxAhDg5k0Plwc8Fgwdq68BlB9B1nmUJ62qL9vpIQ3gr0VJ4vpwJVyEFFPe
	dCYh7M5y/q3Oi1b2cMJvms5oNw9f58zT4ql//XtZu71PFq3SgqJLy4gpvgHBDRWDPG8bqjFoPmprQ
	ukR94Uu13XZwSDjEEcID/C1hdxMPFmi2QXQP+cpvkY8BpMB/9BD15DAyHGmG2d5CwamCK1LkrvkRL
	OADbDFFg1ZQ4tOqRsTiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvb-0000000CMQ7-0PyG;
	Wed, 21 Oct 2026 16:12:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvV-0000000CMLd-2Yxs;
	Wed, 21 Oct 2026 16:12:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3458F44038;
	Wed, 21 Oct 2026 16:12:29 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1792599149;
	b=GuN1o3nvBeEVT6Io36FckXhgnsm7/uxId0FKN5FwnSjbGUCJQVXNI9kRfUWN5NNfwRGF
	 dXOCXjLpSHvBfFdSuzE+gKxrYS/QPerZkSidmvWSZ+xSl2CyczbwIde6hhdK6BjPpGKh/
	 gtbMkdVPQFIxQzZmB9TJAj8hE0n35i+5oKUXSTO7WsoLD9LTM5aOSFcZBZ7YpwkvH2GFm
	 9TvKN3KFdYvromhfJUQ/t+Nnj0lfma1X6fWL4/zPkMaT/dF9X/hEHeXsym6Z26V10d/sr
	 6jd55c3L8hrhLisgDYQs6VV54OKFOjIahTO8yKyVvzpP7eEv17ig54Fr7Vkk3u5U5Ww==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1792599149;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=7wLxM6Jx2TxijdJOdPWYIEJcNEz65qnh7+8neQqm6rA=;
	b=zm5MaTEXtoa+k97qjAvrq23OFNAZSVFbYJ59Qpq0K6IKMdeAQfVis98Vvrs632PhrvU3
	 CndxVO4LH7V+k00aLzsOy7SLlPzSnaJM0cQEGt3+EV/1u89/Mwx8DOj4B021uA95GyW5n
	 xZDBvNR7nQ3ZlBCQ0gWGNMHp5B8+n4Lzaric4uefY8YX23J5oJLhndQSO3TATyYIDfJjY
	 uPBNWhilj8ts24t5/y2B4rptGat3gfs/URFWvk8cYrJdgFvTKKSvM1JSxYnwlSGrCPuWb
	 Szfxv7+gJzZB/jRlGP1Sx2/u5iWbL/ehZq2VhJEu4m5WsJAnVZYqrHazngD0+WJ+0Xw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id C4F9F1F0157C;
	Wed, 21 Oct 2026 16:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792599149;
	bh=7wLxM6Jx2TxijdJOdPWYIEJcNEz65qnh7+8neQqm6rA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=BpT0otQSQU5NsP4AKQplZc+7ZokSgjnFC6RdJaP6nOLFD7LF7CM7jZtM612uust77
	 KNTi5qhHtHVPZzplJwuONt8B3LXYyMXtk9DF3g9WlChvyC5uq00RB944LsILtKyk+x
	 60XgfdXFwre5Z+z2YxkxJgn5TrW5m0+wG+lgH43DUykjWPZ8tJeQ71wlWjLZcKdxhq
	 cDbfmnVVC/vBxOpG5JQ23kesYaRkQ/0yWmhMjC41CmlEHyi7uscPs9i2jkbeliYpW1
	 2ReH1WJ3n8pjIMvjYFElAcvx08I5H1+gn61G1UHWruc7sTJ2rJG1YVJPvLjzc324Wk
	 hZ7EGadnmBLyQ==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 1CB9E433AB;
	Wed, 21 Oct 2026 16:12:23 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Thu, 22 Oct 2026 00:11:01 +0800
Subject: [PATCH 04/27] dt-bindings: mfd: syscon: Add RK3572 QoS register
 compatible
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261022-add-board-ok3572-c-v1-4-0b0fd85a31ee@qq.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792599138; l=787;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=uFfiJe79UHoJUmZUfddULOE/yY4AM8aRwf1OA9QQsAw=;
 b=PQlvImamcct9qYzOV3A6Za7RjEIj1sPanPiyKUAgVT8qOcZLZshqI9eYCroTYs9FppadblViO
 vNmeEdVoB8IAPJdBQj2d2OT1inwdeWPYAeSge7dK06aGkCZlOaxcUEQ
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

Add rockchip,rk3572-qos to the syscon compatible list.

Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 945a168b613d..b3c96e1de74f 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -118,6 +118,7 @@ properties:
               - rockchip,rk3528-qos
               - rockchip,rk3562-qos
               - rockchip,rk3568-qos
+              - rockchip,rk3572-qos
               - rockchip,rk3576-qos
               - rockchip,rk3588-qos
               - rockchip,rv1126-qos

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
