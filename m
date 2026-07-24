Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AD2AC531FC
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jul 2026 09:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CM5GlLuw5fgKI6r7X+qYnAS0L4IW5zstpaFUHu2MHek=; b=quqzUW6roo3Oqf
	v68fYT5pfrDQLjP/57ji/KNyPX0Clp0QqL3eLxPgDVYEVhmwakysOE4YVXauZhKsVSREh7+Yewevg
	vdtoUiGe9r8cqvJgw7LIW3q1VzIdGgnz+WynsYfcjND5JW0gllPufE0lTkI5yi7aaWmz9vZaMZt0/
	epkqbWHBUeUMSx/w6qFQlT9Lm/XFNEM+XGHXKlbYjC6XPFO/3YCEBhLWsACJQ9Fma1TPYGPfhXaNJ
	c9kQz0sPT5R8XxQH3XMiZOW2box+M/yjPXWVmTbneAeY6Nb+Cfh8NfcaizkLu9agszJUA99lWDVO0
	Civ5u4iIKX3IzqiEdIQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnBpo-0000000FueS-3Wfm;
	Fri, 24 Jul 2026 09:04:48 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnBpR-0000000FuDl-2edo
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jul 2026 09:04:27 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-47f904e80eeso198449f8f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 02:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1784883864; x=1785488664; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Vmy1hUJRw3q7Ic7Vi7VoynD2pQqL5T8Kb7uNyjYlj78=;
        b=iWaqfcvosX9tRDbapxJa9P1oHMpP8AJXcZ4mSJPjU/obI1PbQgxKoB/Y2PMvRDDwP4
         gtKcBY3f1amatB8VcymlK8p0Ow2u0p5WQKQ9eOWP1tAD7zfHhLcacXW3WQxv7903LNwJ
         PQ+x/A2OqfQ7DUJv+3rDnmyr3eilafTWE9s4ohZ0WT+k4PqpKEWY0hUIQAhuWmWQpYq3
         MVrg9lmRr4RfjKcDq2i3IyERNcN6wRnvmYhVs2QtZ6mNdyQrlGV5ddBszW7RVatnNn/m
         omMqzySmwlyNfuEEoy8LnmD6wRg/Q31Y8Wp5GHI9T8lVhZCZxNLY58Bs/in1sdtoozy0
         uLZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784883864; x=1785488664;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Vmy1hUJRw3q7Ic7Vi7VoynD2pQqL5T8Kb7uNyjYlj78=;
        b=AyvUPYipzFO+BABKqlC5x/4CqDUjh/J4mC8fYVKjhLR3w+W0866l0FfV+bL+7U526v
         2RYjFvXa1wyAHslD6nBkQWOmygRMCp+ZEADBJTMXEKdQEV15hNDqjUUbA9HNxmew0tw7
         /ouFyf8IiP2tT9H2r3mFnRM9YdBa6rY1I/uZkY9WywAkEQ/9vnLWc4qOLnkum+PXQrFb
         k+CaTeV5X6iaRkHeZGZV5GOntQRuxRN5MOY3xqSnmXAPJ13EQauW/vA6Yn68gOK8O6PS
         eVp4ntwRO5HK+BIBQStDMfvtx18nSjlO9RY1cJSyXUpRg2Bww/oA4T+FQ/A0nrswjlsp
         gKIQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp8lgyygdhTIr6MSn2nNENfMQHVSttu6+GghDczR5gweAN7jzI0HwK23upuRI3XSCApWMP5dEiHVn5pyDzZuQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxPMlgN+dm0eguadvDolwIIE0qI7UuXroNoPFLgDVAyG7wKp6N6
	E9Whpc1HGOpyUzo2yoEOBr1zFazJomuXce0iCHY/eP6/xnQLW8pCzR+Qlqckx9miSO4=
X-Gm-Gg: AR+sD12YIUdtsW+YLvlI5a6g917FdB+WYcb7htbJcAO3a+kU2dc6f+rPfug7n0uwfr4
	6EkIhpWhgH33MrBf5QwuSHRZXsCjViRLlcz02We39HvvbtxgMG6TX0/eGmny6uD5KRx+GBw+cLT
	AaoA+z77T3oRhyx+cKmbYWavKfZQn/JTJbLe5HlEtFhrrcur/eHMc+mNDtIogfnlRYad5btio03
	wP8A8EqWv0I+v9M3yU7QPr8VVMSE+7LRIrsEm7CniWTHQ6XKFtaBXZepArTg4BP4HKeOr3VOP1A
	H+xUDUZ/MqEHJJBmPABLK0tbJFzYt+wweCCHL8WlYWGHdN+5EG6elE2BBj6HKQcL0m+K2+xFD2S
	a1qhAOppU1F91zrIlzaTSCTPOwcjDeEje5c8Ktz15p9AaMqIIj6c4bQl3NzNjFfLlIIBN1QHZmj
	Q8
