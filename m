Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03950CA0FF2
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 02:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXgO99UrhDXTVIZidfiXMRVyC+f5G3igx4cOQ6h7Q7M=; b=CkPWibrK65WIQ5
	zHm4hCiAhx4Xb0WnPDvQyMC54wpetz/8mdNe+aIt9n1wACHmOxTSPieBN0rT9EEQr7DCd6bpL9ix0
	4T3ipr/7vexc/iQYwU+xM3hqzCRqzucAbRecjyR636BuOS1eHUjtqfoKb4sU+0r73Pnl+2uu2F3Vm
	LG7uSrD2Y4dLUtS0Y6Q1u4Qs/r2ayC/idYwB3s6reuWm9BuXV4C8pzTNZLRj4IptWZYp8WMvSXUQS
	kvF7L4WdJSjtKhFY3wCaEAQo68VCQmOtHymcR35m5ds0qvcI1RdSPnqtCS7o6fqRJk8uUFXE7KYw1
	arx8ZsVc1k0vHnjA+xwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uroma-000000046wQ-3xOi;
	Fri, 29 Aug 2025 02:24:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urn8o-00000003tdJ-0ugv
	for linux-rockchip@bombadil.infradead.org;
	Fri, 29 Aug 2025 00:38:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:In-Reply-To:References:Message-Id:MIME-Version:Subject:Date:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=FWlxamEZBABa/bI8LuC0OjVu3fNQXV2BqGZu8lwg93s=; b=PBAPIuW3kjQI/vUiC83+Dum3xG
	bVNPxELtUX5tQ9YZWiFaYmcX5vmZ98voM+SnTCNRnHxYuyg9gAilw+m3cTQdLCVRthBdSkL0OiHkw
	GB/nkl7SBT9RUBXwPZgWRvPo/i+QY6eV5PVJaX9BtuuQ6P05WmeEyWUfRnlpLnUk7c6yPy0JvIHiJ
	vaFGoP8GtcrcRHTuDcYrhL8id+q2OJxkbD/5wMtvSo/p4+ElocrVANIQM2MzsQVOm9cfpEIh6Pe8u
	sYmD3XaeQ9E16nWLeFPfJUVtavRz/fABQ8k0PTSIJ1LVL+C8dxj6Yj4Gt+tse2qffHcoEMVtoukME
	M/4hzDew==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urn8l-000000030JQ-0sjM
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 00:38:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756427930;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FWlxamEZBABa/bI8LuC0OjVu3fNQXV2BqGZu8lwg93s=;
	b=DkbcjOeqjgZU++Z3ySWEYMzDFMJCfCDihKROjX4Cq8YyVfglUopFydOleXbIKVlGrX9lL+
	fz53e5M+n3tMYDe4LKhlmSR3zT2WErwExHTMDQaR1/t5Azf9iDscAUizpQhw84cpOQi++a
	iXdVaVIB4Qg9PILYjQFc0VIYgCTrMN8=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756427930;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FWlxamEZBABa/bI8LuC0OjVu3fNQXV2BqGZu8lwg93s=;
	b=DkbcjOeqjgZU++Z3ySWEYMzDFMJCfCDihKROjX4Cq8YyVfglUopFydOleXbIKVlGrX9lL+
	fz53e5M+n3tMYDe4LKhlmSR3zT2WErwExHTMDQaR1/t5Azf9iDscAUizpQhw84cpOQi++a
	iXdVaVIB4Qg9PILYjQFc0VIYgCTrMN8=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-494-AONI18a-NDKjDcuBvApuFA-1; Thu, 28 Aug 2025 20:38:48 -0400
