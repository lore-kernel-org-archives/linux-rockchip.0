Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3346C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 08:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wDb5yPD5Qbgws0qhPpru5JNtE+abgf7TKuwCa6pqoyA=; b=iWTAAb+Fnxmlcs
	jcYtG62XNhie4auN00HFF7dTQZSXuORKDtG42NPI9/2JD6GVkULRqz2beuaK9tamM3GfOPy0Ssh+x
	dPjraQEkvCU5ts4UiCzJlkmuSoasqGJkfGOt5OTfUjNmsCefy+nMZZqSDycgCfBji05e14jj0Tf+y
	rkYcEePe9LgOUxrpyhmLHn31iL4x7AEVzHVFGu6O4v+iA6Zdzw+fYW44Tkb1B0YqhlbUIfv2As1xR
	uiROhI3FQ0dej6K4/1zBl1f0NBWYnyxmlnCyBMM20xZWpI1i4K/KrJ2fXPDyEpce3lQ6stP7GGRBb
	I5wImGEhZMKy/TRSOsgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbcJw-00000004QT0-16ZH;
	Wed, 07 Aug 2024 08:47:00 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbcJs-00000004QQD-0GZT
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Aug 2024 08:46:58 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4778kn5F025353;
	Wed, 7 Aug 2024 17:46:50 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: linux-rockchip@lists.infradead.org
Cc: FUKAUMI Naoki <naoki@radxa.com>
Subject: [RFC 1/2] dt-bindings: arm: rockchip: add Radxa E52C
Date: Wed,  7 Aug 2024 17:46:41 +0900
Message-ID: <20240807084642.742-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_014656_345645_9028A0F2 
X-CRM114-Status: UNSURE (   6.15  )
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

Add devicetree binding for the Radxa E52C.

Radxa E52C is a compact network computer using the Rockchip RK3582
chip.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
how should we handle RK3582? as far as I know, it's just an another
version of RK3588S.
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 2ad835f4068e..ba6d03b37bef 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -759,6 +759,12 @@ properties:
           - const: radxa,cm3i
           - const: rockchip,rk3568
 
+      - description: Radxa E52C
+        items:
+          - enum:
+              - radxa,e52c
+          - const: rockchip,rk3588s
+
       - description: Radxa Rock
         items:
           - const: radxa,rock
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
