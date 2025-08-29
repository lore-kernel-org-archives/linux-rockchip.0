Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CDB8CA1000
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 02:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBHxbrnDHuq7Fi0W10VkFlbqewxBJ/0wOV549oR1ZxQ=; b=P9rqsyDTC74GDq
	y2ToPGfz9cwBP2C0COao9oeyj/UfNRr2DqeBEJLPDPep4ZUSE/77/w6pBJi8KzzY4rHwhq3CJJDv3
	HXDZGL69/Ze+sKjJJHc/KdBgz/DUZ5TedMxXKuu21UX1rrF2RS8Uqy1UKRXer7r0w/i22Wh+Nb1+e
	hEIpJU2rnWCua5M51RwmRLAmvKv6v/Ruj5eclaZFk00WyBBImGh4woH2gAW5UZUV1SGTGgiqP/RRR
	ggPrnPxohFUHV2ut0rtD+R5e6/TRAqNeGGQYHpA0Yn8Ay1VOpDBVTPbTIE5B6e24KoewiZ09UdZl+
	l/0lf7quwEvEl/lxIBzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uromb-000000046x4-1OBT;
	Fri, 29 Aug 2025 02:24:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urn8p-00000003tdr-44Ih
	for linux-rockchip@bombadil.infradead.org;
	Fri, 29 Aug 2025 00:38:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:In-Reply-To:References:Message-Id:MIME-Version:Subject:Date:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=dWO8Dz9nIHqrR+SVTleBzTnUpEyDVDhvHJs2y9irGnw=; b=OVw52Xub2/qemO/+zcrCZogtSn
	dU3FRgBVvLcER6LwsauABeq5Hp3VEsIo/p/pOV2BjKJ1vWG0EgbI79+ukNYkSMA4FaNWFqvm0Ba5/
	l0zaxdXQ0fCmxm7qYMKe4/78CF2KMyOdjh92yo5qGuvYN8Uai1pXv4EJMNecYRMPesg0VkyQh4SwK
	8OUGfV2HbUtc/cA6fZmJflB1ENK/ZV3qlF5BCZXIV9ltaPUCKshr2tExSEMf4XXHrZ/qce41A0tp+
	9MD6Jqa8HSzX37VTB8eqWR7SgXN1ZwYme4Ik3wwSa4NpcuJCat9DfsYOwJDclZbO+fghvAtWgzeDk
	dkrA7Z9g==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urn8m-000000030K4-427L
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 00:38:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756427931;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dWO8Dz9nIHqrR+SVTleBzTnUpEyDVDhvHJs2y9irGnw=;
	b=WaE1M4j3b8ZJmIaqWxb1pseOfEy/0U2dbsrmmBqpezSjLQOPso+v5Ac91rZweNN+GZR61c
	GIFjAKU21glLslfPcAMhZwQaTwb0uNi085lmYTTMATi3zYqOLqvNpbWvxr3CNvhv6m/uEF
	CXcEJCod1ixA/evD45fnoen5OcU6uWE=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756427932;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dWO8Dz9nIHqrR+SVTleBzTnUpEyDVDhvHJs2y9irGnw=;
	b=J54z5Hej3esLVDyFTX7JBas0AtBPdqUFF35hSf1q7rGnb9cahKtn0V8XDUCz3S/RrUCfuK
	Z368YCdVmfP/lvaElEb9YUp6A618zU4cnFwhteoq5fcGUZyKlfaxewTeqixlWVg3uxTQf7
	SA/WcTgqwh5lY4K7FWfXZxQpvvv8BqM=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-658-3RJZAXPfNhuy6fybQKgbJw-1; Thu, 28 Aug 2025 20:38:50 -0400
X-MC-Unique: 3RJZAXPfNhuy6fybQKgbJw-1
X-Mimecast-MFC-AGG-ID: 3RJZAXPfNhuy6fybQKgbJw_1756427930
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70de52d2870so14715126d6.0
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 17:38:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756427930; x=1757032730;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dWO8Dz9nIHqrR+SVTleBzTnUpEyDVDhvHJs2y9irGnw=;
        b=wJ2xgfmct+MwjOn+GHd6zbh0Hn/rXnY3WCobQMAbGPkAdM7ttlnVLfk54DBIHTcwnY
         qwk4/1xwAkedvsKgwJYRsqIsOv4SxS6u2wK43mvwrAvyBsyyfn43VyWWqO1AttdyWeme
         G/tiECTCXupKe737b7auKAUIWmaetJz7SyLU6J8Ky2hZL4QygI3rlJTn13NJp4tCAlXf
         34a9viKq9QyfFuP0v4EHc7p9mmSsA9D7lm5lWw/i8GBX8icR3Dvj3u1FY1Lglk0s5mgO
         UpWj9tjv8/UxZVfNEk/ynziQZYvs0JZFtzwLnLXZ9Jw0ZOK4SLjJgWvnaOZ5vBz25yV2
         cPkw==
X-Forwarded-Encrypted: i=1; AJvYcCXafFme/lZDdRYyzwExPAAEVneswnKn1Kdhr4wQOYv4H9ye49sWuzxkopZgrAZlIqvUCQ8sgh7pJ5Q4RuFxjg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxOKKu2qf7R7EBlKOlwNvv9l65yaQ8VrkUiSyYVBZnMOLi7kCTZ
	MuUWAyAEB0oeeqZnUmhkfOOwCChJsCp1wicL9jwYF2P27mtsKV+tUeLGbdgXuOkGGk35tJvXaA3
	WuSinYUr3N0T0NTPzjGbv2DbOo1IN5Y87iY6sFTP/agPtHkRhu8m/dm0sw1I9g5dEOV6xQoMsTQ
	==
