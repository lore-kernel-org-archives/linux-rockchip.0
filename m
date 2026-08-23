Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 144BBC5DF8C
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Aug 2026 12:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9ILHBBFVfgpKdyk+z/a6v7a6oOp9q4GFIyECt0pufU=; b=LE7Cej7eJaKQFm
	jxz53z8bqOGUO2p682ERxQWxkZxdJ03SUBgDEv1GJG6fDNgb2zjPu4UOEUZ+DE/NWiqN3xWlAGdFY
	NsIhK+DHXjBmq4+CUNsZ4McefBT5v8AU7qWNNovBAgkqUzLMBHwtn0GwczH7thC3uj3PGauyGGOES
	r9t4McmsDDtIhWUP0/NNsHPb0tCALlv6D9oWukY/W1LvaM2PbPJ6NWti4ecY0D3mbAopQG4Y5NLNf
	e8qO0ino3gN6Sdmp4z2mTplXyGbCy5M/PpKzAcX0be6/opijcht4/2DDBE/xFciBLuEsdsS9SmvoT
	A44HJUkWbpOLzsm3qndw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wy7RT-0000000FLyE-0O5X;
	Sun, 23 Aug 2026 12:36:51 +0000
Received: from mail.zlab.su ([109.73.193.145])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wy7RN-0000000FLwt-0GPs;
	Sun, 23 Aug 2026 12:36:49 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 35A7DBFD8D;
	Sun, 23 Aug 2026 15:21:39 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zlab.su; s=dkim;
	t=1787487701; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=Xyd94O5ucYyASZOwn/menIsiXveXzi9oR7nKej3n2Ig=;
	b=TF49ASepgpcLcF9HdLr1/hObVNd/CtTttC1CbR4Sk/Q4M0bOqdD61PbIXhaa2IfXAIKuj4
	ITz3UtbRnnpe7ZbAkshx7ULIl7DUqiUqslvox8r8zjDMRcn8gKq/fVwOIqGGUSjebVwM20
	AWkAiaqQjOprwJodnjMTJTNl8DyAtlq8NnESWhZAjVdS4fs0GJHVQxxW3f1Xzoc/bbSt9i
	1CAC42+NcMBtv85IWZ0PKD8VR+1TFS5ypyoOEPULDRAcSM6oEklSiOiiVXXI8nmCjdxDRa
	AOqvMMbPAvq1pO8trRogTO7v3KaHnRwHpR7xRujziFnzr/di7Wsa0Wt/+G+cDA==
From: Vladislav Leonov <vlad@zlab.su>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Vladislav Leonov <vlad@zlab.su>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Joshua Crofts <joshua.crofts1@gmail.com>,
	Simon Glass <sjg@chromium.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2 2/3] dt-bindings: iio: adc: rockchip-saradc: Group single-entries into an enum list
Date: Sun, 23 Aug 2026 15:20:33 +0300
Message-ID: <20260823122039.20831-3-vlad@zlab.su>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260823122039.20831-1-vlad@zlab.su>
References: <20260823122039.20831-1-vlad@zlab.su>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_053645_623810_4E0C4CD8 
X-CRM114-Status: UNSURE (   8.23  )
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

Group single-entries into an enum list

Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Vladislav Leonov <vlad@zlab.su>
---

Changes in v2:
- Patch introduced in v2.

 .../bindings/iio/adc/rockchip-saradc.yaml           | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index f0551d665916..78ec9a33da24 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -12,15 +12,16 @@ maintainers:
 properties:
   compatible:
     oneOf:
-      - const: rockchip,saradc
-      - const: rockchip,rk3066-tsadc
-      - const: rockchip,rk3399-saradc
-      - const: rockchip,rk3528-saradc
+      - enum:
+          - rockchip,saradc
+          - rockchip,rk3066-tsadc
+          - rockchip,rk3399-saradc
+          - rockchip,rk3528-saradc
+          - rockchip,rk3562-saradc
+          - rockchip,rk3588-saradc
       - items:
           - const: rockchip,rk3506-saradc
           - const: rockchip,rk3528-saradc
-      - const: rockchip,rk3562-saradc
-      - const: rockchip,rk3588-saradc
       - items:
           - enum:
               - rockchip,rk3576-saradc
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
