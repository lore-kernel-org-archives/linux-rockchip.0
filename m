Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A54DAEB64D8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 21:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQUYPBzaIAnhMsX/3zoGnbLb095N9We75Lhc4rnijJk=; b=TkiKWWFCbUK04q
	l2Y0+KIKlZWpZnBnvIC97VI4bGGYHUZaad95w576EYmau467YxjRUj2KzCadku1YqRhd7OTGTp+9r
	eKEv/a5TbqtjqaX6KB+06I6VSeT5qv0Znry1qfTvuKy9OCpJPI0CVkXInfrWJlKCF3mWUFzgj6Cv0
	98ns/p496lK4xdvsDsNOxROBRHb8IcKId2jaoKxWvaUrH1dPRSf5yCSNkibpAQZnpk5jYtfwiB+Q8
	5Ibx+dtNOcAB/sqREsgnQFDa/Do/agEbpQ5rfWeZn102lXg882coroJm1z4sqVyTY9DVi5ugs+dwF
	xi+hAQPU2KSNylkA860g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAGif-001s8J-2g;
	Fri, 16 Jun 2023 21:10:57 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAGiZ-001s6S-0Z;
	Fri, 16 Jun 2023 21:10:52 +0000
From: Furkan Kardame <f.kardame@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1686949849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rpgjba0IZuDzES5VtB5gyyxLEavJ2pZv7Cqy0ei2qDo=;
	b=GtiLacp23A6iFFbq4RGRoBA9GB5AArd5nWHQsAZEAU3i1kwJEty2l7OOJ1NbVQHyVhBj0P
	rrNwcDu32tL0PjaxcpwDPArmVz2JjrBDLs0677xfkzeclqEs8raDEIEFuoP7xc6KV3X6IX
	AbPKc2miMZNlNLzhflkcuWlpFGAWm1cNgwQErfEkrqzYteTU8k+65CLcJkWDdmRPfOSh/v
	VTn/tECmPKkKTEfG8rZ+P6jRPkXagB15EL84K5+xRUTrVhTNE48FhBwED4+XZw+KbYf4AM
	boe+uVKP2zyULY5vFZu8c+z6UCuawdj93TqZRh/TdTv/9ZIKXoS4aooAhL5f9g==
To: pgwipeout@gmail.com
Cc: heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Furkan Kardame <f.kardame@manjaro.org>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Firefly Station P2
Date: Sat, 17 Jun 2023 00:10:19 +0300
Message-Id: <20230616211020.55755-2-f.kardame@manjaro.org>
In-Reply-To: <20230616211020.55755-1-f.kardame@manjaro.org>
References: <20230616211020.55755-1-f.kardame@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_141051_370830_280AF48C 
X-CRM114-Status: UNSURE (   5.99  )
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

Station P2 is a single board computer by firefly based
on rk3568 soc

Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ec141c937..87b58a56d 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -185,6 +185,11 @@ properties:
           - const: firefly,rk3566-roc-pc
           - const: rockchip,rk3566
 
+      - description: Firefly Station P2
+	items:
+	  - const: rockchip,rk3568-roc-pc
+	  - const: rockchip,rk3568
+
       - description: FriendlyElec NanoPi R2 series boards
         items:
           - enum:
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
