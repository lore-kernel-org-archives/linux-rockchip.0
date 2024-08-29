Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 523F5C87FC3
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 16:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LVaCtHRhp4Ao84z9TS0mNKMiCqxydPYmEkpdXMAnUw0=; b=DhahzoOW1dvynq
	wODf4qlcOpXirwqYSxkdDHQJxtBqcnMaZmHYcdRcjoRxwrt8C0UBQtuyXETwnQS+G3NJ4bw0wTWw9
	6xt+w2eZC4qzPqMjzGfi7MeqT6o7UgBlGBhAl8E6dUjOesW3wD1I2SJIq9hNs2o16+aCAC4tDbQ5Q
	ofEipYQEMqMkY0cHtIfDQEgVVqCjM8PAqgvqZW0dc/7Cgpgi/cgnsBdoe4liytt6rk8yAoCtZTluI
	8ANiKQXMI0j7GOagLhkvm1HSrXubDxGuxNfcR41RZBUj1vPX2oEdT2Z0fOPGgwlDXcFCxqPFB3e2+
	n4IOGx6AzRD8KNwMJyQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjiUt-00000002wY4-0Rqk;
	Thu, 29 Aug 2024 16:59:47 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjiUq-00000002wXC-1atR
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 16:59:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1724950781;
	bh=jC0Ih0RsWMxQyauAHR0Kk/LIzSjf9fHkPJzL1gcEs/o=;
	h=From:To:Cc:Subject:Date:From;
	b=qjva+bfRaR2i1mVhXNcWL2ScQvPvnOTkY9MvzONRULs1NpMZmNWRXu2RGEmpLRIt0
	 bpPkZgNFdx47KvXY1T6AHQEWAxCsMhjWGESYyMEV8OF5McFsvusMO7Wl1G37i7CWxY
	 pkC8zQ3mKwt1pvT7eDbAMd7LVYu6nvVOptaEFi9IH6PPBMBFR4vgPJC+8oNbxYI6sG
	 zKWj0qTebohaWOaUy7aIPGlqnDJ/lMKypB8Wy/5xM0aQSmmvuxWSerz6lbW+ac64W3
	 LbwSXZV91XK2r571XiznugbwwxT3qvbaxmsdCLqZ+RsJYdEEtCWNOvhQYzfka1oEqO
	 BgbgRCaM1XfBA==
Received: from jupiter.universe (dyndsl-091-248-213-095.ewe-ip-backbone.de [91.248.213.95])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2015617E0E81;
	Thu, 29 Aug 2024 18:59:41 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id CAB754800A4; Thu, 29 Aug 2024 18:59:40 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 1/1] dt-bindings: clock: remove assigned-clock* from rk3588 cru binding
Date: Thu, 29 Aug 2024 18:58:05 +0200
Message-ID: <20240829165933.55926-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_095944_585763_0F68C492 
X-CRM114-Status: UNSURE (   7.70  )
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

These properties are automatically taken over from the common clock
schema:

https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/clock/clock.yaml

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/clock/rockchip,rk3588-cru.yaml        | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
index 74cd3f3f229a..4ff175c4992b 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
@@ -42,10 +42,6 @@ properties:
       - const: xin24m
       - const: xin32k
 
-  assigned-clocks: true
-
-  assigned-clock-rates: true
-
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: >
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
