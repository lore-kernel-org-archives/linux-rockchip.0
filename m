Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC4F5C87FDA
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Aug 2025 23:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DYU/VsOpy8UNipaFMHZnQKbwT3v4Za5HbkDsCIjBsU=; b=1qh1P+q/N5JipD
	+R1cQ7tl7qkRRN7JiQJLpLbpWedRSZ3MLf6KnrW+utuAy0s+M3Noi0Hnr3kvVQALWZGRJ4P4WIJue
	rPxzo+DWpgN3OHt0NZ7W14cfruqI80VapFZZ5MUrfsLLmXGydE+L+OKC3chZnITmy3/mkOm9BSgRB
	3QbFpkwTENqGV1xcAyt9pw27OqIahAb5m3N+hhCs9IX48JmZA15wpzoh5ggBhRgK4NqxnUZc/y2F/
	Yb95iAZfyQK9OCSSG2VgV1V0wHi66vEyz/1/7Z6EgaftiyCWrgM/ByouOyeivXoso1qJkdqg5wlvL
	5IKsGqhHYjkrbLK/E/Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulF84-00000006ANB-0q9j;
	Sun, 10 Aug 2025 23:07:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEoe-000000068Fv-3mie
	for linux-rockchip@bombadil.infradead.org;
	Sun, 10 Aug 2025 22:47:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:In-Reply-To:References:Message-Id:MIME-Version:Subject:Date:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=cNnDUdz3gK4q6slcX3XODNycmDK0nBwCY+DO25+Es8I=; b=KLjLxRrdbIeCwmnDQhKGtfXT7G
	6SZxSZpsyIsEa27MX9WkD1pRLQPzPOwvzUW0ml7nUZ6Qf3VbynV0GA5WLXvIdVUTmgLXr1+YvSTnZ
	86iO3pzc4+H9SW83vjy5boCad+iNUfmZtPfw9jEYff7CA0MGQpPtvTB4Q2uJUrj7fvj1ZnRrZSF2I
	eCaOeVsTQeI/w6pT3Z3dn+xbwor96HPuFvahs4w30c61n68Op5KVxlbcCbWkT4x1JpLaw+O3Rce4B
	U/CHZZk5BGBDNxrH1D8DCDhvnloTCohSdkrMWFEaY3QTd/xVJFVwAEyu9m17/aoH03Pd6+N54EM+u
	F5nJUoLA==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEoa-0000000FJjW-3gJu
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Aug 2025 22:46:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754866015;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cNnDUdz3gK4q6slcX3XODNycmDK0nBwCY+DO25+Es8I=;
	b=SXing3Uzk6iU/ze3GXxyzCnaBEoFoveXQb4phR7odYwSxJMH0G/j/3hucJxREKl+dh922h
	6Jujt+DOtIHsWJCxSphcVyZX5a+n7aHpHwwXl9g5TCBMzjzlLRJB98IBVyWel/Hni94Pe7
	YxSbQgq+O5uV402YojgEj2wOiO2PkpA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754866015;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cNnDUdz3gK4q6slcX3XODNycmDK0nBwCY+DO25+Es8I=;
	b=SXing3Uzk6iU/ze3GXxyzCnaBEoFoveXQb4phR7odYwSxJMH0G/j/3hucJxREKl+dh922h
	6Jujt+DOtIHsWJCxSphcVyZX5a+n7aHpHwwXl9g5TCBMzjzlLRJB98IBVyWel/Hni94Pe7
	YxSbQgq+O5uV402YojgEj2wOiO2PkpA=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-139-9Ks7Hp3DMKa8pitoqPCEUQ-1; Sun, 10 Aug 2025 18:46:54 -0400
