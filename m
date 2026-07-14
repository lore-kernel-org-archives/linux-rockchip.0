Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99022C4450A
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 19:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HftvmksTC26FRUwyInWEFZw/0q4cfeftCZGreiF4/Qw=; b=ufJr2PvsEkLWaR
	dvG/4bNpNNC/dkMf6IwW49pgCkVUVERGKgBk84WOqfHfBuwBrlkPTMuWAcl7Q7nD157gS/jdNOxEH
	RBdXHlQDKwwl8xR4JUtli6Yanu/TW2+sSCHYYtGYO8+5av0AxWiUK60fjeFWzEN5fRkpbzFZ5lChh
	BEP+dJFDCtQ7aWk2ahRtoYHGoj2GQdFACK+IQMnzkwOxIg911UcZOFclpmAJJH32g6JzceDPRvRHH
	Y5BhAzLmt8pNumV5u+kttrfX87bbBwpWMPfdDo74eDrUoRvGMV87XMpgi2v3wx/7kbwzJt37Cr6BH
	nZkCUnS4EVnY3/aRn0Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjia4-0000000Czwm-2HAn;
	Tue, 14 Jul 2026 19:14:12 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjia0-0000000Czpb-1qgf
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 19:14:11 +0000
Received: by mail-pj2-x0b.google.com with SMTP id d9443c01a7336-2ceb5a39c48so4974765ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 12:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784056448; x=1784661248; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pmQewzkR5beR2pgYuttXOlNbbfZWq2Schv5a88VtBYQ=;
        b=LH3B6dhUbslf804An34XZmUPyU/7mDzWOR4d6QyZumh4I03WGTQP+Ow37/WUOEqWH5
         sHmShcjmxNQVBIjkCvPNfIlTCI8TZ7YUgP6YQphi1TRjwP7yhniOehNvNfPp+StEO3Ku
         qyjQ7dLjlWmM5DP0poRlWsAX1gGCtpooaa/fMN48RX+q1TEyAwdHFNSK9q/6/JzS31+k
         2CBKDHYMQnCzIKZtnqH4VaD/Pq9BYERm/CbMZj92ipFNBeCzP0eT8lFf/IGUb0vpxVyo
         49X1J3C3WEFpjNB3dq3cBA7H9NFEc0IJjfSHz1WWgjrYpOJFr/rKLmMiFTQqeFecMEwt
         NqqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784056448; x=1784661248;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=pmQewzkR5beR2pgYuttXOlNbbfZWq2Schv5a88VtBYQ=;
        b=oV3Pm2zkZIHSpv0dXb678+6ZPwOCmy6SzZBy+zAFe2C6WQU4jw9H8QI6f4oV2TA40T
         c9MHtc5rbTnmalk/GitNVe+bJXCqijpG8LxSeTvkRRErbxRkbiHTq/ukYoQs4/LQ5NoU
         muuja4+kxK9KBaqJkiLLYEMb4mzLjRWpppqNp2QXpEqmRufeqXNWbBbuAuwvVzuPre4A
         HJJ0LAVOlHhKmqmezFHfYAoVCiVcfPQPyjJiOcau0psHSgDh+NtyrM1a6Cg0JHGcaJz5
         SdGKiyTRmhnusV7UvEaRPU1eAIlqzo2tSiKoCxKgng+caH08OY9p0CjPrMfkx0pZ6IsV
         22+w==
X-Forwarded-Encrypted: i=1; AHgh+RryQ9a3GndRmBiezg7+VME7/cxV56tz06vJqq105Ww+8fda5fAI4oo6kTHvrq8pACu7eEE/leG2qmp80ZcpKA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwoY7JdF3fuucZN1SSnBTSBfa2bsLl64MvOuOSemJLYeGc4+nm7
	Olv7/ax6t78wJQnu4qqZjLoTNq7a4OUH18o/ablMOZpqoof1cYIPjqsR