X-MC-Unique: AONI18a-NDKjDcuBvApuFA-1
X-Mimecast-MFC-AGG-ID: AONI18a-NDKjDcuBvApuFA_1756427928
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70d7c7e972eso37177126d6.3
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 17:38:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756427928; x=1757032728;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FWlxamEZBABa/bI8LuC0OjVu3fNQXV2BqGZu8lwg93s=;
        b=lc4jSuL+O5H/LG50304iRWXYVxDsm4zcKYy3gS++tLDWDO/m5du8O/PT65hg2WtRsP
         SgDbYpsOogu0VAv3dZp+ExtxzjG58Mw5+oEmGeYmBpD9mEVoiThmIvTEy5WdU7ZRMmcJ
         Eaf8XxoSNMKFe+kNFVEx1Tk97c8Ws7gIhtUPxh/TU542gaER4nDfg77brXzbM++fOrst
         4CK7biTZ/u9diFe0eLzR+5BnINxwcQGAoqRPN75bB4uXFYMyDjwlx/CCgU8NGwRLBizF
         sDC0X6aYiBdGTa9nkE1x0vLCftl0KzntGBLHHBw80rrCUhtprSRcVAeaeiyCYSQgJ8Zt
         5bqg==
X-Forwarded-Encrypted: i=1; AJvYcCWrjWjFX5yzHw78BR5bLjO0O8yNGZmVuu1zUqxhNDFoOWefsk6+VR+aGVcy3x7Bus/gsDh7tMCl4XeCpscgbQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxqoa/zau0ijbDIJ/7V4MZlIJDqUVKzZwtCpuWqJlaQOcQ8nfvP
	NMx0TqN1YpecVEl8+pkCvkdfDa0AXXqW43/e023enXW4AxWaU3JMZDJC7brufAF5GXU1XUZwGhj
	4IJJe/jYBgigdbXQMTTBqx6/DuDyWfP6pdU/aSK1r/iL6Q4DXMFdxFPNbMVhWnhQUXjlIqp+ZPO
	/i669GwQ==
X-Gm-Gg: ASbGncu9GIwLl9AGK4AyZV3e9zKqIRKI6pa5Za/iMnin4TrFxAvcHkGq9CcLxOvjrtM
	metXcgAN/i3wA7mCKpOMX/eiEz1HJqCfswn9xuBnB5JM5GZ17l++VcVOBCnQq9lofCgWJKIx0Lm
	vhJIUnB4OoleC1lt7B1KM2SKYKqLMLZIQuIxJpSF0qCov5j0BQLri0P1iMdd3J+uuS3Ya11v0z9
	9d+h3gL/7+EInYdsNjYrOeGHXaQiaCudgJRdMbl/dJd8Cou9RPXKXxOm+ssKIGTsAGjxRo0jdwc
	qSYf14sAmj1wgVeiF8XpfOaL3pfhdGWxG+ohY9nFssp5hHSwMOm4EDQYNQYHQQD9x4VZA+zcVnR
	y131QAhdHBWZGJzDWP53IxeNqKvr77yBazg==
X-Received: by 2002:a05:6214:769:b0:70d:fe59:7449 with SMTP id 6a1803df08f44-70dfe597674mr27992216d6.61.1756427927605;
        Thu, 28 Aug 2025 17:38:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdFHJee0qbyUjnxuiLN/Oq1qdZlcxXPT+mkBSQmGVwNZcP/pQI/tabzwXXU/AzIdm5XAEiew==
X-Received: by 2002:a05:6214:769:b0:70d:fe59:7449 with SMTP id 6a1803df08f44-70dfe597674mr27992056d6.61.1756427927178;
        Thu, 28 Aug 2025 17:38:47 -0700 (PDT)
Received: from [192.168.1.2] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70e6264141asm5588696d6.65.2025.08.28.17.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 17:38:46 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 28 Aug 2025 20:38:23 -0400
Subject: [PATCH 4/8] clk: rp1: convert from round_rate() to
 determine_rate()
