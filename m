Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE09CC9830B
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ryzLKehWPM0IVEdgJiL9rA3MrBmf4zFijF8cyvW9ru8=; b=Ry4TOUTjRxgtEn
	SaBaqoj3no1sDP6X9h+2jjxSJdx5lpYNI8hOqShCXf8KKf61GXsW6InqjOJbGw4LGF8QSqkN2CCwK
	eGNDfyVg7AiOvP3k8awDUAgNogES+kDE/cAqlqNdr4VG3vl4BEzKg6tdSavZitNm44xjgiJkBf9gS
	9I7wfSP9VdV7+pBE8e32S6QqS8HWzookExkR4UI/S5OBTwIRdD+BGNNH27eK7iw/AkYkIzdxHY1YI
	ktGZX3q/+DgIWJXRolErjzOVkL27ScNFZrPhHqt+25dZH9QPUTwFp9wD4VO73vb0vWZpA1402GsVP
	Dz+jzJlJ8oaUby+2/qLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9MF5-00000008GwX-0Bla;
	Wed, 23 Sep 2026 12:38:31 +0000
Received: from mail-pj2-x07.google.com ([2607:f8b0:4864:39::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9MF2-00000008GvK-35bj
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 12:38:29 +0000
Received: by mail-pj2-x07.google.com with SMTP id d9443c01a7336-2d9080b18b6so6286725ad.1
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 05:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790167108; x=1790771908; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=1UQRnFmVHWe9Z/cGe8zLRoDzdcB8ekJGDg85/atBZHs=;
        b=qLJWyI4T/+yHhaB32K8C7twGenAe7oGyhY5nDDx12ibYfQ4Y7RabLQph8Fg1AP+/Dq
         ZtnroQ3JZQ6cuyDqy6iwzCBO8lcUNrKztN4JfLbp65Q04jhJlPHpgibfqSZFnnfr0oac
         T5Rn+qZuHNk5/rwSC0jvq+1eoHlvLLSfD1uvLU8HgjyVQRUcD7VKwKoKIhF9Nd8f138z
         Wa4+mlP2k9oLWNKIX14PWTvdvWxcKX2hX4WoLdGFElKn8gB++cPz+HZUs/AgCY/N5AJ8
         Yf/qk5KNAVz7YK4AGAc55PjTvMIXyy74QsJrKTXd9TKXzqIGh2yVYyCijM5AMCBsZmsU
         zdeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790167108; x=1790771908;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1UQRnFmVHWe9Z/cGe8zLRoDzdcB8ekJGDg85/atBZHs=;
        b=r6/5/rVkRxE9bZ1O4qh+poX11FhKr+zTHzxsZp+u8l0kju7e8SI8IQ67NapMaj2wjb
         z1twhHiObenX08uJr/SYIg9dJJi4A0O9Hiv89cDi1mh51EyRueZDa0rYfQYOXrIaEf1Y
         1mH3aY6IGzwaJ11YUWcZClKezimtmycOIEngT6KvJqDszhGvvDGnRM5x2Y8HqwQjmQR3
         RONQ0Sn6JYa6JEOyWe2S7pERoV3LX/gjGKq5dNB5bPTa7+bWSNMPp2Rp1+gQYYXMpd+0
         rPFoaqej+/8sQOpkKvJyt9FyuNA8VGNNlVoFyX39wRWgTmUx43RY//eRsdM9aSv7ORU9
         35XA==
X-Forwarded-Encrypted: i=1; AKwUvBzxTZhFLFaxXAp2MJV2Rfvlzu9yy056m1aWMBGv63jpuHuavInY7bFc2T1Ig9a0WpZ95sZAOiOQeJIk8s5qaQ==@lists.infradead.org
X-Gm-Message-State: AFuF++nPwWYLCBy7uGodH7enUmvfQWPBfgBNl48OObtRcP274JMZTjv2
	u9q6WBFJhWhOBY23H6n9pnJThz0n1k/SupH03VxnRiv9pyI8H0VEHWyJ
X-Gm-Gg: AYBFou2l/gDAOifXxdDBz8SufzBKmoQpj6liJa9UVz3fUDE79oqwFVfkTH8IBPCIWKx
	uYPH6IkUsLs3E7mJatWueIKwnLQHeq/T1jO5/o353YT/KusODJtZxz2g4tSVMSA/cXxvbKY1ipq
	G6PfwJpRUOsSYoIR7agB0r6YxI+UWaKJsN/o6Owa0dI6CRiToHM8Bov5Be6+vLdBr/lyQRgNhxx
	vsZk9LX+nNSZHiTu1n91E+nATqqBmeHWoYFVgMnDGypIuELI5N8OMLJP7e7y8umYQgPIYmi32hY
	7oyhmovrN07pvCkTn73CthsGQaT7A2/xPZA/8Hai86b2MO0qlNlVCElSX0B37R95LHKbCZd8YrN
	lF7Z5hUWeAxuhD72baboeZtkmtahHh/2uiyufUt0BK+fjIdzj0EobNGjS7yfAuNsc+Jr0hIxBjI
	wtBPmWLSIa3wBLRL0FKOqeEP8GkTvuNtSEO+WbsAjH2dLuIypHlOEJ6N8pecvvFJVA76jUiBzrs
	SHSyFQ=
X-Received: by 2002:a17:903:1a86:b0:2df:5a5b:5763 with SMTP id d9443c01a7336-2df69d1ae2cmr22719205ad.10.1790167107749;
        Wed, 23 Sep 2026 05:38:27 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df6afc80easm9220405ad.30.2026.09.23.05.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 05:38:27 -0700 (PDT)
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
	Coia Prant <coiaprant@gmail.com>,
	Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>
Subject: [PATCH net v2] net: ethernet: stmmac: dwmac-rk: fix bulk clock leak when the PHY clock fails
Date: Wed, 23 Sep 2026 20:37:13 +0800
Message-ID: <20260923123713.3137146-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_053828_790669_906BA472 
X-CRM114-Status: GOOD (  11.39  )
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
Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 8d7042e689261..72bdbcb5e863a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1162,8 +1162,11 @@ static int gmac_clk_enable(struct rk_priv_data *bsp_priv, bool enable)
 				return ret;
 
 			ret = clk_prepare_enable(bsp_priv->clk_phy);
-			if (ret)
+			if (ret) {
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