X-Gm-Gg: ASbGnctZ9l4fV6QvN64JGbYw1ELJLLN5qnOeUg64a8Erpgbm91rIVLMNwCKR66ZoKGI
	B1853gKWmrnK27ruwkadx5Uup09TbF1o6CZWwcAI26z8VT+wgGpQBVNTY2R8L7Tl14MLwi46yce
	1sPakme86AZR1GoL+s/ZvdQiAiv4bXABYaBaUZtTfXNyr/Znl35meG+PipwrAq4l9fFBxXfrD4s
	/DCpakXaoooll+F/jHJZljKitAuG3kso1yiBhLKADyMrQEKtClHbGVfSLfwN5P403pUD644zHDh
	TPuOT8WMnf/pFYObeA73E1sufhef8T6+y/5CpHp99zmgxTDCv0ZWH7wiuCb7mH85fdDsHYuJHE5
	T2ndzMZrG/TYRlZLY/aIZoUXFh5s3tT4Edw==
X-Received: by 2002:a05:6214:252f:b0:70d:e4a7:1b38 with SMTP id 6a1803df08f44-70de4a7272amr93091276d6.59.1756427929804;
        Thu, 28 Aug 2025 17:38:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0zJ/btEpUgEaoIIvfrO+RJjlxl3Pv9v+fWpYa9u5ZWZV72zvhLGJUbbr2PZPa8Aw72GLx4g==
X-Received: by 2002:a05:6214:252f:b0:70d:e4a7:1b38 with SMTP id 6a1803df08f44-70de4a7272amr93091076d6.59.1756427929458;
        Thu, 28 Aug 2025 17:38:49 -0700 (PDT)
Received: from [192.168.1.2] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70e6264141asm5588696d6.65.2025.08.28.17.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 17:38:48 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 28 Aug 2025 20:38:24 -0400
Subject: [PATCH 5/8] clk: sophgo: sg2042-clkgen: convert from round_rate()
 to determine_rate()
MIME-Version: 1.0
Message-Id: <20250828-clk-round-rate-v2-v1-5-b97ec8ba6cc4@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756427914; l=2463;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=sqQ9Idu7LND8TQvnc9CGktCQVk853FsqtiSZ1I4901o=;
 b=OqClB2gKvwUjzcBuWISxeT+XMsrr1fq+AKWaKypJZsPPPqcYnCjdJ8UA89aYPddHv0+EsQ93z
 FAS6xT63b+ACxX8kvKkjjNayIxis6/FhWL13CkGrP4I8GMEnTIJ9PfM
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: AxhkQnihTtUMMxEOJLGEH3XoVS7leHfmXb0_RLtPB-I_1756427930
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_013853_310185_1EEC81FD 
X-CRM114-Status: GOOD (  12.32  )
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

The round_rate() clk ops is deprecated, so migrate this driver from
round_rate() to determine_rate() using the Coccinelle semantic patch
on the cover letter of this series.

Reviewed-by: Chen Wang <unicorn_wang@outlook.com>
Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/clk/sophgo/clk-sg2042-clkgen.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/sophgo/clk-sg2042-clkgen.c b/drivers/clk/sophgo/clk-sg2042-clkgen.c
index 9e61288d34f3757315702c355f2669577b29676f..683661b71787c9e5428b168502f6fbb30ea9f7da 100644
--- a/drivers/clk/sophgo/clk-sg2042-clkgen.c
+++ b/drivers/clk/sophgo/clk-sg2042-clkgen.c
@@ -176,9 +176,8 @@ static unsigned long sg2042_clk_divider_recalc_rate(struct clk_hw *hw,
 	return ret_rate;
 }
 
-static long sg2042_clk_divider_round_rate(struct clk_hw *hw,
-					  unsigned long rate,
-					  unsigned long *prate)
+static int sg2042_clk_divider_determine_rate(struct clk_hw *hw,
+					     struct clk_rate_request *req)
 {
 	struct sg2042_divider_clock *divider = to_sg2042_clk_divider(hw);
 	unsigned long ret_rate;
@@ -192,15 +191,17 @@ static long sg2042_clk_divider_round_rate(struct clk_hw *hw,
 			bestdiv = readl(divider->reg) >> divider->shift;
 			bestdiv &= clk_div_mask(divider->width);
 		}
-		ret_rate = DIV_ROUND_UP_ULL((u64)*prate, bestdiv);
+		ret_rate = DIV_ROUND_UP_ULL((u64)req->best_parent_rate, bestdiv);
 	} else {
-		ret_rate = divider_round_rate(hw, rate, prate, NULL,
+		ret_rate = divider_round_rate(hw, req->rate, &req->best_parent_rate, NULL,
 					      divider->width, divider->div_flags);
 	}
 
 	pr_debug("--> %s: divider_round_rate: val = %ld\n",
 		 clk_hw_get_name(hw), ret_rate);
-	return ret_rate;
+	req->rate = ret_rate;
+
+	return 0;
 }
 
 static int sg2042_clk_divider_set_rate(struct clk_hw *hw,
@@ -258,13 +259,13 @@ static int sg2042_clk_divider_set_rate(struct clk_hw *hw,
 
 static const struct clk_ops sg2042_clk_divider_ops = {
 	.recalc_rate = sg2042_clk_divider_recalc_rate,
-	.round_rate = sg2042_clk_divider_round_rate,
+	.determine_rate = sg2042_clk_divider_determine_rate,
 	.set_rate = sg2042_clk_divider_set_rate,
 };
 
 static const struct clk_ops sg2042_clk_divider_ro_ops = {
 	.recalc_rate = sg2042_clk_divider_recalc_rate,
-	.round_rate = sg2042_clk_divider_round_rate,
+	.determine_rate = sg2042_clk_divider_determine_rate,
 };
 
 /*

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
