Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFF94C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZdCYMqek7RLdsxdhBO+PnWZSaiIT0E4ybW0vTMdUX94=; b=wwXPsxe6M+y5Zq
	7OQz2hsNOe/A96b870CimigxrU/blBIIL+zJJkXnVAopZaQtMut9qSs+nraMwJvez8CaHK3fPn+3u
	Z+KRKJLbLpnkjbafHKqeRqoGamjwVne1xCQ8wLllNLV0el5ShQZF7NYWHzBl9Mi0hGrbIigKCtNvf
	dWL2RF//QOQQoy3MiEucAmZy7sVMCC5grNV0REjIAUpu15fIYCMwHfd3BuqBFzgPhV+vBbSJlfgDs
	Gi6DRcN2KxMwV1DE8a7usrbJ0SsZ1CFZ8nVsEljY9QHb7moAB6KAA973EtyFiFNbMQgoOkL7QyU9g
	VTCt48SuqLGUwjiqndrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Pkr-00Funj-BU; Thu, 23 Jun 2022 16:32:29 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PkB-00FuSR-0J
	for linux-rockchip@lists.infradead.org; Thu, 23 Jun 2022 16:31:48 +0000
Received: from jupiter.universe (unknown [95.33.159.255])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 78C6F66017E7;
	Thu, 23 Jun 2022 17:31:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656001905;
	bh=sn5EgbuebsC5sj9x597tVnHtLZq99Obp6jUYVfxzKNI=;
	h=From:To:Cc:Subject:Date:From;
	b=EssX3KBCfrGxvxrbPBoNpHrV6gvrQguoeot2m5+BR4zgQYfK+gDwT6YrvOmR6CQtx
	 PSPH8UnwOn4/lARgGLYi8k0A3EXnbg8FNOHtC1RT3MloKdK8Ddtj7w+7aKo/RwWN/E
	 czFvSd6uo1hJ49b7DH6YKPg2Jg2KpKDdbRM7aMBPr2m24zsPiIpQ2wPjLNHpK/7WcM
	 pDrauGnmaOVH1OiW3w+BE1Z5lfU6KmbkAskPGQF5juVpnRNwuE3/2pv+lDr9lYXc3V
	 ARo954b3WFrPhPj1xAZSnizrLB5BmWzj2Kh/oQdYH7GusjolJNokw6VmOpAOMmjZk1
	 3MVWvqFL4Hs4w==
Received: by jupiter.universe (Postfix, from userid 1000)
	id E4A0E480122; Thu, 23 Jun 2022 18:31:42 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Wolfram Sang <wsa@kernel.org>,
	linux-i2c@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 1/1] dt-bindings: i2c: i2c-rk3x: add rk3588 compatible
Date: Thu, 23 Jun 2022 18:31:36 +0200
Message-Id: <20220623163136.246404-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_093147_218866_159DEAF8 
X-CRM114-Status: UNSURE (   8.25  )
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

Just like RK356x, RK3588 is compatible to the existing rk3399 binding.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
index 5339dd4fc370..2f79f6d57e2d 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
@@ -37,6 +37,7 @@ properties:
               - rockchip,rk3308-i2c
               - rockchip,rk3328-i2c
               - rockchip,rk3568-i2c
+              - rockchip,rk3588-i2c
           - const: rockchip,rk3399-i2c
 
   reg:
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
