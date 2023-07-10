Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A0DCC001DD
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 16:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=068XpFTSOOcwv2807Thbr/zSvxE7zrw5uJmkExp6nrA=; b=U9CkBIj89gPVx4
	RkuI//5DjRByzqplUNfs39Ruft/1JoOKyyXSsqcB8GhiVJ4j4ugkRCz7VUPHaN1kC241+OkhKS9Bx
	5oIuaUPXAbcjcQB401dFIZMmz8sdST/zGga2X9/f4Vw0TqH6MvTvju8Rf2HsqTa48QyFS8Gxd66J1
	2GfugXRlsJHqhM1VmQ86fFKotQCCCMtZjdFx2hnOhmtPjQkgwalLVD4ZK+2irIhj8iD7fr0zWcORA
	i74PZ52vjgcyroj2Vbqy5Wi3IhZT6bjgR4yaI+EfnSZdaD9SNkqyu+Pgh7NZtQ7HLQy0j+HR7FR80
	QBnlZVjGbPQ2h1VPvc7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu7t-00CEtA-25;
	Mon, 10 Jul 2023 16:52:41 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu7o-00CEls-0o;
	Mon, 10 Jul 2023 16:52:38 +0000
Received: from jupiter.universe (dyndsl-091-248-189-246.ewe-ip-backbone.de [91.248.189.246])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1B4846607003;
	Mon, 10 Jul 2023 17:52:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689007950;
	bh=ylOQSv56tNARXU7wD+i/Ui9ZZ3urcE82+Sjw9FrSQq4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=keGTQfFufThI6X1Nj0NhxRmUf3CGkZvUaw0dcM9Y75GMRyCbmQxU7JC2O/bOBULrQ
	 jbC0vwhJJPzr3QgNut/hZtFvW3L0NNlFmTQS6LWBB8lSgWNF+a60hYsqaTNFMOV7qI
	 Jn8/H4rBXg6di3KbNwjwqIR5jaVOutcR4M2ZcIAuyfD4FvPVo70inwOX8RytQ74tdb
	 fmfJpxRjzvjxZkRD+MhA+B9jSPhcrH8zIU+wedkXeHpjhhMxXzT/vNwoL8eqs1ibaC
	 F6UBev4Ge08KMDFsfsUZJQ1y8Mt4BbGkuhoUKPq5IqXW2ZACz4tEjp+zdXVjD0PiW0
	 kWy8ZXUoBxtmw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1A84F48058E; Mon, 10 Jul 2023 18:52:28 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 01/13] dt-bindings: vendor-prefixes: Add prefix for belling
Date: Mon, 10 Jul 2023 18:52:16 +0200
Message-Id: <20230710165228.105983-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230710165228.105983-1-sebastian.reichel@collabora.com>
References: <20230710165228.105983-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_095236_446321_2CA6B0E8 
X-CRM114-Status: UNSURE (   9.34  )
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

Add a vendor prefix entry for belling (https://www.belling.com.cn)

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index af60bf1a6664..c80a866477e4 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -190,6 +190,8 @@ patternProperties:
     description: Compass Electronics Group, LLC
   "^beagle,.*":
     description: BeagleBoard.org Foundation
+  "^belling,.*":
+    description: Shanghai Belling Co., Ltd.
   "^bhf,.*":
     description: Beckhoff Automation GmbH & Co. KG
   "^bitmain,.*":
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
