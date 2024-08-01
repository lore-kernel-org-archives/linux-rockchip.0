Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70734C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 18:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YUntmw//khhsu/O+eu/O//fJnkj25NKN5zkeHJAkXJU=; b=PtvSptPkUblQDp
	njc5OVQVL0QzIitZRvtSKjn92aIRkla2MhLUNLQbhCINyarfOhxo9xCuUp0cO6HT4SJWbUotceTWg
	aKtRe3iNqItXSDVEfBCu+U6GS72Dr/4MNS4G/rkLo9Vfll1ux6V5rm0Wd249JK3JkIGP+LPPsMsOk
	pyzzNiiKS019KBg2CTxJfhkyLvrx/PeiLnvm7tf6FTwFRBQdqKcxsDyFERNLFoxEX/icztd6axvkT
	ofB6jPKiQKmqZKzWTkGhyiUjnCcY7n5n+UQpSIx4YU98VZvV5RzJLStPvCYNoDjYLniMwtOhk6EDO
	N+QnMpSLAiBOua4AMtVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZa6N-00000006Kif-3miR;
	Thu, 01 Aug 2024 18:00:35 +0000
Received: from xn--80adja5bqm.su ([198.44.140.76])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZa4w-00000006KKs-1h3l;
	Thu, 01 Aug 2024 17:59:07 +0000
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id 5542A40460CE; Thu,  1 Aug 2024 17:58:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 xn--80adja5bqm.su 5542A40460CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mediatomb.cc;
	s=default; t=1722535092;
	bh=4jtqVeRk8i45uB6Vce88P8reMQMRwNTaDj7OWx8+YiE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Sd+HjG3do+tDc9TVIStTiBaOqpRZKquT1h3myjJ+FI99O1rm4oHA3d9D1XrKsZrxS
	 a+XCLHZKP6EjQBr6RfmonsW926jSsVQYOKiumHVge0B1QBoAGBk9J/dM85xS1Upizg
	 aYmT3VEKgrPAuWzLU5OXNo5W9FA1wN2/cNTXV4f4upPEOJO1QgqK9GRkRE3I0k0SDf
	 Kc2OrZ+0fCexidUtwjT5TqDGxAGJRQVSYW+85gMkDZjmE7gDcCVL0BeOlBMTWow3zq
	 hLK9AxrwrOgGx2fZl2Nk0MX1vlPWxNQQemV89ERFaTTRiQ7bszywKF6LQm6y0uv4yL
	 Qm9BxdUttSLxA==
From: Sergey Bostandzhyan <jin@mediatomb.cc>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sergey Bostandzhyan <jin@mediatomb.cc>
Subject: [PATCH V2 2/2 RESEND] dt-bindings: arm: rockchip: Add NanoPi R2S Plus
Date: Thu,  1 Aug 2024 17:57:36 +0000
Message-Id: <20240801175736.16591-3-jin@mediatomb.cc>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20240801175736.16591-1-jin@mediatomb.cc>
References: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
 <20240801175736.16591-1-jin@mediatomb.cc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_105906_521672_66CCA6E5 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the NanoPi R2S Plus variant, which is an R2S with eMMC.

Signed-off-by: Sergey Bostandzhyan <jin@mediatomb.cc>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..e3121d4eba18 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -216,6 +216,7 @@ properties:
               - friendlyarm,nanopi-r2c
               - friendlyarm,nanopi-r2c-plus
               - friendlyarm,nanopi-r2s
+              - friendlyarm,nanopi-r2s-plus
           - const: rockchip,rk3328
 
       - description: FriendlyElec NanoPi4 series boards
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
