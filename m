Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A59A3606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 12:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kLj/gh9L;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=lEDFObT/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=K0jkxJKexsoSIbndA81t3yocWXvWwppevHjtixuh7eE=; b=kLj/gh9L6rkMmZuURXPQty2anJ
	CrkBea05wzcZBDl/RmdCVADZuqd45fAgPHw3yHX1r1lKNgT9QztjBxSbDG5heCj4gLFZoyxm8EygR
	WY9zMoiJcrnU9F3+CdmbXxVkfDZcOYLqMytSzWXgnnQyTkLmPtQf7puWckl4Gc8TnderwNY4zkJLl
	cHwgbfLf58YnCiIjrwdwi2oYrVzv3tmBHmGMPvquJ7Ybpumkt+gWptuq+Q87JFG9G4bVceh5SpYBP
	we5XDemB+agn83B68vxAkLuuwf3lquSkrV0sqY/0Y2cw9JHOsgHUgK2EZXTbjPxZUVMxuPKPWnaCH
	gxzJ5jig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVSwX-00000003JC5-2biy;
	Mon, 23 Nov 2026 12:14:45 +0000
Received: from mail-dy2-x00.google.com ([2607:f8b0:4864:36::])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVSwU-00000003JBG-2m2L
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 12:14:43 +0000
Received: by mail-dy2-x00.google.com with SMTP id 5a478bee46e88-327b1d5824fso2904684eec.1
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 04:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795436082; x=1796040882; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fjlxH4l0PpU/A+nrxn7qK+PVufEbeMAD3+j2srfN4gw=;
        b=lEDFObT/jsDHIZb6NoGyIN2ygwK2UGuttHxxS5pLUNgVY2n8CBv53tY+LoK495BP9v
         fek1XkzN2p+8QnZOADSRqq3db9lj/VDIJOCnt3Rhu2n8hQUCz8IC0X2tqU1Fn5Od5Ts1
         G4r5xjCyg7AMG7y6f1lM3CVeK0PxrxW6YFemcUgYUwnwzZBksJ620gWsmdUzzl5eXWpk
         kgnZ0deU8UiX+U7y2Btz9kQBTm0l37sfyCaCv1UyelfEX0rRsmUtOwr5FavFGMsaSewH
         4jJU6lKgnu9I5+qwRB/MUoUotwrLadEouOgiCTmFdwLW3VISCyYItZmwY+EoIDFOQlGM
         gPww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795436082; x=1796040882;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fjlxH4l0PpU/A+nrxn7qK+PVufEbeMAD3+j2srfN4gw=;
        b=OLR+GTBcVNIHQFWArPegSWCkciOTSHLIsRvMfWb25eo3KtlWSe1pEdBuSLs2H+V4yo
         SI2p1AR1SYZkKUhY0mgdC9SMUNLHvopWUsGdYeFVDSLhcw3CBvu6UmOINujdbn8Fx34u
         XmuBPxsRxmI9F7qaZVdgtLs0//DviSCH4yXB6uQnf9dPhlrUGUw52uE9ftTsnfLLu3/x
         OOfhVGeIiHXZmPmZ5FsUVdEzCUiLSy6Hf48OmXp/Q11teL+u/2YBwZMCsIMv5/AB7r1T
         daSestSfIyyWS3UixaneKm8tDlbMv7Pm9KM8X7bf+zAL2HjEercCgBDCYyzLkwcfSm/b
         4NqA==
X-Forwarded-Encrypted: i=1; AL+hErGvxAjcAtPSCQ2261bmTtYmEB76IgdDZFNySa5DFSC7ASb/S0JlDZ2Ddulr11BqBjN55sHoZF62xQN83CRwKw==@lists.infradead.org
X-Gm-Message-State: APuU4Z8dj5fgK3TG4vPWOhdZ2c2oqRRW7YO58mqL6lh53RP7TuS1k42G
	6a2GAMNhNHtKKY30hOHskUh7XMfHLd6erHNwuBgj2w34WY0ycgriBGzugW01iZa76uiAsfY8
X-Gm-Gg: AZFdTZcRlPtxIiZtOsGbw1kFSYSIhF9KGV3LvEJx0V81gxVPG0XXqHTEE0otZ4pKgAm
	EZuarzqj0xeEL2rAa5FKCeasviaAK8Kc1A/ZHqFIxkjc/tWty1cnmleHutf1Jc9ZxBxh5/cLj/G
	z+/lwDSjkVOurOOzsBSTWdPiUaiuhk1vBZfkeNFDR9bHTq754q/UT2xPQawRyYYsjmNCKPgSL4R
	pw0NBZamBPYCocnqSph7nIi6rtzh9O6cxpaYa3GIX/hX2kEqAZqhAlSO9NMk7qvqVnxM5dG/Se2
	70AEvkOwAyKH43IWxyegqarjyXZUHLH8++znrj8aNPUoEgHdtx56k2fFQQ3DmUR9yQPII1S7N3p
	ncrZONT2dD1FmKvCpgOK308k8xuy+IjbxNQ2ptJngL/zwgan541M29BgjaS/orhICvLW1/OCOQx
	mK5tnZwhRHhlwx5v8iPMODAINb8ZWDyFq8VXS32LA76GEhd2N72Q93cwjjJqpwiaBCmWq98S1F5
	LZe5St1m8PYsNYEYShpw9SUuN92D42DgJq/qALwX3W3iR0XSWW6IRO6Hd4+6LBqUri35k1S4r0c
	UkX69ZI8PX366FWQ5qiPq5fxKqY56zDNOTP6fxyrOisWoFzWr/VC+GX5Ffg=
