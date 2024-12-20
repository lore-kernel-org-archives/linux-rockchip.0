Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 492D1E7718C
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPn23nCc9Wmy2mI3NqGgIMtkTi18NJG/rElA+D+V+Yc=; b=agFR5LSw8gN8DE
	bxz8ojKOoL/n+2ibdOh3UCIlakUxVy8tdSyNGtZseSxFFzHSbjOXrRSYj/JtDUPo+WnMLRMF9TJKg
	QcYpfbNKgTrxZv0kYCx4In2Jwyh4AlcFU0ohksPCbnp6J/CIwTyQGdTryB0JOttTAl64Aiu6oHI7i
	3kV7ozA5QFevWJAw9szep9uLvVPg9/1+Emjxx6EwsZbPOmGrgJJVRbGA5v32p5ucH2/bz/6KUhn2L
	t7tBR0o9lM6K2A9K2JgVMEwZxIMpXIYD/aLrHJEuE21HT7eQwTiBO/ZAmFEp4z51HT/q0EUk/arwc
	ciGLqXvjwaNffA+JN24A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOayS-00000004jlT-1eOn;
	Fri, 20 Dec 2024 11:15:16 +0000
Received: from mail-m121157.qiye.163.com ([115.236.121.157])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOapu-00000004fJC-38mN
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 11:06:28 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6572921e;
	Fri, 20 Dec 2024 19:06:22 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 30/38] dt-bindings: serial: snps-dw-apb-uart: Add support for rk3562
Date: Fri, 20 Dec 2024 19:05:50 +0800
Message-Id: <20241220110558.3511994-21-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220110558.3511994-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110558.3511994-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkpMSlZMTkoeGk9NQk0ZSEJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3bf434a03afkunm6572921e
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6P0k6Eio4KzINOghRGEpDSA4J
	SzEaC05VSlVKTEhPTUJJTENITk1JVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFDTUo3Bg++
DKIM-Signature: a=rsa-sha256;
	b=MaoTRwJpXxZJM+OnSrErtGCjfU0bVBQ1xNS/cUJC0S4gYLij2eaB09DKd3ndOBHmrK+IAUTP+JfLINxQLHnfp1xsgX8/dPDWm84fHzCs0WV9ovH5XoSLW5ASVGDJQaen3uAGe44XBfYpbDiVPFbv2yrn1hqnFN1BOTrrOjx+Jjg=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=SC/+q7+TMFOLA9J8HdsFPgUV1sagtQH1KhW5HSsaAWU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030627_009447_A6DAB67E 
X-CRM114-Status: UNSURE (   5.54  )
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

Add rockchip,rk3562-uart compitable for rk3562.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 1c163cb5dff1..1c16ca3b4e29 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -51,6 +51,7 @@ properties:
               - rockchip,rk3368-uart
               - rockchip,rk3399-uart
               - rockchip,rk3528-uart
+              - rockchip,rk3562-uart
               - rockchip,rk3568-uart
               - rockchip,rk3576-uart
               - rockchip,rk3588-uart
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
