Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BEC606A326
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 21:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HvHDqoNo;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=EjnRb23U
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=rcyx+z1aGLaQv3ACe/aKgC9kqV7OsR8biNtW5PmBkKg=; b=HvHDqoNoYWZL7zZg9hFv2lP+ez
	RRB6L/QiF7Wp4pQnUA+U/GP61ont1dJfrQUin13LNmhsf0ywicGyT5C++V/U6rkBnymwBQDNVfra+
	XT9BZccr8XgwcSX0C+AbZiqnVIbnHg5Cq2NTNeDAhCQAzxuknZlJfp+5SHv14hAeVysaa6uUMUbIX
	LoIhyajBKYndOwIT18yvn7rGFkoH3nGNIFLkA1zht29WIvLHyidAq1LnA5Y1qlOksaLO3XFiDjxiT
	d7eY7La0QT/EDq3goeyV3oocHO6IGk0qOVLCD+WMT/RvAl6/QqijwxlVBNv5t4N7Ct1UOiIX6Md9e
	YAXX7HPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNzXI-00000000TJ9-2uNb;
	Mon, 02 Nov 2026 21:25:48 +0000
Received: from mail-dy2-x0b.google.com ([2607:f8b0:4864:36::b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNzXE-00000000TGF-3H1y
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 21:25:45 +0000
Received: by mail-dy2-x0b.google.com with SMTP id 5a478bee46e88-368c26de2e0so1025498eec.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 13:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793654744; x=1794259544; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0W+v9PJYl7SX+fCzm/LD8ucD6kmU8nLYTAcfnRV/Egk=;
        b=EjnRb23UyzJ7EQgLlJ4DdsrqiDGZJv96o74vDSs4gxO4qmP/ZqZ3YI5n0svD2qje9l
         ahf2y/C24MoFoY2ld4KYrHB1fl9N66WjrxGuxyOhcLPsHSs8GlvwrMW519M1FcdQ4/+1
         dJ9kIIr1npJe3OmZxVQDaVvJWwtvnbxZ5OGGj0BEuhkb9fDqzd1COPTs/E4eZZNVfRtg
         XVIXOpgDtWIXWRdmszli4rduJMWWKHsBtaeAL/0qdwigVmyjmoUoGMobFGJbAgdETTUM
         WqOnfckSgKRwTtUkbV8JxKM46ZezL2nlEoPa3CIDxy6bKL/m+2xnkEdOHUiXBWbwj3M8
         XqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793654744; x=1794259544;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=0W+v9PJYl7SX+fCzm/LD8ucD6kmU8nLYTAcfnRV/Egk=;
        b=UY1r4aD8MM5ztTJ1BOk3iCTOzDZ2tXqP9iwWgK29AmJzeV/IXHxr/rDwwg8prLmUut
         7LCHgevVGVpP2HleikZGLtjpptnRvoq9/95Twz/3MYAWElzOgx++WWvs0phQTlx97gZr
         V2oelTIKOHaNfUFXRnG3ZFE/WoJrfWdOdskc50FkGiUt6XN+8La2qgClt2dA5arCflQq
         MyQ3dW5vXnNYzRxSoOjLojlIt6d3u41SF21Ho8JWOwxple08Ree1m1z6QYYZXPIZ4Uiq
         vGT0yxKj/28TrN89fgoy4d2cNNZtHGlS1s8bXcOrRhw683iEsCZF4erR9dvN1gselzmc
         r8Cw==
X-Forwarded-Encrypted: i=1; AKwUvBy04L+gTc0GBAu9uOimvTwQy5tS1x+isFmHwv81cTR768+3E+OG2XW3KrMdEWXhQ52IsRBBOTv1CjHoGk6AQg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/rKE4psyda8gQNOoVacmNZ4IBZbFePga3As0FkDnFn+CQwtfEz
	bKjD3HbbjKQQZDzrGs50xDhXCUfINOaRnSYZTtBa4EpvelYsdF7r7qpM
X-Gm-Gg: AYBFou31KzH+s+j2ckYW/Y0IKLxFp4Cx7aaDQsizHPBs0dhQtcar//doZAC3fiKLLuO
	TwiivuKagQkVx2xNjbTtBwSOkI6rs5mOf1iCXBAkJn3o4DB0CwKG2xAc675rlzriWdFV1yzXQwe
	jT9U1eFFfIreGMQR0DEy8izFk9d8DCuE0PQY/z2/zzFaGnXkreibnT6Bq6P6yxMhVa/C6PTno9/
	8r6tfxLqiG3Of+QMWBLnRq/Gc1qMJBU+9sGGs5gWpcCSIEo6TnvqYX5gcOTkh6UJ/nAu/jKbJC9
	wsMhFN70NX326Gc27UGkHCtHorHBWUb4rBPdr/a1nYmpRoWyJznDks4TVzO9wOdeXzLapuwwtWN
	dDX2P0kIcoLi5XK+abIZYrXn+Fes0NAGR8cfbVscOh9bM5r+thKqGMlLg1yMvZTv5kYIChc9/p7
	/tyXYRu0Ra1291APnzlkU4PWNdKr5WZKxnqr9y/eLaHxdGuvdqeuC8aldKnW8xveKKFT1LCosbH
	qiXqpNpl49c1J0B11Pb9vJb7b8F07flherfZ3ZVrX++8ojlf6moZZGQ91q/SBMeDcKvlzsUkF7j
	XN6/H7cbr7R3/tnzpl9WMlTsaL8=
X-Received: by 2002:a05:7301:4b0a:b0:369:9af5:7bc9 with SMTP id 5a478bee46e88-36a424199eamr17269236eec.23.1793654743982;
        Mon, 02 Nov 2026 13:25:43 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a428fa380sm37195851eec.12.2026.11.02.13.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 13:25:43 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Jiawen Wu <jiawenwu@trustnetic.com>,
	Mengyuan Lou <mengyuanlou@net-swift.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Heiko Stuebner <heiko@sntech.de>,
	Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
	Fabio Baltieri <fabio.baltieri@gmail.com>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net v3 2/2] net: pcs: xpcs: make supported_interfaces authoritative
Date: Tue,  3 Nov 2026 05:25:07 +0800
Message-ID: <20261102212506.3348537-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261102212506.3348537-1-coiaprant@gmail.com>
References: <20261102212506.3348537-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_132544_824863_6A421FA1 
X-CRM114-Status: GOOD (  18.78  )
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

pcs.supported_interfaces is the mask of interfaces a given xpcs
instance actually supports. The compat table describes what the
Synopsys IP can do in general, but a specific integration may support
a different subset: the RK3568 XPCS supports 1000BASE-X, SGMII and
QSGMII in hardware, but does not implement the C73, 10GBASE-R or 2500BASE-X
modes that the Synopsys compat table advertises.

However, xpcs_find_compat() only walks desc->compat[] and does not look
at pcs.supported_interfaces. If a caller ever passes an interface
outside the mask, the core would still find and configure a compat
entry for it, contradicting the mask the glue already set. This was a
known gap: the mask was written but never consulted by the core.

Fix both sides:

- In xpcs_find_compat(), return NULL when the interface is not in
  pcs.supported_interfaces, so the mask is authoritative for what the
  core will configure.
- In the Rockchip glue, build a platform mask with the three modes
  supported by RK3568 (1000BASE-X, SGMII, QSGMII) and intersect it
  with the core's supported_interfaces using phy_interface_and().
  This narrows the mask inherited from the generic compat table so it
  reflects the actual SoC capabilities.

This is a logical inconsistency rather than a user-visible bug in a
released kernel: the affected Rockchip platform is not present in any
released version, and the MAC side forces the phy mode, so phylink does
not normally pass an interface outside the mask. The patch makes the
mask the single source of truth for both the core and the glue.

Fixes: b9e7cb89aac8 ("net: pcs: xpcs: add Rockchip RK3568 platform glue driver")
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/pcs/pcs-xpcs-rk.c | 10 ++++++++++
 drivers/net/pcs/pcs-xpcs.c    |  3 +++
 2 files changed, 13 insertions(+)

diff --git a/drivers/net/pcs/pcs-xpcs-rk.c b/drivers/net/pcs/pcs-xpcs-rk.c
index 6f0a110e32d2..25fdc9c6b72c 100644
--- a/drivers/net/pcs/pcs-xpcs-rk.c
+++ b/drivers/net/pcs/pcs-xpcs-rk.c
@@ -483,6 +483,7 @@ struct dw_xpcs *xpcs_rk_create(struct device *dev, struct device_node *pcs, int
 	struct platform_device *pdev;
 	struct dw_xpcs_rk *pxpcs;
 	struct dw_xpcs *xpcs;
+	DECLARE_PHY_INTERFACE_MASK_ZERO(supported_interfaces);
 
 	if (!of_device_is_available(pcs))
 		return ERR_PTR(-ENODEV);
@@ -536,6 +537,15 @@ struct dw_xpcs *xpcs_rk_create(struct device *dev, struct device_node *pcs, int
 		return xpcs;
 	}
 
+	/*
+	 * The RK3568 XPCS supports 1000BASE-X, SGMII and QSGMII.
+	 */
+	__set_bit(PHY_INTERFACE_MODE_1000BASEX, supported_interfaces);
+	__set_bit(PHY_INTERFACE_MODE_SGMII, supported_interfaces);
+	__set_bit(PHY_INTERFACE_MODE_QSGMII, supported_interfaces);
+	phy_interface_and(xpcs->pcs.supported_interfaces, xpcs->pcs.supported_interfaces,
+			  supported_interfaces);
+
 	xpcs_config_eee_mult_fact(xpcs, pxpcs->eee_mult_fact);
 	put_device(&pdev->dev);
 	return xpcs;
diff --git a/drivers/net/pcs/pcs-xpcs.c b/drivers/net/pcs/pcs-xpcs.c
index 6466e0ff2a98..46878a66064e 100644
--- a/drivers/net/pcs/pcs-xpcs.c
+++ b/drivers/net/pcs/pcs-xpcs.c
@@ -169,6 +169,9 @@ xpcs_find_compat(struct dw_xpcs *xpcs, phy_interface_t interface)
 {
 	const struct dw_xpcs_compat *compat;
 
+	if (!test_bit(interface, xpcs->pcs.supported_interfaces))
+		return NULL;
+
 	for (compat = xpcs->desc->compat; compat->supported; compat++)
 		if (compat->interface == interface)
 			return compat;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
