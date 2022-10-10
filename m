Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6608DC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Oct 2022 19:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7lRtp78PAmtPc8p5OBFR0s72wkF+Cqz6ZqAOq8ZUXs=; b=H8J8f3qIHMGQZf
	K5gJvTdk09jW8sC/Hiplkmiw9l7sJM5lrcJVoKMYtxt+weTwnte9q2A2Q3FNPFbRW6ixjE64bi12n
	MpDHe42868GS9xSsS1K3dYUJFzaN85yZZgpDeU657i+fmFPxjAjrv4ddFVseLAeYAhuBCu6lzWO12
	pHLhlXZ0uYfBmUQ8VUOD3X5D/g2f5dRt1IastOJ6lTf49VUESwZqq/dK/LLozjPSIrUaVRIOqLNvC
	v65gGs3HxC5Op4KpBPRUvijPfYCQ1uUxRi7jiJYkVKHhKJIOwKDF6OFQSYQzc2+oXM/EDB8k/BXZY
	zR0GnubcoWVHeWgRdoGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohy2s-001tG9-Ip; Mon, 10 Oct 2022 19:02:34 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohy2p-001tEj-P7
	for linux-rockchip@lists.infradead.org; Mon, 10 Oct 2022 19:02:33 +0000
From: Furkan Kardame <f.kardame@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1665428550;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DGhFrsN8XOU/BWPt1zPfy7skEqnEZL2bML184k9OPSE=;
	b=wFZ6egzGNk1owRHlMyXL5KDob4iQzjFp4ipOK89iF1m0ogc08qDztpPCUZ4mpRHsyTWvrz
	9wpG0JINxa9vGKNpCTyK1pEK3DjUJq7rhSmVBWuKzDZfsKpO06AqHhCci0tSZiXiG+IbQd
	1zcMLRYDHAhCG7yu/n9ptA3EV83kDrRJ+FVbZ3y7KzdOl2HMZDNGzvD4EJICoqCF1nROTg
	hWkLY0nZWro4Sa+8jnDEedP+eOWDXead35+5XFKpb3NOku63rM81vnsnbNNnUUnjXBNmq0
	dUjRUE9aCbyVtADmQWhp8MbqJQVUHlHiHTS+mkhPjGFCXldbL1oLpGH8XyiI+g==
To: pgwipeout@gmail.com
Cc: heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	Furkan Kardame <f.kardame@manjaro.org>
Subject: [PATCH 2/3] arm64: dts: rockchip: Fix i2c3 pinctrl
Date: Mon, 10 Oct 2022 22:01:41 +0300
Message-Id: <20221010190142.18340-3-f.kardame@manjaro.org>
In-Reply-To: <20221010190142.18340-1-f.kardame@manjaro.org>
References: <20221010190142.18340-1-f.kardame@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_120231_986455_F98C3D28 
X-CRM114-Status: UNSURE (   8.67  )
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

As per device schematic i2c3 pinctrl is connected to m0 instead of m1

Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index 72c91d2fc..72809246c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -432,7 +432,7 @@ &i2c2 {
 
 &i2c3 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&i2c3m1_xfer>;
+	pinctrl-0 = <&i2c3m0_xfer>;
 	status = "okay";
 };
 
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
