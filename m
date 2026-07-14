Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD014C44507
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 19:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8XaItXm6CkK/xC04unnAYnQ27OHaS79MmCOYHqmxntk=; b=QuLZH5uFzgNhkW
	INoTY1wOIDrkbHKYN/0FCvNT8x3NSzpXUsVBPG51yg9iHIaaFOfhL6ks4wnNcwl92hklWZdbsErAa
	IJSRq7zexOYq2hMyem1rmpWpqJV01iEK2fv1D8UCQgkQFRrEA3ZKEnAB0jwwm6x8CkuvUozSoc3zE
	4r0n61+iD1TPIGZBbKwPPn82E0rCo9RJOl5NcEHfc7LgvC8ENrgxOi4XZ+OWf394Cj/hHMVd5OCqs
	wozegZsQHZiafLr+2CMBmGNYoIvvXyEv9SE12KpUdC8v44le7Ylc2hf1jTmAdw2oAkrTUA7acNmzT
	ZD4/6vPofqP9T0LKIwLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiaK-0000000D0Hf-3Ygq;
	Tue, 14 Jul 2026 19:14:28 +0000
Received: from mail-pj2-x02.google.com ([2607:f8b0:4864:39::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiaG-0000000D0BK-0ezT
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 19:14:25 +0000
Received: by mail-pj2-x02.google.com with SMTP id d9443c01a7336-2ccbff2e6a7so31004905ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 12:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784056463; x=1784661263; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aoOE61isMDDd8GP85+DE7oVM8lZchbPwwJGNjzXuY8g=;
        b=PcqndnnpmAl+4D4kICKoxDGMMn4b8kE2aEr2bY/dPy1AjfICW9+M3TvvKiYTWgywPB
         vcnn2iPdav5zB90uX+77r6vCiibGnpfFtvp2M2/dCRgNPgfXNarLJMcdwik+q3WOnPYh
         U93nz3vWcDWRryOVbkn+U+YHgGEEdyOzoqEtYmPmK64qmJIdW54h6kh+QmqoZkQ1M8x6
         AY8//TTqIp/AArmq3Y4tkIlSMc05yDJ9RH+EuwrpLC9FkFZKLCXDW7MCs1pd/kz9G8CQ
         HhpBI1n5DMyBhT24rkttDKWLrJzZJpQ+ndU0X8NPAORSnuAsQiizB9FlQaCMC9jNqhxe
         ZAHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784056463; x=1784661263;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=aoOE61isMDDd8GP85+DE7oVM8lZchbPwwJGNjzXuY8g=;
        b=JkRAKGhmdYTw3Uoo3rCk/2++wHWABs5EzntGhFI+RGKZGM0dWp8XHhs2d/HDV30xad
         2S12JneTnq/6I81XyqAXzaQsIapUNtWEZ46vIyL3Cxa7An731Z/286l8tVMIcU52Ky7/
         X7h3SrgoOluMKOhJrTFnDJMsa9Z/w7htDV0b65UN/bH4XBHqiTsi9KURkKdPRxCaDqov
         p7Khamv9RUGgq8RIFMtDBtp038dz5hz5/3h37/cFQZEC7KKDiwE1Xj72gZzS1Rh0BzVn
         +EqK+npEzy9F4Gz3Zk+OtX6c/k/4GWcMYLKL5uXOB1FCgRG2BjGQloOcdQBiP2yw1cFx
         GPDg==
X-Forwarded-Encrypted: i=1; AHgh+RrhXhHv5AVM8n8CiFtHD7dLsyEUmt8d4x3FLGW72HrdLlXbY0Bxn90QrK2AVq8xkGeRte3DMfy++Fr5lb+Icw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyj8cNI21I1HCkiDAkX+1kzMjS43JvwHAExIr5K8YkjFNWAJaXL
	TN44hHbdd5KC36i/sHbNdvIk8tEVaFm4RQrOFAqIH6D19QtwycRkn/Ld
X-Gm-Gg: AfdE7cn6zU8B31xxx4/2EXvauexGlsoxQKs6Zi/sxYXHCtizHmNATHJfpMKIVEwPv3U
	IkZo1qVmCwC/BF+1bGltsW5vjMhKLzyBM44hOVGEUNiAfBbqmTY1iujSBPjlt8y5lKLWFee8gUO
	Yqgw2IqX7r2GFoZEj5YoE3OTbYNFURiiKrs6H7HR5JyPHcLor97dnmEJ4cWDUr3ZSxiBY5xHSXK
	aBDW0iJdMS6FsNWENjQN0olqA7b6opix6WHSL/bCcbbKq2ooBQQw0eSc1BmXfkUlZi/+sWP5r80
	nGwu05GRl9rQIe4YNw9vsvJwnpr+KqN/SOk68nqqBBrjvw2A0XRBN1YRy3TMsotsfljq8gH/Gny
	+xSqxzu/0NuMrKJVEYr2mZNqVHg99PWVjDMEjnTA6KvFOxeelT6AxYQZj784Ioo2s5FumsnIHX0
	6al96mEk5d/X0=
X-Received: by 2002:a17:902:da81:b0:2ca:cee0:e172 with SMTP id d9443c01a7336-2cef12fc5a6mr38647055ad.30.1784056463494;
        Tue, 14 Jul 2026 12:14:23 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d3d451sm120763245ad.65.2026.07.14.12.14.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:14:22 -0700 (PDT)
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
Subject: [RFC PATCH 06/10] net: pcs: xpcs: improve SGMII AN state handling for Rockchip RK3568
Date: Wed, 15 Jul 2026 03:08:34 +0800
Message-ID: <20260714191341.690906-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714191341.690906-1-coiaprant@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_121424_233138_B4E0CB6B 
X-CRM114-Status: GOOD (  17.13  )
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

Commit 2a22b7ae2fa3 ("net: pcs: xpcs: adapt Wangxun NICs for SGMII mode")
added support for reading CL37_ANCMPLT_INTR and then reading BMCR for
speed/duplex.  This may work on Wangxun hardware but not on RK3568.

On RK3568, reading BMCR returns a fixed value (HW Reset Value or Write
Manual) instead of the negotiated result, so the correct speed/duplex
must be read from CL37_ANSGM_STS.  Also, when the link is down,
CL37_ANCMPLT_INTR stays set and the PCS does not restart AN automatically
when the PHY link returns, so an explicit AN restart via BMCR_ANRESTART
is needed.

Modify xpcs_get_state_c37_sgmii() to check CL37_ANSGM_STS for link
status first.  If the link is up, report the state.  If AN is complete
(CL37_ANCMPLT_INTR set), clear the interrupt and restart AN for
non-Wangxun platforms.  The original Wangxun-specific path is kept
unchanged unless we confirm it's a bug not a feature.

Also clear CL37 AN complete status in xpcs_config_aneg_c37_sgmii()
before starting AN to ensure a clean initial state.

Fixes: 2a22b7ae2fa3 ("net: pcs: xpcs: adapt Wangxun NICs for SGMII mode")
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/pcs/pcs-xpcs.c | 31 ++++++++++++++++++++++++++++---
 1 file changed, 28 insertions(+), 3 deletions(-)

diff --git a/drivers/net/pcs/pcs-xpcs.c b/drivers/net/pcs/pcs-xpcs.c
index e69fa2f0a0e8d..cf370ba247cac 100644
--- a/drivers/net/pcs/pcs-xpcs.c
+++ b/drivers/net/pcs/pcs-xpcs.c
@@ -816,6 +816,11 @@ static int xpcs_config_aneg_c37_sgmii(struct dw_xpcs *xpcs,
 	if (ret < 0)
 		return ret;
 
+	/* Clear CL37 AN complete status */
+	ret = xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
+	if (ret < 0)
+		return ret;
+
 	if (neg_mode == PHYLINK_PCS_NEG_INBAND_ENABLED)
 		ret = xpcs_write(xpcs, MDIO_MMD_VEND2, MII_BMCR,
 				 mdio_ctrl | BMCR_ANENABLE);
@@ -884,7 +889,7 @@ static int xpcs_config_aneg_c37_1000basex(struct dw_xpcs *xpcs,
 
 	if (neg_mode == PHYLINK_PCS_NEG_INBAND_ENABLED) {
 		ret = xpcs_write(xpcs, MDIO_MMD_VEND2, MII_BMCR,
-				 mdio_ctrl | BMCR_ANENABLE);
+				 mdio_ctrl | BMCR_ANENABLE | BMCR_ANRESTART);
 		if (ret < 0)
 			return ret;
 	}
@@ -1058,6 +1063,7 @@ static int xpcs_get_state_c37_sgmii(struct dw_xpcs *xpcs,
 
 	/* Reset link_state */
 	state->link = false;
+	state->an_complete = false;
 	state->speed = SPEED_UNKNOWN;
 	state->duplex = DUPLEX_UNKNOWN;
 	state->pause = 0;
@@ -1069,6 +1075,8 @@ static int xpcs_get_state_c37_sgmii(struct dw_xpcs *xpcs,
 	if (ret < 0)
 		return ret;
 
+	state->an_complete = ret & DW_VR_MII_AN_STS_C37_ANCMPLT_INTR;
+
 	if (ret & DW_VR_MII_C37_ANSGM_SP_LNKSTS) {
 		int speed_value;
 
@@ -1086,7 +1094,24 @@ static int xpcs_get_state_c37_sgmii(struct dw_xpcs *xpcs,
 			state->duplex = DUPLEX_FULL;
 		else
 			state->duplex = DUPLEX_HALF;
-	} else if (ret == DW_VR_MII_AN_STS_C37_ANCMPLT_INTR) {
+
+		return 0;
+	}
+
+	/* Clear AN complete status or interrupt */
+	if (state->an_complete)
+		xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
+
+	if (xpcs->info.pma != WX_TXGBE_XPCS_PMA_10G_ID) {
+		/* If the link down, restart Auto-Negotiation */
+		if (state->an_complete)
+			xpcs_modify(xpcs, MDIO_MMD_VEND2, MII_BMCR, BMCR_ANRESTART,
+				    BMCR_ANRESTART);
+
+		return 0;
+	}
+
+	if (ret == DW_VR_MII_AN_STS_C37_ANCMPLT_INTR) {
 		int speed, duplex;
 
 		state->link = true;
@@ -1112,7 +1137,7 @@ static int xpcs_get_state_c37_sgmii(struct dw_xpcs *xpcs,
 		else if (duplex & ADVERTISE_1000XHALF)
 			state->duplex = DUPLEX_HALF;
 
-		xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
+		return 0;
 	}
 
 	return 0;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
