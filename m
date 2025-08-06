Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55CFAC87FD1
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 01:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=knZpjo4ZJxVPwduC39ASkQGWSegAo06j5opLITFOUo8=; b=A130Xf0E8TORWd
	DlmJ8YWmgn0P5/ltIRDoQk7w3rudDDzsbFhBcy8rYf4d5U6O1lLemfjJ7pn5AGJRwU8b3FZGjfd8o
	Gk+0aConmLR1OB/d7Gdf6dI2rHrPXKSx7xAWhkh15NcRE4Pv7ykLsJnPkycwE5NRb3ih2NZK/Eqd5
	oK9C8yhgACSb1s2uv2gM7IgcUApj9jhLvLAEt1S1JNOy0FXvW0/Mg65Hz8W3mIWJpEZyWQHV7GmGC
	mn/nzTM/Zwe3EJn2JCLHUNfKeekLoAnSsb+KMz82tzJzgIvwFCkOD3C3XjfDaZiSXK5AuI19iSw6a
	ZWvSCnYEJSHuU3PTjqAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujSpm-0000000E76Q-2Xqt;
	Wed, 06 Aug 2025 01:20:50 +0000
Received: from smtpbgsg1.qq.com ([54.254.200.92])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujSlR-0000000E6rF-2yTS;
	Wed, 06 Aug 2025 01:16:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1754442854;
	bh=V4RaJ1Se4NL5O3wmyRABO7eqwflr25ayetGnQRjwR4g=;
	h=From:To:Subject:Date:Message-Id;
	b=o5fiE/kNI/4Vbu9qZpLNcQwlWJowLTPGXAzxIrroiBfXKXloPKFBQWX1lsOernMKH
	 S7k9/vh7o0yLTAsomYeisNnIfuPJqavuddAG8GAgDBhf5LXHKnSOOvSKQvXyTaXCsL
	 9zNv238qq+eVXfFG5XGDZVL0TcJnhhnX7m1RfcwA=
X-QQ-mid: zesmtpsz5t1754442851tccb2169c
X-QQ-Originating-IP: Upns4K98WQPZ+nhbkTV8Mu3PYlo3Q5rJ1jS/uYj8JwI=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 06 Aug 2025 09:14:09 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 794500594761782103
From: Chaoyi Chen <kernel@airkyi.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Jonas Karlman <jonas@kwiboo.se>,
	David Wu <david.wu@rock-chips.com>
Cc: netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH] net: ethernet: stmmac: dwmac-rk: Make the clk_phy could be used for external phy
Date: Wed,  6 Aug 2025 09:14:05 +0800
Message-Id: <20250806011405.115-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: OalYlZRf2lKLbvUQzIElBh7e0Qf9ptyo1P2YBJ0LvvbE5hPGvppCh5tO
	NpIqSF6g7hR8mMyjCmW8nyqFrL8xtR5UAQBPhZIv/bWN6JI9B7eN0HMDW6Vhw2UCb/mYlrf
	1VFZLeImPo3FjpOqDRMk2U23BaToQXJ4as+K3uwamjp1U80sLSQ3SQPYHjdBRj+yha3BMs7
	aNWHI+Xp37QpKuJoajjm24n3BbNnpJkbQDgPNpW5xo6f+eUHJfHKFECS3AbvpxDfrkGyn7I
	f22ffrf95Mzs4/+HMacToqMK6iENbn5z3OSWjqgLhvV/IT1I8JJdG9stOEsj/yKdIZgIEMQ
	MbNL/PkadDFbDeFDeXMojYjqKrRDZwlNO1pAi5qL3iMwA5HyRJ28fWXZUs4dFnZj47y45Z+
	MAojS1gro2dJecYnT2hwif+SVKzkbvGnBnTvsbliU71b0Ho44Opntj9wQ8zZ1ZBj0MekSgE
	kuef+Jc7KJwjogkjXXPKeynEf2lj6RvaeAycPtZw3YB2grrfkvq0tskF3mDJDM/h5MI63fj
	fksoC2bzF8MWSlT+Fs6/NPCI+gdAsOH9InBGSea5+CVV3B0enEA08GIkNzwc7+68OowCR0t
	1EyYUx8QrjCeLM2/o0URE17gasHjBGKCXWaDImzzec9Fq2ct4CV47wnBAR5RHq6ugOA8YNg
	SkyJicTU0vkpZ1xwEtKQBb9py9bKopt52rr2MpFAn5YSmI4LsmY8SYXuIFd2OPQS4k6ppTK
	UBFcZ8ccBamLRUhHz+I0a5jqHtI+VKEf8Si26VUelbpPBgd2w2qBNYAK6+n8OW1eq4c14qo
	idsZHYLkIqc0VN5/Rq0fEkUB8Nhq3d2KW4qWBO8wnGUzmp8wAY7HAw5g6W2xdkty6cznpgR
	FsVV+5gHLxxCz+IP770ZdIsFqeblvwDRjmvIdy4SjeNj4twuqPq9xTmCKQfT4xJkOczEyhu
	BO/LNRCN+hBZMXzBE8AsY8fKjts4Fu1wgX0E=
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_181622_123712_D6D004A4 
X-CRM114-Status: GOOD (  13.41  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

For external phy, clk_phy should be optional, and some external phy
need the clock input from clk_phy. This patch adds support for setting
clk_phy for external phy.

Signed-off-by: David Wu <david.wu@rock-chips.com>
Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 700858ff6f7c..703b4b24f3bc 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1558,6 +1558,7 @@ static int rk_gmac_clk_init(struct plat_stmmacenet_data *plat)
 	struct device *dev = &bsp_priv->pdev->dev;
 	int phy_iface = bsp_priv->phy_iface;
 	int i, j, ret;
+	unsigned int rate;
 
 	bsp_priv->clk_enabled = false;
 
@@ -1595,12 +1596,19 @@ static int rk_gmac_clk_init(struct plat_stmmacenet_data *plat)
 		clk_set_rate(bsp_priv->clk_mac, 50000000);
 	}
 
-	if (plat->phy_node && bsp_priv->integrated_phy) {
+	if (plat->phy_node) {
 		bsp_priv->clk_phy = of_clk_get(plat->phy_node, 0);
 		ret = PTR_ERR_OR_ZERO(bsp_priv->clk_phy);
-		if (ret)
-			return dev_err_probe(dev, ret, "Cannot get PHY clock\n");
-		clk_set_rate(bsp_priv->clk_phy, 50000000);
+		/* If it is not integrated_phy, clk_phy is optional */
+		if (bsp_priv->integrated_phy) {
+			if (ret)
+				return dev_err_probe(dev, ret, "Cannot get PHY clock\n");
+
+			ret = of_property_read_u32(plat->phy_node, "clock-frequency", &rate);
+			if (ret)
+				rate = 0;
+			clk_set_rate(bsp_priv->clk_phy, rate ? rate : 50000000);
+		}
 	}
 
 	return 0;
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