X-Received: by 2002:a05:6000:230e:b0:47f:7b85:b883 with SMTP id ffacd0b85a97d-47f8d761973mr8352142f8f.47.1784883858984;
        Fri, 24 Jul 2026 02:04:18 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:e584:93af:f3aa:2c19])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-47f85c66cebsm21940318f8f.30.2026.07.24.02.04.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 02:04:18 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Fri, 24 Jul 2026 11:03:55 +0200
Subject: [PATCH v2 4/7] clk: rockchip: clean-up simple provider misuse of
 the consumer API
MIME-Version: 1.0
Message-Id: <20260724-clk-provider-simple-clean-v2-4-56f306156d25@baylibre.com>
References: <20260724-clk-provider-simple-clean-v2-0-56f306156d25@baylibre.com>
In-Reply-To: <20260724-clk-provider-simple-clean-v2-0-56f306156d25@baylibre.com>
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Heiko Stuebner <heiko@sntech.de>, Prashant Gaikwad <pgaikwad@nvidia.com>, 
 Thierry Reding <thierry.reding@kernel.org>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Tero Kristo <kristo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-tegra@vger.kernel.org, linux-omap@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4291; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=c/HyNkuMW4z6Zoljb6+iJsr+eONkoiQ7+lwzLTi5cS0=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBqYyqBk+IBpzMF96bigh65kKM8JR3kcYzjychCK
 YLz8MopaNCJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCamMqgQAKCRDm/A8cN/La
 hTcYEACzcSp51w21pbh6PuxyNr24pZ3Nv0ktAmcU30YtrNSoWzIKyhG/R/BUjOJjBIIM5fEjFsc
 I9Ff5FAQ47iojQ4xWTuMQEcie071jy0QoM8sZvfgO3exSwBl/WWTEC9l516DlVG6FykYt/yiYG0
 fESTr3eLuPkGhtarCnMF59QHA1lB+1HVNk40mVHJ5dz+EME59MdLhbrnh435AVGYxb21++PrMvf
 fXl8QabMo7nUrBlCln+T+1yUy0aHgunlcb9vIs5Td97hFAR0L2q6tIwjv3K9bYWeYcSYrlSV9Wc
 gt5WNE/fchVqJZI0ZPhOtLKzad6Cu6aXOLhv69hNyKT+9GIwIwyK+4mw+ISAGRd8zb3vPCllp4U
 /pQ4MOOYcf6oi+Fv0/Yn3ZOckXomugCwNDcfDb/TnWO5TiUXdvF4oYQZe0C7lXTJIhFJX1zuX+9
 WoWxbbbYLUVtPOzsJhyfWuvhiMv1GGbXU7b2HIhPdIfKSWDWfQv6VnD2+xoIlyX132umga2yB2Q
 v9w5RJfsUI8Vc6vB8NBLI6MioQO8IyScg1hUX4E1jxa4XOV45O+oij5ex2/lBBPbc9Px4hdWu9j
 28R5oywcHI6hLv1xI5uaq5AXKff7NgVRPDts1XPF9B1jzy6mEX3cCtFYAE7+KpznmpEfEWXEK8b
 5KcVQbKkgbR7zJQ==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_020425_727821_8D3B1CD3 
X-CRM114-Status: GOOD (  10.30  )
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

Clock provider should not be using the consumer interface.
In other words, a provider should not be dealing with struct clk.

This change targets occurrences for which the provider uses the
consumer interface and corresponding clk_hw interface exist.

Reviewed-by: Brian Masney <bmasney@redhat.com>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 drivers/clk/rockchip/clk-pll.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 6b853800cb6b..89a783204f0e 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -259,13 +259,13 @@ static int rockchip_rk3036_pll_set_rate(struct clk_hw *hw, unsigned long drate,
 	const struct rockchip_pll_rate_table *rate;
 
 	pr_debug("%s: changing %s to %lu with a parent rate of %lu\n",
-		 __func__, __clk_get_name(hw->clk), drate, prate);
+		 __func__, clk_hw_get_name(hw), drate, prate);
 
 	/* Get required rate settings from table */
 	rate = rockchip_get_pll_settings(pll, drate);
 	if (!rate) {
 		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
-			drate, __clk_get_name(hw->clk));
+			drate, clk_hw_get_name(hw));
 		return -EINVAL;
 	}
 
