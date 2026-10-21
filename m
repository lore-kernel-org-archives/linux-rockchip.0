Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC87660A4ADE
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 16:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kv1832xd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=epttRTa+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzafqHXVt7sPqIIEWKDP/PEep7nzmhL38Klfo6xLOWk=; b=kv1832xdNxm6I5
	ZNMAPTB8TO+cMciGUm9iOL3IfNAvH2kA4x+yUH45t6zTeiAqVICQcAHNrXnb9NYLe7QYMPNIPxwEr
	Mii9Gjo/UaHAuJu0toZLMcQIitr4SJJ4TQWfV9kFCJl3HbOUUG7y1Gpi4DPnYQyiNJQuLQpBV6QEg
	XyGUsio15Lfqsp5rspn9lIWeYh00jGb+14OWQb4dHBHtPVSVrBaYDsRppPNhOUuUwkUT5bMnSGoad
	34yLdIwDngFdA3VmUVHbe3QBIN2PTrbpyZWQywGmfTMCPK6RwG+exuetzsAqa/k8L8EBhwhZBocDk
	jPR3irnoEKCHfACk3iNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYw2-0000000CN5G-3iVQ;
	Wed, 21 Oct 2026 16:13:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvh-0000000CMZR-2bhd;
	Wed, 21 Oct 2026 16:12:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5F7EF41740;
	Wed, 21 Oct 2026 16:12:41 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1792599161;
	b=JorBuyBlW1euBntLPTQOqS+U7eXgpC6EvYKr/kep3jo9wYPZTtVLe2AOoAQWFxkuYh6x
	 G3gzkPyg1BsuzK+h40qNJ1nRJtVNe6HRGlPDfzXvSCJOhTlA7RkeZzUoLfsSS73H6Db4H
	 DYkMlV7F9/6cH/6sqTXrhNO0P+OnQZkg2m2D+vZwDDRrHDOz6c3DYxSxyAPwAck2UuTAi
	 2p4tYtfLDvdDv39OWJJMMtIMQhLlpBbuUKbw6N2uQnQzk99zF8q/NxeqkWXZSZ66WQJ4B
	 PatO3V/O6bH/swKlKUuRGEwh16i+ho//lNJ/jXPu04aTFb0LKOcb0NJ1yarA57ROPZg==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1792599161;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=LP8P98vzBMv+Zob0ozcgR6w6Rai6LO0a+epncRMX6Ww=;
	b=Uw0Ss7gnKM+bqRFKM0YZUB63yMgW1jcGI8eAHt3LWkQjAjD/ZFO9FLm5IYEYC6FuQzRL
	 t8q1Ng3Ae1i+QsCEYmjuDKrjp3uVOSNE3flgeKQpsIRiifIjC0P9IEaKxI6rNPiomq95h
	 hTqQDWi3SFCfdLoxDmh++6dJ2NWG3fPi8yoXATgXCWzR6VT60OVbjCLPvvRerJSnEMBSo
	 VoT/Y9H//2OiO4AW7jISKXD28yoTmvx2AR/JOXYxe3hHNbLf6xkBhxhP+DGcQXhOr57sb
	 T6ZqfmQmDPBbjK6+LAUguR8kucfxbRZ5UI+YRVKBnZZNN8mcRHSCedpAxYfB6+oEdfw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 58F541F01579;
	Wed, 21 Oct 2026 16:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792599161;
	bh=LP8P98vzBMv+Zob0ozcgR6w6Rai6LO0a+epncRMX6Ww=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=epttRTa+N7d/V+IJbb8+jb38Az/i+bQb6j6VwN5EijVD8VEUQK5m4TrqkRd1kZLuq
	 WmeTrNEj7RtLPr6xnX7qhHkzxwLHO7Yfvf/rg0fOqR4CW3QAxXAbNhQq3t9/sn+XtW
	 i7JsD5aS69f8b28Rxd+Beb/CFSIgST1NXFaXMN21QuLBGx6UmlNqy4H/FYg6YkFhXe
	 PRjmYqTngpp8HoWoXIXO47fYGWweSDrQHOsT0/eqvIOuAxjFzGtEPjjPV6v2uYBDnf
	 WrgHHW8Scl9ujlYri729m2GlymqDxwd4ktsORGzsEY1notiDQB9kEI2APCDARzPa32
	 W+3H98DHvRn6A==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id A1C60433EA;
	Wed, 21 Oct 2026 16:12:23 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Thu, 22 Oct 2026 00:11:16 +0800
Subject: [PATCH 19/27] dt-bindings: phy: rockchip-naneng-combphy: Add
 RK3572
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261022-add-board-ok3572-c-v1-19-0b0fd85a31ee@qq.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792599138; l=1724;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=muiYAjJWpuGEfEfEQInT266/4Hkdo7WfF6Hfmvodf7s=;
 b=u7xQH47HEEiJM7iDR4aUZxkboJprU6o0pJOV6oty4ocqWDZfMFbkOdNHDe8oGSvbC/+NyCe3z
 4GwHAc8JPQ9AktBEBSAVKjrBjaxuP3xF3LMKiGHLmOiMTTbBta/pmfh
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

The RK3572 combo PHY uses two input clocks and one reset.

Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 .../bindings/phy/phy-rockchip-naneng-combphy.yaml  | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 379b08bd9e97a..80cee3f8874d9 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -15,6 +15,7 @@ properties:
       - rockchip,rk3528-naneng-combphy
       - rockchip,rk3562-naneng-combphy
       - rockchip,rk3568-naneng-combphy
+      - rockchip,rk3572-naneng-combphy
       - rockchip,rk3576-naneng-combphy
       - rockchip,rk3588-naneng-combphy
 
@@ -22,12 +23,14 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 2
     items:
       - description: reference clock
       - description: apb clock
       - description: pipe clock
 
   clock-names:
+    minItems: 2
     items:
       - const: ref
       - const: apb
@@ -94,6 +97,26 @@ required:
   - "#phy-cells"
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          const: rockchip,rk3572-naneng-combphy
+    then:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
+          maxItems: 2
+        resets:
+          maxItems: 1
+        reset-names:
+          maxItems: 1
+    else:
+      properties:
+        clocks:
+          minItems: 3
+        clock-names:
+          minItems: 3
   - if:
       properties:
         compatible:

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
