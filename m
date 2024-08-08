Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9A14C52D7C
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 16:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=49YMm+lFkvneP+MGEdLPDGzU4TmmsSiVCcvEks187GA=; b=ORRWQQm/R2z5EO
	pUAM7CYvc/nwBKI5Ww9YcSRVw9PnkGwVbU3xr8A5xKg30TYxgvOaPaMV+M6lNw7ewoKEbfUmqrVX/
	28pVaWxnIznAJ8jiHqE9WO5a07X9oy1rttCwa6sHq2wiARXpjgemju/n+1JqOSrqUELW00OcJlsUn
	l3dC7xz1am5NesKld+Wq2hoeP3dRdqnNHF4WXJNE+7NBs7J/9e7l8taqWdCTKIlMGOjbByP2/FFVu
	gIQUUt1I8rJzgUhUDbuaWlFD5D8RTW/aEbXSBgMKC2PEy7wUWVa+TubcRYrRqy7JR4udbIMKU5lOu
	lu5OSkJSBlcpWEB26jxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6Bk-00000008yQ8-1Tpd;
	Thu, 08 Aug 2024 16:40:32 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6Bg-00000008yO2-197P;
	Thu, 08 Aug 2024 16:40:29 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723135219; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=AnEjyg3ggxwShStkquPsrgDgsnpQacjFtJjrcEE6qhGiIrWHjJCwE+/YndTsDtbUIYR3T3QYZI8B79rTFTHNLyHFV/njdpcpV4lyBcBJd8O6o/EuGSzVXVhUvV0RiJH0ymXkc+thnqkRUuYTHRs+QNCO/5EAOcsI2ASbNIxfXNw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723135219; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=bdUzFuKbic7rPYPLWkIazMcJN2hRSQB+Ihi+XRM/cZs=; 
	b=US+LJSCGxkKpCPQcgApNc1kzmOMdo9/xV9ktqgbmFkCU0+aTKS96h4RCXWtCOaDvSJKZuSZy6heS/d9p7JCJzjj/tDgJiPhznoaYf2LNgep5UFKMYl4dPe7O/D547lOjDBnivpXAhJ6e6aKHioZM8+AUrlNcWJz2QD9TExzExog=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723135219;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=bdUzFuKbic7rPYPLWkIazMcJN2hRSQB+Ihi+XRM/cZs=;
	b=Zb4NWeO0+org2FS7j+yPvz292dmN8s1TJItCEXkvC7/+R12pZuQ13s9zFaEYm708
	sH1hKBKFPg6nwFmDhOkRSSDCRSwJkXegvoUnuILs6jvWdJWPR3WCc4LKc+jO7SqvV8s
	fuFRlTSB1EI8wHhcjF+ANpR5kHRfPppwyKhrNt5o=
Received: by mx.zohomail.com with SMTPS id 1723135217645171.9916187293254;
	Thu, 8 Aug 2024 09:40:17 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v2 1/2] dt-bindings: pinctrl: Add rk3576 pinctrl bindings
Date: Thu,  8 Aug 2024 12:39:55 -0400
Message-ID: <20240808164132.81306-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240808164132.81306-1-detlev.casanova@collabora.com>
References: <20240808164132.81306-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_094028_384263_2CC59169 
X-CRM114-Status: UNSURE (   9.06  )
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

Add the compatible string as well as the optional rockchip,sys-grf field.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../devicetree/bindings/pinctrl/rockchip,pinctrl.yaml      | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 20e806dce1ecb..cd527ccc9e6bf 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -45,6 +45,7 @@ properties:
       - rockchip,rk3368-pinctrl
       - rockchip,rk3399-pinctrl
       - rockchip,rk3568-pinctrl
+      - rockchip,rk3576-pinctrl
       - rockchip,rk3588-pinctrl
       - rockchip,rv1108-pinctrl
       - rockchip,rv1126-pinctrl
@@ -54,6 +55,12 @@ properties:
     description:
       The phandle of the syscon node for the GRF registers.
 
+  rockchip,sys-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle of the syscon node for the SYS GRF registers.
+      It is used for i3c software controlled weak pull-up.
+
   rockchip,pmu:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
