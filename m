Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2465CA0FF0
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 03:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UuFanbKJ5Fld/xlPDbusz9124OkKjLggyOosvmzx12M=; b=065T1p7WE52grb
	123fGeRfwHxzZmCfP3vDF1Fdgeyx7JCrGz8m1RG1koeelbZ5cWSmyzx0YScemydM13OROJgtMZTIM
	KG8rW8gPVEmeC3g2DozF4fIB5DqE/pg/7v8QC1mVmem4rzz07K/dVZFN85rAc6Tj/YLYzrcncb7tH
	64Stya098C2ev4PnEi2u7AWeOk2YEw697KdzuB4S+nVqSdKDPdOewvafPZ0XtEH4YmhaqP3oHRZwu
	L9KF8OwX0WwZnnFnCgqgnicCpGzd/v+b2Ac3Aip7WZzkYFqo2B7PPx4Z4BrEZavwpUIyzoQVoVzzR
	i2yGgF6VwzfBVwAc6WzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urpx6-00000004ErN-1AFr;
	Fri, 29 Aug 2025 03:39:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urn8t-00000003thg-2SK2
	for linux-rockchip@bombadil.infradead.org;
	Fri, 29 Aug 2025 00:38:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:In-Reply-To:References:Message-Id:MIME-Version:Subject:Date:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=GfKsJTdQgTKprCHDD3jSWtPOt7a36P0+9S4imFiAXj0=; b=CV+hUONGblzpvS9z0IpPZtwm68
	heINpKI8iCs9lAGubhvpCNZPSdpqOaqRONQPVpnPme0zxHIDgxCEMLVsYNsFTjErvY8ZHpIoh3t+N
	JjA3F6pSfV8TXuH7xvvofj2NxqqmlVBPOyYG0JZMW8+xcQsBTwS7iAj6G3y0uWhetuOxrxxV4ca9c
	4/cQL500FYvJDRBeiM0G21T6r6/NUCc1IT2CUtIkkX6A7kCiolKN4tfI7xh1kxzKQ8a9dGECa2/fL
	/MrmINzkBaikhs5SWiJQDdOprnaS4UFnJjvOoXmo3gQJeCP0hEjiH0Q8Huf2OM8v1EKDJxhR8a/F3
	M1Yk1y1g==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urn8q-000000030Kz-2aIL
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 00:38:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756427934;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GfKsJTdQgTKprCHDD3jSWtPOt7a36P0+9S4imFiAXj0=;
	b=G4it6+L2P9exKqWSeeKwnAiO2HWPPOiz8nXNRSD0zFVYLrVft26L4TfKkb8Mh+X0zXAjyM
	BZYU9XN1MckNtLXahgGX/Mn/bRYddFZ+cjDyx7l2V1Hp66LGnABpVT47Ca/v8W3vjus4Xf
	a0p9MiKu/+IE3WN1ZRMmtapS704o8pM=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756427935;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GfKsJTdQgTKprCHDD3jSWtPOt7a36P0+9S4imFiAXj0=;
	b=O4nk4wCTcyjnLlEtjXIeUNNr7kuFyCm4ngFh/Oh8rCncXpYFh0wuvQ3eZ7PObBPl5e/Onc
	K/ihFbccC8hhuFOYMbW5pm9mcn6nRidOvuFkMej77hcd6yDLr9pVVTLA1o1Kb6ZdN/qpKA
	HAlDIGGkoz+9Qv0VfieEz6lyxckeF5M=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-491-yYBoWefjNV-7v-XeEtZ2nA-1; Thu, 28 Aug 2025 20:38:53 -0400
