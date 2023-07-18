Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D291C0015E
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 06:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qlVFrVcbKk+KhMWJzc5ex6BrsQfG7uuThmFq0P0ygps=; b=F25by/LpIyCTah
	yaC0meeIb92aLa4sOcT0xDG1NrN+IAjHSY5UEA1pkBKwI9zMMDyPGZDiHo8MneDVix9KufbAdA6Mc
	ORsvtxwCuzj4lmJ9zHsZFHitAg/ngeu0pr3CQEJFdxKDac+eW17ozXqy8BKmGLe1SHKVkLt+QAgyn
	0GgkJEpKZoSDPhpHaB3RPFc/pnvSjxWyiuDp9ApCth/qT/MB1HqW7o09YFQ2NMVamZ7m4bukaMkJY
	YIqlFOVmWRBHa4KYIXxV8lsgXUz1kdG2KbiUq984SZkiD1ZqXc13ZtG0F4oEYoJYTDr8NCq0DslIG
	LzLLoNYtO2YMB13iJ0oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0FG-005Vp4-1G;
	Wed, 19 Jul 2023 06:01:06 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0Es-005Vb8-0G;
	Wed, 19 Jul 2023 06:00:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=/6a+tXFxl3r/5auV72BobxwkqzuxuuRZS1JxLDwxIno=; b=I0wPcYoSI6lyfdwtyaq6PHeavE
	pmm1ql1ZPsuEBeD1A+JwGy3L4S3PjwaTD/6V9oydDptygDZHhTkasFQ1uN9d2E5wJp+OA+Ws7xrC8
	htYr9R6Ns1tt0AO/fRcm/lkciQqhoBNiU81Di21CMqYddmH2hiJo+sNaBvLI2czmC9PU4D4cSzl1I
	y82GYHLt9268sedPUZmv3wKz7U+HA3EcPFzUE1bn5CdLNxmt7c3zNZFuh0OUsFPdiJhTy+Iv199gI
	YMEqf/NR5JcHZYwMvBlAUKNPiL8k6m6jv0M3AGATfIEUK/+Hj+FUPiWnPYKIR4OKNBoR4eU6lkio6
	uoCD/c9A==;
Received: from madras.collabora.co.uk ([46.235.227.172])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLgib-00BLZ0-0H;
	Tue, 18 Jul 2023 09:12:07 +0000
Received: from eugen-station.. (unknown [82.76.24.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: ehristev)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 02201660702C;
	Tue, 18 Jul 2023 10:09:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689671370;
	bh=LRgumKXnd6HM84mjqPVewOO4GAbvkbnnAGnSqH3ASMI=;
	h=From:To:Cc:Subject:Date:From;
	b=LA3ZsJ3+9vkedXXQOHUVhKKF9X4DaU/+cqVSkYFPUm3vYxLoFvr2h7SIFCwNPxCs8
	 BslBR6YzrSsk5soWRFYnoozpj49DLm5bY6IolMENAqGg4o5QOgrThCL8XjDVIrZ8HI
	 rC05vfQ55eYePb4uM3gSwhywP8gYY83c9/hGiGFfgp3I1mxWsKEaogCAtVqZSDXhMt
	 WTFhrm3tmVTR2eqvY1gOhlbmfpbMFQ+wFSfrYzst7sM79t6MaD8p2hs7fyOdX+2Kxx
	 2CvqLHepOq43ZHmJlaAJk5sS2pk23bkKSyOi7W7q2zAw3dCNpf0lD6p2kqu4kxuUpc
	 i49kF5T8bgD/g==
From: Eugen Hristev <eugen.hristev@collabora.com>
To: linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	netdev@vger.kernel.org
Cc: david.wu@rock-chips.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	kernel@collabora.com,
	Eugen Hristev <eugen.hristev@collabora.com>
Subject: [PATCH] dt-bindings: net: rockchip-dwmac: add default 'input' for clock_in_out
Date: Tue, 18 Jul 2023 12:09:14 +0300
Message-Id: <20230718090914.282293-1-eugen.hristev@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_101205_455153_375D879D 
X-CRM114-Status: UNSURE (   9.77  )
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

'clock_in_out' property is optional, and it can be one of two enums.
The binding does not specify what is the behavior when the property is
missing altogether.
Hence, add a default value that the driver can use.

Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 176ea5f90251..bb943c96c196 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -80,6 +80,7 @@ properties:
       "output" means GMAC provides the reference clock.
     $ref: /schemas/types.yaml#/definitions/string
     enum: [input, output]
+    default: input
 
   rockchip,grf:
     description: The phandle of the syscon node for the general register file.
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
