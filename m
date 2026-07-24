Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2A14C531FA
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jul 2026 09:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AsbrYE8PXL9WFqiuyO1qpGTPlO+I14igN2hWt6Fb+gg=; b=hyWdNUrQRYCylF
	WAyC6ja5Z8Q6lPca6JwjGZq5vKgqkMJji1d0DnpmnO/tbKWgI9v7LDsgl6fs/VUglpHNvMLuJHgMi
	1SojF0KBx7BTO+LEZVKcwPE8G/Yd4CErpmLRjo/JtdoCZ+ZGvcMCSymIpc/cz4P/OMJbsLmW9Zluh
	cOv4w0Vi1seUhxZN7DI4X5vs/cJsi+roNu1z/iwXgmQwFZ1sLlR7naro1AUQ1RAj3uklJmoy/gGjE
	VMNppFc96qAAkJiQsXwOIMeLW2XTFncprHVp5eEIS4d1nhdbmi7UWF2yOfROaljwJEoQBWhmrJy3y
	Ai0T8dB24m/Y1eoYq8KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnBpt-0000000FuiT-1WSJ;
	Fri, 24 Jul 2026 09:04:53 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnBpU-0000000FuJC-1WWq
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jul 2026 09:04:29 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-47f707e5d75so165224f8f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 02:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1784883866; x=1785488666; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yHnSuBWNbpbTyZdc+kGUK7XSKGZJQ8XAkxJmAT7v10M=;
        b=j2pnXRWTXffJfr1/7b5V2ylkrFDvHpTGpC41OEyAZShtbQuW2IML1SMrzf3XCyON6H
         VB9rrGyZCKjyBAasLf1YcZaATdiwQT+v05+f2O1Aj5Ey3vL399cBWcfdcC0+B0VPZ6Dq
         LmIiPI/Nzv/qEoywYWdV+ZXSSArOFEVZIUY0ULxOTJ9b7zutCHGhz3i81RsAp6HnSmYg
         tZYQjFFyOZxBv6q3EKXaDRZxUfTodT6excnqdLziMAHpndI/GG7hnbL+eW3bEqop8BsC
         bpdnOGiOMH5xJDxpfHv2rbqk/GqXWMvHmr7KciBXqYQtrlgHfggc3I3mRzJhal7xS9Qx
         lAtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784883866; x=1785488666;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yHnSuBWNbpbTyZdc+kGUK7XSKGZJQ8XAkxJmAT7v10M=;
        b=OdksJ9MSGa5YYphWlHPuTKBu64NgfmTw/p9tfoyvjgioZ4Ecj2OAqGyxS8W+GNwE55
         AdDWe1eAgIR2Rvl1RT+w4r/q1O1LQeP9aQj2DXLbXZhnoTfnvQkABnzgU+mwB9v9SuEZ
         2M6uwpTYROOsSM7M4nPpWxt552r23KvQLQ23Y4AsQ+ReOIpUwb0RtxfGLTdliQZzZtKj
         cZaPGbZjwzqlKucj/fBjsuPlFeo0ZJXROXB592vLQAO5bN1DKXxdpPlVZRx0URhNyAFF
         ZK7vao9xSeKFGyPz95DOMJoIm6tiRDZW5PouvED2xad0jGhRYEfC1NLeHmt0W32b7vaJ
         dLPg==
X-Forwarded-Encrypted: i=1; AHgh+Rr1B535ZnGeHVr0DRPwnB+IxTKs98Z/JkIa86UM2rvmxmSBO2S22x/kF4r8kTBey/EWb6ZCqwHO26ts7BK9kQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwKTnSLZ4pX+tHlbg58Ra6pFWz85SS8Z5iDVJ9nrwNrgC4r9VrW
	XP6jNyLZAg6WoR6ctL6hY8mpdDyOL5JiDq/6gje6fmTyOLeKQaIwTpM6RonPqEAb22U=
