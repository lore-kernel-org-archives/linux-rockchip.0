Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2C51CA0EED
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 03:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRjqOGv+V8s0HcZlPt52VCsFqOrhhOh8mbrch1U5C1k=; b=PlnA97eXpwTv7K
	723B96Ujq6cU70pY9iezzQdIVyMwX2iaXCTNeJOm3ZyjvycZcqrUIXTYoCOTsdC1OXl7b/GbKHvku
	hD5XcScSTexEMyqHywhVDLkwLPnCa8U2X524Hp8cePC6wqY2ajQq+supRNZb6kdwXkfD+1qTmwXhA
	fOPOEYWyvU05kU70ymN/pWucL3iZxbzltjF7pdkbX2JhKefW5efu7IT76/NfmtV4x4IhlrQrNai4B
	f/8aCNdROZGd89/T+LUBmpcV5mzkMAOfoThOK2We1vPZURt9bhEpuWdk/8SoebNo+HIhgraCp9YYG
	WOUFdwGBya2Z60ZOHxvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urpx6-00000004Erd-2bZD;
	Fri, 29 Aug 2025 03:39:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urn8v-00000003tje-2gEE
	for linux-rockchip@bombadil.infradead.org;
	Fri, 29 Aug 2025 00:39:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:In-Reply-To:References:Message-Id:MIME-Version:Subject:Date:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=dhN2zcFUEER4o0mfl+Pf8YKEeY54fmHrDhnJHsDDNpg=; b=XQH7iv7HFitLqB6TarkMFnPgpl
	dq+QmAY7NyRAAPfDMpfcBVoUEfpboCGDVUmquntPA+hw4JrRTmTg3gu2NH+c+rfSXKmOBqJzaUZIv
	7ELmIQqeds74EL/yXJVahA0cK+tU1Kxyv4mVX5vkNYrZa8yrWMFgMvXzczRegLuxaKijexvElgElc
	YVUoNpughtk6h0jiA/AnN6IEGdOgKM99KYd+zW6oj8kq+U5UftK0AXjpyCdsqsNBIDfN9NXJ3aIxs
	h+liUdSFIKB+9Nha2DWsqY9LYDkFEb02TV5wgXThu+44zJC5pHH6khIILQuIGb4i0hxTRRObBMWbg
	oN8KVGKg==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urn8s-000000030LV-2Ecu
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 00:39:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756427936;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dhN2zcFUEER4o0mfl+Pf8YKEeY54fmHrDhnJHsDDNpg=;
	b=HAhqeQma+mJ9lqpXLlLqSukJObo3038yN8uti7KmSmRV9jibT8juAU/muxgZKqLlfDQq4U
	6YgmSYHzxqYbluAzqgi9ZQVs9iTrVWwaWwsNzg285X3WhGJur+mhau4+8PUKGp5xeDgXzd
	Xh0lF07PRKkSdK4rL5j+e92XG19xPSM=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756427937;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dhN2zcFUEER4o0mfl+Pf8YKEeY54fmHrDhnJHsDDNpg=;
	b=KAut4dIsJZ+L8rjcjn91zhxYgeEUBOYlBhmkMyuF/NWwuppZ8Pq5L36CGO9YcZXX6NFZs7
	Ty5oFmgfsJc36g+uh1Y05okrbegLgNKmMnP/tuApBRJ+3ouXeCaSeUliCgefudAzrpV/z1
	wbMMnIYFtnywwpKvMVY0LJ9/rhkKIsw=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-672-xmHxNtI7MYCLeId0nxyP_g-1; Thu, 28 Aug 2025 20:38:55 -0400
