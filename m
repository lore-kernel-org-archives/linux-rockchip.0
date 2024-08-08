Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C10CDC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 16:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nINDiBvzVgYzLm0fAvjLOzKqpaKRjiP+5ImeFlvpIY=; b=HqRk0VT1f7rT3Q
	2Wrv0asI0TyMDznLdNaAeoJVwBLyy/aDnFYy7HsDCPt2S/GIcI19qoYlwo32wY24LvvCxXYO8Q4kh
	qeeo2SVLMSjSgOtAYejx/YN+oVzBXCQwThHcqMMTbJytnz3si8UZthCVtfP7mQL82pWBXC/xI7AYg
	zbvT7twR5cQWLD7lLyhUWC8M9uQSyxaX7GPYC1eCCm1cAasx+fIVzVplX4ZlUZgMdZPw6T2jZKtOd
	1cQ0fqdMxxwcqZfXlnvcAwFcQK4F2DEbGwfMmu6Z70MYinOJTiEkKgUsOyQYRiOtDiDuQtuRtxGpw
	HXxLku7U/O4zQLVJSoKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6J1-00000008zmd-28s8;
	Thu, 08 Aug 2024 16:48:03 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6Iv-00000008ziM-0IZb;
	Thu, 08 Aug 2024 16:47:59 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723135668; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=YAEl09JnraNSYxohjFcTxTRvx99kVb98TD3T+bzyZEUD6f6BjoLJ80qLd0NpAJSaAxF8es2RBscusazRhaCsDOqV6Qgj0Jl1cMjHv4zRFBGDrtx3awQn1YY1KtRARwMDCnQwIPvP5X8IsW8wJb9K8XEdVkD7BmYcWj/YMehoI80=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723135668; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=u7x3BBVWbQj9O66a03U8di21WFDenCBnzydCXxuHLKw=; 
	b=HVv2DWChYDU18R/iWwpcwuDaBnGQ8lv8txYGMmElAgg0uJ33RmKfJDS4aPiW2McbivTDFBaptyfX0cSqpR8nwBwQpWG4RzGO9Ig85xJVhDeloHNWszlyxE+rYfrDWpLyvZLutCT5CEYMBbjdPN6M346XEEvVj/1MYDOZhT/OK8k=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723135668;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=u7x3BBVWbQj9O66a03U8di21WFDenCBnzydCXxuHLKw=;
	b=eUeXtWITwa8zubnC+fOUmdVshnafTbqsiYktGgnqFWbkiUbFuvoubyqsG8igT0pF
	adGgdtfE3QpcdpQeiSQ2GmtJqhKjQ4NTKBsqVMebArRWbSuGbzpOTwMWYsFvboROH+S
	szk+XvptbA8PscLdeRiAa7Lz01VxsMU++fFXF0ys=
Received: by mx.zohomail.com with SMTPS id 1723135665925829.4284392419496;
	Thu, 8 Aug 2024 09:47:45 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v2 1/3] dt-bindings: mmc: Add support for rk3576 dw-mshc
Date: Thu,  8 Aug 2024 12:47:15 -0400
Message-ID: <20240808164900.81871-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240808164900.81871-1-detlev.casanova@collabora.com>
References: <20240808164900.81871-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_094757_305875_E92D73A4 
X-CRM114-Status: GOOD (  12.16  )
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

Add the compatible string for rockchip,rk3576-dw-mshc and add support
for the rockchip,v2-tuning flag, a new feature of this core.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../devicetree/bindings/mmc/rockchip-dw-mshc.yaml          | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index 211cd0b0bc5f3..86c986a7adb23 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -39,6 +39,7 @@ properties:
               - rockchip,rk3368-dw-mshc
               - rockchip,rk3399-dw-mshc
               - rockchip,rk3568-dw-mshc
+              - rockchip,rk3576-dw-mshc
               - rockchip,rk3588-dw-mshc
               - rockchip,rv1108-dw-mshc
               - rockchip,rv1126-dw-mshc
@@ -95,6 +96,12 @@ properties:
       If not specified, the host will do tuning for 360 times,
       namely tuning for each degree.
 
+  rockchip,v2-tuning:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Specify when the v2 tuning is supported. In this case, the hardware
+      inherits pre-stage loader's phase settings.
+
 required:
   - compatible
   - reg
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