X-MC-Unique: yYBoWefjNV-7v-XeEtZ2nA-1
X-Mimecast-MFC-AGG-ID: yYBoWefjNV-7v-XeEtZ2nA_1756427932
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70dfdf41bd1so9864066d6.3
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 17:38:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756427932; x=1757032732;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GfKsJTdQgTKprCHDD3jSWtPOt7a36P0+9S4imFiAXj0=;
        b=PBZLIW6NmrZPsuIcxBZSF9GQ2Nd/Szufchpfi3coA+oVpF35D/71iVyKbgLo6Z/Kv6
         Pgmbqio4MXjSq7unthxl51thUsljrx3lMPk8PKyb7cMcfwdmg497GN5M0z7978U3sFq9
         USVpcNQzSOSIk7dP+Gp4Ddt2c/U/wz3aTYHS1y0UKzbpLDPOWhIAcyLn98bc0sQzkpbn
         w6tSJSzczRNNl4sa4Dl7ZQPk3kaYDE7qb80daPJjmC4OR0Qmz53xV9H6tjyBLAzIsObp
         XmavdgcNCN0IdEh6iO7W9j9iT2h3Q9EplK7O01CMP7G67w4HnfzHA59uS/4dMDVxrA/o
         iVjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsSTHovs52XaCo+Lnr3sDsWh/iOAKawQ2dhQisS6NAU++hgEurw2mVzYP5GRPm1Te3Mu29Si0S0TX/1bOjOQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YysaTeDSSM3VHy4oM9pwjPt5XZSUlMfZl871g0wEjUksAkRfEis
	MLZ3sI0zkwn6kImxHJdabMVXt7pI9V1YFmnbvpoNa7nQGZLl19WTdjBKjOa7x/6sOgzqsNgjc8/
	4QUb4KHgEYSV4MZvUeTUcrhCzErfn/C5VWK6cZ8MkzGkfkgZQ8D3DSy7Sw7PIrZLKHZWI9OrO6A
	==
X-Gm-Gg: ASbGnctu1DUGVHU1IR8pWDdleBJREVb4f9VSEWpzB4uHZqePKYzIJwiR56D4dYlDOxy
	FKiVkYcIak/3kzubFsPEubpSVVCYb5YGNrx6I8Bg1V7l6pxT68tHknH46/v2d317FS7JrV/ff+H
	C8nBtuYenMt5IJgTyXGOLMX7mIiilEqsZtp95Tw60kk3FyyJRr2kns9LyqN8exTm//HRonJFbdN
	nzaySLFB2IW+dB8XwrllT8OYvfohpgU6942gVzxcSdzOQzKmhyiHqW9hJDd0WnT1myfM7bttcDv
	dCuB+26TJL6xoDkItTD1qAhztIZyBPVKY6drggePqyRNZrU4i3rpddHSodGaRoz56+/VwBtMo6H
	fAFsOah9fcEiwBuc5u7v/3CEX6Ciub3cf5A==
X-Received: by 2002:ad4:5ae7:0:b0:70d:6df3:9a8a with SMTP id 6a1803df08f44-70d9740287emr335625146d6.58.1756427932233;
        Thu, 28 Aug 2025 17:38:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwEc61ysJKMEZh0lWoU9IOEqRG7fUQ4re7qEY+oU+35ItiYKJvIfxusraAgiqWCmyxfYtUOw==
X-Received: by 2002:ad4:5ae7:0:b0:70d:6df3:9a8a with SMTP id 6a1803df08f44-70d9740287emr335624916d6.58.1756427931903;
        Thu, 28 Aug 2025 17:38:51 -0700 (PDT)
Received: from [192.168.1.2] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70e6264141asm5588696d6.65.2025.08.28.17.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 17:38:51 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 28 Aug 2025 20:38:25 -0400
Subject: [PATCH 6/8] clk: sophgo: sg2042-pll: remove round_rate() in favor
 of determine_rate()
MIME-Version: 1.0
Message-Id: <20250828-clk-round-rate-v2-v1-6-b97ec8ba6cc4@redhat.com>
References: <20250828-clk-round-rate-v2-v1-0-b97ec8ba6cc4@redhat.com>
In-Reply-To: <20250828-clk-round-rate-v2-v1-0-b97ec8ba6cc4@redhat.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>, 
 Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>, 
 Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
 Michal Simek <michal.simek@amd.com>, Bjorn Andersson <andersson@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Andrea della Porta <andrea.porta@suse.com>, 
 Maxime Ripard <mripard@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, sophgo@lists.linux.dev, 
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756427914; l=2918;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=yQjDlKucQbDfv9rLtsx5KS2YxuVB1vqwKzuSAh7+mnM=;
 b=NIACu2uEJBGAECXwzUlTYQmeDeO89xJedpYWiz+3jVOZMhats8C5aEq2W9Xgn57Xm3aQE46TX
 bO0ZY19dAj/ACNhybTA+CdBVvm/B0H9sIJNyaJ+3B0kXEmy97yyk1w2
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Y-f2ZZmo6yozDR0QTZdBlx9BXJ_X97rRv9_BjInGBEU_1756427932
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_013856_838661_6CDA4BB4 
X-CRM114-Status: GOOD (  12.92  )
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

