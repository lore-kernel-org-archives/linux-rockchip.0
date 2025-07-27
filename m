Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39D64C87FCE
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Jul 2025 18:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YjR/iGr3xN8DksVBdCxYeZQBe50fN8cbxzwckUlctWM=; b=SNMxey59CN5ktH
	IHlIvVytehripbJOxAtIqEfgNgTtd9eCXlCFUM302Int8Kjkvf68MWYU3TcsRrOZk4Naf6e42iakW
	vZOKclm2Ab7WIyZqdYDvcGE5cO4nsLjp7Y6Txg8RL1FXCyYz3WATPWzd5yrw5WGpAp9k7WXQruguT
	zrnB7WARzmHzJGb/gFpvuiT9/4e+Xh/Te65wsKMMd9ZRwaKnKUU/ZxYUSPoM3B270UYrv9ewc9nwG
	HJcskFp2k7yr+v/415I/pUtoYYz/OoKl4vHvmBpMdhmCPmqS1CdI3AO83e6rSi7S2f497CJJhg1rM
	43Iypd/sECTa/5HZA0Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ug5ic-0000000D2RJ-0KOk;
	Sun, 27 Jul 2025 18:03:30 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ug5iY-0000000D2Pt-1PHH
	for linux-rockchip@lists.infradead.org;
	Sun, 27 Jul 2025 18:03:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753639405; bh=Lf1pIE+nbwht/5GyHXz0t8s5hLIXWqOx164q+in/H3I=;
 b=d3LOgl44/nPoyWivd0L1GyR1o0EpWwsccjsSO7/sS+c4HeGk6U9YANsoGVFulIi4d+JhfDBS0
 mNKZ1mbVY2VovvYKXKtC5CrNV6S9WE8Ytf84s+Ca/aynSjoUxWSq0bZfWWkiYGRCa9ChS/+5m6d
 6vK5IFtu2QseTnKZnJjpFgT9zP//35HNTHcxQ9UQRjRIrWOhTG6HO5S5qXm4xijEyWx7UGRLklP
 2F6uDH6iPAX4hQlFCAVp84CuwiqLdWADKi855lrzBwMdm8MbPl2Hm65aC1LgxNM7mFXF6aH1j66
 +Cs/7hTSkBd0D5NpqQ4ylH1ONif9XRH1cwqKesgUsJXg==
X-Forward-Email-ID: 688669e4c509b9ee169cf311
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.7
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Linus Walleij <linus.walleij@linaro.org>,
	=?UTF-8?q?Alvin=20=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Heiko Stuebner <heiko@sntech.de>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH net-next 1/3] net: dsa: realtek: remove unused user_mii_bus from realtek_priv
Date: Sun, 27 Jul 2025 18:02:58 +0000
Message-ID: <20250727180305.381483-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250727180305.381483-1-jonas@kwiboo.se>
References: <20250727180305.381483-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250727_110326_710705_044E3771 
X-CRM114-Status: UNSURE (   8.67  )
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

user_mii_bus of struct realtek_priv is not dereferenced anywhere and it
is easy to confuse it with user_mii_bus from struct dsa_switch, remove
it.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/net/dsa/realtek/realtek.h | 1 -
 drivers/net/dsa/realtek/rtl83xx.c | 2 --
 2 files changed, 3 deletions(-)

diff --git a/drivers/net/dsa/realtek/realtek.h b/drivers/net/dsa/realtek/realtek.h
index a1b2e0b529d5..7f652b245b2e 100644
--- a/drivers/net/dsa/realtek/realtek.h
+++ b/drivers/net/dsa/realtek/realtek.h
@@ -57,7 +57,6 @@ struct realtek_priv {
 	struct regmap		*map;
 	struct regmap		*map_nolock;
 	struct mutex		map_lock;
-	struct mii_bus		*user_mii_bus;
 	struct mii_bus		*bus;
 	int			mdio_addr;
 
diff --git a/drivers/net/dsa/realtek/rtl83xx.c b/drivers/net/dsa/realtek/rtl83xx.c
index 2b9bd4462714..9a05616acea8 100644
--- a/drivers/net/dsa/realtek/rtl83xx.c
+++ b/drivers/net/dsa/realtek/rtl83xx.c
@@ -102,8 +102,6 @@ int rtl83xx_setup_user_mdio(struct dsa_switch *ds)
 		goto err_put_node;
 	}
 
-	priv->user_mii_bus = bus;
-
 err_put_node:
 	of_node_put(mdio_np);
 
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
