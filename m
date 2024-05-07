Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 773B6C19F4F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 23:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Itw/w+FTE94kRCTUAcduF9M3e1z2l+we/p0zEH7vaA=; b=U8puYZ0DKj/wB6
	aKrD/d0P2I6KrqHT8bg37d7DOiGwhEn9VfHDCAFcq+MivAnt61QuQggxWNTyy7p8uCMzl+GXPSL5D
	0AHCV0a6AgQqKihSOg4+0TQ8FTrq9c10hSdum3jqMGLjOCItnMpSye+OEf7ZeSZ5yoU2mcdUOqUgH
	zCBl4cjfMXTBajh5g12vQFS5B/jyuhnNEqCRCH1zv9gLQcxW7SMysQpQhZ3jc5xWpg9uWBgQ95klx
	plzdb2DbjxE/tMwBq9LuJSzXhKWGJx9Kx3F3yUBb6kPyGX236T6kSPFNgazLNIl+qOjiIkGxMESFQ
	IeCG01uozKCWpB7fPPIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4ToM-0000000D7iN-3QfS;
	Tue, 07 May 2024 23:01:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4ToI-0000000D7gh-0fcV;
	Tue, 07 May 2024 23:01:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8AFB961A05;
	Tue,  7 May 2024 23:01:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5667C4AF17;
	Tue,  7 May 2024 23:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715122881;
	bh=rFAC8oNtjUVBchYHdF8+lnywIFKHivJ6mH4y+PqvvW0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dfzDXk2If9DqyP2OSdNXqmdslfPiWI68Fa/0paak/Pd/UU6AtVAbCxCEPwNZOspu7
	 c/IYzE34xVvNlvNrdDvWJiiXdtwTqpUxGA6lVULH+E1msGZaRrkYpx6w4dm49rlBvn
	 NkVrEObqKCLVXmZQ15CVQPkEL0TfOx+0obStFHo9lKs1XjZ8uwAJ92zi7t92Bb37Og
	 ex+o4XkTQY3whNZBcL5nyZJQgme6/OuFwkj46xN1o9tZeK/+ZAZiPWK14wTXD1J1BQ
	 jtWM3lstdSLRAXCEtklXSD0XEzz5MI9qxKSRJ8nRejXnzSTOwbhwyj0R94Tv05JavU
	 /iptvHDfISeSg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor.dooley@microchip.com>,
	Sasha Levin <sashal@kernel.org>,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	andy.yan@rock-chips.com,
	s.hauer@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.15 2/5] dt-bindings: rockchip: grf: Add missing type to 'pcie-phy' node
Date: Tue,  7 May 2024 19:01:06 -0400
Message-ID: <20240507230115.391725-2-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240507230115.391725-1-sashal@kernel.org>
References: <20240507230115.391725-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.15.158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_160122_281944_DFBF6FD7 
X-CRM114-Status: UNSURE (   8.23  )
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

From: Rob Herring <robh@kernel.org>

[ Upstream commit d41201c90f825f19a46afbfb502f22f612d8ccc4 ]

'pcie-phy' is missing any type. Add 'type: object' to indicate it's a
node.

Signed-off-by: Rob Herring <robh@kernel.org>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Link: https://lore.kernel.org/r/20240401204959.1698106-1-robh@kernel.org
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index dfebf425ca49c..8fe31a7083db8 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -141,6 +141,7 @@ allOf:
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
