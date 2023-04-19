Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DB04C77B73
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Apr 2023 18:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HN5HNmlGxDTeNfDmfsnu2CLPAr811QeDJyTHtPUJy+8=; b=cLLw7TebeADtKv
	6aRZAzG5zu8KpxYAIILupg/sEkG5KNP4WfmOJOfVmACk2ng7Am8/aGnWZ34NZEvAhl29wXpIT1Hc2
	FMC+oXVm1k5+v9R3tgIKSsEfvReYl5/53yrjvsR2ClMAvktlrHfYm+Im+O43jjjNzueqitdDX0/2j
	03YJ67nfKvt/cgzp5PWh7DzdSYvUjosgVI1WVXhdN2xmCkteYUwSqgg6cn3eFJTu1k/hzYRokM3+P
	UhgkiGSAaMizPta5wd/uQYWDa4eANbck86OG2OQmMrAY9IDpd4DDPFb3t7UgwYjYj9Sbu02per4Le
	3/S+P96FiJhnm4iUZ7Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppCJ6-0067lb-26;
	Wed, 19 Apr 2023 18:13:28 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppCIy-0067hw-0Y;
	Wed, 19 Apr 2023 18:13:21 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 712CB6603263;
	Wed, 19 Apr 2023 19:13:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681927996;
	bh=8mHiEdYtricQtv90csR7aHt5nQURoxkm/vNcQ2Jjvuc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IBT1CQEILyBN0EEzhGCls1OHWD15cIh3MfKOIPM0Gh8smhtu7RENdRlnruPiiXctX
	 TNXWLGkEneBGxGs/nmjvpLf5qu7pdCWEfy/Qn86NJO68JcEEOC6jYfP+EOayL9RO2O
	 hE6J2mobMF72cy9itk/qrb3sEi1Iclw9arYXUukMDC+4h6NX7d4itoiMRK93Waw2hW
	 EEDKGIL3J4wx+e4UB+byFFt+08Kb+Pvo67/zmWEtjq+5wM+rQnOAwbFqHyIQ51EFpo
	 jCg+BSb9jkpZhFtoRx2E90e0xuN5FIf7KoZepqn37sSFLRmJnaSCpsShSCI7/RPR02
	 21XLSQVbeQqIQ==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v3 1/3] dt-bindings: timer: rockchip: Drop superfluous rk3288 compatible
Date: Wed, 19 Apr 2023 21:13:07 +0300
Message-Id: <20230419181309.338354-2-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230419181309.338354-1-cristian.ciocaltea@collabora.com>
References: <20230419181309.338354-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_111320_354551_DB8CFEE3 
X-CRM114-Status: GOOD (  12.28  )
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

The compatible string for Rockchip RK3288 is wrongly provided in the
'enum' item, in addition to the subsequent 'const', which allows the
usage of an incorrect specification:

  compatible = "rockchip,rk3288-timer", "rockchip,rk3288-timer";

As the rk3288 string is also specified in the top-most 'const' item, the
binding already allows the usage of the correct variant:

  compatible = "rockchip,rk3288-timer";

Drop the unwanted rk3288 entry from the enum.

Fixes: faa186adbd06 ("dt-bindings: timer: convert rockchip,rk-timer.txt to YAML")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
index 65e59836a660..2bdb6e6bdb21 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -23,7 +23,6 @@ properties:
               - rockchip,rk3188-timer
               - rockchip,rk3228-timer
               - rockchip,rk3229-timer
-              - rockchip,rk3288-timer
               - rockchip,rk3368-timer
               - rockchip,px30-timer
           - const: rockchip,rk3288-timer
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
