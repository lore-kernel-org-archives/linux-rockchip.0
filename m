Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF99FC25B4F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 22:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tu3YCheU774VTnda1xJ9AKRw16awTbY4Iz9aEYvRhQ8=; b=kEM0HQZPa6CUmk
	QeVDU964gllDEhyGiveBV8MsiXuU8Dil4wF32jaVuvmDVzdBW3yffez5VqPhxWGR25OuairT0qBZb
	wsoEksSlRfc3iu392J8y2Eko/Pozys35RmXOosjFR8ZRFcPf6ZHPJ2IjywaQjF/UeuXu+tS4GTIpw
	X+28Bd6Dd/0mDVlPfzoTEn+QwGiUc5hA8PEZDVM5rsXJcENQGv7Pdtmd49A36o01TQZfqKtaVs5P0
	vYekmII/h86aYSLppGm472HsH98CBc49/rHnADo3LzI75eRQC3Dje61hqbLE7t59odScrraq/2+OA
	iRopSflzapee6BlwiJiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Tkl-0000000D677-09my;
	Tue, 07 May 2024 22:57:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Tkh-0000000D65D-2jdM;
	Tue, 07 May 2024 22:57:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2B0AB61A01;
	Tue,  7 May 2024 22:57:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EDC8C2BBFC;
	Tue,  7 May 2024 22:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715122658;
	bh=rl58UGSDXiOQtAtALxX1AesGxhJWgrq4HBhX/WX/mTM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TfNMyBoZAhMgD47ZLQN/r1wGsNff1TDtcoKWmDCFX/cXWUfkFrL6fzjWGC9pUTUZk
	 ZLth9qDKKIN8lLtJa+2PlKQzgVzVuAR4hkAo2j0PzxfSjUWc24icvwSixor8AN8nJV
	 i2vFx0ICMPqAzuGFhrhijKi9Qn5I/ibrKBXdF+k7uYzbrGP95V37WJ8REEAsVBbomi
	 jQuNwx/hhWrGDPF40/nE8Mps7d6rCBPIlr11O9yo1Y0/kDyRbElrA0pMNeBCv0QFv4
	 7sTWOoCSoQCsoRevczt46XGzf8BmM7vukwayOLr+MdbuDMFFT/ZTJzzIXjoRybQiqL
	 lqqJbEbhcYuSw==
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
	andy.yan@rock-chips.com,
	cristian.ciocaltea@collabora.com,
	s.hauer@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.8 06/23] dt-bindings: rockchip: grf: Add missing type to 'pcie-phy' node
Date: Tue,  7 May 2024 18:56:32 -0400
Message-ID: <20240507225725.390306-6-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240507225725.390306-1-sashal@kernel.org>
References: <20240507225725.390306-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.8.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_155739_767308_ECC9C81C 
X-CRM114-Status: UNSURE (   8.15  )
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
index 9793ea6f0fe65..575555810c2c2 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -165,6 +165,7 @@ allOf:
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
