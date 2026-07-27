Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99250C531F9
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 02:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yixP6RiGBO8D82BZe4R72VND7DvFLL4ZLc3udOpBJ8A=; b=2DDgvczE64RvkF
	HLUY+5215kpstLDkYpoyM6E2gc0wmsY0V0fVfgHJnXaSvz6urlXNuWxnX7ZiR494AauHz0PS8uYZc
	nRB+1QXGUaZlphPnZNKtGGOoPpOsw4uUiLWi/COGVNzPtk+1tJxvbBQqtOgPf1aGHjkmRLw0Pp9c6
	vo4A3Gne813N0Iaudf2iHP+W/Jil6eTJhIvJPl0rh+Mder7rI3yjuZJVw2GrW4NAVNuJHMdtRcBS3
	SfFkdBrsvPUZC3kmbg1Ljw1KTgNe6TNUksyp6kpSDDaQWmCWQJeoy+estzCy2yQpZztTplQFwa07N
	9mxLZrv2OiqYtEGChyGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woAoX-00000001nnt-1iKK;
	Mon, 27 Jul 2026 02:11:33 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woAoQ-00000001nhj-1jNz
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 02:11:29 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-38a0c7e841fso2557343a91.2
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Jul 2026 19:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785118286; x=1785723086; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dPr6vbLu8PqQb1lWRy/QmQ4lRtcpmb3vtoKOeXxnr9U=;
        b=ECRFSdhreVWPzyxDKEpSct0B257HrTAroMpJDCW4r6gO2moXvsToeqsMJaWEEc/sTY
         fNgdYxlUfaKUm87+ndjHzMG7a9/mBht8K/a2bS11Qe9yUnPeiBki/eA3gqsXjcJa4TJZ
         4zsC/vW+Oz6S+KnxxCuV5gvb2uXu/P2pYOu0hQsOAOD9GFfh5EdOSD/2Bs1QrJLKUBuh
         oRe4Ew8cct790WvQ6k+zUeOcs58Gifoq/Rf2ebhHLCx8aHbF7vIqUqs404y5iR9yENFx
         klh9uPnXpp3vCcxTjSPZRfRWImXSgRe1WOkiTrwrRQYljVAU8erL3IP2c2eRVkst0Oj1
         aW6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785118286; x=1785723086;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=dPr6vbLu8PqQb1lWRy/QmQ4lRtcpmb3vtoKOeXxnr9U=;
        b=IRYLQ9OMMu89Fw5/h3bPfP/V2qbmVjcbBNIpHakc8WOUbEgbL4OfXqq7H3m/J78Ego
         +S56yirg60ZnRmYHLg+1RQEKDXbLecd/jku/k5g+KL6vcMxoD+79eZ+CL0vGcC5dRGm/
         B9It3tI22dxUjIoYEVpeW1HEx+fAQUGw2uVKXfC0myzOXBi9xC7R0qMaLdT/CRZtmFSP
         GUMs9XDhyaIn/oQAOku/VDKt6m9wi0uyfuAo0jp6L2P0zpK0RDBFiipDxUPbpqTWgt45
         c6WQcXC6Hr0tH8bFskjzsDekDhTRg10QIi9dE+qyaO7NLZPstwwiEM/TDn5f2VsjHYQa
         lOSA==
X-Forwarded-Encrypted: i=1; AHgh+RpzVMtO0saGhGHxLQAggprLvd04AQJknvOfC1jHJFaOIcdEDug+HxDPqMu/x3CbfA+eBJsI5EqxfNvl/0Fbdg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2or/DXIndcMVuORnZTRkjgxumRmn1mi5EmOfD5iXDXt46PlXG
	IZzpEKQrCa8cZzPsOfXY9HOaSdHk3BXOJpWJ+9zkCvPB5+F2KaYUjfuN
X-Gm-Gg: AR+sD105l6mgsmB57oiJ+lYknijpWEs9h5c7vWWt113WzVvng46+sCGbWrdoMhJcU8p
	+ihlC7N3rbM2D5sKuUbfeAJRJ/3XiPuoavsT6NRaNN7wkbMnaJSJnowXZ9oqGteG6a3VsWuxlNr
	ZqaZ++yBeuUB1ZYAXq9e0XLo9+OZzRrI9MV7us4m/Qyi6Xlj333ylnNmhoS8ALcv9AWOsIKhIWO
	Jp46PEXZPn76rjUU+FqNULXgkB6qXGFob30PRE3VluklGQJAqsf2iDThsv8++Mgibnr+nDrh+5f
	3ZpIQLr9FVLelVigpiOghT303lyHmI+9r9rqZLYIzDyce8VuSRAtGx23cKm9ucCcFLdbVWahAV3
	gK20mQLZqOYy2/ayux2ULwYgFA3LFj1xkVIdKaGq0XSIkUoG2pl6TfgKqDVC8oRopWW7eqx9M/o
	PKJLpRRsZQ0MCbdpVKCgxprQk=
