Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05620ECE564
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 12:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5JdAhlrSnS0QZ92lNr59LdNkFd3WgKygafnlwjJMtQ=; b=eC061KgQezNyx4
	IdSQFfdkK4n4WK8BNO7Z+5tUS4p8BxSLZmpCNhA4gq24mYMne8pnzQUD/bN71/CWRmcQtm1Rs7fqd
	N9dypXboUii0QY8BBmB13FLpWVNzPieSPfLqi2FpRmbnHxhNv3XDOqhy7SYBzmXnGxl1tzqhLnoI9
	1/62LCGzKRs7n2XKwiPDM4cDq7ahcCH/y4V7fxxGknT7vGkZxxfjvasq8BHvpr+S4i156BgVkTFMp
	hTtc2hPmvmuZZeUGfFm9V9NByshSgTgxNbAh/EpX0wcZwBmeMF1JvzrXBWIdZc68VCl+Ujf18/nGx
	hBb3ber3fkLzAFpaLx7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so0Ce-00000005ass-2jvv;
	Tue, 10 Sep 2024 12:42:40 +0000
Received: from mail-m1973178.qiye.163.com ([220.197.31.78])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so0Cb-00000005aqO-0Jaq;
	Tue, 10 Sep 2024 12:42:39 +0000
DKIM-Signature: a=rsa-sha256;
	b=ECJdj/Br97xXwGwqJhcOeUb48oYKMRI1BhrUyguN4lwlcXIf9iM1/LWpn29gu/A2af3eCGKW34VYHaeUwDDFUGmxmaAWgQZFYyK/RxWIAXpKg7n/9GRq2D1wRS+zAY4XAGIH4Qu5aRXk46O1cVG5OE3O+fmD5dtoYOI8/xN3AkQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=iD1gN182oxprUaNdyDfYIXEVbwMZ8+lfcYcnulZdptU=;
	h=date:mime-version:subject:message-id:from;
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id D7CD3100934;
	Tue, 10 Sep 2024 20:41:31 +0800 (CST)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	macromorgan@hotmail.com,
	jonas@kwiboo.se,
	tim@feathertop.org,
	knaerzche@gmail.com,
	efectn@protonmail.com,
	andyshrk@163.com,
	jagan@edgeble.ai,
	dsimic@manjaro.org,
	megi@xff.cz,
	sebastian.reichel@collabora.com,
	alchark@gmail.com,
	boris.brezillon@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add rk3588s evb1 board
Date: Tue, 10 Sep 2024 20:40:54 +0800
Message-Id: <20240910124055.3981648-2-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240910124055.3981648-1-damon.ding@rock-chips.com>
References: <20240910124055.3981648-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRlJH1YeQkpNQ0gZThgfTU1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a91dbf417f303a7kunmd7cd3100934
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PAg6Exw*KDI6ESs8DQJDHBBN
	LhVPCS9VSlVKTElOQkxJS0JISEJJVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJTEtONwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_054237_386469_AABBC4F4 
X-CRM114-Status: UNSURE (   6.54  )
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

Rockchip rk3588s evaluation board.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..4f6e24fcc765 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -942,6 +942,11 @@ properties:
           - const: rockchip,rk3588-evb1-v10
           - const: rockchip,rk3588
 
+      - description: Rockchip RK3588S Evaluation board
+        items:
+          - const: rockchip,rk3588s-evb1-v10
+          - const: rockchip,rk3588s
+
       - description: Rockchip RV1108 Evaluation board
         items:
           - const: rockchip,rv1108-evb
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
