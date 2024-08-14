Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A57D4C52D7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 17:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDsVm6e74nsMOIffP0ZbUS/pf/5sV4iSWDMy4gEbFLg=; b=SOZ01cPvKCuFEV
	Zy5OyH+t8X/LoMaLu8P4zKGKoiZHotPHXfAXJcCsFNYT2rZ1uHhFpFNZnsgpWBCONfyHImIgzNKqH
	m3kLObRIg+Zz7x78dUgEx7rQAQSFG//Z1IMmiVZQoACW3E9o5NlNzQPC2+seAQBCP/8sTqW569HCg
	45m1JvfK3qAWHyLS7tZol7tlwu11L3bHOxjoD7PZZcFtQa81oanauafH7p+k/6yhVzf1hE+KyPx6v
	8sFbWC+iJ1qbvdgeGcDsErJ8nKF0tFtFJAdBnnDAwdz4rj4FbuJ7zS1/81T15xmbGhwzqv6bzSoUn
	c9b/IOqlXaqc3ep+bQew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seHQ7-00000007lmi-20Y6;
	Wed, 14 Aug 2024 17:04:23 +0000
Received: from xn--80adja5bqm.su ([198.44.140.76])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seHNj-00000007lD6-2uxV;
	Wed, 14 Aug 2024 17:01:56 +0000
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id 77AD840460D0; Wed, 14 Aug 2024 17:01:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 xn--80adja5bqm.su 77AD840460D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mediatomb.cc;
	s=default; t=1723654877;
	bh=FhHzZ7Fofg7D9EyPQCAwN+Azjn9o2X8l0uUXnvwgdA0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KtR4RYZjwnDWPF/ssvHdl0xyQzyTKC83HYw4xaa0GPlSKthQKyIXpLCpO8cqxExYY
	 HiKxh17wsBAQ1xVvyvLN8fvDVZaAJpo8VnQx+qtM3p0IRlS0taUU2VZ4ir8Qo6es8r
	 5x4gVUbMyCmBwqwH99pkaEIbDaCDhi07wBY/1XmPZGAUu6QewJYwn1CpVcj0WeTeQP
	 jqKUno2sKWARSK/CCbUuB5+aOA6PXn5yhHNyKToU5NTcycoH+mN/UjzSZAlox4WErN
	 vI/LP9mQxm8Z1pEB5qJzEN9GpChczs0RlL458/2awFng1uWu0Ch6xTY8Sdenj7o28l
	 sudT/0euU3WDw==
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
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add NanoPi R2S Plus
Date: Wed, 14 Aug 2024 17:00:47 +0000
Message-Id: <20240814170048.23816-3-jin@mediatomb.cc>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20240814170048.23816-1-jin@mediatomb.cc>
References: <20240814170048.23816-1-jin@mediatomb.cc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_100155_819891_B64FD313 
X-CRM114-Status: UNSURE (   8.41  )
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
Acked-by: Rob Herring (Arm) <robh@kernel.org>
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