X-Received: by 2002:a05:7301:1a08:b0:386:9f4c:e07f with SMTP id 5a478bee46e88-3869f4ce1d9mr7893703eec.14.1795436081674;
        Mon, 23 Nov 2026 04:14:41 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385f68bc0adsm32691038eec.13.2026.11.23.04.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 04:14:41 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: netdev@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] net: pcs: xpcs-rk: use cleanup.h for platform_device reference
Date: Mon, 23 Nov 2026 20:14:36 +0800
Message-ID: <20261123121436.564486-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_041442_713777_A6B85203 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Use the __free(platform_device_put) cleanup action to manage the
platform_device reference obtained from of_find_device_by_node().

This removes the need for explicit put_device() calls on every failure
path and at the end of the successful path, simplifying the function
and reducing the chance of reference leaks or double puts.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/pcs/pcs-xpcs-rk.c | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/net/pcs/pcs-xpcs-rk.c b/drivers/net/pcs/pcs-xpcs-rk.c
index e0057545329a..8539caff6725 100644
--- a/drivers/net/pcs/pcs-xpcs-rk.c
+++ b/drivers/net/pcs/pcs-xpcs-rk.c
@@ -481,7 +481,6 @@ MODULE_DEVICE_TABLE(of, xpcs_rk_of_ids);
 struct dw_xpcs *xpcs_rk_create(struct device *dev, struct device_node *pcs, int port)
 {
 	DECLARE_PHY_INTERFACE_MASK(supported_interfaces) = { 0, };
-	struct platform_device *pdev;
 	struct dw_xpcs_rk *pxpcs;
 	struct dw_xpcs *xpcs;
 
@@ -494,7 +493,7 @@ struct dw_xpcs *xpcs_rk_create(struct device *dev, struct device_node *pcs, int
 	if (!xpcs_rk_mdio_addr_validate(port))
 		return ERR_PTR(-EINVAL);
 
-	pdev = of_find_device_by_node(pcs);
+	struct platform_device *pdev __free(platform_device_put) = of_find_device_by_node(pcs);
 	if (!pdev)
 		return ERR_PTR(-EPROBE_DEFER);
 
@@ -515,27 +514,19 @@ struct dw_xpcs *xpcs_rk_create(struct device *dev, struct device_node *pcs, int
 	 * destroyed (DL_FLAG_AUTOREMOVE_CONSUMER), so no explicit
 	 * device_link_remove() is needed on the failure paths.
 	 */
-	if (!device_link_add(dev, &pdev->dev, DL_FLAG_AUTOREMOVE_CONSUMER)) {
-		put_device(&pdev->dev);
+	if (!device_link_add(dev, &pdev->dev, DL_FLAG_AUTOREMOVE_CONSUMER))
 		return ERR_PTR(-EPROBE_DEFER);
-	}
 
-	if (READ_ONCE(pdev->dev.links.status) != DL_DEV_DRIVER_BOUND) {
-		put_device(&pdev->dev);
+	if (READ_ONCE(pdev->dev.links.status) != DL_DEV_DRIVER_BOUND)
 		return ERR_PTR(-EPROBE_DEFER);
-	}
 
 	pxpcs = platform_get_drvdata(pdev);
-	if (!pxpcs || !pxpcs->bus) {
-		put_device(&pdev->dev);
+	if (!pxpcs || !pxpcs->bus)
 		return ERR_PTR(-EPROBE_DEFER);
-	}
 
 	xpcs = xpcs_create_mdiodev(pxpcs->bus, port);
-	if (IS_ERR(xpcs)) {
-		put_device(&pdev->dev);
+	if (IS_ERR(xpcs))
 		return xpcs;
-	}
 
 	/*
 	 * The RK3568 XPCS supports 1000BASE-X, SGMII and QSGMII.
@@ -547,7 +538,6 @@ struct dw_xpcs *xpcs_rk_create(struct device *dev, struct device_node *pcs, int
 			  supported_interfaces);
 
 	xpcs_config_eee_mult_fact(xpcs, pxpcs->eee_mult_fact);
-	put_device(&pdev->dev);
 	return xpcs;
 }
 EXPORT_SYMBOL_GPL(xpcs_rk_create);
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
