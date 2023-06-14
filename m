Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BECBEB64DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jun 2023 13:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TOpRIvn+WL0Snv/d3j1/LeHWLFGM0yfAx7sm06eFPJc=; b=RhxVWKkGoOCv3e
	BR+VGTsUR6AUzEqC5BTvx4ZIat+jgR0KvuNHjq+adhwMDoNtgNl3EKptDe0FBDw4BJq9wCzZL5KOL
	oOIMGVNVB6EFQuoFznM2BuJp1MXh9ZD5l9nce7RTk5AkzRpLIormKaR6CCCxA2ALqSCBTHouYHOl7
	segvTY2NDfqCSjm5EThxdOpzvZEPWNGVLUDkF/PUbzhbYsDVjIj62KeD7pq49xEkzjtCTCseR+1Zk
	8nmMJpTg4qYsyWAATXlWrJMhPkOoCdZ+OTxbGYXN10F7GjPmQSa/GsS1Xgi5KpenXpD4XPVSfk+6Z
	pnshduNPHoSXFMHCw61Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Qqe-00Bn5o-0T;
	Wed, 14 Jun 2023 13:47:44 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Qqb-00Bn4s-1V;
	Wed, 14 Jun 2023 13:47:42 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f6170b1486so8222866e87.0;
        Wed, 14 Jun 2023 06:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686750459; x=1689342459;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0h+z4uDldJRuHAQNBIGKgEmmlz9MuMHPn+kemKGwt4o=;
        b=NV6U/46wOqvbETuuDc2B5J7cREHQvqtsHn/Gl2LqCiFM3NYlnAwA4rAto71zHzKhu2
         NiBppu9ths7SHIKxXdFe7rH3DstHLCjSk++pwqMD+97icRlfA4KoctTkHUezEOwbCtNe
         sIdN6qN9cFqBTgCVuZzfr9SpuZSC6zBpMO6vBf5tsYV4C3NZfdhXkXL3mWdLzequDY/t
         7lcSntLgJOjG0B/jyXf4C3g1TQGzH45uhB3ALDVjKwGfHF1KgqeD7hrWlSo0jnI89vgq
         ehihl7cMOelYqBTULhJfD/RuFKupSZEFfs/UtENghCSu+jNJP3NgAaq6OnXxP4cdrUoZ
         hVoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686750459; x=1689342459;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0h+z4uDldJRuHAQNBIGKgEmmlz9MuMHPn+kemKGwt4o=;
        b=AC7PAXi9YeZ77/HE/6VcND+PA+3m8s5Xf9nB210LfOJ5MvTaN3N3VwMgwKi/yjcleY
         +kjPKKnciSqRKAACc3YKRrT1XWdFk0TfXsy/VMglNehgWYidqkrq+/lp92u6GYXhefLC
         xc5SeI/vImax6xa9fRyhFzWZH3B2MW9Fy/WLTboI9dzOmCB/kPYlB9k2qOL520K0GMwA
         +BQ/uwKxttE1iyNjkvE1lGjK5EsEDutLGea0ETMlMOehfwav4uKipkoIgeZpTJLzBbon
         DuqW+1lacl7WHin4jGvw9l2g6X5QRGIIk+BqzXAriYEJJvuJo0QOnnKn7OV6sOWawYBF
         Yq4A==
X-Gm-Message-State: AC+VfDwSFqbYYsvSQ+EB7qrRLOoF+LYD1ODKhwBKAVQJXWh7j/usWjYm
	/rRi8/rMhzq/54lYrv8k0lN9x2DISFf1L123
X-Google-Smtp-Source: ACHHUZ4AvO7fbBSkugYy6V6uYfcWLiOtnOexV1qOvHCEncWRG5f+43gSvrYfcCb5PD8/UFb07yhsAw==
X-Received: by 2002:a19:5007:0:b0:4f7:6462:e036 with SMTP id e7-20020a195007000000b004f76462e036mr817204lfb.11.1686750458754;
        Wed, 14 Jun 2023 06:47:38 -0700 (PDT)
Received: from U19.ag.local (static.187.76.181.135.clients.your-server.de. [135.181.76.187])
        by smtp.gmail.com with ESMTPSA id w5-20020a05651204c500b004f3787d8006sm2164185lfq.128.2023.06.14.06.47.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 06:47:38 -0700 (PDT)
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
Subject: [PATCH] clk: rockchip: rk3568: Add PLL rate for 101MHz
Date: Wed, 14 Jun 2023 16:47:16 +0300
Message-Id: <20230614134716.1055862-1-a1ba.omarov@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_064741_505899_B2E50199 
X-CRM114-Status: UNSURE (   9.24  )
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

This patch adds PLL setting for not so common resolution as 1920x720-50.00,
which can be set using 2500 horizontal signals and 808 vertical.

Signed-off-by: Alibek Omarov <a1ba.omarov@gmail.com>
---
 drivers/clk/rockchip/clk-rk3568.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index f85902e2590c..5dae960af4ce 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -79,6 +79,7 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
 	RK3036_PLL_RATE(135000000, 2, 45, 4, 1, 1, 0),
 	RK3036_PLL_RATE(119000000, 3, 119, 4, 2, 1, 0),
 	RK3036_PLL_RATE(108000000, 2, 45, 5, 1, 1, 0),
+	RK3036_PLL_RATE(101000000, 1, 101, 6, 4, 1, 0),
 	RK3036_PLL_RATE(100000000, 1, 150, 6, 6, 1, 0),
 	RK3036_PLL_RATE(96000000, 1, 96, 6, 4, 1, 0),
 	RK3036_PLL_RATE(78750000, 1, 96, 6, 4, 1, 0),
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
