Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10F8DCD1288
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Apr 2024 20:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SvyQf+DnHERoTmuZojdT/yCuKi9Sj29B2rYYUjDnFUY=; b=W1SZWJ57K+Z4wA
	JeLXyXRqkuyJwnYuQeln3Nj2bpg96yhZURRZbiB+DV0BfTVjYFuGXv5YWn5c++2k2FIlrIUlusRsn
	rqCHkVd1nYt5hHZIH2ArwrSqdEUdc3GR09o0JF2VQ8O77Zft6LQRs3wnY6NkYYqhlD0UgGU5BAe1s
	asOU0DvIpB6cfMWASA4mPYZ8GFs22bvl/at9yrepF7q2WieYKaExxk0AU4MrHsEpxlxVmXYTrHpeA
	xRb5carbztG+ofPcqy/PEDNmefdr32ywTJbKx0w1V0r+im3mUHjNRcSef0DJoxwuyNF5JM6YZIbJo
	X4WYQ0kNzfklTQZVVKgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrObf-00000008p9p-0kX8;
	Mon, 01 Apr 2024 20:50:15 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrOba-00000008p8X-0vpZ;
	Mon, 01 Apr 2024 20:50:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 681BDCE1356;
	Mon,  1 Apr 2024 20:50:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F32CC433C7;
	Mon,  1 Apr 2024 20:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712004607;
	bh=yIx+UD6lf8yLqkorOuqWQO92jCJ0l41vcQ1dggv5Vbo=;
	h=From:To:Cc:Subject:Date:From;
	b=qN34Hj7QQ56j7lJaBBh0SaEaHBKLsMXdc4Nl9FSLl2Xf8KkmhIHUCNs3J3k0q5v3K
	 CMB0Ieixm0jU9EfagM3eZIkRLe1EdqqnTSJI0ElKG5HXC2r6ucMFvfrxCmzM9/xlbC
	 wqbX9LGVdO++0uS/bt5+fBnyhkI2jMfmWrLWNa2oH2lF/PRBKrMaO5P1MfW/d+mp3s
	 vhk31rOSkAri2OXwBg74r38tpSjV56jFsbTX51X541sC++pS+WD2jy8Og+rADBQ433
	 oylCSEqF9S3Xy528AkTiJstErWh6jo/IxU/CNZFHOLVbSMS+CJ+YjHTZZ8oSJ+vw1T
	 7SoFRZTK5rMrg==
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: rockchip: grf: Add missing type to 'pcie-phy' node
Date: Mon,  1 Apr 2024 15:49:58 -0500
Message-ID: <20240401204959.1698106-1-robh@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_135010_464798_C910F7EC 
X-CRM114-Status: UNSURE (   7.42  )
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

'pcie-phy' is missing any type. Add 'type: object' to indicate it's a
node.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 0b87c266760c..79798c747476 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -171,6 +171,7 @@ allOf:
           unevaluatedProperties: false
 
         pcie-phy:
+          type: object
           description:
             Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
