Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69A85E7718A
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVDAfw60A+WFXMHTEyXBgK0/uTAGR6Wg0uROaFLRR2o=; b=j3BgnLSA1WK13V
	4gitOxefkSBw6BhXH6TVJbftjwVA1zofOecKMRRDK6Gqmnmk9Ut8Q/q96EZ0QUfbWu1VjhAIun5z/
	eRnm9cjC6pT7Jn2dPYprRKEZjMUEsCmXl/973atGqkZ5a1oCLb2O3OusqVT/SVPT69NeqnZnDdCdk
	5+F1ftSJOIFzAe5d4nhBKajw3aE4KkXuhASQ1Ap2Gxe9aDm2LNjku8umlIdRwJfIO0RPVoeDDZLDC
	ypSpAzgrQZ5unvOkkdqpUz8/jpEWymBKlWrIy/Tt4DfvRr+ZQCxDGQrm81L9fZEvVdIWUuJK6T1OG
	CHDY735Ol3k72/KaDpWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOayP-00000004jg0-0t3L;
	Fri, 20 Dec 2024 11:15:13 +0000
Received: from mail-m127161.xmail.ntesmail.com ([115.236.127.161])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOapq-00000004fIA-3rSO
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 11:06:24 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6572920f;
	Fri, 20 Dec 2024 19:06:19 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 26/38] dt-bindings: i2c: i2c-rk3x: Add rk3562 compatible
Date: Fri, 20 Dec 2024 19:05:46 +0800
Message-Id: <20241220110558.3511994-17-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220110558.3511994-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110558.3511994-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhKT1YeGhhDQ0xOGU5NGEtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3bf375003afkunm6572920f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ogw6ISo6OjINHAgSTVYVSAkd
	IjwKCRVVSlVKTEhPTUJJTENLTktMVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFDS0g3Bg++
DKIM-Signature: a=rsa-sha256;
	b=fJK26Ok3cityN+nuVjlbX6w3Eb4fI+Bb3nazLKjey26WLxPGaj/pSubMlbh+exi1CPgfUiItypGPMEPa1yw3IPrc4SdceioEYtYcagk0LTfZVztyPfwYfO1mJVGXMsmib4qls1RtgPflGv3kbW4/h9otd3Q/LzsFKLb9/tgzweo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=oK8MZhIy9hQDCrYX3ctwXllaEqqwUBAv/CPyvTEhI/I=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030623_179694_8D32FE53 
X-CRM114-Status: UNSURE (   5.25  )
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

rk3562 i2c compatible to the existing rk3399 binding.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
index a9dae5b52f28..8101afa6f146 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
@@ -37,6 +37,7 @@ properties:
               - rockchip,px30-i2c
               - rockchip,rk3308-i2c
               - rockchip,rk3328-i2c
+              - rockchip,rk3562-i2c
               - rockchip,rk3568-i2c
               - rockchip,rk3576-i2c
               - rockchip,rk3588-i2c
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
