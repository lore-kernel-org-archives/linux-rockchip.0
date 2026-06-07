Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7520BCD8C8C
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Jun 2026 10:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hcGQCrPavF6bKMZNs6nYvpS3NDu7hQj2yEppGqgnFgk=; b=G8krIu+yA1fysz
	5+GwaQvsU7WPwS/kYdT3HyLEyV8PUF+/D9yXSgoFXzn7zLcbw4CJEbvVzMa7WwmgmL+2LyLGEeNNY
	OrCuOamE0GNA6MqTypd369tWbqzAE53P9dwhi6jXagz+Swoyuufp3IVqHDmPwBzKZQr7CmE/7K+6P
	f1CUdvq/yWU0Bn2gQZMRbLtWqARpmwQ5VNDIN13P2UM5LEZ/vnhaaDRdXOEETkpYfczx/sCaZmnJH
	21BkR+rarYMgOr7Z2B2Ge8g9kVmIAH69NKJQ+EpOGhc/iHgiA0Pgo/sCvQRK56WgXGgH3Y0/JaVSh
	RpRAyBzmL8iWbYKTND6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWBEI-00000002CoB-1MCQ;
	Sun, 07 Jun 2026 10:59:46 +0000
Received: from out-180.mta1.migadu.com ([2001:41d0:203:375::b4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWBEF-00000002Cn1-0q3I
	for linux-rockchip@lists.infradead.org;
	Sun, 07 Jun 2026 10:59:45 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1780829977;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Cyn/gncd3DffYsVl4KwtQeIdhBYRq+sThUlTyYAeBgc=;
	b=LXI4zFQj5lI2EkFPr/3bEMs2TuWU6dX/gPvUAJWablbt5d485LkPlb9RmExCCrodK30qEZ
	KGVBUbdaQBmHAzSHIRYER06B04/P+Hiyj1MxWBO+JK4xDewI/3cMPjlCIjKdZE13rKZNF9
	LxTK2YJXfVSbp1HkxHhntpcFHYzII22+hOxyJTMCM4ioQY1nDePhBXJa5MTCy63mSvNJ+I
	MkBjikAIPgJ++QngdmOj8gm/cdIfyc61HCvkDJEhqMjMilE4fOW58YxwxHUNG288FTep2o
	o8Tbg3vMu0aqhr+Mmk2lJPb+pNPwyqNOFo+tJMRH53tPl/+smEcQ9gkLmyDwMg==
From: Diederik de Haas <diederik@cknow-tech.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Zhang <zhangyi@everest-semi.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH] ASoC: dt-bindings: everest,es8389: Document audio graph port
Date: Sun,  7 Jun 2026 12:58:49 +0200
Message-ID: <20260607105913.355966-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_035943_774567_C7461EAC 
X-CRM114-Status: UNSURE (   5.97  )
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

Provide an endpoint for binding with the other side of the audio link,
which is achieved via the 'port' property.

Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 Documentation/devicetree/bindings/sound/everest,es8389.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.yaml b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
index 75ce0bc48904..7db84cf11386 100644
--- a/Documentation/devicetree/bindings/sound/everest,es8389.yaml
+++ b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
@@ -27,6 +27,10 @@ properties:
     items:
       - const: mclk
 
+  port:
+    $ref: audio-graph-port.yaml#
+    unevaluatedProperties: false
+
   "#sound-dai-cells":
     const: 0
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