X-MC-Unique: xmHxNtI7MYCLeId0nxyP_g-1
X-Mimecast-MFC-AGG-ID: xmHxNtI7MYCLeId0nxyP_g_1756427935
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70ddbb81696so30355016d6.1
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 17:38:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756427935; x=1757032735;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dhN2zcFUEER4o0mfl+Pf8YKEeY54fmHrDhnJHsDDNpg=;
        b=oJjyu4/ShQomwD7UcQlrR07WchexgDucjVNSnrKik3sGgcBkrSTUTOhZVClAdyAtXe
         57axC3DggSwQGpcMwZbaQa/7uKOraoYOPgU4a5VABAHxrS8PW177VurL74fkycaRr9wD
         1g66UQwRMs4yiPi0zfu6Qt58FyvmPFCl6veQeaiINfe9opuehnh4lrgQ7aw8BQ6aQ+RQ
         MOfLQNAACWKKQsREwDpzgsueQ2g0DYe8Ecdyh9VuWjFliWvwVYDq1G+m5mcQeHe+vV9D
         iSMU5MmZAxB+dU1+oyxLJbggMMcZZipTxcnl0DJFEf/6r1jL2nHRPKrOfqNGM+wYR4M9
         ttwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZctSQt6FOItUHKZt7Yp2f8JsTfz0f9Uv/87JaIwG9ZPyRMrAouEFNz524YwdFM5AhOG03sPPAKEF9frMhSA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxJX0jVv6XTExigB6euk2w26Jsb6Aw2vWcE1ylmqcJiHJpuu38l
	qjeyRSrMVuiTYX4s1Kzkh10RDwzje8Cs4ldzujbjKNBIGNeqBT8B/GcyfsijmA+bl0HPpMlazRc
	wgpSfHYHb2dh5eL8dsy1yHznBYz57NSGpv8EwkjYCIJn6QxrR45eNChbgQ0rFprRD4PSHSMRIwQ
	==
X-Gm-Gg: ASbGnctmRtFYuRXPJGe2gDcBnkKbL4ejchreA0tXF4GufQhSLk/z4HuR3PQev+xM1gC
	BngJeHjDi2FUzKcoFotxGweqcp/SuAujmLwPb9M6xUsEQd/v6Hbb6mXS4SlcVYfEKAoObe7In0H
	zSh6qbKJHwSbiESqvTdKVpuaAKkD4oEt8U80VtN/YzRnUg9B/WdjghgWLvZzuDmkf3oRELwMRky
	YSGA+w055ig1AsjP5V1j+pVghNU6A55N98xmxeP8miILc5CRXI6nYYMfO2MtNLfvPS/a7hKr9MP
	ROp1ssIQc1JQpo+Ez6vkX5shUcN2QNSbDLhTFD4cc0kQwEJ+GG0MWc04D+u1tsTP0czRxzMPHU/
	+cEzvQCQ9SBRpJ0leCLy7EpIP04E0e/09bw==
X-Received: by 2002:a05:6214:48f:b0:70d:fd53:7256 with SMTP id 6a1803df08f44-70dfd53763bmr29827746d6.3.1756427934561;
        Thu, 28 Aug 2025 17:38:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEijYzk7GkyvAnuURsnBocI4vkkc9uguNYcxLJSHaK49JimJzbCk2zB1vtZtqve+KQwqSmw3A==
X-Received: by 2002:a05:6214:48f:b0:70d:fd53:7256 with SMTP id 6a1803df08f44-70dfd53763bmr29827556d6.3.1756427934193;
        Thu, 28 Aug 2025 17:38:54 -0700 (PDT)
Received: from [192.168.1.2] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70e6264141asm5588696d6.65.2025.08.28.17.38.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 17:38:53 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 28 Aug 2025 20:38:26 -0400
Subject: [PATCH 7/8] clk: x86: cgu: convert from round_rate() to
 determine_rate()
MIME-Version: 1.0
Message-Id: <20250828-clk-round-rate-v2-v1-7-b97ec8ba6cc4@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756427914; l=3470;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=WJxAzEZ/y8gMiDjK9rGa4K/3JOojl4uHZ0X5uecFxfU=;
 b=FRh6Dtp6Qu3xMrqG77h69FKmubrcLmD1DaQdhlvkUw0E6UlxV5Rv3RQ4Eg7iODuTrLGqcr72p
 gQO+ywq9rn/BM+b5lX8Ga2Eu2EAvxju51YKn1XwPasJWhPgQyJz0Qba
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 4o0e3gY8AWwLdPrUhrk69T1znCsqwWC5LGA53sTeTd4_1756427935
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_013858_714517_A7363E2F 
X-CRM114-Status: GOOD (  13.38  )
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

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/clk/x86/clk-cgu.c | 35 ++++++++++++++++++++---------------
 1 file changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/x86/clk-cgu.c b/drivers/clk/x86/clk-cgu.c
