Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6765AEB64D9
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jun 2023 13:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kbvfOf/aVfIXvA77m6CEsRN1F8AujaSC29VbWrrVxIo=; b=j8jfqrDQefrmoF
	DEhkfBjBt+Q4t4zsktOGArgPGTT+tpr84OYJuD/cSdO4aUxZDLUVT2yZUWAnB9boz4pAQvSnfDdlK
	vSb5+NjU1slGLPfngK3d1Ln2gGyUUBHAMIDrN+Opw8G5AdlDNu99jOPrHpmYB0qBMHiycRBLtYNo5
	N75mQ6VQXyBOq9W+ooVtVjZcTE/ILKk9szwOr57cH85iiImWQY3Lvlv9trfnobLTdO7zyn9Tf8SAZ
	oaS2EbhmsE2UOydLFDw+M1Lv8N5ZXKituMC30+0NCowqmLsUXE0r+FbPj7EzzjVkABNVTu2ogQjyN
	Ul1RX5q8gjN0UlOqT7Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Qqt-00Bn9m-1J;
	Wed, 14 Jun 2023 13:47:59 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Qqq-00Bn8B-1d;
	Wed, 14 Jun 2023 13:47:57 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f122ff663eso8630383e87.2;
        Wed, 14 Jun 2023 06:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686750474; x=1689342474;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v1IkM5PACQr8LE1VV5+hRPuhOTTZL39mlBAwPbgHV4k=;
        b=Dsd4q/cPWLVpkM6lRBeECkoXfhw5k9SxPt9T776bC9i0Ti68NlAKY3cX9X3iAsavOU
         u3vK+YobsvXSDDsqI/A+0m2vDjk9iEPUiIbxclQAOx9m46hmFvlB+y8RqTu9+kyQ6N5B
         29R8CHTgGn4/STOnUZLuvWSyrVnp6m3z7oVbbfdzzRd45BA/d0G513I7GjM4sS6Qutk3
         b2APW3enGIRFcyIMGIqCnL07DIZxUFF9iMmeiJa3eQXrWN6bM/Ph0tiXxRLpqqR3xMMB
         hd6n+BLBebe/B1NHOSlOU/ZptSlyDU2u1tX9Ffknm2IpdS9T1K80BfRekHp9mmprIjjH
         oQvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686750474; x=1689342474;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v1IkM5PACQr8LE1VV5+hRPuhOTTZL39mlBAwPbgHV4k=;
        b=CaDt1HjIt7xCLajE+2k8ZN4k/y8H1/yQ5uDpUOTBGQV9cUicso/CKg+hDngApyMgLK
         yORdNSrcbdVbj/aq52Fm8x0BRSpfwucMgqvjz5qNC/psqiEWZV8881v3Yr2bDt/3SPzO
         hKqbn5BK/mFu1lIpPuo09kx6tDZQ8p7GM9EMfTQ+x7CuF/BxTJhpw0wMo9uwFqvsiT6X
         LCXMK3rU6x9bkMAddkrwXMPF+J8HuOlL/DIKCs+WiMaaROnxjyFxhJZAvjd5N3Qxl2dz
         a9kwYepnSaOVf3mbIgQnHt6w/g6rAEesRtJGm8LzmF4dPG0Lwft1/k5nbPnTruFwx0+Q
         WMcw==
X-Gm-Message-State: AC+VfDzBsNZKx94Gye1yCGVFhJB+aQdv05N6hB6tpETT1l0XXUJs5drt
	+rzwTHnrH/UW8MOBE1IFgAcu281g3K7HTRW9
X-Google-Smtp-Source: ACHHUZ5dWEirg0lfgE55fbcjxiFlnqpGX6SccBNtKvKz6+p2Q+clFyAZTg7X3IBC18XUcu9Iu9PPnQ==
X-Received: by 2002:a2e:9f0f:0:b0:2b2:1bde:407f with SMTP id u15-20020a2e9f0f000000b002b21bde407fmr6509095ljk.6.1686750474115;
        Wed, 14 Jun 2023 06:47:54 -0700 (PDT)
Received: from U19.ag.local (static.187.76.181.135.clients.your-server.de. [135.181.76.187])
        by smtp.gmail.com with ESMTPSA id a19-20020a2eb173000000b002ad92dff470sm2583912ljm.134.2023.06.14.06.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 06:47:53 -0700 (PDT)
From: Alibek Omarov <a1ba.omarov@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: a1ba.omarov@gmail.com,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] clk: rockchip: rk3568: Fix PLL rate setting for 78.75MHz
Date: Wed, 14 Jun 2023 16:47:50 +0300
Message-Id: <20230614134750.1056293-1-a1ba.omarov@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_064756_541190_49B42037 
X-CRM114-Status: GOOD (  10.95  )
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

PLL rate on RK356x is calculated through the simple formula:
((24000000 / _refdiv) * _fbdiv) / (_postdiv1 * _postdiv2)

The PLL rate setting for 78.75MHz seems to be copied from 96MHz
so this patch fixes it and configures it properly.

Signed-off-by: Alibek Omarov <a1ba.omarov@gmail.com>
Fixes: 842f4cb72639 ("clk: rockchip: Add more PLL rates for rk3568")
---
 drivers/clk/rockchip/clk-rk3568.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 5dae960af4ce..48b8d06c305c 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -82,7 +82,7 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
 	RK3036_PLL_RATE(101000000, 1, 101, 6, 4, 1, 0),
 	RK3036_PLL_RATE(100000000, 1, 150, 6, 6, 1, 0),
 	RK3036_PLL_RATE(96000000, 1, 96, 6, 4, 1, 0),
-	RK3036_PLL_RATE(78750000, 1, 96, 6, 4, 1, 0),
+	RK3036_PLL_RATE(78750000, 4, 315, 6, 4, 1, 0),
 	RK3036_PLL_RATE(74250000, 2, 99, 4, 4, 1, 0),
 	{ /* sentinel */ },
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
