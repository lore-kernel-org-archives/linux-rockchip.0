Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0C86C43327
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 22:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u6Hk64WYW3glLbmSraNkp239HaRqNyvb/v+oRAZiW9o=; b=o1fh+QPjs916dt
	mrTceciNG/VAEWdemWIQre6g/CrskWIF0qhDibVggf0upODb2AKnaeW0C2qKm40sf71pQkN+zYlUB
	hgemZSL4H4OkM77adzJIlQmBCfqd4UWQxTvs8zjW5A1HFjGR3MX2ev1ngaEkYzz7OumUj04urzbNX
	49yflLGycO7hevsdSvdfQVVCtzRwrMDaqwwXdokYVwb+T2RsznkmS+tSLqiv4bqgfcrIGQGsD+qlk
	lVc+5DurMmokMP9HFbh/EMJhNYP05yYojGx0LnYfNEIS+bbyXLVHmP8JeU5LY0lVPEeAqVM0SeMEi
	/8iX8su92vD2aZd/tH5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfPa5-00000005cJb-46hR;
	Thu, 02 Jul 2026 22:08:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfPa4-00000005cHG-2C7j;
	Thu, 02 Jul 2026 22:08:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E9CA143EA0;
	Thu,  2 Jul 2026 22:08:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5382C2BCF4;
	Thu,  2 Jul 2026 22:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783030103;
	bh=m/UHTg2bhktE5x+v1ieiha7RXNdo7gHve1/yCDswEpk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=rq6fV46/wwgZfEvFIGiryHAj/H51ZNU2ICXPhvxHth9USzdeZFixSdVlFs0YUXlgp
	 uTpongaZxxA6rDpwY1Pw8sRKZN8OlaIG7jX8lNzRN4V50b9kdJLWbWzTqNlYa5gCkb
	 UPXtoD3j4Fz8giDTmSmIjcWELhhwkll8Gx8BlyI1l3w6yI63nW0yNuJdgW8FR/9gyO
	 7NMInrUFUbQMCLYjKXSl/yx9HabgJTe93PZ51LpMo+hOFDoeGeJ5dqKDXnPEZV+4+S
	 Fytaklb+Fsh/M1BzsD1OxbxImVBliYmo9kc0ehquSJr6Cy6hBn9Sl+W4ITHiHsm2Oa
	 a7+nDdKOmCN8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CBFC43602;
	Thu,  2 Jul 2026 22:08:23 +0000 (UTC)
From: Joachim Eastwood via B4 Relay <devnull+joachim.eastwood.gmail.com@kernel.org>
Date: Fri, 03 Jul 2026 00:07:16 +0200
Subject: [PATCH 01/12] dt-bindings: arm: rockchip: add FriendlyElec NanoPi
 M6
MIME-Version: 1.0
Message-Id: <20260703-nanopi-m6-v1-1-8344a1559519@gmail.com>
References: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
In-Reply-To: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Joachim Eastwood <joachim.eastwood@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783030102; l=1070;
 i=joachim.eastwood@gmail.com; s=20260701; h=from:subject:message-id;
 bh=yyZDtPe8JZdirWWm3es5UC1K/bf3oJ/LDw27weSm6zc=;
 b=20B5BPeM4UwmZy4g/eudhf+IEqP0XVy0DmewljekKv8VCNYH5rEUhonHauidtV8dn2omS0I59
 kKvP4D2imY1B7ti0UHq5YXmlWRXDuDeAH2NiR1Q8Uc3U3Yxmkv84TEm
X-Developer-Key: i=joachim.eastwood@gmail.com; a=ed25519;
 pk=ZN/8xWtdYaSd5oEfloYSZ1a+/ri0n0VZqjlEeHlbXFU=
X-Endpoint-Received: by B4 Relay for joachim.eastwood@gmail.com/20260701
 with auth_id=846
X-Original-From: Joachim Eastwood <joachim.eastwood@gmail.com>
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
Reply-To: joachim.eastwood@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Joachim Eastwood <joachim.eastwood@gmail.com>

Add device tree binding documentation for FriendlyElec NanoPi M6,
a single-board computer based on the Rockchip RK3588S SoC. Very
similar to NanoPi R6C and R6S.

Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..6ba512964c25 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -344,9 +344,10 @@ properties:
               - friendlyarm,nanopi-r5s
           - const: rockchip,rk3568
 
-      - description: FriendlyElec NanoPi R6 series boards
+      - description: FriendlyElec NanoPi6 series boards
         items:
           - enum:
+              - friendlyarm,nanopi-m6
               - friendlyarm,nanopi-r6c
               - friendlyarm,nanopi-r6s
           - const: rockchip,rk3588s

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