X-Gm-Gg: AR+sD10ZO+Izq/jBPTqH+cLuhPzBV5x+zQqRro20Q5r8uB2bfuLPt4sloiHbjIt3+gh
	tiGcrxuIjJT+A3RIoaOEk+V6qeAkyO0gjAI871qtGq3P6JE3pgI+VqPeB9FGkkiWRqzFd7VhA60
	PFPugL1/mZDBihAbC/DKlWbfJoE4LNKZTocOf6EW611E5Yzkpq4IIyNQRWCfalXh1ggB3Dg6JNj
	uaUy4bIOdTNzmEAFFl6D6DbNM+B3JqdwMWLyc4qKmtoWThhw3CqC+XXVHJP7U1mQY+WLo/zjNKH
	nEzbna+LBypwNameFBx+kze4N3PraI1+lNnUOJ8XD5DZ0QBedXbA11fo0ouMrdijkSpj8OVvEh7
	L/I7Ay2VXd6MMskQcb+0fOkL6m8sq0oMNFjdghoCh4UA/omiPLJvqrN4G2kqctt3CLm6cC3XX4T
	ZA
X-Received: by 2002:a05:600c:5942:b0:495:6397:14b1 with SMTP id 5b1f17b1804b1-49573cf0ec2mr50589315e9.34.1784883861704;
        Fri, 24 Jul 2026 02:04:21 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:e584:93af:f3aa:2c19])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4957afb4e48sm56146715e9.13.2026.07.24.02.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 02:04:20 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Fri, 24 Jul 2026 11:03:56 +0200
Subject: [PATCH v2 5/7] clk: st: clean-up simple provider misuse of the
 consumer API
MIME-Version: 1.0
Message-Id: <20260724-clk-provider-simple-clean-v2-5-56f306156d25@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3497; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=8ScTk5smx7gkl/cV62c2yigppOTQ+FIzCJYYFT90JYU=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBqYyqBKY9/Vk8kDgE398fs0o059XkEvxbFDk0sc
 0pKxCS2UE2JAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCamMqgQAKCRDm/A8cN/La
 he3VD/4xcO2E6eu/4/OSXYGa7ndR/i5CWeM9fueSz9wfG+wRyrWEUUaO+rnqwnI1gajCZyEFGc3
 lrU2E+AlDn2a4Y8V6x7kWA2qkMV0jWm6v9aIN7PNqscHa1ps2NMnYCwIdJTDFbwp177j2mDf5x+
 nHdtLUMoFs0y42p3Tv+wg7SQ723imZaR/f/oUgQlLk3uO7l94PQDgI7w74VeIyYMxz5yhVnID74
 6kxXBzfkfuEI+QfGLXK538H/gYeDNRkr36r78UPmD+6ESFLDTiYFsd1s3oLXcYL+qIGMVaXHQqp
 2lSyciBUSIavwAvhDlkWoW6CNCrzRgiW5OjFedzsQS7zYynC+DgjCgskuhjTRjg0IyYS6tZ2+s+
 AJDXpBIEMOiXimegNz//Pq8hXRia9Y4WoEWBq7LD4qvTGiMKee5+xaQyeVstIObFsBIzxQBuJ+k
 me9loWvo79YxRs3X2Rgs9e91OiIE9TTtwMWgdTCYPQgx21ZuiYdxVeZETunwKFIE7XEOX6QNEu7
 2U5n/3SUr1+jp0T3YdDlW0rYPvpgkLSSf4FXWI0Rn5oiuaNejA9bmWtwqpixcWAJephSit/g6i6
 I1EfAGP3kaJ/LglQYCO0b0cJt9qrL2XRipEYQdiGKUZcmtYrko1tUcwe1o0EPmtphuD+4WMyP7r
 86NGuAW7RKxaWLw==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_020428_434785_BB11E938 
X-CRM114-Status: GOOD (  10.17  )
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
 drivers/clk/st/clkgen-pll.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/st/clkgen-pll.c b/drivers/clk/st/clkgen-pll.c
index 9eb2cb83fa69..17551c6a879a 100644
--- a/drivers/clk/st/clkgen-pll.c
+++ b/drivers/clk/st/clkgen-pll.c
@@ -260,7 +260,7 @@ static int __clkgen_pll_enable(struct clk_hw *hw)
 		if (pll->data->switch2pll_en)
 			CLKGEN_WRITE(pll, switch2pll, 0);
 
