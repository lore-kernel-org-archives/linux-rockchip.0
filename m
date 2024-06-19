Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76BAEC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 11:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qAz5i0KnpuiWUZUMzZHm3WjLYqFEN9uBcU3dQ1HQjE=; b=0tnqbBB/o7Rks6
	opJFM51niQGbW0jwYaYfyqkRXk5vCwpETkyYO5E5ITfjJ7mGJ031pGWILKDMfWZEY05BY0gRKfnFk
	iImiapWY4MPjCEtAgwFYe/NRkF40WogxBtNyHzxGVbtRUlE3L8ztkQEjDZF+tsB4bUHXaaazMp6EA
	GyoypC1gzWjxJakPkpqV3wEoAXbRuAUvuN3s+5KgP156vIETPPK7ovoatJzCEZs0zagPXsIjr+nhW
	nGaG+RAXqL/pV95F+ccMRorbCbZxVOUEh5r2iWBeA82MxZ1n4G7maCVOJNAl53biwqZcbFD4AdLmb
	Q2jdGRik+uncovz8iAkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJtQl-00000000xIi-222z;
	Wed, 19 Jun 2024 11:24:47 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJtQ8-00000000wui-2bAE;
	Wed, 19 Jun 2024 11:24:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718796247;
	bh=GzRDLnuFoZMdH1hQlF6ojeOZvsWqIJBgLcgKRUN0xBw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=xp+rYdm1YH+nboSfAZtAX6s/iXzFdiKjJH5gkZ0DCVDMVjCAy1YuntkUvZCXqhVrQ
	 NtAssv1O5l8f8VYQ0/Vchpmb4BDqf3NAPni6h8ZOmEf9q6uf4u/u1eJoSB2Ncw5VbZ
	 68iNYbjDljRoOwuTEGg+2RuB0PXVDJqUKD80byW7U5BtSw6UstP1aiOricV7BVeaI/
	 SUpr7AEe9ZronJtk9fSoEagOot88qyaUmXV5cTWGmE80ZYbzkvRUwuC7Z1xtaMLu25
	 4EQ7gxyLoWUeLVzF9u+lpCnOJuB4xwPQdaLRimN5jmmudpXHMR2pGTA4R6Li6m5HYG
	 0wCjvu9/O4bfQ==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E320E37821D3;
	Wed, 19 Jun 2024 11:24:06 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 19 Jun 2024 14:23:33 +0300
Subject: [PATCH 4/5] arm64: dts: rockchip: Fix mic-in-differential usage on
 rk3566-roc-pc
MIME-Version: 1.0
Message-Id: <20240619-rk809-fixes-v1-4-fa93bc5313f4@collabora.com>
References: <20240619-rk809-fixes-v1-0-fa93bc5313f4@collabora.com>
In-Reply-To: <20240619-rk809-fixes-v1-0-fa93bc5313f4@collabora.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
 Chris Morgan <macromorgan@hotmail.com>, 
 Furkan Kardame <f.kardame@manjaro.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_042408_911087_9A9EA708 
X-CRM114-Status: GOOD (  12.08  )
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

The 'mic-in-differential' DT property supported by the RK809/RK817 audio
codec driver is actually valid if prefixed with 'rockchip,':

  DTC_CHK arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dtb
  rk3566-roc-pc.dtb: pmic@20: codec: 'mic-in-differential' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#

Make use of the correct property name.

Fixes: a8e35c4bebe4 ("arm64: dts: rockchip: add audio nodes to rk3566-roc-pc")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index 63eea27293fe..67e7801bd489 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -269,7 +269,7 @@ rk809: pmic@20 {
 		vcc9-supply = <&vcc3v3_sys>;
 
 		codec {
-			mic-in-differential;
+			rockchip,mic-in-differential;
 		};
 
 		regulators {

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
