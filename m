Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DA44FA0C43
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Apr 2026 07:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UwAPOuuMUYLnyCj7HTgZ1in9ZpteqaZNiF/beawURSY=; b=nvwMlyW0HtBlJQ
	8oQa98bkTNevLD0x1n62hvCvEvBjADg+AcPMCegws5EfESPeY+pQU7PD7Y+lairFYzA8+lrm4A+U5
	Zx3OPSU6or3089hm1IfFaiPQW8glCYrt9LqJAbk+sD5vgp7XIZEW2lIYeRwe8Z+GsP6Yy3omruGLW
	Gnr6qaszk4ZAnCxG0hpdD5u/4Wv+g6zh1T/Wq5vNYlayFx0HCcfdo9hSOMCyisV2KdcNO8YJ9OoSD
	TYpTo61fuasE/nxgj08Xy61/XgIT5TOWxyB9PZmYrrF25tQ4d0iPb5aSOCh5Xn+h8ursMgkkUjgV3
	3NVXGTHU3i570t6wJDsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCubW-00000000ibj-2HKj;
	Wed, 15 Apr 2026 07:24:06 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCubS-00000000iYH-1DQb;
	Wed, 15 Apr 2026 07:24:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776237837;
	bh=xq0NdgL1l0loSI+nYSoGevbj/g7OgzAQZIHb15BgSgw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kxwvc+cIAiSunnmoPcL8rhk101yoZ2cnPxwWQqYtanKdl6pfGjrgBV7Hm+0WuHlK/
	 TmG7pckOBUtrXLTrYtwNnbUgBdE9bSIFxoFPqo8yXOyy1ahFApLpEKYDWlEScrj4Mw
	 +9vxA2OmPvPfnFPiXvwbsJu3iEIAUjrmLhJruKmANGjYztd3kVL+LiS+5dKhtHttbV
	 OFoDpCW6OdkS4gA1wE1WmCUhI1j9wcPiKpXbsc8lk89k4Tn55npJ8niaHEiaNJnf1n
	 vhAxqiVHDjyHCRup9jKsFYJNdYQupFiM+JwtuXcww1jNcsJ0ipWZ1OlTQ3N9rNRSle
	 UJBycQWFA38yQ==
Received: from benjamin-XPS-13-9310.. (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 62A0717E144F;
	Wed, 15 Apr 2026 09:23:57 +0200 (CEST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v14 5/5] arm64: defconfig: enable Verisilicon IOMMU for Rockchip RK3588
Date: Wed, 15 Apr 2026 09:23:41 +0200
Message-ID: <20260415072349.44237-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260415072349.44237-1-benjamin.gaignard@collabora.com>
References: <20260415072349.44237-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_002402_501472_FE419135 
X-CRM114-Status: UNSURE (   8.08  )
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

Enable Verisilicon IOMMU used by Rockchip RK3588 AV1 hardware codec.
This hardware block could be found in Radxa ROCK 5B board.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b67d5b1fc45b..b97f5008f6be 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1592,6 +1592,7 @@ CONFIG_ARM_SMMU_V3=y
 CONFIG_MTK_IOMMU=y
 CONFIG_QCOM_IOMMU=y
 CONFIG_APPLE_DART=m
+CONFIG_VSI_IOMMU=m
 CONFIG_REMOTEPROC=y
 CONFIG_IMX_REMOTEPROC=y
 CONFIG_MTK_SCP=m
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
