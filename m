Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38082C982D8
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 17:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vkt5iL9U0PoDXtH/Np4OJUAsDPVyZX7YJp87wJLHShk=; b=kzeB2/QgRjvAv9
	q+ABYpvjYQUUlwgT3HwUnfq6XGni0XfUiULXtnIJrEChoKurGmK1wMuN1xjZRx+FsBNsdRyUXI8LH
	AtliCE0t5QQtodT9celxIxfZ5Kpm9X2PPTHutz/eTzTJZMpIHueJMnTLCjTkG32Ww5x+OKArZ1wO/
	zQ0f8kw+7iTz4s7qHqy3RQYj3uS9tjiggMj6SqUVIk7w0PUy8cVZENcv0LgjypJdEF+AXifXHtLLX
	gmLAo7IPoRJge4HGnkQHUfl6NB1gCpH0RZHFYOW3Pr0N3sBK97fz17FUqelzJQwtRYWpII8NBZZC9
	rBTt53fPloDNr12YjjVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7z5C-0000000GYaA-34ul;
	Sat, 19 Sep 2026 17:42:38 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7z59-0000000GYZR-1e0r
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 17:42:37 +0000
Received: by mail-pj2-x00.google.com with SMTP id 98e67ed59e1d1-39e501442e2so1224386a91.0
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Sep 2026 10:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789839754; x=1790444554; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=wqtGKu4ehtoV9DVHcDQz0i0Wul1TLpZRrMxi7IKUvp4=;
        b=JpRq/3PbIUuWmhgdTjrQceLQqpoX+xL4kp3ZXdNI4E4/BdjeNbYPunvApHHp4NE/je
         gdwlC1CX78OO7ZFj+f2N5E/faDuC7L70QePTjJQbVX7iihgFV/zirVXTgAMfPUqXjFAG
         yF9Jd0fswd7QiHeA/uYVQ0FnD8LTy/k0Wpgqn1mtbW/OCd0K8hHsZt7vqRO7quVkm89X
         B4+ErQNAp54onoKfKRh2qBikPbzq/mALFtCiKj3v4SpL0LW6mooLeHicQGamZLsZiEVh
         Qkqs9ch1CZi/pau4ANlj0NcSrkVOqgVnKCJmPDFxeJlyCmHLVNInLSYRPm+vM3uLS8Xt
         RDtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789839754; x=1790444554;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wqtGKu4ehtoV9DVHcDQz0i0Wul1TLpZRrMxi7IKUvp4=;
        b=D4xapvr+R+xYK6MzZglfQvmZmkxQw481o7B/Ro9artmZBf0fECPPRq+vYcgqwSAEj4
         4AbpOiriaPLmg98HEbEaSkDi/iYkjYcLdIt+IZI8RQuSm3pKDSzQwqnWgcrq+7snFDMe
         87JF4VFSVqbSlUYCJGLweoKA+C2Mf2sjCt+jaoe5KdxDNv8fOr8tnm1w4i/w0WFv0D15
         RJ87BQOlCAxtTLzgsyBJejSZHFoiDRueGe9E04VCqNH+YXy37PXYtR7sRlTOznCbAST7
         x9cNJvs7Rm9M+a8fuguM14xd+1B6WfjTFDSZMoWN7hvBcrayaDISno7dGaWJTrmBjn/W
         xang==
X-Forwarded-Encrypted: i=1; AKwUvBwRJQlNZ/r8sjHQbFLFXK6ZyEDO2nH89fZ9iiUhzQV3Nau6MXZ2Sfu+yR7YFJXICIIgxuIId3Cwda2fqKEZpg==@lists.infradead.org
X-Gm-Message-State: AFuF++ljQxtsazQ8OoS29qQhHkTo4knaHjPx0v45Zsocr4D1DyedEopx
	QKnnx3Ni/547PbpeeD6mwgAUaTDyzL4l1dDPlcD3nRhAwJ6Wbg2cJmCM
X-Gm-Gg: AYBFou3CfNuecRJrbNy19z6Z3HCYw2TOOjkR/2VIRHTREUGvA0OOR8rE8p+3EWvl4Qg
	E8/pu+d0IfpJQ1+Ymx9ElQ3cp8aFqRB/hiNhz12zP2I+Jlm1UhcYU4Z8ZNyUAcUV+c/qwy0FyJE
	z8YMM9FhS/FBaVxLqccT/3IeuS/R9p5H7LNBi0SsFRPMtU0yXhYHgqwvXsYLhUn6JsAc34W9NrI
	Y55Qlcjnqfg+5joA28+g1+3GINYloAjkyYhMV/G3K1iVLLGLAS59ffdZfTyxr4ACOE8m4FsOJmk
	rQf8yz645JdauUt1agSuDNSL9ZsWBzRILLiHoS2JcOYZ1sTowGJouNkCVsi7re4IwLsZJ6af9F8
	puboBb/hcCuoCI1p1Vx0lB1meNCrWuzzzggKkMli1+ilP4nRejCKPG5Xrtl3oyASUv06AKa9sl2
	chdBfTDAsgcfnz8g3bUobO+boAunaBuByPRfSAaRlRQZ7JUyzo3H08RWrgWSB5Ikzp5fWiyGnq1
	oWzt4+m
X-Received: by 2002:a17:90b:384d:b0:39e:6c6a:656d with SMTP id 98e67ed59e1d1-39e6c6a6757mr4257438a91.48.1789839754436;
        Sat, 19 Sep 2026 10:42:34 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e6f1835adsm5144018a91.6.2026.09.19.10.42.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 10:42:32 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net] net: ethernet: stmmac: dwmac-rk: fix bulk clock leak when the PHY clock fails
Date: Sun, 20 Sep 2026 01:42:23 +0800
Message-ID: <20260919174223.2356964-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_104235_431104_19BEA93C 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
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

gmac_clk_enable() enables the bulk clocks first and then the optional
PHY clock. If clk_prepare_enable() on the PHY clock fails, the function
returns without rolling back the bulk clocks, and bsp_priv->clk_enabled
stays false, so the later gmac_clk_enable(bsp_priv, false) becomes a
no-op and the bulk clock references are leaked.

Add the missing clk_bulk_disable_unprepare() on that failure path.

Fixes: ea449f7fa0bf ("net: ethernet: stmmac: dwmac-rk: rework optional clock handling")
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 8d7042e689261..f3a98bd9d6ead 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1163,7 +1163,10 @@ static int gmac_clk_enable(struct rk_priv_data *bsp_priv, bool enable)
 
 			ret = clk_prepare_enable(bsp_priv->clk_phy);
 			if (ret)
+				clk_bulk_disable_unprepare(bsp_priv->num_clks,
+							   bsp_priv->clks);
 				return ret;
+			}
 
 			rk_configure_io_clksel(bsp_priv);
 			rk_ungate_rmii_clock(bsp_priv);
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
