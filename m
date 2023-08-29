Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBAB5C71153
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 19:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aWV+nTKqFLJUbOQXJkpZ5ouAvZ8kTOu8r+kb8+dWlVY=; b=emUtq1YnJFwtGP
	fE0Z9C6xzVsVnREHcAB9sdB/9bkzpdMHAKOXWsT4O353iXQXlKvyrHoIGlFP1DwrkugfGlGgJgv0k
	eOjDvFcd/Iwt1tqGc1yG95Oe93arImFo6MboytJyemam+VZl0yORd0iabafldX+vCnKTA7MYkAa+a
	KmP/xqc5w9enguP2jzvE7TSUwrbBGsVqd8m6lRh1wHonhOYNGtxL8V/3j0XsJ2RGgqD3FnREIRoI0
	4IjL2bRDhXxYuMNfVhvoVROqdRnY/dAru3H16QsrtmqprxOUVPiH9+rWRphUzybtLM3sOMx2DHcVw
	budxqReKFiaLcCv8TuYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb4QL-00C8k6-01;
	Tue, 29 Aug 2023 19:30:49 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb4Q3-00C8ht-2R;
	Tue, 29 Aug 2023 19:30:39 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-52a1132b685so6641926a12.1;
        Tue, 29 Aug 2023 12:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693337429; x=1693942229; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0chbqgFoPu5hLjZ0pYy8BZSRXOqFZISxsKn/hfcspos=;
        b=Gf7NbRTnVpEBp62E3R8MpX4O/O0FuHOGa2MVm/BsWww3m6fLp6jw3utSIgFL19egvR
         QZ4tHsTNLEgkWbK6dz9HI1vTzDoLvvUyA0C6JPjyMf+bPwByxaYXG42PDvCRz0wTujAo
         CKDGoWrHTPdpbSFNKLzxlUHbHXX175cVVkxUCmJUp0frQVujlNjVsEQfuuhp+omXIBjj
         h48y3yCB7jXx6qTq999a1sBiIDvncseVg77d0gnIBBSn//WIVtlUwA69YprNTLUHSCWf
         pJ89GmWU2S2/UjXsInHJDfz4amTeRcNPBWXozzUODxFwH5VzwESAHmr3XOsoDolM3NmG
         YnCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693337429; x=1693942229;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0chbqgFoPu5hLjZ0pYy8BZSRXOqFZISxsKn/hfcspos=;
        b=PGzgLIQwqMehzglNz9s+NHf7ZxbGWdRp8yruQZO13xlGenBoh+4dMaYV7g6yh/GQLO
         xgOawEuXaq68snA79AyHZBgKDvHib8qA/6rJpyxjyc7IvzXuAySBxdjKOjr97IGqi0Mx
         VZRkn/+cJKxnp3pcqGAqPqgyhC5F5LtH5ECBvW8gXO46VqWbgmwXhNKCcb9l9zxkjsQp
         BfECLsP0YuCiArqpoy6bX3+sv0+DooVTEzhqhf5q1OzLzgUPPLDzqvlWTKlNeoA9DHME
         B+2ugMM+mxOangwmy+6LtUDY4U705E4Fm/R78rk9EvtigoWPlLrqgSapVaytm/njL5lJ
         YaiQ==
X-Gm-Message-State: AOJu0Ywu6DLG7Vd9OT5PvvxpETGHKjwROBL8Bk2Jw0yVtHyWC9Oo6egm
	rfOcCEewJiMUVy3Xo7thUA==
X-Google-Smtp-Source: AGHT+IFbukdtCFqmx093H961k5MnnZnzYaMmsA3mx5tW40xU76zRBR/svCJyduxqu9zd0ofIyZWGvw==
X-Received: by 2002:a05:6402:1288:b0:523:264e:eee3 with SMTP id w8-20020a056402128800b00523264eeee3mr214521edv.11.1693337428981;
        Tue, 29 Aug 2023 12:30:28 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id o8-20020aa7d3c8000000b0052544bca116sm5940902edr.13.2023.08.29.12.30.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 12:30:28 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 0/3] Some clock driver fixes for RK3128
Date: Tue, 29 Aug 2023 21:29:55 +0200
Message-ID: <20230829192958.250248-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_123036_812482_9855DD87 
X-CRM114-Status: UNSURE (   9.42  )
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

This series fixes some clock definitions in the clock driver for RK3128.

Please see the commit messages of the individual patches for details.

Note:
These patches have been part of the pretty huge RK3128 fix-up series [0]
which I've spitted up now, as suggested.

[0] https://lore.kernel.org/linux-rockchip/20230829171647.187787-1-knaerzche@gmail.com

Alex Bee (1):
  clk: rockchip: rk3128: Fix SCLK_SDMMC's clock name

Finley Xiao (2):
  clk: rockchip: rk3128: Fix aclk_peri_src parent
  clk: rockchip: rk3128: Fix hclk_otg gate

 drivers/clk/rockchip/clk-rk3128.c | 24 +++++++++---------------
 1 file changed, 9 insertions(+), 15 deletions(-)

base-commit: 2dde18cd1d8fac735875f2e4987f11817cc0bc2c
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
