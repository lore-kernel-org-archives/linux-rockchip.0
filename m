Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FD8BC0219F
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Sep 2024 15:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKhwyiD1KflT8IS+uSz/QeHbekfEqpuZtdmxuq5KcOg=; b=eOZKP8CtTDknrE
	eRu5SAtQD/Ef6PEdV146KSpgASCD6wny+Dyl9IfMIhVIv+VvyjHLKXwmDIYnw48EZsDR8fbYl5IZ4
	zk1HaGpLjP1BadhrnV7ITFIEvO3uizNYQW2dI6HAkkmJB4iNutiQjY0Ne2iMM8E8qBYOeifLs3Wip
	Hyh7kNxVN16XM6smFpr8piIvYtSBn6MIjfVGUNdPTYZL4vkRhRyCosDu8CokifHMrk9SD2rJgH6kk
	4p2yYRCVkSN6TCH43fRdW84KwJlzKgnNtECjiIvuOvk55IdwIoQ9GvOeKtuxHVoXTWS/mgSFnxqj2
	VVLJR9gcNH1KiVzu5jnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spUGG-00000000qA7-1r72;
	Sat, 14 Sep 2024 15:00:32 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spUC2-00000000pU7-0ByV;
	Sat, 14 Sep 2024 14:56:12 +0000
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.163.122])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id A7DF3789E0;
	Sat, 14 Sep 2024 22:56:03 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn A7DF3789E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1726325764;
	bh=lRER49IU2r+IDAkeANEnbgPaU7VQG0ThpFJyDhD3UTc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=V+2k1ms5UMmefM+geGYeYZO+fYHmmzGyqDOsjdZEC0sDV3ToXnh0TComQxRfrz0kf
	 iz5ix40YG7uWPOooQFsB7D34VKLTijs4lcsnDMFXTpc+mviFYYrMBq/onkAk1ivAOS
	 NmTJEO77jHY9eRjS15hujq6FqOg8o1yNBt/osavs=
From: Junhao Xie <bigfoot@classfun.cn>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Junhao Xie <bigfoot@classfun.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add Ariaboard Photonicat RK3568
Date: Sat, 14 Sep 2024 22:55:48 +0800
Message-ID: <20240914145549.879936-3-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240914145549.879936-1-bigfoot@classfun.cn>
References: <20240914145549.879936-1-bigfoot@classfun.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_075610_369403_2E9B230A 
X-CRM114-Status: UNSURE (   7.62  )
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

This documents Ariaboard Photonicat which is a router based on RK3568 SoC.

Link: https://ariaboard.com/
Link: https://photonicat.com/

Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..c35541b56175 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -49,6 +49,11 @@ properties:
               - anbernic,rg-arc-s
           - const: rockchip,rk3566
 
+      - description: Ariaboard Photonicat
+        items:
+          - const: ariaboard,photonicat
+          - const: rockchip,rk3568
+
       - description: ArmSoM Sige7 board
         items:
           - const: armsom,sige7
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
