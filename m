Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D158606A32F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 17:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oskgCzJO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Ry3P135U
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=sNSDiyJgmPbvOzsfnfkufoB/hMrgXY/DUQP+2g0124c=; b=oskgCzJOFKGqsAOIpr8dxm5Jd7
	oul7vVhx5dZOA+tmBBr9IZXZsG3comjHWjKcmBLEtN8i+yX0CuExFVRXiu3SM+HPlah5umHv37Huw
	8aWmixW6ZVhdn06Gn6TaOwuQoL1vAPjwMMm5ukjtF1Fh8ddumohlUpWQRHErcRDRfEbaBFzmR1Dsc
	27eyvUhxZ+3UxOR+11jZdD6zXzALUuzhE6fO6tlrSaXeVyrOx65YSFv/4I1gNduDkC19F4Y3Ak/Sh
	IM9xeAqXLdILIICO4iVxIm6wSBrOjtFx40IV3w/7R2JJtt2oiPAW0M5FOKczNhVQhDW8JxIsa+2wu
	7txCuqHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTNM6-00000006hCM-2Q4a;
	Tue, 17 Nov 2026 17:52:30 +0000
Received: from mail-dl2-x06.google.com ([2607:f8b0:4864:38::6])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTNM1-00000006hAz-2nFJ
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 17:52:27 +0000
Received: by mail-dl2-x06.google.com with SMTP id a92af1059eb24-1b3a6a69818so8150c88.1
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Nov 2026 09:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794937945; x=1795542745; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=S+Ti2XySKByWl6iWYw7n5gpexCdMj20kwqBBEEmSa+Q=;
        b=Ry3P135U8sVS9neSCx9AgoAgTpp5qXbT25Jdocn3lptdy9UZyeDt3GjVrkynG3Ebhp
         FexF1QNtgpzZl5HQ+12ffSK2GJZ1vKPw9+DwaATY4kf1Up4jJpjJueH5Twb2H4L77WGx
         veTc2dAj3bNLCZiJSp/MMuHGScgQQvds1ybFW0ASPxNCIIxJrXFRnuLHru8D1hhVlho1
         OwVjhibBJbLCUO+B3eCQ5beEH0L8YzVbOgTLhm8gpMk355k7U0ak4rQdYNo+Ddh1Z0/1
         reIX/AKVcTHYPHLbS5NeXYUIWBnCXBnR/cNqlWvnCLlXpEkbYzYxhk5nYgbTze3h+dRz
         4fZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794937945; x=1795542745;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=S+Ti2XySKByWl6iWYw7n5gpexCdMj20kwqBBEEmSa+Q=;
        b=AZvNY2whHDtGs6hxG304XlZ42nUhgfEJnBRvco9IAGQ4jN2mCu8m/QuiPGfxYDPLfW
         wg7mjozqr7fqi0pFvfqPte2hPzzmxl+K9yqwK566xko8NawQS/+nIgdh912F594SNOEw
         fF1/yscXFcD76gsYobp/BcQudskHlw1yOrgAPedKbKfAqs2ydOMyGstp9x4IPbgxYSiD
         nrZT4SfU7ZXLwGCYySejFrFhBeprloiiVo3Q29Sa8/sA88OXdZDXwnR6W1KW2MqA+/UA
         akMcDT33joecEWmNFvpqVDpI08b6BBMTt5YdNaCa7Z5OUawKqZPEgS1wKcGVIH7fvBan
         zK4g==
X-Forwarded-Encrypted: i=1; AL+hErGZjMaiJGoIFNmQtvjT2+yNSiNHdWo1MgSRcEVjoS53VdxXlBiFKlHTkd/rlGGgBCf9O3bsEFlKSuQUV5vDuQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+rf0yGvBG/iDR1F0bdGq3QBFDC+0r5evBHfxDkOv838zWVH4Yp
	eeVd9sg+SsPFXtzTgtqh8m9gNp2UpInO5aURVYMXoM6tUdL1X2IdkBms
