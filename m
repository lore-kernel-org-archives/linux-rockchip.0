Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B228CD8CB9
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 14:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UugMXZOcY09jXCoZPYgvL1P6/FMoqOYUGnErKA9CmWU=; b=AlCqpo/ghnRixX
	gYXs+Ieo9w52kbnOKhmsa2XrChz1ay0vq9dP5gzprGJ9k0yfjIpKKNKwY39WHS7Y3sbwjY2fZVy31
	fm7WkrHFOYYW15PwbZCXfhuwwNbXzvsgN6THt0Mc5ezkbcdItkWLAatnVomnUEBydCSEa44Fr31M7
	4xPB6ZvDNuLteSEDdg/rgSkuzqCJzjHznl0EZ4GmcP6HEe5za8rnlcVBEnWcgQmmTlbQHCdKrkWk+
	OHJz1Byfs2WKZTFTv3InqyGV5m7gui4umXX2vA+INLtvTuL0XrpYg1eyFX2SAqGMNUfqwqxWp2yZW
	WrwJSvjTFNVT95X8EmLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXJoQ-00000007rUH-0EhG;
	Wed, 10 Jun 2026 14:21:46 +0000
Received: from fr5000-r.dnsiaas.com ([92.42.104.18])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXJoM-00000007rOy-3Jx4;
	Wed, 10 Jun 2026 14:21:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=superkali.me; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=JAu6Ul/ODruu5/T+1v02MmQ3DEE6tSOAxC8Avg98/e0=; b=LwR53l2DDl3h3OEjFM9fpyhnxm
	1oK7VV0Ebo8TIQxkNvtHSX7NNvmjLo6e2asN1SVlEBf5AFuGIvu9dpAet1GI+TxA+ovFes2kdRThR
	Md1M+VaMNG/5dJ6noMknnLV6BRAadvbDZNLxQbX+DpBqnMCEfK9jMRjdod58byutAwaw+3YnCqcKL
	gmrrd2RHGM/UveKXbnoREo74GY33lbBH5+2IaencvbRfjRQDNhAfTJiIWIVFkwGmaEUrQC0YNhAHE
	L/AB6lwhIo6eqbtoewFqwOwg0japnH+s9fdDtZnuhjQyPlEwmPYAkN2egOiVe9h+BpUgiQ6NRWL+W
	FRhksI/g==;
Received: from [81.57.40.39] (port=46646 helo=vscode.iliadbox.lan)
	by fr5000-r.dnsiaas.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.4)
	(envelope-from <hello@superkali.me>)
	id 1wXJSO-0000000Clj9-1VTA;
	Wed, 10 Jun 2026 15:59:00 +0200
From: Daniele Briguglio <hello@superkali.me>
Date: Wed, 10 Jun 2026 15:58:58 +0200
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add youyeetoo
MIME-Version: 1.0
Message-Id: <20260610-yy3588-board-v1-1-4bb7176b6826@superkali.me>
References: <20260610-yy3588-board-v1-0-4bb7176b6826@superkali.me>
In-Reply-To: <20260610-yy3588-board-v1-0-4bb7176b6826@superkali.me>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Daniele Briguglio <hello@superkali.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781099938; l=907;
 i=hello@superkali.me; h=from:subject:message-id;
 bh=kXK/54ULP2Lb77CepgkuzvBpvSOu/WuOZfeeKMAjx18=;
 b=EkxE0T53cM7PeMOKfu+Ex9F8rM+N6uZvjL3ZF8/6lI2Ut3eYR/u8HPE6KRdqfpe0ijh1o+nay
 11kM96TfbqhCwbttEcAcdsv9tA6uaWJny2wG10paLkfDgjsx2Y6nI+V
X-Developer-Key: i=hello@superkali.me; a=ed25519;
 pk=5tynRWQdL93CDcapJ73FkcCRY2PeBOJOIAoIhRig53U=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - fr5000-r.dnsiaas.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - superkali.me
X-Get-Message-Sender-Via: fr5000-r.dnsiaas.com: authenticated_id: hello@superkali.me
X-Authenticated-Sender: fr5000-r.dnsiaas.com: hello@superkali.me
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_072142_994018_93480327 
X-CRM114-Status: UNSURE (   4.66  )
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

Youyeetoo is the single board computer brand of Hong Kong Cybodev
Tech Limited.

Link: https://www.youyeetoo.com
Signed-off-by: Daniele Briguglio <hello@superkali.me>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 28784d66a..c0d05ba73 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1915,6 +1915,8 @@ patternProperties:
     description: YSH & ATIL
   "^yones-toptech,.*":
     description: Yones Toptech Co., Ltd.
+  "^youyeetoo,.*":
+    description: Hong Kong Cybodev Tech Limited (youyeetoo)
   "^ys,.*":
     description: Shenzhen Yashi Changhua Intelligent Technology Co., Ltd.
   "^ysoft,.*":

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
