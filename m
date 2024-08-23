Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AEB5C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 14:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbn6GlfOyDJFpAx2QRqBx8UqYt2D8oqp42SqjtAYuyA=; b=BG8E0TsMm0o7Yg
	GESPJdt6wKoCa0zwlkkfkqOw1iDhwZFTKbZeJSqbLCu8P1yaqhUM71ZasWQ69P3RoYjKUAw+OqOty
	1gAvqgAbx5s08bQx/54S5JElx0Yb1+e0ZIoH6USqIOK5RrtpB17uWmLJmCv1s1z1nHeHV0DljGref
	NgLMoGaOv80JaFqT+ovZCHHDnupx9kY8HbHvqwTZAGl2sFnwVWRCgvcACa0jbMFvtKyem1mFurGW/
	QkUSlyQ4Qi+kG5/mjf/wsiW+aR8s2fZbT20Nfo15S6XIW5YGKR5DZdatGAAvYnc7Km25dQj7U3lkf
	LeYzfZYUipW9C5TN8wig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shV1f-0000000H2Hk-0xXN;
	Fri, 23 Aug 2024 14:12:27 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shV1Y-0000000H2Ct-1Kku;
	Fri, 23 Aug 2024 14:12:22 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724422314; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=C7PH9zMpE4BMks1lgSGa3vL9pq4gb6RMI+rrRalhUxQv5U4LYS3w1/nN3HJ+xkr8+E/tBYod5/tp6LyVD5KJlBDtx+HMAPR0f8qg4LglJMlPTSgSm3dEdUZM3+cjFrnaxYB5YNqZHSAVQ1/Ic5WkbZMXzdX2RO03ca+EoJwnx6Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724422314; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ROKKRsYio3xxAWmx1+IWV2SIFpDUD68JNopHgT+vf9Y=; 
	b=EIWuVxUovOr0FypNSp/bGh7Tk8d2K7bkzScFAd9T1LMex5aiCsjzNXSiWEF+9HW9xl/VFsHYsY7Wypvqtu5zYr9LLh12si+eqCUIOoZIpPkC6LG3Qw2anTmdr9DdV9fZdvCHfTyNzCp/cwNGZLwrKAg2PBzNyvQJrTU4fWYdJyU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724422314;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=ROKKRsYio3xxAWmx1+IWV2SIFpDUD68JNopHgT+vf9Y=;
	b=h38/bthj92pZiGKrNEBgZJC/YYHYYdIJ4g6j2ZvhqXmaU5JT578PI2mdVLUgA8XB
	/Gt2VU/btw7knMxKMWW5dgYytLCYwP7kgzy03eI/+2XKY42ftK84uy5Xnx8zRvHs/rg
	KHvSSBpOJF+NRUzXUCyti4OjC+uMEweVMO0XPifE=
Received: by mx.zohomail.com with SMTPS id 1724422312337529.5391082814358;
	Fri, 23 Aug 2024 07:11:52 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	David Wu <david.wu@rock-chips.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v3 1/3] ethernet: stmmac: dwmac-rk: Fix typo for RK3588 code
Date: Fri, 23 Aug 2024 10:11:13 -0400
Message-ID: <20240823141318.51201-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240823141318.51201-1-detlev.casanova@collabora.com>
References: <20240823141318.51201-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_071220_442645_A5F259DF 
X-CRM114-Status: UNSURE (   9.69  )
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

Fix SELET -> SELECT in RK3588_GMAC_CLK_SELET_CRU and
RK3588_GMAC_CLK_SELET_IO

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 7ae04d8d291c8..9cf0aa58d13bf 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1141,8 +1141,8 @@ static const struct rk_gmac_ops rk3568_ops = {
 #define RK3588_GMAC_CLK_RMII_MODE(id)		GRF_BIT(5 * (id))
 #define RK3588_GMAC_CLK_RGMII_MODE(id)		GRF_CLR_BIT(5 * (id))
 
-#define RK3588_GMAC_CLK_SELET_CRU(id)		GRF_BIT(5 * (id) + 4)
-#define RK3588_GMAC_CLK_SELET_IO(id)		GRF_CLR_BIT(5 * (id) + 4)
+#define RK3588_GMAC_CLK_SELECT_CRU(id)		GRF_BIT(5 * (id) + 4)
+#define RK3588_GMAC_CLK_SELECT_IO(id)		GRF_CLR_BIT(5 * (id) + 4)
 
 #define RK3588_GMA_CLK_RMII_DIV2(id)		GRF_BIT(5 * (id) + 2)
 #define RK3588_GMA_CLK_RMII_DIV20(id)		GRF_CLR_BIT(5 * (id) + 2)
@@ -1240,8 +1240,8 @@ static void rk3588_set_gmac_speed(struct rk_priv_data *bsp_priv, int speed)
 static void rk3588_set_clock_selection(struct rk_priv_data *bsp_priv, bool input,
 				       bool enable)
 {
-	unsigned int val = input ? RK3588_GMAC_CLK_SELET_IO(bsp_priv->id) :
-				   RK3588_GMAC_CLK_SELET_CRU(bsp_priv->id);
+	unsigned int val = input ? RK3588_GMAC_CLK_SELECT_IO(bsp_priv->id) :
+				   RK3588_GMAC_CLK_SELECT_CRU(bsp_priv->id);
 
 	val |= enable ? RK3588_GMAC_CLK_RMII_NOGATE(bsp_priv->id) :
 			RK3588_GMAC_CLK_RMII_GATE(bsp_priv->id);
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