X-Gm-Gg: AYBFou3/T81i3aFx3bRM1KuVYRGJLduCQLVdNptXqzR97ceaUpRf9Sm51BJe4reM8iE
	iQeWQ+zxML4FxbeNZJe3f2n7h63Xjk4VJjyX2ziTkh17hLy0Zji9RnIhNqppDwB3WpBiISLNRAt
	N16BX3INK0vcfHIFkIixa3XkvXkCzYfLVh2UaCcajjWS0Gsa+S9BJTj27HMaUhNlYb8/MRStme7
	iDIeKSENAwRtnOBMAgAKLtZRGUTUK6UzvA2obegaDK3aIeRPBCC7xfg/+S2vsTPz2cBeEF1cD+e
	JsVuQDNYcsdbIbMFZhdPYQjo6zcUsJOcoVt4XShtBQn6obN9AXRRHuvJNMjvCfVEwxmgbEzrx16
	0eCBzA057so6947Sn7pg3uEcvWqgISNT4MX2TVivcPzNi7B6X2nyGk8iP6k8mYugedCISZ8QyLn
	UX4aCAkD8jk9JRPMN3rAId0+V/61PtgA9vGTsV0j9SpWbokelwDbw+liJ0GDwkxfJ4GwAsh0rUs
	a2ahfQ4K2DGjPNmrcsghlg0mj9gwM1eZC2ZQqJKggwnR/OBMSTTSD65rUiGiIZ663Jvx3PbguXr
	OPnnIY9xmnezjKU9Qbti6jRGz6N+cTPSpbpqtvaONvjaa4EQq7/4iSOQajzjf0zEg7J4DpaKyYM
	kBi7j
X-Received: by 2002:a05:701a:cccb:10b0:1b2:43cc:48 with SMTP id a92af1059eb24-1b543d32f1cmr240596c88.33.1794937944414;
        Tue, 17 Nov 2026 09:52:24 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5031b2519sm38272460c88.13.2026.11.17.09.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 09:52:23 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net-next v5] net: pcs: xpcs: make supported_interfaces authoritative
Date: Wed, 18 Nov 2026 01:52:15 +0800
Message-ID: <20261117175215.3015703-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_095225_735978_666D98C8 
X-CRM114-Status: GOOD (  17.25  )
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
a different subset. For example, the RK3568 XPCS supports 1000BASE-X,
SGMII and QSGMII in hardware, but does not implement the C73,
10GBASE-R or 2500BASE-X modes that the Synopsys compat table
advertises.

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

Note that QSGMII is currently filtered out (a no-op) because the core's
compat table does not support it yet, which demonstrates the intended
filtering behavior of this intersection.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
Changes since v4:
- replace DECLARE_PHY_INTERFACE_MASK_ZERO with DECLARE_PHY_INTERFACE_MASK and initialize it to { 0, }.

Links:
- https://lore.kernel.org/all/20261029094916.3127193-2-coiaprant@gmail.com/ (v1)
- https://lore.kernel.org/all/20261029102728.3189359-2-coiaprant@gmail.com/ (v2)
- https://lore.kernel.org/all/20261102212506.3348537-1-coiaprant@gmail.com/ (v3)
- https://lore.kernel.org/all/20261110160554.918652-1-coiaprant@gmail.com/ (v4)

 drivers/net/pcs/pcs-xpcs-rk.c | 10 ++++++++++
 drivers/net/pcs/pcs-xpcs.c    |  3 +++
 2 files changed, 13 insertions(+)

diff --git a/drivers/net/pcs/pcs-xpcs-rk.c b/drivers/net/pcs/pcs-xpcs-rk.c
index ad187fba4e9d..e0057545329a 100644
--- a/drivers/net/pcs/pcs-xpcs-rk.c
+++ b/drivers/net/pcs/pcs-xpcs-rk.c
@@ -480,6 +480,7 @@ MODULE_DEVICE_TABLE(of, xpcs_rk_of_ids);
 
 struct dw_xpcs *xpcs_rk_create(struct device *dev, struct device_node *pcs, int port)
 {
+	DECLARE_PHY_INTERFACE_MASK(supported_interfaces) = { 0, };
 	struct platform_device *pdev;
 	struct dw_xpcs_rk *pxpcs;
 	struct dw_xpcs *xpcs;
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
