Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF2C606A31A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 10:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lythAyB5;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=lqfwxAit
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=dTkrEqLqN+5J2vNU54PcvSsEGh/t5+grgzwu5L2cYKM=; b=lythAyB5WMKcNjUc4gDnC52PRh
	SC9NyMbRUCD4KLVRlViq8WK8EEsfTuK+Imx+dkzpjLKJxiWVOaw9kokPj3Bcac9XgKYtUd9H/qzTt
	fzX1Xd7yPmsOrBtdfFsCfjYRnhScI1vwfGS735u9Hop6DtVAZJRxxNT7rYF9+a+XY6kAunigWJTw6
	KROFnsFIdOIYRp5MIVfRyt+U8HzUqsVLbpG7nl4om/dO4Qkm9/V1RQN/xM3V2xyhoj3WFLMypID5i
	BoArmqW3H3wWcNVxzDLJN4oh+tUzoGw9K2K7QaHXPFjzAiHNYdqlSXCAVtJk3jOfAZ2onLv4Jf2oq
	fbvu1pgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMNMW-00000008z2b-1W3A;
	Thu, 29 Oct 2026 10:28:00 +0000
Received: from mail-dl2-x09.google.com ([2607:f8b0:4864:38::9])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMNMU-00000008z29-0TzI
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 10:27:59 +0000
Received: by mail-dl2-x09.google.com with SMTP id a92af1059eb24-164f08a9e84so464558c88.1
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 03:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793269677; x=1793874477; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=DnYYldOHNT4jayxYyWDlCgPG99APkcSyvyyLERzh7ms=;
        b=lqfwxAit37ovntGFG7tELDujuTxW80fP+LkRA8Mc+ciWpE4MtTJBxMu3PZc/UvIYLw
         l1LLM7cjCu2JRukUNTEOpxMdRZZHZOsBvF5vUcvcOelKxpm8U2m44VGl75EIZ76Ofey2
         jSS1Dti6v85iQwM9SWlXCuuHyaT31yUsoC/FvYUpFsiY6ZvxRATUEyf3FFe/lQrMH0DR
         PDUpGrwZbJCfAmpa7A93dc+Y+GKUlLFNdEanoAVvPHfx8ni2Lk8LUU52Kp6Q0tHW1Vja
         u0jJvWlvkU7CG159VVc6sA5FRPmNeUgOAxHaTKp4C6ixdbav663Jo0mejLVbphbtByN0
         H7ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793269677; x=1793874477;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DnYYldOHNT4jayxYyWDlCgPG99APkcSyvyyLERzh7ms=;
        b=E8iQkSlhDGSLvgT0uaF7EhoZpGWHvcKvfjABdgjba4tG8ulj33bs5l32lcD3+ni+wP
         esTG+EpYJZlNslt2TqbtLoo/zFGesHf0m/nDi1bfmdGh6HTUdgfy7BWQrJ80S1pi03Kl
         ZifvCi2xOqneczbdrjvNYY9cLnzB3IpuGDl1jCObezk85UJr3mag6GaH2L1FgCgPVJrq
         TjCz2QWcD5zu9Nulo5Vywcak+cxaTkNuauaogB/QY9NC48i7mpZJet+IopY9qa1CC2SS
         ip1LZRBAqvAcj8kgytkQ5xAVjGw/PR7v5UmoQQxBuOf8Zpyc1xn5Dz4dx/PuotThBfjZ
         CydA==
X-Forwarded-Encrypted: i=1; AKwUvBzJSQ/Rh+6zL0/AjHbq2AM6U14jr1tpthdR4ldULhLaKmRO5PV/9knC84QR92EcbKBEUdYGNER83+DtHNxV9Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYJfg5hO3rUOCy4sliHyjxuFVgHJPEqIBxe5ceO/utWu+gNMTR7+
	0DZc8l0c1PvlQO56SsOYCP5Q+XyHJeIRFvdO/QQDlTmLJd6rnhjJsAYC