X-Received: by 2002:a17:90b:584f:b0:38e:79f:76c6 with SMTP id 98e67ed59e1d1-38f29641ae1mr5689783a91.24.1785118285724;
        Sun, 26 Jul 2026 19:11:25 -0700 (PDT)
Received: from attina.synaptics-inc.local ([199.33.119.15])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13e53094d65sm19162200c88.13.2026.07.26.19.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jul 2026 19:11:25 -0700 (PDT)
From: Gavin Gao <attinagaoxu@gmail.com>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	richardcochran@gmail.com,
	nicolas.frattaroli@collabora.com,
	sebastian.reichel@collabora.com,
	sashal@kernel.org,
	alchark@gmail.com,
	chaoyi.chen@rock-chips.com,
	attinagaoxu@gmail.com,
	amadeus@jmu.edu.cn,
	rmk+kernel@armlinux.org.uk,
	horms@kernel.org,
	alok.a.tiwari@oracle.com,
	david.wu@rock-chips.com,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH net-next 3/3] net: stmmac: dwmac-rk: Enable RGMII 25M refout clock
Date: Mon, 27 Jul 2026 10:10:47 +0800
Message-ID: <20260727021048.3375444-4-attinagaoxu@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260727021048.3375444-1-attinagaoxu@gmail.com>
References: <20260727021048.3375444-1-attinagaoxu@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_191127_192401_F0A100B6 
X-CRM114-Status: GOOD (  14.41  )
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

Boards can set clock_in_out = "output" to request a MAC-provided clock,
but dwmac-rk currently does not enable the optional 25 MHz RGMII
reference output clock. The common clock framework may therefore disable
the clock as unused.

Request the optional clk_mac_25m_refout clock in RGMII output mode, set
it to 25 MHz, and keep it enabled while the MAC clocks are enabled.

Signed-off-by: Gavin Gao <attinagaoxu@gmail.com>
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 33 ++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 643578266dfc..5e7e5e8f8d62 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -81,6 +81,7 @@ struct rk_priv_data {
 	struct clk_bulk_data *clks;
 	int num_clks;
 	struct clk *clk_phy;
+	struct clk *clk_mac_25m_refout;
 
 	struct reset_control *phy_reset;
 
@@ -1419,6 +1420,24 @@ static int rk_gmac_clk_init(struct plat_stmmacenet_data *plat)
 		clk_set_rate(bsp_priv->clk_phy, 50000000);
 	}
 
+	if (!bsp_priv->clock_input && phy_interface_mode_is_rgmii(phy_iface)) {
+		bsp_priv->clk_mac_25m_refout =
+			devm_clk_get_optional(dev, "clk_mac_25m_refout");
+		if (IS_ERR(bsp_priv->clk_mac_25m_refout)) {
+			ret = PTR_ERR(bsp_priv->clk_mac_25m_refout);
+			return dev_err_probe(dev, ret,
+					     "Cannot get 25M refout clock\n");
+		}
+
+		if (bsp_priv->clk_mac_25m_refout) {
+			ret = clk_set_rate(bsp_priv->clk_mac_25m_refout,
+					   25000000);
+			if (ret)
+				return dev_err_probe(dev, ret,
+						     "Cannot set 25M refout clock rate\n");
+		}
+	}
+
 	return 0;
 }
 
@@ -1433,9 +1452,13 @@ static int gmac_clk_enable(struct rk_priv_data *bsp_priv, bool enable)
 			if (ret)
 				return ret;
 
+			ret = clk_prepare_enable(bsp_priv->clk_mac_25m_refout);
+			if (ret)
+				goto err_disable_clks;
+
 			ret = clk_prepare_enable(bsp_priv->clk_phy);
 			if (ret)
-				return ret;
+				goto err_disable_25m_refout;
 
 			if (bsp_priv->ops && bsp_priv->ops->set_clock_selection)
 				bsp_priv->ops->set_clock_selection(bsp_priv,
@@ -1454,12 +1477,20 @@ static int gmac_clk_enable(struct rk_priv_data *bsp_priv, bool enable)
 			clk_bulk_disable_unprepare(bsp_priv->num_clks,
 						   bsp_priv->clks);
 			clk_disable_unprepare(bsp_priv->clk_phy);
+			clk_disable_unprepare(bsp_priv->clk_mac_25m_refout);
 
 			bsp_priv->clk_enabled = false;
 		}
 	}
 
 	return 0;
+
+err_disable_25m_refout:
+	clk_disable_unprepare(bsp_priv->clk_mac_25m_refout);
+err_disable_clks:
+	clk_bulk_disable_unprepare(bsp_priv->num_clks, bsp_priv->clks);
+
+	return ret;
 }
 
 static int phy_power_on(struct rk_priv_data *bsp_priv, bool enable)
-- 
2.55.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
