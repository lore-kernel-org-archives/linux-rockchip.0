Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74532E7718C
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7JaqCNWxoWCbgs1dGl/gcq+35dkd+ZfEdhoGsASG+0=; b=fDpD+1PZc42/Sx
	3x4YbQOWkmsu5qYiQ3EjtWE/QUDd4u/XIMhjt0yWkkPJq9E3qBUc1jfNiso7L+VCJ2Fm+kDEei0Lq
	zVVg9hX3VqdWJabaXt7hG33HzRPTVEPEue5dhvfOVMxOeu5peObYP7zqR/Af9lDq3cFwp/E2tYcmo
	ngsUMnEjdbxmbRf1w7ppj/yLWXLTXxxHwOxu+9XcG4LB81iSAPADsS9qrzjIkP7xevpcF1+WAs2yX
	iFs55xjGfBQvWOmRJ4DWUZaoNQ3bv2eC15DWHrPnR48Zxh0fFVMs5aKn308Cjwb7YD2dBOYYlT49a
	eCaUr+ud3oye8fiD14kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOaxz-00000004j27-2V6r;
	Fri, 20 Dec 2024 11:14:47 +0000
Received: from mail-m32122.qiye.163.com ([220.197.32.122])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOapd-00000004fC5-3AFT
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 11:06:11 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 657291d2;
	Fri, 20 Dec 2024 19:06:06 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 10/38] dt-bindings: iio: adc: Add rockchip,rk3562-saradc string
Date: Fri, 20 Dec 2024 19:05:30 +0800
Message-Id: <20241220110558.3511994-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220103825.3509421-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh8ZH1ZDTU8aGRlNHx9MSk5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3bf03e903afkunm657291d2
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pz46Syo4HDISLgg9CFY6SBYs
	NQMKCjdVSlVKTEhPTUJJTE1MSExMVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKS01INwY+
DKIM-Signature: a=rsa-sha256;
	b=c0yGiXLPf+OdYv71tVTuzFQGUZ3U3dVYfyfhpG1HZweW+YPbbACxSYUNNTvW9D/O6DuT5+9pBBKG+MmWNkzdcg05EAKuLoCKXeC4hlCurUK42Lp8ngRkTl0/H62kdzp0MuQ3IjXFpmmT/IsnyGfTTU9MIj1NDn4/dDOddDczZF4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=YQ0B+UF6z6qRHlvIZAjak6rQj1AlbRw5Fkx/l4QLEYs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030609_986481_71F2854C 
X-CRM114-Status: UNSURE (   5.24  )
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

Add rockchip,rk3562-saradc compatible string.
The saradc on rk3562 is v2 controller, with 10bit width which is different
with rk3588.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index fd93ed3991e0..da8bc6f50a32 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -16,9 +16,11 @@ properties:
       - const: rockchip,rk3066-tsadc
       - const: rockchip,rk3399-saradc
       - const: rockchip,rk3588-saradc
+      - const: rockchip,rk3562-saradc
       - items:
           - const: rockchip,rk3576-saradc
           - const: rockchip,rk3588-saradc
+          - const: rockchip,rk3562-saradc
       - items:
           - enum:
               - rockchip,px30-saradc
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
