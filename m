Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF386071D80
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 16:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qqXQ61qk;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=eISUM7LD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4laKmr77ml3yDYvjCWttWIfoKSswDyROmeRi1BAWSI=; b=qqXQ61qknqvB98
	DWmhSrNUXJo41krN9ITFt6ENovpTblnxKN6jAZoBA1ZGU9zxyRtwwgUMa5M5eieo4Ml29WrYNN5Ii
	4y1pSzFKVd5Yk/T/3EnOyTIxIb6UiaAvxOhoSWB6mxRaHfllAkpnFzKblTCJwpGJX71UgZx8deh8z
	1tofjH474RxxuzExAaj+SzvtES0fxemN0ez8ufbGSvd/pXCo0Mk05JiPI9eCpqIPsP9apDlmv8u7c
	weSnIBtOy1q9Bf8U55Z4Dz3gm4w0JIwS3+U2jERTPRPLm41wnEjCDyAbXjpKyEwMy7NaISu4iCM4O
	j5K6MukaW7dlHbkeSCZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvf-0000000CMXj-3mDE;
	Wed, 21 Oct 2026 16:12:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvZ-0000000CMP0-2POB;
	Wed, 21 Oct 2026 16:12:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 52A9843B0B;
	Wed, 21 Oct 2026 16:12:33 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1792599153;
	b=yHUpXidIYvDvGULFrckOMffNTUBnME1UUdU+U2bw/v4V+t/QBctprH2vkHpJt94IIukF
	 Mabzr4kBqJ4tNBov0jQhe27X3Wjmqub9n05qOvwDLAJDGsQv1wv5ExlXXbk69vALR8qqM
	 0ppkl7WFdrinCewQ3PkpWq3Y8uYLsz1PwXp5htezgXuyVYizq1hXUj0LkDkev1MuYUSJS
	 ejT117bySOSPFQ41dmFocSXmjXn9+8Zyskx4cH5jEM5R+P9/2Ib8pUjq80/orDdfgU3cT
	 ASpfdun5UBmegWK+m3ie/tV/Ib4nIgNpnxAywk4n8mMaWvl5AHaHkdYb1C8+qn3qbAw==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1792599153;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=wNZNoSNZLuTYE1knJMqvBH+8vSrJt0a6jTPt/IHTyTE=;
	b=EbgHSkaaEFX7CmpXS+9kPzPusG3Ye+UVbnRdRJmtRWSeXZ/ZBwzWI9ZIJV4ZiSvbnAaH
	 H00dUYuqQKZKwa0Fw0HM2bwLO23S/bxB+7qCGT7kKyoWlagyYqGRN0OPyX/9yrIlMrsdS
	 Ln6lo1naStwsRSTvkfE8E2KiKkXAcDlLHX3RYTGpyQfH/Q5VnSgcf493HniBY+LteIm4D
	 spNBj1wJFeZpSeBpSg06bSv5gPncG5MzhRpOMkCBErr1sssQZ+SLTaku7+/yzgVOkztwg
	 ruLuW5pXrDphOw62mCmelAIZyoe2AEHkKx15AsMBh8E00K7+3rnjalBk6OSG9SQXaqA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 3D21A1F01807;
	Wed, 21 Oct 2026 16:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792599153;
	bh=wNZNoSNZLuTYE1knJMqvBH+8vSrJt0a6jTPt/IHTyTE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=eISUM7LD00GpK803nQOh/yXzQNR4XPEZxBkD0HUGr+M7mAQgcZ/xLsUmMSsHYXxuR
	 k+Qwy7J9xesnaEGdrHcZUErFWWwasZUAnVmLEfYmr7UB4LP0KVO4chOoFuFrgWyKVN
	 gGe6josURShApzh30aAIXvukiFG/jrBt8JmvGt1fStkkYElJL0iFkImY4H6qG4Psk6
	 fA/YGWiU39Jv1H2saYsL6hlygVor1y5L9I/pco7I0TrkrQVl/pWDo4EcGnUP6XwXor
	 12b/sn6Eo8Xkpr/UnOuJPGQ/7R8zNV0gbn1WTnzUSLgSU7VHsrxxjdXKmZj5+XNNpc
	 xTxFfyinvLw5Q==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 2DE10433B3;
	Wed, 21 Oct 2026 16:12:23 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Thu, 22 Oct 2026 00:11:03 +0800
Subject: [PATCH 06/27] dt-bindings: gpio: rockchip: Add RK3572 GPIO banks
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261022-add-board-ok3572-c-v1-6-0b0fd85a31ee@qq.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792599138; l=1558;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=71XPLp2LqTx5hu9SnpsYS2dYxBCGTBCIH6TDOlt/UTY=;
 b=gUcs6i+rCmZW4P9eCpq1UvpoUfHiUAfwTjBWYCyFUWqqTSAST4oT5QX3mhKaRqGm/lrSXDu3E
 4i0YyfNKdCEChy+pHpiyrYy/UwckAdQWmSXhXFS1hCFyRwPMSN4yzQY
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

RK3572 GPIO banks have four parent interrupts and a separate debounce
clock.

Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 .../bindings/gpio/rockchip,gpio-bank.yaml          | 24 +++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index 774e9c7de606..8655854ac0a3 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -14,12 +14,14 @@ properties:
     enum:
       - rockchip,gpio-bank
       - rockchip,rk3188-gpio-bank0
+      - rockchip,rk3572-gpio-bank
 
   reg:
     maxItems: 1
 
   interrupts:
-    maxItems: 1
+    minItems: 1
+    maxItems: 4
 
   clocks:
     minItems: 1
@@ -51,6 +53,26 @@ properties:
       of this bank, on SoCs such as the RV1106 where each GPIO bank has
       its own IOC block.
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          const: rockchip,rk3572-gpio-bank
+    then:
+      properties:
+        interrupts:
+          items:
+            - description: GPIO group 0
+            - description: GPIO group 1
+            - description: GPIO group 2
+            - description: GPIO group 3
+        clocks:
+          minItems: 2
+    else:
+      properties:
+        interrupts:
+          maxItems: 1
+
 patternProperties:
   "^.+-hog(-[0-9]+)?$":
     type: object

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
