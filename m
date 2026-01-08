Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0404FD232C2
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 22:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pvihCrVeG7MyK9R9HuqfkisF/b0RoCS/8d8K55R5OeY=; b=t6NGJS6uij93l3
	VmVLS2JIuwAaUUQuPL6WUZMbxNf7XAJ/2OZsKvIE4MkB5iZdtiRY9g5UggDfRsHs/Vq7xKUz5gCSN
	AbRgGXqCuw9Pw2PtBq9aPlzWPZcKJLIs8yfxqizIJFLZVM+iN42q7sjnM39MDJlazc5U2vQNuKD+y
	KQFq6dq8GN+E2HQ8bCw3Sfe0fn1ltGhPP97mBSsWUgw+2Iq0ytCtlfvbj2oFQ8gFBUWgamNd41aDR
	fpIY5mlSqTmqN+2Bv3hk9TlgruEt8ye6orWjloIh7VfBXyyfQi7x73K6gr3QEkDW0qgsGnJargbTa
	eI5ko7kz+XQXEwNR15rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdypD-00000000xdV-0J76;
	Thu, 08 Jan 2026 22:49:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdypC-00000000xdF-1Nq4;
	Thu, 08 Jan 2026 22:49:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7984560130;
	Thu,  8 Jan 2026 22:49:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A897C116C6;
	Thu,  8 Jan 2026 22:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767912589;
	bh=gLUTVZsyrlzlQM2BPw05odFnPxR0Wfu002nPLnUp7tE=;
	h=From:To:Cc:Subject:Date:From;
	b=drfh8mEtaNQj/vzo0dlnRwPecAdGf2qS/KT7xk+Z3GxYlTj5rhR6Fe4X89SGDUYGx
	 9hnar2lvOxLLhRQCDf+PNxyQDqQjpH9Zwvsd/7KoEkNFn+yLyTI1Fr+4+JK9oWGQEk
	 L8xT8kUdH1tVIelIQ4nicr0S3yUAgZvtVVkjisl4vqfg6bSnm0tHAZZM7aeumcWoVW
	 8BSB0yGoknwKIyWBMuRfdDBjegOV0099zUctPq8247OuFaRQ2/JzzDpNS8DZijk/Ec
	 GH/0dCTaV90Wae+gcDlmL2k2nXoK5VRIaaFYV5TuOGBiZU9UaWfNzIpxXJrjM08j3d
	 Om9S15AUKxTkA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: dt-bindings: rockchip-spdif: Allow "port" node
Date: Thu,  8 Jan 2026 16:49:36 -0600
Message-ID: <20260108224938.1320809-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
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

Add a "port" node entry for Rockchip S/PDIF binding. It's already in use
and a common property for DAIs.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
index 32dea7392e8d..56c755c22945 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
@@ -70,6 +70,9 @@ properties:
   "#sound-dai-cells":
     const: 0
 
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+
 required:
   - compatible
   - reg
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
