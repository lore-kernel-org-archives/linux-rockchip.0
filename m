Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19318C282EC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Mar 2025 23:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZisdmDHRi6hVFr+t/rTsx5kVjvGUNSpeY31Mk5LMNMw=; b=DEHRaKgt4M7yBO
	oKpylIf9A81UAeq7CoTLd9z6SwywlwaGT0emNhZh42AgpDGpbjToHFEzZZoX0aAM5pCdI1uOjMmqK
	Tyw5dHWec0DVCczrXpTEtbsJUJRCS350EimjZ86Lu4jwimlO4Etwthd+9SrKWuTvx5wQyVDAwmzMY
	B5+BPt8SXwCFLo2Nev0j9A2du7iQf5VaV06aQbOCwdCvonkE2tE5Mn6x4lBlcjwmpiaqNWqeXHolO
	kQHK8iJVKvxu0MLVPUM1R33ZBb00sBpTaKKEGHS55POBCrFQw5vfkeCwScOvJlV8I1j30btCffGJ4
	MLsa/TyOgghhndV6DG2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuJa4-00000004Ak2-3YUT;
	Mon, 17 Mar 2025 23:09:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuJYN-00000004Ab9-2kZt;
	Mon, 17 Mar 2025 23:07:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=nmukJGEcFv9r/hN8K3jj6fx3Zft2B1RO5TKA4ICgHAU=; b=bIQ9ynzE2K9UrrP3fcqe2KqcGh
	91/ngfyX2g+k9cxa5GOcQPrppAalXXZE9huISMNPCVnFwu/WuwtOkwC+iKiF7mJWb+MXhOYOpWVOf
	GIXgy0izXRNlxtC1y4HZhMV52mnCw9HTtVh3PtQbEQIfdeuiPyCBSa5QsZhYtnF56ssVWiiu2hU+P
	0xRseFW9Su+t+cluilyZ/VyQxgnaqAxmJC1GKErRCcqR3Kl8IKH0SmVU15urwK826V8NmuDEEnbS2
	4CL/n3DSXeLm/gKiIaasL2PeY8uS3SRut4XayPS1K/L34MelxgcbjTGlP4gMD/ZILbysE3Cf24taG
	Kwlo/i2Q==;
Received: from i53875bc6.versanet.de ([83.135.91.198] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tuJYG-0001ae-JL; Tue, 18 Mar 2025 00:07:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: lee@kernel.org,
	sfr@canb.auug.org.au,
	linux-next@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] Revert "dt-bindings: mfd: syscon: Add rk3528 QoS register compatible"
Date: Tue, 18 Mar 2025 00:07:05 +0100
Message-ID: <20250317230705.932808-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_160727_694746_95BEBB0B 
X-CRM114-Status: UNSURE (   9.89  )
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

This reverts commit 19a634195c1abe498798b564cd6b81e6dd4533f7.

The dt-binding addition adds the compatible to a syscon (a mfd) and should
go through the mfd tree. And it did, and is part of the mfd tree for 6.15
as commit 7f3e3e7228bb ("dt-bindings: mfd: syscon: Add rk3528 QoS register
compatible"), with all the correct Signed-off-by lines.

But of course having a commit present in two trees creates new problems.

So to prevent issues during the merge-window, revert the variant I
accidentially applied.

Fixes: 19a634195c1a ("dt-bindings: mfd: syscon: Add rk3528 QoS register compatible")
Closes: https://lore.kernel.org/lkml/20250317144507.0938757b@canb.auug.org.au/
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
This removes the change from the Rockchip tree, so that only the one in the
mfd tree remains.

 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 2836e4793afc9..4d67ff26d4450 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -103,7 +103,6 @@ select:
           - rockchip,rk3288-qos
           - rockchip,rk3368-qos
           - rockchip,rk3399-qos
-          - rockchip,rk3528-qos
           - rockchip,rk3562-qos
           - rockchip,rk3568-qos
           - rockchip,rk3576-qos
@@ -203,7 +202,6 @@ properties:
           - rockchip,rk3288-qos
           - rockchip,rk3368-qos
           - rockchip,rk3399-qos
-          - rockchip,rk3528-qos
           - rockchip,rk3562-qos
           - rockchip,rk3568-qos
           - rockchip,rk3576-qos
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
