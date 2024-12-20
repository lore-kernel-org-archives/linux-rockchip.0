Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FE53E7718C
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QXR4f3DRbd7OBfefHUzRJkoRPcZ4/Y67gn5CnQOPv7o=; b=QIVImg95NB++ZP
	qRu8zm3r/DCuDlRnWNXj1RzzN2tnT5DsWZFIk6PUgWCxJ4TOrnuZH8CMW1vZqx2xnPlaaAVgfFBjo
	zAbilEOMDzwGt56WNFceBmqcSacIHfwO0Tdaqz/5ARLzpiv7/ST9nHfyHGhkX5rcEUmtitwbEqCM8
	gsJo7vXM8JE7UBPFZBI3I3OiWyLa7ZJRe2tJOQnzP04tZobgVgYfIWccvGHdLZFdXR+6+eIl4w7aJ
	Oa71BvXB/llguWzh7VWfM+MX1nwEvpf+t7w6kmlQuYZPR/9/wUBIoUZ9H+4dA5g4nTDrZXOY8eHd9
	rWwMIjhDCyeI1k04YktA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOayQ-00000004ji3-1vVn;
	Fri, 20 Dec 2024 11:15:14 +0000
Received: from mail-m127173.xmail.ntesmail.com ([115.236.127.173])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOaps-00000004fIP-0iUD
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 11:06:25 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 65729216;
	Fri, 20 Dec 2024 19:06:21 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 28/38] dt-bindings: watchdog: Add rk3562 compatible
Date: Fri, 20 Dec 2024 19:05:48 +0800
Message-Id: <20241220110558.3511994-19-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220110558.3511994-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110558.3511994-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0gZTlZNGh0YHktCTx9MSkJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3bf3d5703afkunm65729216
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mww6Ajo5DTIINggTCFEhSA8B
	DSlPFA1VSlVKTEhPTUJJTENJS05PVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFDSUw3Bg++
DKIM-Signature: a=rsa-sha256;
	b=ipqWn5jqcpLqTs3NqelOOyq3bA0JrFQE4ML7wQJSH43XZ6W1mCACrpBev07k4QoQoLwbnAig39RP7Amwv4l30jFPZAELotlbYXfnnYGLxjtiaUfu2qNqNCdTgYtdC1+8Cecqo83L9Qody5KYgoYDyCnkuKWVac7KhMWWBVqaXc0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=WraPh4PBObV6nSIgfAOZ+GiWhimRCD9NuXmuuz+81dU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030624_397218_E3CE6418 
X-CRM114-Status: UNSURE (   5.28  )
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

Add rockchip,rk3562-wdt for rk3562.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
index 1efefd741c06..ef088e0f6917 100644
--- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
@@ -28,6 +28,7 @@ properties:
               - rockchip,rk3328-wdt
               - rockchip,rk3368-wdt
               - rockchip,rk3399-wdt
+              - rockchip,rk3562-wdt
               - rockchip,rk3568-wdt
               - rockchip,rk3576-wdt
               - rockchip,rk3588-wdt
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
