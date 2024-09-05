Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A822ACD4F59
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 08:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZYR1IyTv5//tRkwwMO9Oo3Mp23+gLaSRuWErCbBINUA=; b=IW6q8S0OhqTp/k
	u3sSC7OQPTzSxAqHsgzxSaozUTny6VMp1zHbKUR+XZ5K63LyAVSSixQw1o1muMYxptlFtayuG4yet
	VURY0WfaFNuMRfh8rGF3cO6oA4auMgzrVb42bS+aqZZndr6850O1IloxofZeVB9DldEcEy5Uz1+qa
	VtBFVxQkvHEnxfTJIB9GgHPg3Ff8bVAZCI7t07orbUlwDbXqt2b2M5vOTuFKpfmzAk+Uxsa6kopSx
	wxPrfPRYvPK58PX5RD0tLG4Qaf+4KNMUXnP+qg52SNtyz/L248KVugaIJRSiboDyeeboG18arVTiz
	gJ9OU9FipowKmyqhIlBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm7tu-00000007aua-0r3P;
	Thu, 05 Sep 2024 08:31:34 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm7r0-00000007a5G-3dqO;
	Thu, 05 Sep 2024 08:28:37 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1725524910;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tpYdzE01L46nA5/EJhfGrNXTWtdCl00jDOzayRDNeNg=;
	b=J0Cp1CRZG9yqPrytIFQpnCjSn8GsFFzRHLcsySbAZiW9fJqUBCwCUNFCBt0kkDZn1Vt1Xt
	F4VAImTs5Q3F2PQkIFXzBxI7iKdwwO5TZM0zsPkpiEh9dlFqwnexOM3tqMEzTcqPJglFCg
	5NUYcyghzYademVp/JQ+cSGGa4NCG6NZv+TAJjXpPFRWEjMMmT4LiFYhiSY1Yqz5IZhnCr
	vft9lk2ZDFUNO0KiwQOlfu9R/CQDNpnxtfDhZcFoXusl2T54XSSZPiot7VxcMYU7+1tzql
	UFel88WIQAPD5PiG1Sj4+6Ivg8Q9YzkAWZgPU/maurgGEsQhHN2ztQ0cDNaZ4w==
To: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] phy: phy-rockchip-inno-usb2: Handle failed extcon allocation better
Date: Thu,  5 Sep 2024 10:28:23 +0200
Message-Id: <cc4995aa3e569be6bc23ca126b41fba82d50eeee.1725524802.git.dsimic@manjaro.org>
In-Reply-To: <cover.1725524802.git.dsimic@manjaro.org>
References: <cover.1725524802.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_012835_087580_1DACD2B8 
X-CRM114-Status: UNSURE (   8.96  )
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

Return the actual error code upon failure to allocate extcon device, instead
of hardcoding -ENOMEM.  Use dev_err_probe() to also log appropriate messages,
which is fine because the containing function is used in the probe path.

Helped-by: Heiko Stubner <heiko@sntech.de>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 03b772200fed..cf6b67dd9f10 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -435,7 +435,8 @@ static int rockchip_usb2phy_extcon_register(struct rockchip_usb2phy *rphy)
 						rockchip_usb2phy_extcon_cable);
 
 		if (IS_ERR(edev))
-			return -ENOMEM;
+			return dev_err_probe(rphy->dev, PTR_ERR(edev),
+					     "failed to allocate extcon device\n");
 
 		ret = devm_extcon_dev_register(rphy->dev, edev);
 		if (ret) {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
