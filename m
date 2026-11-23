Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0714E606A31E
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 12:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aNIE5XED;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=oM+NLy+O
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=K0jkxJKexsoSIbndA81t3yocWXvWwppevHjtixuh7eE=; b=aNIE5XEDuCbGGvsGPdSNtZgooc
	llWpJ9QEdrSvrnbrPy4sPDSO4swfnAwKSRpQ0lR8K1b2Y0uMa34nrhrDSzxonVWS5i0pizWUcSY44
	T6b1f9RwksXLNWPhAfXba1jRNVp1FU0Wvu1OwarT/E1L+KtBm1v4SwARhhno1oczIdWTohfP5akcY
	s1MjlMFycCFVdriTmmmxLMG2KpB0cj/JObrW1h4mjJlK7nDoFG+cEjX1WDViEX3KpGsbGJmotjWzN
	lnYbPu4wV1kZHArc0o+jYetPVLx0xVuqiUtCb7aYw9DZ9BKv11YfNbcDgynXiXa2h9hT9rimqOF6D
	412Nxvyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVSuw-00000003IkK-2rIc;
	Mon, 23 Nov 2026 12:13:06 +0000
Received: from mail-dl2-x03.google.com ([2607:f8b0:4864:38::3])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVSuu-00000003Ijp-3NCw
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 12:13:05 +0000
Received: by mail-dl2-x03.google.com with SMTP id a92af1059eb24-1521c45a248so2934880c88.0
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 04:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795435983; x=1796040783; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fjlxH4l0PpU/A+nrxn7qK+PVufEbeMAD3+j2srfN4gw=;
        b=oM+NLy+OnnsA3qMV2rHZziq6SKFkOvA4Ghx+tRTHiwEuM0bnTa3ix+IlRBsrGm0ee7
         qHqAM0gRAav+Bv7ddEIx34G9bPLwLbB7o+elDvuJGHmPy9BRuGv8vqyze4wOssgf5iCg
         E6i4KqU2nPljxVzHx/jmXJre6jS1oV0e6DAbtsjU6F0ceTV8LwaakabWLQYS14A3+oj/
         fqzA/x8geKZd1PCldxiJ6whB/drdahnPA9m6CWL0MiTHMW/DP8gFYTz/fxeXhv9sFR2C
         hkSdx4Vt3vuoeFkIee8BqO4/YpC4oD5K59yiF3/KjICfVjUhccTQry3lUPsM3LlDChxq
         38Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795435983; x=1796040783;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fjlxH4l0PpU/A+nrxn7qK+PVufEbeMAD3+j2srfN4gw=;
        b=qZqAQzHjtcV8EZsxsN+fWG/4EMUK84oIh6FObxaNmKELPITs5F+gwn9Ibo26ZoS75U
         OK9d3jTr46tWTEkR2VBsdbpV7ZBQFqQhNhu1Qr3hg7564NI+JdqJbp8N40SQEnIaeda2
         qpNN5r5VzvBCmScAuqz6IRjeGmiDkdmftTIQe0ujm7ECRv7n4+gUq2VPzJXJu66Xjrp2
         E+J8erJR8Ejxl7fst2z41quyBK7s22Q2BEt4iO4rSO6Ha1DbnOXd9rbBmrDOB+9TLnMk
         kwcR4dmCCJAM+PfjLY/EUZywbX219e4pz6xHEUA2geSaBdcvJdSZuxKXDTXm40vtGW7d
         neIQ==
X-Forwarded-Encrypted: i=1; AL+hErHVimE++JHKSw9GR8K8JlyowW9FYvPZSJUJjm31mybuq12jqcKYy7Sm4oZXNjbqoGK+LCs6G+gI6GxGyDsCrA==@lists.infradead.org
X-Gm-Message-State: APuU4Z8cOYvTMdgM2SXqF1/i5/c/Xov7V0otVYHTgWQknHagtkHCv1N7
	bjhbFde/Rr6RyWngdmXPqUlMZ2MdCY+R0Mhz2B9PFqETfwCgmNDhcNaO
X-Gm-Gg: AZFdTZf4WoNG1kr+yx6RtPaqXrHxsrDBNAuO71jZ5wjWAr0S33Eym0ORVOHgqtN2oiv
	E3xLEgu3tuHlQCTXgkN3mFM+i0sY7G5RINERVTV7VpEuyeMPtx0g4mEREthPC8V3kIDw2nBdmnc
	7BwcC+dnh0vovvzQRdue8Ek2xJmsCgqZKk/emNeojne3GRD5pZRaaKKVZwImNC25orXkXdU+O/p
	5fAzXa+lC8b8iUJg2Lpa+iMkw7iuSAFxZfiV+oLLZSjM1L8k476a7swHHQ9bKKYdkapio8Qe3Tm
	ZxJ/Gucm8upSohNBNkW2jPQszrbEAUCXDFFmreBbEgMv/RfGNx8iAus3xTcEaJt3Ukj673n2UOJ
	oU6RFlUkOQzFBVILXHGmStJKVL+JACkhqvqdd+ca617/ep7ijFIE/HfJNfTKVf4YyjbxeiFdpU3
	NqxPruWr8VAol1FcR+KMJSmzTW9uVaq0/8jNhBtmkNKs5erWJFjo8TKUxgOb+jFvbKT1KylnrS4
	0tb42S69rfoUitLVtD204DICiklFlFghR0AI4Jb8hlCn/DVS8gu2V8cX9i08UIMI4b3VwvcFByL
	Pq+rQ7kgStC5qEy28EbjJX12oRWHoYUXSXDwPI/NWmV1tiDADD9RTSG30jA=
X-Received: by 2002:a05:7022:f50b:b0:1b5:2de3:bcfb with SMTP id a92af1059eb24-1b5568ee8famr12899741c88.25.1795435983509;
        Mon, 23 Nov 2026 04:13:03 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b56ef9fd16sm14611003c88.4.2026.11.23.04.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 04:13:03 -0800 (PST)
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
Date: Mon, 23 Nov 2026 20:12:57 +0800
Message-ID: <20261123121257.562986-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_041304_852419_4AB2F785 
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