This driver implements both the determine_rate() and round_rate() clk
ops, and the round_rate() clk ops is deprecated. When both are defined,
clk_core_determine_round_nolock() from the clk core will only use the
determine_rate() clk ops, so let's remove the round_rate() clk ops since
it's unused.

The implementation of sg2042_clk_pll_determine_rate() calls
sg2042_clk_pll_round_rate(), so this folds the two into a single
function.

Reviewed-by: Chen Wang <unicorn_wang@outlook.com>
Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/clk/sophgo/clk-sg2042-pll.c | 26 +++++++++-----------------
 1 file changed, 9 insertions(+), 17 deletions(-)

diff --git a/drivers/clk/sophgo/clk-sg2042-pll.c b/drivers/clk/sophgo/clk-sg2042-pll.c
index e5fb0bb7ac4f97616f3b472fcab45e5729eb653e..110b6ee06fe4b61e89f3cbf2ce00eb03c078afb6 100644
--- a/drivers/clk/sophgo/clk-sg2042-pll.c
+++ b/drivers/clk/sophgo/clk-sg2042-pll.c
@@ -346,37 +346,30 @@ static unsigned long sg2042_clk_pll_recalc_rate(struct clk_hw *hw,
 	return rate;
 }
 
-static long sg2042_clk_pll_round_rate(struct clk_hw *hw,
-				      unsigned long req_rate,
-				      unsigned long *prate)
+static int sg2042_clk_pll_determine_rate(struct clk_hw *hw,
+					 struct clk_rate_request *req)
 {
 	struct sg2042_pll_ctrl pctrl_table;
 	unsigned int value;
 	long proper_rate;
 	int ret;
 
-	ret = sg2042_get_pll_ctl_setting(&pctrl_table, req_rate, *prate);
+	ret = sg2042_get_pll_ctl_setting(&pctrl_table,
+					 min(req->rate, req->max_rate),
+					 req->best_parent_rate);
 	if (ret) {
 		proper_rate = 0;
 		goto out;
 	}
 
 	value = sg2042_pll_ctrl_encode(&pctrl_table);
-	proper_rate = (long)sg2042_pll_recalc_rate(value, *prate);
+	proper_rate = (long)sg2042_pll_recalc_rate(value, req->best_parent_rate);
 
 out:
-	pr_debug("--> %s: pll_round_rate: val = %ld\n",
+	pr_debug("--> %s: pll_determine_rate: val = %ld\n",
 		 clk_hw_get_name(hw), proper_rate);
-	return proper_rate;
-}
+	req->rate = proper_rate;
 
-static int sg2042_clk_pll_determine_rate(struct clk_hw *hw,
-					 struct clk_rate_request *req)
-{
-	req->rate = sg2042_clk_pll_round_rate(hw, min(req->rate, req->max_rate),
-					      &req->best_parent_rate);
-	pr_debug("--> %s: pll_determine_rate: val = %ld\n",
-		 clk_hw_get_name(hw), req->rate);
 	return 0;
 }
 
@@ -417,14 +410,13 @@ static int sg2042_clk_pll_set_rate(struct clk_hw *hw,
 
 static const struct clk_ops sg2042_clk_pll_ops = {
 	.recalc_rate = sg2042_clk_pll_recalc_rate,
-	.round_rate = sg2042_clk_pll_round_rate,
 	.determine_rate = sg2042_clk_pll_determine_rate,
 	.set_rate = sg2042_clk_pll_set_rate,
 };
 
 static const struct clk_ops sg2042_clk_pll_ro_ops = {
 	.recalc_rate = sg2042_clk_pll_recalc_rate,
-	.round_rate = sg2042_clk_pll_round_rate,
+	.determine_rate = sg2042_clk_pll_determine_rate,
 };
 
 /*

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