X-MC-Unique: 9Ks7Hp3DMKa8pitoqPCEUQ-1
X-Mimecast-MFC-AGG-ID: 9Ks7Hp3DMKa8pitoqPCEUQ_1754866013
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b065932d0bso119193631cf.3
        for <linux-rockchip@lists.infradead.org>; Sun, 10 Aug 2025 15:46:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754866013; x=1755470813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cNnDUdz3gK4q6slcX3XODNycmDK0nBwCY+DO25+Es8I=;
        b=n66vaI18LrfiAo6kDhe9jAXvvlQZkwS7S8z9kvs4l9S/sNsbmxFs4GPugpNDJUE1GF
         ZQ4nFY6lew9FWLgpP9TLtfOLwrrXPc1o/0FfD/YCaKN3TWTwgV/Hvbq6qkCD6aKj2O5K
         VTcnYOmMVehqqAi8kk8t+rS/G07p6jTtaiVPle+oSfi0cYdrGbln6mYhrxHEVwwWdvUv
         +KmtIlbX3W7TOFnDaEDlcydzCPQIYKUSY0O0yi3MvRIDdIv5W6R/B9fRYRZz2IG806Kh
         k1AwIRx0ywBPtH4IesXlojM8iOffv3LNeDrtSfevGF6SbA+93HVcoYMwijeEb8qYhoXT
         Mmtg==
X-Forwarded-Encrypted: i=1; AJvYcCUAjPvbq2niZsVGDbn1BgaZieFzoUn8EczAE1GQdUKucBMRPYfxSKgkWeO7CS6hZwwdzoG21LziQcp2AGkVVQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5KmcdIRtwFC3i6vAKdUhap253Ni703DHwqnJ5DZnsjQPDyPTc
	KydsHyDoyqoD859rv/dywW6KL3ax84Mgewc/XlrC0QwxhVJekhXIoRpYxF/NYLY8DS7atg3b5yk
	rWvpuYiqO5mb5j6VnMh376+yKBG4TP++h3zpsk+7cdEYOJfFvBw7nYryg6rTU77CCCFR2tF2asA
	==
X-Gm-Gg: ASbGncv67OQtlnzbbB68JEgacHdXtcgZAUybLwvfyASxYAJz8jBza0oleUzSGSGTo5U
	nzV8EaNRw6uWy7aQyzFP/0rBPoXZrF7N47mkvIwIvGwrYh502A0Ox9brB9f6ibh/WK/H3edD2zE
	+j5bv9itOOEydzJkvya9wwdG7HW5G6nE7CqC+Dhd1TiOIVSJ5wIAt2q9DS4OP/18gaOIapwhe+o
	cwLlsn6KriOvaOtvOwdErvJVMjTFoWW4ycYBp/qNCV/jQwcVoFL+vEbVXEeQxYGm/+4cbCgLRnK
	iLY4+pX+wlziFcWeAFUOijjuRq5pXE9yxslblBF1Tuz3TgyIBFRunt7ZATL4Edp7SIMMzyokSKI
	Ul1RdXw==
X-Received: by 2002:a05:622a:4c06:b0:4b0:9c0c:f62c with SMTP id d75a77b69052e-4b0aedd616emr157202871cf.31.1754866013417;
        Sun, 10 Aug 2025 15:46:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzBkZptPsYAU3FTRK+ndIewqVNVtwKayuUxmee7QLaZcahzXf2pV/ZFq3ye47SvzpbuHnnjg==
X-Received: by 2002:a05:622a:4c06:b0:4b0:9c0c:f62c with SMTP id d75a77b69052e-4b0aedd616emr157202631cf.31.1754866013021;
        Sun, 10 Aug 2025 15:46:53 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.46.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:46:51 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:35 -0400
Subject: [PATCH v2 7/9] phy: rockchip: phy-rockchip-inno-hdmi: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-7-9162470bb9f2@redhat.com>
References: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
In-Reply-To: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=3209;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=cKQDgyjW9ziRVEOEeZhANbLz60Yx7I/xu3+zURpXhB8=;
 b=ubxW3dDssQ9yAkb8tdXuvrTvn/pHg2yvGTU+fNLDZ2kHxtV9S6BpsFJwTSIz6e+KtTNUexPkp
 SQMN9QW7undDFAjxcu/0ARBSNmYy90wYl7KSLg0AAAuddMqm2btJcAi
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: xA0WN5k6NJ_y4R1HkG8BV5OdZR5yAMFyFiceH9d3cnA_1754866013
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234657_124126_BD58DCBE 
X-CRM114-Status: GOOD (  12.28  )
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
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 30 ++++++++++++++-------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 8dcc2bb777b5455d21a10f06c5ad842b2ddbc834..1483907413faa5ce1dc8614db05e6e929410404d 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -749,22 +749,23 @@ unsigned long inno_hdmi_phy_rk3228_clk_recalc_rate(struct clk_hw *hw,
 	return vco;
 }
 
