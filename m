Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F81AC25B4F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 23:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2+jFL75Rb1df1x+Kj8ud+bqr03xMu1skjYKWeovc0M=; b=jmtq7Bhj7JWVVA
	XdfpT8KrOgF2BC53qSXmgICvnottbvrt9zPmsy2W3B7/jiNohjSeD/JO6/BwJZY67NkiQLBekIWnK
	1xImHl6zKvXn1wMmfVsllGaSgLv4KnLz4w0IGuaGrmnfg2SuHEh4xrx2w3O99KGBZhXY1TPumxUHV
	hCopZaDz3DTpKlAz6gEuW06xEkQ0evA/IWObiqaI/sJQ4HVmfdNKlwYa+5wSnOBnvBVq04CBfhjSd
	ONlSRqXSJgSc6xUIUPZ72egqLEC9UsYLwncamcPNm3zUjrxN82QhphH3A9oqLderAGUF1rP5s9pe7
	K/atFgs7nbZV6o5xWnqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Tnj-0000000D7O4-0VL9;
	Tue, 07 May 2024 23:00:47 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Tne-0000000D7Lc-3SLl;
	Tue, 07 May 2024 23:00:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 120FDCE10C7;
	Tue,  7 May 2024 23:00:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B19E0C2BBFC;
	Tue,  7 May 2024 23:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715122840;
	bh=VyDzfSvgygGoJ6vgcUYx97XIpCc+SJbIDApetEfwgow=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=knJ4GvmEM6d5YJ7Wx3Nqh7G0CIFr64pbuARoobRbPKTKQL7LxBDh2LWPmxqxTpyXE
	 2B8IENtKNg9OqzXsYIeV/2fwmWqudwdhki27OpDkdxHZnhMyw0PFUtmoyCOviTKbBG
	 nHCz+zm8U12wmxbGhYQWAZBJBvR9X0oDAQ6vPOGd/hxegv0lebFlSpkYXqEacgPCrn
	 7xrsDb2iAyEYTiDn/txAB/ebNYGyh5jeYxLde1DjgWi6lCr1roq7z9hQoq2CCxMzw0
	 m8g3RFy9NOg85ehxaOh4mS0C7umtYrY7OiYt1fxzFM7ViVZgKdrYGzqliA1r3Hg9Mz
	 Nz5oZtD+kaT0A==
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
	s.hauer@pengutronix.de,
	cristian.ciocaltea@collabora.com,
	andy.yan@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.1 04/12] dt-bindings: rockchip: grf: Add missing type to 'pcie-phy' node
Date: Tue,  7 May 2024 19:00:06 -0400
Message-ID: <20240507230031.391436-4-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240507230031.391436-1-sashal@kernel.org>
References: <20240507230031.391436-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.90
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_160043_161907_A192E089 
X-CRM114-Status: UNSURE (   8.10  )
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
index 2ed8cca79b59c..e4eade2661f6b 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -151,6 +151,7 @@ allOf:
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
