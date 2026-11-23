Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEFB606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 12:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OxR2iaUh;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=keuiwiiz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=K0jkxJKexsoSIbndA81t3yocWXvWwppevHjtixuh7eE=; b=OxR2iaUhxOf/b6GAysDOHsaec/
	RpEKjvdfJMbYzfeHYDZEnT9gp9GLJRcCHB6Vi+xlDpXKvGInDkNdy5VjNJHvHv9/4yLat0F2nrVaX
	/U3gjZEpScns7hx2+Ff67I1J5kC5SB0VNiJeo+/1d4d0TzhxsEp4cCHPjpda0KqceXCYear9fDfEh
	TNoKJI1Jpnh6L2lKvn+ZseuhifZgyYRjMUq+OVAyoN8t/ctfKKn//nCWwKD/J81vlHtVblrhNCrv4
	fZGvbWdXy9dUHBGhp9BlD55UJWLnA2RxMOgQ3sMmIS6SCaXqCX0G1Z3hn/gxYEPzGdMbk/hs/RmWZ
	d9v542tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVSvk-00000003Ixl-21N7;
	Mon, 23 Nov 2026 12:13:56 +0000
Received: from mail-dy2-x09.google.com ([2607:f8b0:4864:36::9])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVSvi-00000003Ix6-1FCf
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 12:13:55 +0000
Received: by mail-dy2-x09.google.com with SMTP id 5a478bee46e88-35adc681e1aso490273eec.0
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 04:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795436033; x=1796040833; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fjlxH4l0PpU/A+nrxn7qK+PVufEbeMAD3+j2srfN4gw=;
        b=keuiwiizdOB2k+azmDlnYYzrRE269P+00a58ZC8lORchp7uXl10LDDfgBqxgWfy4rk
         I15ruZdx+2kH5Xp4db1g9lWnEMjPfXYbQYkAFIHYjv9umMy1MWWAnOy2tG8JBHj0XKHL
         Fseu57e4Gu5CL+eQtqFWC2Wg5oVWc5f0LxF60OGwUTK8zija0vgGLmCtXrBHrIaUm2xj
         abQP2LtUUo5HEZEUMnMD2BKt2zOZDBuJKnP0jvZ8XcVnvog9bXF9iViTmwVZpiCzxRYj
         Jxx79e+4xSwbdV7yPs9Fz3aDzFd+0HRPtHgaiEIO49//CLc6+51TmDlutq/W3BeBQogm
         RW0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795436033; x=1796040833;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fjlxH4l0PpU/A+nrxn7qK+PVufEbeMAD3+j2srfN4gw=;
        b=xByjjjIVY0bvReXYS1qm1KaiBYPmPYalu0Ckt8yXgBEAAH6lF9sitpbv/cLHLuoy/0
         wmmcrRb+sQMMW7LtoGl2n+9Fh/InmzGEEbgcWGlxOG5hBERI8o7vDf3O6HDCpX/U8fAm
         ltrVA3ixHbTIjx5lAeon7H0uSmXECSDh4oDTX5T3wSCGknOy1IR1bBAFGey2XBiPmbZX
         f3HOXUHuSRkTRvZsDALUBAimPLkI2vvSpIOfp8MdCev8MqWTatRXVPgvIlVcm2egTN9r
         bDCLp6OUvZkEwQTGD8VO6ldohgJElFOg0MdvB3ycmpuURHxrfQR9lan147xet1Q9NlFL
         KYsQ==
X-Forwarded-Encrypted: i=1; AL+hErEkN1yzcBg16c/zOWOj+RZQ08BIYJwz6x8zJF0NTZOg8ficcNwvuktOP6HBH+7GxTRNyvbLGf2AvdI/hkAJ4A==@lists.infradead.org
X-Gm-Message-State: APuU4Z+DdC508R5N/JoErDKTt/9GOZeHvy9I096WSP+OFMvS3W1RS4ET
	q0NHDwpFNvTdAMAKdzaximrt3mWPXMaaKUv/rXzl7nkqXNFZsiwevJK+
X-Gm-Gg: AZFdTZeCROsaD4cZ95m2swe5IbedN4AHLDzlb7kLLwJJHmZdGyd1mAzDEhC5eb+UWVa
	vW1u7YbMw4676omUJd6j2Hcr/1s8pjvntIcmVa8/FPIDG5QgNWxguXOsx/Rkk8DZR7kP80Tk+15
	9y/bUcpPh5UOWCc4l1qDxx04qnAJ5bWpgebjlEennc2lTt/s+0wAtUvsGdZ7IHM423RUGoffQJg
	5N9L/Pn1g34j6BM17AeF+EbK61CiY8wf77PxzMWhikjue88x0Q4zZ8aZyw/tVYB7h1qpwdwPrHF
	xYZYbxZAzfJCApIJRRScKgmwQe8yn9Sr7AocyOvHVXLGROa7RA1TIC/1fJlOsgSr55FywjezEz0
	pL7G0gwyaFKRgqW9nDqFaZggjLUh0bYl/27ime+OaSsppdyGi5uALvSZ3whA98Rk1mgu6589wU5
	Pf5mkRdxJFBBtHWkqs8W/l7o8aRF7uiKHpTNBavZqzOromqL5Jvns9z4BFsfTosIjXB4MMntQdy
	fFFvRILhSx7TVm9C4UG+kFyco2gPl+L39nNBeLwVqntdNspTuRlulGfuQOeapAsw7swYDNXdklP
	v1VOolRkXnJz4auOGd+n4BeY3Rju+E8jts5UvaT1YWqoyQDwFScq+x5EndY=
X-Received: by 2002:a05:7301:1a84:b0:386:abfb:4a2 with SMTP id 5a478bee46e88-386abfb1a83mr4107662eec.11.1795436033404;
        Mon, 23 Nov 2026 04:13:53 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-38567daaf70sm37751721eec.28.2026.11.23.04.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 04:13:52 -0800 (PST)
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
Date: Mon, 23 Nov 2026 20:13:47 +0800
Message-ID: <20261123121347.563739-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_041354_335112_9380BD65 
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