-static long inno_hdmi_phy_rk3228_clk_round_rate(struct clk_hw *hw,
-						unsigned long rate,
-						unsigned long *parent_rate)
+static int inno_hdmi_phy_rk3228_clk_determine_rate(struct clk_hw *hw,
+						   struct clk_rate_request *req)
 {
 	const struct pre_pll_config *cfg = pre_pll_cfg_table;
 
-	rate = (rate / 1000) * 1000;
+	req->rate = (req->rate / 1000) * 1000;
 
 	for (; cfg->pixclock != 0; cfg++)
-		if (cfg->pixclock == rate && !cfg->fracdiv)
+		if (cfg->pixclock == req->rate && !cfg->fracdiv)
 			break;
 
 	if (cfg->pixclock == 0)
 		return -EINVAL;
 
-	return cfg->pixclock;
+	req->rate = cfg->pixclock;
+
+	return 0;
 }
 
 static int inno_hdmi_phy_rk3228_clk_set_rate(struct clk_hw *hw,
@@ -835,7 +836,7 @@ static const struct clk_ops inno_hdmi_phy_rk3228_clk_ops = {
 	.unprepare = inno_hdmi_phy_rk3228_clk_unprepare,
 	.is_prepared = inno_hdmi_phy_rk3228_clk_is_prepared,
 	.recalc_rate = inno_hdmi_phy_rk3228_clk_recalc_rate,
-	.round_rate = inno_hdmi_phy_rk3228_clk_round_rate,
+	.determine_rate = inno_hdmi_phy_rk3228_clk_determine_rate,
 	.set_rate = inno_hdmi_phy_rk3228_clk_set_rate,
 };
 
@@ -906,22 +907,23 @@ unsigned long inno_hdmi_phy_rk3328_clk_recalc_rate(struct clk_hw *hw,
 	return inno->pixclock;
 }
 
-static long inno_hdmi_phy_rk3328_clk_round_rate(struct clk_hw *hw,
-						unsigned long rate,
-						unsigned long *parent_rate)
+static int inno_hdmi_phy_rk3328_clk_determine_rate(struct clk_hw *hw,
+						   struct clk_rate_request *req)
 {
 	const struct pre_pll_config *cfg = pre_pll_cfg_table;
 
-	rate = (rate / 1000) * 1000;
+	req->rate = (req->rate / 1000) * 1000;
 
 	for (; cfg->pixclock != 0; cfg++)
-		if (cfg->pixclock == rate)
+		if (cfg->pixclock == req->rate)
 			break;
 
 	if (cfg->pixclock == 0)
 		return -EINVAL;
 
-	return cfg->pixclock;
+	req->rate = cfg->pixclock;
+
+	return 0;
 }
 
 static int inno_hdmi_phy_rk3328_clk_set_rate(struct clk_hw *hw,
@@ -989,7 +991,7 @@ static const struct clk_ops inno_hdmi_phy_rk3328_clk_ops = {
 	.unprepare = inno_hdmi_phy_rk3328_clk_unprepare,
 	.is_prepared = inno_hdmi_phy_rk3328_clk_is_prepared,
 	.recalc_rate = inno_hdmi_phy_rk3328_clk_recalc_rate,
-	.round_rate = inno_hdmi_phy_rk3328_clk_round_rate,
+	.determine_rate = inno_hdmi_phy_rk3328_clk_determine_rate,
 	.set_rate = inno_hdmi_phy_rk3328_clk_set_rate,
 };
 

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