-		pr_debug("%s:%s enabled\n", __clk_get_name(hw->clk), __func__);
+		pr_debug("%s:%s enabled\n", clk_hw_get_name(hw), __func__);
 	}
 
 	return ret;
@@ -295,7 +295,7 @@ static void __clkgen_pll_disable(struct clk_hw *hw)
 
 	CLKGEN_WRITE(pll, pdn_ctrl, 1);
 
-	pr_debug("%s:%s disabled\n", __clk_get_name(hw->clk), __func__);
+	pr_debug("%s:%s disabled\n", clk_hw_get_name(hw), __func__);
 }
 
 static void clkgen_pll_disable(struct clk_hw *hw)
@@ -405,14 +405,14 @@ static int stm_pll3200c32_determine_rate(struct clk_hw *hw,
 					&req->rate);
 	else {
 		pr_debug("%s: %s rate %ld Invalid\n", __func__,
-			 __clk_get_name(hw->clk), req->rate);
+			 clk_hw_get_name(hw), req->rate);
 		req->rate = 0;
 
 		return 0;
 	}
 
 	pr_debug("%s: %s new rate %ld [ndiv=%u] [idf=%u]\n",
-		 __func__, __clk_get_name(hw->clk),
+		 __func__, clk_hw_get_name(hw),
 		 req->rate, (unsigned int)params.ndiv,
 		 (unsigned int)params.idf);
 
@@ -434,7 +434,7 @@ static int set_rate_stm_pll3200c32(struct clk_hw *hw, unsigned long rate,
 		clk_pll3200c32_get_rate(parent_rate, &params, &hwrate);
 
 	pr_debug("%s: %s new rate %ld [ndiv=0x%x] [idf=0x%x]\n",
-		 __func__, __clk_get_name(hw->clk),
+		 __func__, clk_hw_get_name(hw),
 		 hwrate, (unsigned int)params.ndiv,
 		 (unsigned int)params.idf);
 
@@ -547,7 +547,7 @@ static unsigned long recalc_stm_pll4600c28(struct clk_hw *hw,
 
 	clk_pll4600c28_get_rate(parent_rate, &params, &rate);
 
-	pr_debug("%s:%s rate %lu\n", __clk_get_name(hw->clk), __func__, rate);
+	pr_debug("%s:%s rate %lu\n", clk_hw_get_name(hw), __func__, rate);
 
 	return rate;
 }
@@ -562,14 +562,14 @@ static int stm_pll4600c28_determine_rate(struct clk_hw *hw,
 					&req->rate);
 	} else {
 		pr_debug("%s: %s rate %ld Invalid\n", __func__,
-			 __clk_get_name(hw->clk), req->rate);
+			 clk_hw_get_name(hw), req->rate);
 		req->rate = 0;
 
 		return 0;
 	}
 
 	pr_debug("%s: %s new rate %ld [ndiv=%u] [idf=%u]\n",
-		 __func__, __clk_get_name(hw->clk),
+		 __func__, clk_hw_get_name(hw),
 		 req->rate, (unsigned int)params.ndiv,
 		 (unsigned int)params.idf);
 
@@ -591,12 +591,12 @@ static int set_rate_stm_pll4600c28(struct clk_hw *hw, unsigned long rate,
 		clk_pll4600c28_get_rate(parent_rate, &params, &hwrate);
 	} else {
 		pr_debug("%s: %s rate %ld Invalid\n", __func__,
-			 __clk_get_name(hw->clk), rate);
+			 clk_hw_get_name(hw), rate);
 		return -EINVAL;
 	}
 
 	pr_debug("%s: %s new rate %ld [ndiv=0x%x] [idf=0x%x]\n",
-		 __func__, __clk_get_name(hw->clk),
+		 __func__, clk_hw_get_name(hw),
 		 hwrate, (unsigned int)params.ndiv,
 		 (unsigned int)params.idf);
 

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
