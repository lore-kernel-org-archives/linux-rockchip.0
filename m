Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7ED9606A336
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 00:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=skrgCkSX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=aBL4u7So
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WF4fgMYT4naL6QQFCTNK4jz2JzHOSDGcRy6sU6VnuyU=; b=skrgCkSXushyUjdoJdEbzgRidF
	Mi+uD955rHiK1rplFZ/R7qJcKysFuIkjOIvJW70JLRHxMBkw6UDaw/PWW7qly7C3vqHPZNSnXZ3Hs
	qtZZRIc2eqiXREJVUbXES6bSuhqD2VL1G8durm471msNzzNrcCvnn4wqVBrEImHTIsW6pzChvdrTp
	x/49JuH2LTatG8T9HgFFa7l0CJUhLb6HVntZOr3COMYc1B7zMpk8XkNbvqBtOmzC7ZETt05xa+el5
	EAgF7b7cwa9hBqh4oBjSInSb1sGZVlae1yXXlV154wr7XLE1IxrfAOOqxtG01rhwgO/Oe6ZhMVtDB
	fit7iGNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUCf6-0000000Dl4m-0t8T;
	Fri, 20 Nov 2026 00:39:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUCf5-0000000Dl4J-1tOb;
	Fri, 20 Nov 2026 00:39:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 38E7440326;
	Fri, 20 Nov 2026 00:39:31 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1795135171;
	b=AgkGixM211lmriFUuc6e2uwB5C79GOw16s1103bMB5x1aD5XjIhtdV2hyIovzN4SAQhq
	 WycBvRPlFPRHaHQzHcyrIppXS79yBMB3MH/yw/B65oLt2z9jEIX5EIlCtsheIwQy+lUoM
	 vh/0lEPUwAgau54PwGRbhiLrk8IJSUkg/k/4uJPTydRGPPpPCZd0wJrIqPjziR5+ufvyP
	 yHjbFFPttt4v5kQjT74Srwpk1NkK6UdAySxzm//q1OfKO9UVx4tZYcLmIDMWtpexFDIMg
	 VzzZXB2kBXcWr8jye+dJ94/vMSmklEQ3QlQo1E/3EBEoCQzMj7XsGlx+AaHx0ZXf8iw==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1795135171;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=IZuDFPuZy+7YDyaYmWtTAS/LnBWLtgyCl9nuFwPasbo=;
	b=NWfM6lJl4cbvsF4Ca4b2wCYF46NsAynnW1/nmu49BcxRI0bKDFOfQG/24MNqK2FWMKcx
	 ywYaxuNBlekz3HaytRQJ92SBOOfQQnGxM71y/U5e1yEPxZPAg0BNCfyVpOMs94msPzpf1
	 /ECPiIdflCyA244f6WC4D5d5tUCQ5J0XCKInsWzqW4x1mrvliT/xzJpEKH/9KjLQgBJ+r
	 B9yVTgMcgepqYrJA7xIE2FwQQZJZ6fXxFIjh2734v//6wWiRVoUKlFfIGIi1RIaH1Yoo9
	 xyPaYpqo2/U6s5laimXXw/xI0QgSVuYlH+mM3MpH1JEtTK/kc6ZsSbDZ7Tuvbt12uUA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id EC2E11F000C6;
	Fri, 20 Nov 2026 00:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795135171;
	bh=IZuDFPuZy+7YDyaYmWtTAS/LnBWLtgyCl9nuFwPasbo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=aBL4u7SoYSVLbleetqu7M97l+HFnavYAroQQUuYmyh3uIRwItbVL11bk8iXpGRbkI
	 RiIFf11tjVeDS+HLHzKWHvhtZHZ6LCIl4RcwyRCYWF3T1ctkXYMNmqWTgaAIvHDq7I
	 aMCOEjw49DK8q8uPZKsq7VwmrA2z8NC2sTnZsMw4pcLBgqwzwfjsMmZFWGmLGnJIH/
	 TgX8J3ydG5ElNAFQ3jYu7iv4DmGjnoz8zQzawidXZ1NA0GzI5QOXQa+X0ZEMV5xWuF
	 QKMYK/1x4w4TEk+exQQq5L8o/Z1qBx9fph8ur0dHhmQz5wIrqIhmp8a1xTEcwEje3h
	 ocbyi3ljFqbFQ==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 799BD425E2;
	Fri, 20 Nov 2026 00:39:29 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Date: Fri, 20 Nov 2026 01:39:27 +0100
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Mekotronics
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261120-rk3588-mekotronics-r58x-pro-v1-1-4e70c077c7b4@pardini.net>
References: <20261120-rk3588-mekotronics-r58x-pro-v1-0-4e70c077c7b4@pardini.net>
In-Reply-To: <20261120-rk3588-mekotronics-r58x-pro-v1-0-4e70c077c7b4@pardini.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=893; i=ricardo@pardini.net;
 h=from:subject:message-id;
 bh=tdZ5Gv+020lndTtofgOunypBXIjX4W1b3fbo3BuNVP4=;
 b=owEBbQGS/pANAwAKATteP+Oex+3pAcsmYgBq/5a/6HsaT8egAyGahPN23aDtgjy29G7m4FCJi
 D26go1E+zyJATMEAAEKAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCav+WvwAKCRA7Xj/jnsft
 6RTaB/9Ktg5sIirrYbaHMSc+4QalJhLY8T+kttDKUDHfs7gWd0EQnQfA7UztvJfKc2Vowyp7QBM
 lUo0PlYXWmeeZaEFq7OY97tNU3x7dpqduzPHBHkicF9LlVzNauQehS7sQwUp0jnyjmMzETMBmKA
 JWArEIJPhJ2DbLWiTsPoN5Ksbzb/s01BzwhdNl/AkxPdtA2sH5jag1KKiYl0W1LMFjkNoeMUVgk
 OuxNPHKlmSUllj/xyB9fotXoEFofChuMvSGSEqPjqacpXjaq3Bl02Ka9J+CcDU4h0mT62ig4/nM
 JD+3ILiScXYq0K7WGpIbOOODXoVaJTDPCi6M7ZYPxSXGhk6S
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: ricardo@pardini.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Ricardo Pardini <ricardo@pardini.net>

Mekotronics is a Chinese manufacturer of industrial mini PCs and
single board computers based on Rockchip SoCs.

Link: https://www.mekotronics.com
Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 5471a06f93f1..ddf06858856d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1067,6 +1067,8 @@ patternProperties:
     description: Medion AG
   "^megachips,.*":
     description: MegaChips
+  "^mekotronics,.*":
+    description: Mekotronics Co., Ltd.
   "^mele,.*":
     description: Shenzhen MeLE Digital Technology Ltd.
   "^melexis,.*":

-- 
2.47.3



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