MIME-Version: 1.0
Message-Id: <20250828-clk-round-rate-v2-v1-4-b97ec8ba6cc4@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756427914; l=5547;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=77mT8lxlHfMf8DpsPLJTC4LdP2OKAfcaRTXAq7sQvCc=;
 b=3gMx5iuOgrCwNi+DCXX7JQxOvLwFiVApn+7Bvb0HH6OCc8cBz7oI4PL5ZGPz6XlAL7fZhaSTw
 0t/u6mMD55zBBJ4Vh8Qfol7XUf066XGn9A4V2i5zqigVDsEhG7+J6Un
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: wwytq60JZs59qrt1PyESdRn_6rnULVX31W5MZY_HTyU_1756427928
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_013851_512455_05A37FDF 
X-CRM114-Status: GOOD (  13.67  )
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
 drivers/clk/clk-rp1.c | 58 +++++++++++++++++++++++++++++----------------------
 1 file changed, 33 insertions(+), 25 deletions(-)

diff --git a/drivers/clk/clk-rp1.c b/drivers/clk/clk-rp1.c
index e8f264d7f34e42f7186dbba31e5ace95d67b9a7d..fd144755b879862612ea5e22e913dbb44a140033 100644
--- a/drivers/clk/clk-rp1.c
+++ b/drivers/clk/clk-rp1.c
@@ -532,13 +532,16 @@ static unsigned long rp1_pll_core_recalc_rate(struct clk_hw *hw,
 	return calc_rate;
 }
 
-static long rp1_pll_core_round_rate(struct clk_hw *hw, unsigned long rate,
-				    unsigned long *parent_rate)
+static int rp1_pll_core_determine_rate(struct clk_hw *hw,
+				       struct clk_rate_request *req)
 {
 	u32 fbdiv_int, fbdiv_frac;
 
-	return get_pll_core_divider(hw, rate, *parent_rate,
-				    &fbdiv_int, &fbdiv_frac);
+	req->rate = get_pll_core_divider(hw, req->rate, req->best_parent_rate,
+					 &fbdiv_int,
+					 &fbdiv_frac);
+
+	return 0;
 }
 
 static void get_pll_prim_dividers(unsigned long rate, unsigned long parent_rate,
@@ -616,18 +619,20 @@ static unsigned long rp1_pll_recalc_rate(struct clk_hw *hw,
 	return DIV_ROUND_CLOSEST(parent_rate, prim_div1 * prim_div2);
 }
 
-static long rp1_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-			       unsigned long *parent_rate)
+static int rp1_pll_determine_rate(struct clk_hw *hw,
+				  struct clk_rate_request *req)
 {
 	struct clk_hw *clk_audio_hw = &clk_audio->hw;
 	u32 div1, div2;
 
-	if (hw == clk_audio_hw && clk_audio->cached_rate == rate)
-		*parent_rate = clk_audio_core->cached_rate;
+	if (hw == clk_audio_hw && clk_audio->cached_rate == req->rate)
+		req->best_parent_rate = clk_audio_core->cached_rate;
+
+	get_pll_prim_dividers(req->rate, req->best_parent_rate, &div1, &div2);
 
-	get_pll_prim_dividers(rate, *parent_rate, &div1, &div2);
+	req->rate = DIV_ROUND_CLOSEST(req->best_parent_rate, div1 * div2);
 
-	return DIV_ROUND_CLOSEST(*parent_rate, div1 * div2);
+	return 0;
 }
 
 static int rp1_pll_ph_is_on(struct clk_hw *hw)
@@ -677,13 +682,15 @@ static unsigned long rp1_pll_ph_recalc_rate(struct clk_hw *hw,
 	return parent_rate / data->fixed_divider;
 }
 