@@ -319,7 +319,7 @@ static int rockchip_rk3036_pll_init(struct clk_hw *hw)
 
 	rockchip_rk3036_pll_get_params(pll, &cur);
 
-	pr_debug("%s: pll %s@%lu: Hz\n", __func__, __clk_get_name(hw->clk),
+	pr_debug("%s: pll %s@%lu: Hz\n", __func__, clk_hw_get_name(hw),
 		 drate);
 	pr_debug("old - fbdiv: %d, postdiv1: %d, refdiv: %d, postdiv2: %d, dsmpd: %d, frac: %d\n",
 		 cur.fbdiv, cur.postdiv1, cur.refdiv, cur.postdiv2,
@@ -336,12 +336,12 @@ static int rockchip_rk3036_pll_init(struct clk_hw *hw)
 
 		if (!parent) {
 			pr_warn("%s: parent of %s not available\n",
-				__func__, __clk_get_name(hw->clk));
+				__func__, clk_hw_get_name(hw));
 			return 0;
 		}
 
 		pr_debug("%s: pll %s: rate params do not match rate table, adjusting\n",
-			 __func__, __clk_get_name(hw->clk));
+			 __func__, clk_hw_get_name(hw));
 		rockchip_rk3036_pll_set_params(pll, rate);
 	}
 
@@ -743,13 +743,13 @@ static int rockchip_rk3399_pll_set_rate(struct clk_hw *hw, unsigned long drate,
 	const struct rockchip_pll_rate_table *rate;
 
 	pr_debug("%s: changing %s to %lu with a parent rate of %lu\n",
-		 __func__, __clk_get_name(hw->clk), drate, prate);
+		 __func__, clk_hw_get_name(hw), drate, prate);
 
 	/* Get required rate settings from table */
 	rate = rockchip_get_pll_settings(pll, drate);
 	if (!rate) {
 		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
-			drate, __clk_get_name(hw->clk));
+			drate, clk_hw_get_name(hw));
 		return -EINVAL;
 	}
 
@@ -803,7 +803,7 @@ static int rockchip_rk3399_pll_init(struct clk_hw *hw)
 
 	rockchip_rk3399_pll_get_params(pll, &cur);
 
-	pr_debug("%s: pll %s@%lu: Hz\n", __func__, __clk_get_name(hw->clk),
+	pr_debug("%s: pll %s@%lu: Hz\n", __func__, clk_hw_get_name(hw),
 		 drate);
 	pr_debug("old - fbdiv: %d, postdiv1: %d, refdiv: %d, postdiv2: %d, dsmpd: %d, frac: %d\n",
 		 cur.fbdiv, cur.postdiv1, cur.refdiv, cur.postdiv2,
@@ -820,12 +820,12 @@ static int rockchip_rk3399_pll_init(struct clk_hw *hw)
 
 		if (!parent) {
 			pr_warn("%s: parent of %s not available\n",
-				__func__, __clk_get_name(hw->clk));
+				__func__, clk_hw_get_name(hw));
 			return 0;
 		}
 
 		pr_debug("%s: pll %s: rate params do not match rate table, adjusting\n",
-			 __func__, __clk_get_name(hw->clk));
+			 __func__, clk_hw_get_name(hw));
 		rockchip_rk3399_pll_set_params(pll, rate);
 	}
 
@@ -992,13 +992,13 @@ static int rockchip_rk3588_pll_set_rate(struct clk_hw *hw, unsigned long drate,
 	const struct rockchip_pll_rate_table *rate;
 
 	pr_debug("%s: changing %s to %lu with a parent rate of %lu\n",
-		 __func__, __clk_get_name(hw->clk), drate, prate);
+		 __func__, clk_hw_get_name(hw), drate, prate);
 
 	/* Get required rate settings from table */
 	rate = rockchip_get_pll_settings(pll, drate);
 	if (!rate) {
 		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
-			drate, __clk_get_name(hw->clk));
+			drate, clk_hw_get_name(hw));
 		return -EINVAL;
 	}
 

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