X-Gm-Gg: AYBFou3x/nXk6h7kej1vOtxyzt47bhqHIQ5GBMROCaOGVywE3tHATj24ss4x60wY77y
	i/9GcXv5YDealRohqerQQARZO9hEX7RrhlDqdeKFdYQxf4Ps34VMPwj7MurHY4WuNRvsbXIUV7h
	NHoisshEAZ2QXk1s85yF74H6y/IIfuJGYSBTLFYpiq4oOD9Q224kv/hz99v+n5lhyQ1ysXOLwZT
	RJC1uzWNscm88rO7dlcPaKoFYOAD0x9CFgW9bYbw4QUKB3cobJP/wlgrwsl2MuJ0gQ0fLuHsx0J
	qYiKGc5pupUSquoo5vCFVd7dbPSipgmhpHPeOqNU72ifQByN33KpyEB0feyXvx0uE/BJAgCbbVf
	47dlmeFGkeyKID+aSxIUGNziH6p0osMVzGTqyQ8MHP/qD4/oowHR+yX9tS75G6BIbiixd0OLmzQ
	/1g9DgMKW4ZIan4OGd2r/bD7RnZujfpNpxIZ2bdC85Uvse9v1rVY2xdIHGcYiYTm6y1ZmK7Bv/S
	n2RZR3ze6po+pUWKaAKD+qZGi54PHpvDesw6CRabcwkR9VBU83OALE4num0Ksm81FG2HSYe9NSZ
	DOtPoS8tGJ9drZdQl/BjWXwo0PZfdQqSNX1nAQi0cKt+xq5w
X-Received: by 2002:a05:701b:4503:20b0:144:fb42:52 with SMTP id a92af1059eb24-1a6ceba5bf9mr6386744c88.28.1793269676390;
        Thu, 29 Oct 2026 03:27:56 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1a75d85f23dsm11958719c88.11.2026.10.29.03.27.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 03:27:55 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Coia Prant <coiaprant@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net v2] net: pcs: xpcs: make supported_interfaces authoritative
Date: Thu, 29 Oct 2026 18:27:29 +0800
Message-ID: <20261029102728.3189359-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_032758_183264_0277054E 
X-CRM114-Status: GOOD (  19.24  )
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
QSGMII in hardware, but does not implement the C73 10G or 2500BASE-X
modes that the Synopsys compat table advertises.

The Rockchip glue currently advertises only SGMII, since that is what
the RK3568 MAC side supports today. 1000BASE-X and QSGMII can be added
later when the MAC side gains support.

Without narrowing the mask, stmmac_phylink_setup() merges the PCS
supported_interfaces into the MAC mask with phy_interface_or(), so the
XPCS would contribute 1000BASE-X, 2500BASE-X, USXGMII and the 10G/25G
modes to the combined set. The MAC side forces the phy modes and
phylink start passes the mode explicitly, so this does not currently
make phylink switch to an unsupported mode, but the combined mask still
advertises interfaces the SoC cannot use.

However, xpcs_find_compat() only walks desc->compat[] and does not look
at pcs.supported_interfaces. If a caller ever passes an interface
outside the mask, the core would still find and configure a compat
entry for it, contradicting the mask the glue already set. This was a
known gap: the mask was written but never consulted by the core.

Fix both sides:

- In xpcs_find_compat(), return NULL when the interface is not in
  pcs.supported_interfaces, so the mask is authoritative for what the
  core will configure.
- In the Rockchip glue, clear the mask inherited from the compat table
  and advertise only SGMII, matching what the RK3568 integration
  exposes today.

This is a logical inconsistency rather than a user-visible bug in a
released kernel: the affected Rockchip platform is not present in any
released version, and the MAC side forces the phy mode, so phylink does
not normally pass an interface outside the mask. The patch makes the
mask the single source of truth for both the core and the glue.

1000BASE-X and QSGMII can be enabled later when the MAC side supports
them. The C73 10G and 2500BASE-X modes are not implemented on RK3568
and are cleared by the mask.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/pcs/pcs-xpcs-rk.c | 6 ++++++
 drivers/net/pcs/pcs-xpcs.c    | 3 +++
 2 files changed, 9 insertions(+)

diff --git a/drivers/net/pcs/pcs-xpcs-rk.c b/drivers/net/pcs/pcs-xpcs-rk.c
index 6f0a110e32d2..cc11a70d624f 100644
--- a/drivers/net/pcs/pcs-xpcs-rk.c
+++ b/drivers/net/pcs/pcs-xpcs-rk.c
@@ -536,6 +536,12 @@ struct dw_xpcs *xpcs_rk_create(struct device *dev, struct device_node *pcs, int
 		return xpcs;
 	}
 
+	/*
+	 * The RK3568 XPCS supports 1000BASE-X, SGMII and QSGMII.
+	 */
+	phy_interface_zero(xpcs->pcs.supported_interfaces);
+	__set_bit(PHY_INTERFACE_MODE_SGMII, xpcs->pcs.supported_interfaces);
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