-static long rp1_pll_ph_round_rate(struct clk_hw *hw, unsigned long rate,
-				  unsigned long *parent_rate)
+static int rp1_pll_ph_determine_rate(struct clk_hw *hw,
+				     struct clk_rate_request *req)
 {
 	struct rp1_clk_desc *pll_ph = container_of(hw, struct rp1_clk_desc, hw);
 	const struct rp1_pll_ph_data *data = pll_ph->data;
 
-	return *parent_rate / data->fixed_divider;
+	req->rate = req->best_parent_rate / data->fixed_divider;
+
+	return 0;
 }
 
 static int rp1_pll_divider_is_on(struct clk_hw *hw)
@@ -760,11 +767,12 @@ static unsigned long rp1_pll_divider_recalc_rate(struct clk_hw *hw,
 	return clk_divider_ops.recalc_rate(hw, parent_rate);
 }
 
-static long rp1_pll_divider_round_rate(struct clk_hw *hw,
-				       unsigned long rate,
-				       unsigned long *parent_rate)
+static int rp1_pll_divider_determine_rate(struct clk_hw *hw,
+					  struct clk_rate_request *req)
 {
-	return clk_divider_ops.round_rate(hw, rate, parent_rate);
+	req->rate = clk_divider_ops.determine_rate(hw, req);
+
+	return 0;
 }
 
 static int rp1_clock_is_on(struct clk_hw *hw)
@@ -1166,10 +1174,10 @@ static unsigned long rp1_varsrc_recalc_rate(struct clk_hw *hw,
 	return clock->cached_rate;
 }
 
-static long rp1_varsrc_round_rate(struct clk_hw *hw, unsigned long rate,
-				  unsigned long *parent_rate)
+static int rp1_varsrc_determine_rate(struct clk_hw *hw,
+				     struct clk_rate_request *req)
 {
-	return rate;
+	return 0;
 }
 
 static const struct clk_ops rp1_pll_core_ops = {
@@ -1178,13 +1186,13 @@ static const struct clk_ops rp1_pll_core_ops = {
 	.unprepare = rp1_pll_core_off,
 	.set_rate = rp1_pll_core_set_rate,
 	.recalc_rate = rp1_pll_core_recalc_rate,
-	.round_rate = rp1_pll_core_round_rate,
+	.determine_rate = rp1_pll_core_determine_rate,
 };
 
 static const struct clk_ops rp1_pll_ops = {
 	.set_rate = rp1_pll_set_rate,
 	.recalc_rate = rp1_pll_recalc_rate,
-	.round_rate = rp1_pll_round_rate,
+	.determine_rate = rp1_pll_determine_rate,
 };
 
 static const struct clk_ops rp1_pll_ph_ops = {
@@ -1192,7 +1200,7 @@ static const struct clk_ops rp1_pll_ph_ops = {
 	.prepare = rp1_pll_ph_on,
 	.unprepare = rp1_pll_ph_off,
 	.recalc_rate = rp1_pll_ph_recalc_rate,
-	.round_rate = rp1_pll_ph_round_rate,
+	.determine_rate = rp1_pll_ph_determine_rate,
 };
 
 static const struct clk_ops rp1_pll_divider_ops = {
@@ -1201,7 +1209,7 @@ static const struct clk_ops rp1_pll_divider_ops = {
 	.unprepare = rp1_pll_divider_off,
 	.set_rate = rp1_pll_divider_set_rate,
 	.recalc_rate = rp1_pll_divider_recalc_rate,
-	.round_rate = rp1_pll_divider_round_rate,
+	.determine_rate = rp1_pll_divider_determine_rate,
 };
 
 static const struct clk_ops rp1_clk_ops = {
@@ -1219,7 +1227,7 @@ static const struct clk_ops rp1_clk_ops = {
 static const struct clk_ops rp1_varsrc_ops = {
 	.set_rate = rp1_varsrc_set_rate,
 	.recalc_rate = rp1_varsrc_recalc_rate,
-	.round_rate = rp1_varsrc_round_rate,
+	.determine_rate = rp1_varsrc_determine_rate,
 };
 
 static struct clk_hw *rp1_register_pll(struct rp1_clockman *clockman,

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