X-Gm-Gg: AfdE7clujW2ncRUM3uyASKhnw9l/6U/P4B3eNfpxejeF2hzdA1P/RMjJ2Mgkgl5Ovz3
	P18VE7y2qnubp61eUnO2pEJqDj6r9Uao8+qigWe9OAQJMrToLmsUmrGksa2zc6XAqvTMcR+TjGw
	83QnhXKbuYKBijxLe5iO4mU0ro1mVg55Ndl/Vfnu8SZI8hrp5EVpsDJ5fPwoZ8rNKEiEzw/XFxd
	RbWTL9JDuYLoy+hadwgUD/cXxzhPdtN3E737BXkStAoECXsA4H7J2FgWWpRBBzuWcHRQwqqCINj
	0YaFmIdFlHXT0XOlSvqsJtrE33QJDubg6OU8zoTpa44Xfp33VaCC0dj9i8xaDAfoa/OzEzZ+gba
	Kgjtgj6wM2XQKGLGZ79uNdy8bYxwzXJeNfibtgOPh1G5gBwIZVsqeBKXzNt8GfAheLUc497I3hF
	hDEbxdjZdsZ8efDDMqmqaP4ajxQMvWMsp7
X-Received: by 2002:a17:903:292:b0:2ca:52ce:6f91 with SMTP id d9443c01a7336-2ce9f285148mr135561755ad.27.1784056447537;
        Tue, 14 Jul 2026 12:14:07 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d3d451sm120763245ad.65.2026.07.14.12.14.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:14:07 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: kuba@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	andrew+netdev@lunn.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de
Cc: netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [RFC PATCH 03/10] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Wed, 15 Jul 2026 03:08:31 +0800
Message-ID: <20260714191341.690906-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714191341.690906-1-coiaprant@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_121408_544647_F3E35C8C 
X-CRM114-Status: GOOD (  13.13  )
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

On RK3568, the SGMII interface can be routed to either GMAC0 or
GMAC1 via the GRF register pipe_sgmii_mac_sel.

Add support for this selection by introducing
the "rockchip,sgmii-mac-sel" DT property.

When the property is set to a non-zero value, GMAC1 is selected;
otherwise GMAC0 remains the default. (HW Reset Value: GMAC1)

This is necessary for boards such as the Ariaboard Photonicat, which
uses the SGMII interface connected to GMAC0.

Link: https://dl.radxa.com/rock3/docs/hw/datasheet/Rockchip%20RK3568%20TRM%20Part1%20V1.1-20210301.pdf (Page 229)
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 2b0f152f54709..ff290bc18589a 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -186,6 +186,7 @@ struct rockchip_combphy_grfcfg {
 	struct combphy_reg pipe_xpcs_phy_ready;
 	struct combphy_reg pipe_pcie1l0_sel;
 	struct combphy_reg pipe_pcie1l1_sel;
+	struct combphy_reg pipe_sgmii_mac_sel;
 	struct combphy_reg u3otg0_port_en;
 	struct combphy_reg u3otg1_port_en;
 };
@@ -212,6 +213,7 @@ struct rockchip_combphy_priv {
 	bool enable_ssc;
 	bool ext_refclk;
 	struct clk *refclk;
+	u32 sgmii_mac_sel;
 };
 
 static void rockchip_combphy_updatel(struct rockchip_combphy_priv *priv,
@@ -375,6 +377,9 @@ static int rockchip_combphy_parse_dt(struct device *dev, struct rockchip_combphy
 
 	priv->ext_refclk = device_property_present(dev, "rockchip,ext-refclk");
 
+	priv->sgmii_mac_sel = 0;
+	device_property_read_u32(dev, "rockchip,sgmii-mac-sel", &priv->sgmii_mac_sel);
+
 	priv->phy_rst = devm_reset_control_get_exclusive(dev, "phy");
 	/* fallback to old behaviour */
 	if (PTR_ERR(priv->phy_rst) == -ENOENT)
@@ -873,6 +878,8 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
 		break;
 
 	case PHY_TYPE_SGMII:
+		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_sgmii_mac_sel,
+					priv->sgmii_mac_sel > 0);
 		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_xpcs_phy_ready, true);
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_phymode_sel, true);
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_sel_qsgmii, true);
@@ -984,6 +991,7 @@ static const struct rockchip_combphy_grfcfg rk3568_combphy_grfcfgs = {
 	.con3_for_sata		= { 0x000c, 15, 0, 0x00, 0x4407 },
 	/* pipe-grf */
 	.pipe_con0_for_sata	= { 0x0000, 15, 0, 0x00, 0x2220 },
+	.pipe_sgmii_mac_sel	= { 0x0040, 1, 1, 0x00, 0x01 },
 	.pipe_xpcs_phy_ready	= { 0x0040, 2, 2, 0x00, 0x01 },
 	.u3otg0_port_en		= { 0x0104, 15, 0, 0x0181, 0x1100 },
 	.u3otg1_port_en		= { 0x0144, 15, 0, 0x0181, 0x1100 },
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
