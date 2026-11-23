Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83C6606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 12:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xbpe6F2v;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Snvclfa4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=K0jkxJKexsoSIbndA81t3yocWXvWwppevHjtixuh7eE=; b=xbpe6F2vZQDzx8PqoTfv0N/uXO
	IRn5fpKYmpD/2zulnp63YZyURWZEkaT0m+B8izcikcCAoJJvhWMnJE/FxtyqiLHbPGLUpZpmexOH0
	RDCkvbGxDPBT4+FCgBRA/Y0LrJNsFk4//YfcZmrPOXtDYS+nXSiWDoJ/QF1i4LFerI1mmvzKKiyKt
	WGWdGHjkFS1esJOLMFqvbYBdvZ7Mg2RveB1qvTUDgsRYilom8CDl4xLEH6zt6gCLYJ7c9tPPlwn4A
	wASODzRWV2QByug+WRovzWC5iQQEJaCJbkVppD1Xo8tJ2uJWbjqmO13X4GEkZdtpiwigt1oBMQdYg
	HQ/t5Yyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVSyv-00000003KWn-1xpA;
	Mon, 23 Nov 2026 12:17:13 +0000
Received: from mail-dy2-x0b.google.com ([2607:f8b0:4864:36::b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVSyq-00000003KUn-2bpS
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 12:17:11 +0000
Received: by mail-dy2-x0b.google.com with SMTP id 5a478bee46e88-377157fde7bso1182391eec.0
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 04:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795436228; x=1796041028; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fjlxH4l0PpU/A+nrxn7qK+PVufEbeMAD3+j2srfN4gw=;
        b=Snvclfa4ZUEGjup5tCpAnS4SaLgJsJjsvtJ12o8KYJ7OjRgMnYg264DtaVZRyma/r9
         F6ptb3qPPU8L3W8d3wrpRB9kbn6kVkJjOykT58rVmCPS7b9rdTyqh6pttYX6Rc8RiLYK
         xk+GPEMe0z0dLHK5T/3NIGTKgmvmnviCyejSw3b21xh1e9vvLJrgtzdLNZdmANIkMXjT
         yWirrWH/WSQiWh+7R+RRLvuQ6LScqrVl3aaPC6oerk8jktFai9Qip0kQFSf1VqLkKtYB
         hJI5GpicA/pCiimWkTO5DCnVI0wAnDFaPmK9WaHVMddE0U5XG1zNevPBncmjWU9Qy6qZ
         q1uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795436228; x=1796041028;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fjlxH4l0PpU/A+nrxn7qK+PVufEbeMAD3+j2srfN4gw=;
        b=IjTTt2ZfPp4884gt9cekLQNjw6khm1sTJe7S2wLmRZBfaFlx8mC0IxbNZPD0N1w0Zi
         owJMGAE9NsSskI0GzjiWL33jquTbA/IG1NQhHHYtHjJgFYcETEHjl+aPpgTAqGpMh5ur
         blEsZvDPoKe8HK7YNjXrk95/EoMyl1RDT6aC5r0hRCxaNmFK4kYgARpireJPn3JAlodt
         IzODJZbUiQ8V5dTyJ+o48ZoGf5UUZqwhshYoyVBwtg9sGLNUuisIOmoHe5b5ySFsWnUv
         yuFSPaodecho5w/VFDKxqGinDflghc4pbf3txg6mGMqeah1QPCk9RWbYKJzaFIv+wqha
         KGxg==
X-Forwarded-Encrypted: i=1; AL+hErFVUksQLKR/QC5AzAGxYX2yJhghWdzXyGGHAcXfVxB4vMoucXUllPluqD5qTjcVYcm07DRlJaj/Spf55ULjYg==@lists.infradead.org
X-Gm-Message-State: APuU4Z8bGoAs/NTltOm+pB0v0PNtJ9+xHtdv85OyJOPMuUeFmMEkm3e6
	NEqqiqSHHRlih/OYPdCBn4qFbZAgvL9JXQPMPkkJNxn68vdEST2lm39G
X-Gm-Gg: AZFdTZdJM2F8ZFy7pItIwYkHx5UfJYUhtHODTLNSXyXjyPaxAQQlAcYrp58KqeC8QKN
	3JgmnQ4Bj47C21xoPq3ebK1SxxDWUA8fukDHk+punRTeBnZHQbivd3ohrT95GCNSCO4dTXupbVF
	enW8NooH+pUsHaTCle4FAImOPsavRglpCUKt2yYQJc/zIJPY8iH3BWCjpucP4FRqXGdviFZk9vr
	5parZzLe9DO+gMot0yJ/Y433VQ4TS29KGurbzG7mz9nnzTMBaaIfG6tdC4LSSv5QRd4avSMDYAj
	sL1M2ixhIMKlohOVdYYOBhQsCBuwZ5+u4ap0uwfKI+tNsvaz6vLTenCWcpHA26nmk2lQu8VuvVO
	NAuJB1MtGY9Hth4VM58xF45PMAbjmf64lkCKYoHIfNMk8KSfXidX8QiHpRpeX4MwWHDoFLhy2Vh
	3y8i6fqMy2BCkAVCPp7Da0km2PEhdi5LII7YR5WnQfHsuXr4/8eoRKec2BTRNGiZH4dJ0EsPnqR
	bkL//Acfo+m32tI/3d/WVBL0Cb0X447BtX6IPw/j21NIcQunWhcspBVvBNLBbbkyK98Hx37CMdu
	I2nEsftO9a33H35t0pCC3DPc3hRBRwW+8zdmzwQdHNdUKY3oT8rEdyfu3xDi
X-Received: by 2002:a05:693c:8211:b0:36f:202c:48 with SMTP id 5a478bee46e88-3857045092emr12450139eec.14.1795436227745;
        Mon, 23 Nov 2026 04:17:07 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385c6830815sm31743053eec.20.2026.11.23.04.17.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 04:17:07 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: netdev@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	linux-rockchip@lists.infradead.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH] net: pcs: xpcs-rk: use cleanup.h for platform_device reference
Date: Mon, 23 Nov 2026 20:15:48 +0800
Message-ID: <20261123121548.565580-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_041708_684832_DAE2AAE3 
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
