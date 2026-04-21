Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96B7CF5A8DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Apr 2026 02:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cf19z2KQzzB8OegPM6dsjDim/vCULgwphCJsIb4/njc=; b=F5MUnxYmaLL5Z/
	+/Futk9wydb4nf1dcl7za5OXTLhrpbxpz5k7yO1ZoQSiwaESJCLBPYxWJcUM+DXFz2NME0Ax5O2Qr
	8PEnhKRjlqooLaBp7xCayCqotJy6/LwNcm+4fmhy9q/F0yLU6+Wx5xB6ELshhyI/uytSEWgEPW986
	7hk1U0IS/IZrFTGh5A2tVSJfDOsmV7FWzOZLPvMaSguPrvJvJ0TszDMt+ovEoDVkPIZbcbi5NA79f
	/ctURvHHMGio4Yzlvcnb095vx4xx/Ut9ZLYz5L18ian/iGRyjnmDdHDshWLkOpJTssaKxQRtzANvh
	f5dgdJSZUjShHCY/UNgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF18t-00000007xTj-3v2g;
	Tue, 21 Apr 2026 02:47:15 +0000
Received: from mail-m15572.qiye.163.com ([101.71.155.72])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF18r-00000007xSH-0BLB
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Apr 2026 02:47:14 +0000
Received: from localhost.localdomain (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3b7d2085b;
	Tue, 21 Apr 2026 10:47:02 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/2] dt-bindings: mmc: Add cap-aggressive-pm property
Date: Tue, 21 Apr 2026 10:46:48 +0800
Message-Id: <1776739609-122962-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1776739609-122962-1-git-send-email-shawn.lin@rock-chips.com>
References: <1776739609-122962-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9dadef1e0909cckunme87b03509c05d
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZQklOVhodTkxMGEhKHkxMHVYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0hVSktLVU
	pCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=AfpZZdii6j6c4T5P0EnlHgLFthxg4SGqV5+dOZqVWWXhDkFcd6eBrrCUgpPzO0zybrnV3ZWOL6ih+iZo4saUa44f4DLE6fxnCJCtTgthrEBtaMUdi2evnegsNTSQ+TYDsViXMMo8p025TlwDD2PtkYBE048dlSQZTM2wxZapDls=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=dVhwfaRaNvF279kTgGjazKzy0rZD3rGMfZq1ez2Ru0I=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_194713_267118_A5311C97 
X-CRM114-Status: UNSURE (   7.66  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Introduce a new optional device tree property cap-aggressive-pm for
the mmc framework to perform aggressive power management strategy.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 Documentation/devicetree/bindings/mmc/mmc-controller-common.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller-common.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller-common.yaml
index 3d7195e..3c3e5ce 100644
--- a/Documentation/devicetree/bindings/mmc/mmc-controller-common.yaml
+++ b/Documentation/devicetree/bindings/mmc/mmc-controller-common.yaml
@@ -177,6 +177,11 @@ properties:
     description:
       enable SDIO IRQ signalling on this interface
 
+  cap-aggressive-pm:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Enable aggressive power management strategy.
+
   full-pwr-cycle:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