index 89b53f280aee03b7838e4656eae3571f00eaa263..d099667355f8d80785b0f43097ad10c274dd61ea 100644
--- a/drivers/clk/x86/clk-cgu.c
+++ b/drivers/clk/x86/clk-cgu.c
@@ -132,14 +132,15 @@ lgm_clk_divider_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
 				   divider->flags, divider->width);
 }
 
-static long
-lgm_clk_divider_round_rate(struct clk_hw *hw, unsigned long rate,
-			   unsigned long *prate)
+static int lgm_clk_divider_determine_rate(struct clk_hw *hw,
+					  struct clk_rate_request *req)
 {
 	struct lgm_clk_divider *divider = to_lgm_clk_divider(hw);
 
-	return divider_round_rate(hw, rate, prate, divider->table,
-				  divider->width, divider->flags);
+	req->rate = divider_round_rate(hw, req->rate, &req->best_parent_rate, divider->table,
+				       divider->width, divider->flags);
+
+	return 0;
 }
 
 static int
@@ -182,7 +183,7 @@ static void lgm_clk_divider_disable(struct clk_hw *hw)
 
 static const struct clk_ops lgm_clk_divider_ops = {
 	.recalc_rate = lgm_clk_divider_recalc_rate,
-	.round_rate = lgm_clk_divider_round_rate,
+	.determine_rate = lgm_clk_divider_determine_rate,
 	.set_rate = lgm_clk_divider_set_rate,
 	.enable = lgm_clk_divider_enable,
 	.disable = lgm_clk_divider_disable,
@@ -487,15 +488,14 @@ lgm_clk_ddiv_set_rate(struct clk_hw *hw, unsigned long rate,
 	return 0;
 }
 
-static long
-lgm_clk_ddiv_round_rate(struct clk_hw *hw, unsigned long rate,
-			unsigned long *prate)
+static int lgm_clk_ddiv_determine_rate(struct clk_hw *hw,
+				       struct clk_rate_request *req)
 {
 	struct lgm_clk_ddiv *ddiv = to_lgm_clk_ddiv(hw);
 	u32 div, ddiv1, ddiv2;
 	u64 rate64;
 
-	div = DIV_ROUND_CLOSEST_ULL((u64)*prate, rate);
+	div = DIV_ROUND_CLOSEST_ULL((u64)req->best_parent_rate, req->rate);
 
 	/* if predivide bit is enabled, modify div by factor of 2.5 */
 	if (lgm_get_clk_val(ddiv->membase, ddiv->reg, ddiv->shift2, 1)) {
@@ -503,14 +503,17 @@ lgm_clk_ddiv_round_rate(struct clk_hw *hw, unsigned long rate,
 		div = DIV_ROUND_CLOSEST_ULL((u64)div, 5);
 	}
 
-	if (div <= 0)
-		return *prate;
+	if (div <= 0) {
+		req->rate = req->best_parent_rate;
+
+		return 0;
+	}
 
 	if (lgm_clk_get_ddiv_val(div, &ddiv1, &ddiv2) != 0)
 		if (lgm_clk_get_ddiv_val(div + 1, &ddiv1, &ddiv2) != 0)
 			return -EINVAL;
 
-	rate64 = *prate;
+	rate64 = req->best_parent_rate;
 	do_div(rate64, ddiv1);
 	do_div(rate64, ddiv2);
 
@@ -520,7 +523,9 @@ lgm_clk_ddiv_round_rate(struct clk_hw *hw, unsigned long rate,
 		rate64 = DIV_ROUND_CLOSEST_ULL(rate64, 5);
 	}
 
-	return rate64;
+	req->rate = rate64;
+
+	return 0;
 }
 
 static const struct clk_ops lgm_clk_ddiv_ops = {
@@ -528,7 +533,7 @@ static const struct clk_ops lgm_clk_ddiv_ops = {
 	.enable	= lgm_clk_ddiv_enable,
 	.disable = lgm_clk_ddiv_disable,
 	.set_rate = lgm_clk_ddiv_set_rate,
-	.round_rate = lgm_clk_ddiv_round_rate,
+	.determine_rate = lgm_clk_ddiv_determine_rate,
 };
 
 int lgm_clk_register_ddiv(struct lgm_clk_provider *ctx,

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
