Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EB63CA0FF6
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 03:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=229GZ4xl0JzE+KrUFOEzqr/1+e+uwSA2cYQd7aXe398=; b=JMZvLrPRDPSCiv
	+oyECSXPF3a1pLow/colV9Qi/F6LDLtWC+rq7tjWzl+DUoMN8gGHuvlo0tvNInK/Ebh2fiyFRRpDG
	mwodsCtt2L4nJ2ck0+r+/Fzqc3bZbPG2Sy2g2CfIosGC36nJgBb6Nvf5muinpVQ5yYlMOE2kGIPfk
	uytWL3KYZLsrXT37zgyOYrhuSzlWY8hL8Gh/UR/hMdV7dqgO7+8uEtlf8jCbqXkMsdj1M7yyIioRx
	dZJ1rVaI/AX8/DnRhGjWgAMH1/N02si/pSwQ+YOIK64K3yj5h3H15Q5ctqqupMnc+rwYiSfNgXw4l
	/FzCRt7vcFDZpG/gyCog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urpx7-00000004Es6-2DIi;
	Fri, 29 Aug 2025 03:39:01 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urn8x-00000003tkj-22fv
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 00:39:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756427942;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/zv3Pf2hNuIQOUArm7ZxnDoNihXiep39POzlD21Z8Ns=;
	b=Jxb+xQ4QEuY3URcyIaWbkqdUI76DvBvjKQOQcMyi+TGBhhErEa8zjdbucMdbOpDkvJytHE
	k1eiAxxHMxeq3/zDhyOaeyRGgwdayCun0LCFimtSCP5//afJfjGCh+Rc8tXsypm0A9xb8+
	7N7B8nhOXdDFc3aUE9Ebvrcs+ov2e1o=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-563-90qOdxzvMVu84DCGzX-azw-1; Thu, 28 Aug 2025 20:38:59 -0400
X-MC-Unique: 90qOdxzvMVu84DCGzX-azw-1
X-Mimecast-MFC-AGG-ID: 90qOdxzvMVu84DCGzX-azw_1756427939
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70de0bdb600so29766706d6.1
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 17:38:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756427939; x=1757032739;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/zv3Pf2hNuIQOUArm7ZxnDoNihXiep39POzlD21Z8Ns=;
        b=c2Qe6Rvd01BJR/bFOmYZMT9SNnR20Z6EsCnlgu5gsN4C3SXagX7gZXzCsxnJYgxWrk
         YWwc17Z3qQ+YbDHb+PA7qqC6dwtDRK8lsybbCuMVPAq984Hn/Uo40XwAdL8MZGqmeM2+
         jvgBQrFXpM7qUpLrOG+CalP9BQXdAUE3uahGpxAU4JiK4d59aygWGMKAho1miFxpn4Fe
         SifAncWzdO2u2cLIQc6+WTJ1UXXgavcV95WYNOTZq3RYgfCiEl0v+oZjFPF7E4GxQtb7
         Z/oyQbJppcAft9fLkQnPvAxRRskJZN2rkNqBNZOfZy2JQ5r5EOTJaatZwhIaFVnkLwlb
         sJYA==
X-Forwarded-Encrypted: i=1; AJvYcCVjkU56fR20Pm5mmRhb8RTq0OE/HjrlvjhQxRFubBlApJjEyWwtUcy32395IQMtcz2Qu4A+mNROdlQAPNydiw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+zWfEVjLKgaWIZwfn9l0j1oKGdO6zFwPMMVvlNC2GmQsv3q7S
	yJ5X8nx4BqatdfcAEeIGYmWN2NDHmrvVjOUdl2EZ89uEUskeeOtnHt0hllNCdU1ENhe+q4EWcZy
	7nu+NxGEGrkiJ6HBVPI33P2xMSlwkn5AxOii+Cdxoz4ynq45kBMMt9xUbO7hNz9yGGF9vGR4FmQ
	==
X-Gm-Gg: ASbGncs1xKqDSzWCvdT6+IwiGCNeN4WVryPL5hLVpUgjwx51rgBFdn3o4GIMOXdFlOG
	vK+dBxGXZUfrYSlRAyOB47surTKocnKuJQJ7b1niI8eGY9xQhIyGVVVJEjhi6WmJnNtFv+j8NLi
	AGeHEC7B6Xi34KTU0tBfpdV59riT6YmnXOsKi8B9lopNd6CEUAizvjw50u1StMhpSvN7GYSbUWY
	Sg6J5K+VcyQ19hEHp4QMVjPLpZTt69dqgJGi5/blrschu+3GlZt/6O1GHVujGQ2d/Y1fiDqh8Yu
	VJ+HH/cumXilxljeWvZiD9UrNiJpC0gyWfw2FjEigTSdMzCQixw11WDAH21vqMwUH/POT54SFsf
	gYhOPBFIhkDmJ282Lo2V+eTLVnmFGgWFCmQ==
X-Received: by 2002:ad4:5d6d:0:b0:70f:5a6d:a24c with SMTP id 6a1803df08f44-70f5a6da382mr3848536d6.3.1756427938562;
        Thu, 28 Aug 2025 17:38:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNGUlyT+ctgue+dRAvvl/QvlMdyIOiL7k4jZZ7Wud+MSEXYojVVEBluU8riRrhIojKE6e3Kw==
X-Received: by 2002:ad4:5d6d:0:b0:70f:5a6d:a24c with SMTP id 6a1803df08f44-70f5a6da382mr3848306d6.3.1756427938041;
        Thu, 28 Aug 2025 17:38:58 -0700 (PDT)
Received: from [192.168.1.2] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70e6264141asm5588696d6.65.2025.08.28.17.38.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 17:38:55 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 28 Aug 2025 20:38:27 -0400
Subject: [PATCH 8/8] clk: zynqmp: divider: convert from round_rate() to
 determine_rate()
MIME-Version: 1.0
Message-Id: <20250828-clk-round-rate-v2-v1-8-b97ec8ba6cc4@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756427914; l=2556;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=58n95bQC3o+Nb/L33jeFcmWnqEOz/8LpB+ZJ4315jbA=;
 b=uy+XUWiCv9yIjSAyrE0/4I1CLGHob+UIZ+EQxuc1qyVM5xq9Nhgg1+JCuBhoLqxMKDOrEirQl
 MnnF6BAHL2DDr0riIPtjEh4AcWFPyXh0pP1ewj5MPPjAgu3gyCxOVpL
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 4E0kVsELoBprpTGFzhPBOWYZXfUNVMxiCwdkQgKZSi4_1756427939
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_173903_604479_7C7FE3ED 
X-CRM114-Status: GOOD (  11.72  )
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
 drivers/clk/zynqmp/divider.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index 5a00487ae408be4ffd586704859b232e934c1f6e..c824eeacd8ebd4d670d78f1af2186e61008bdae2 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -118,9 +118,8 @@ static unsigned long zynqmp_clk_divider_recalc_rate(struct clk_hw *hw,
  *
  * Return: 0 on success else error+reason
  */
-static long zynqmp_clk_divider_round_rate(struct clk_hw *hw,
-					  unsigned long rate,
-					  unsigned long *prate)
+static int zynqmp_clk_divider_determine_rate(struct clk_hw *hw,
+					     struct clk_rate_request *req)
 {
 	struct zynqmp_clk_divider *divider = to_zynqmp_clk_divider(hw);
 	const char *clk_name = clk_hw_get_name(hw);
@@ -145,17 +144,21 @@ static long zynqmp_clk_divider_round_rate(struct clk_hw *hw,
 		if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
 			bestdiv = 1 << bestdiv;
 
-		return DIV_ROUND_UP_ULL((u64)*prate, bestdiv);
+		req->rate = DIV_ROUND_UP_ULL((u64)req->best_parent_rate, bestdiv);
+
+		return 0;
 	}
 
 	width = fls(divider->max_div);
 
-	rate = divider_round_rate(hw, rate, prate, NULL, width, divider->flags);
+	req->rate = divider_round_rate(hw, req->rate, &req->best_parent_rate,
+				       NULL, width, divider->flags);
 
-	if (divider->is_frac && (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) && (rate % *prate))
-		*prate = rate;
+	if (divider->is_frac && (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) &&
+	    (req->rate % req->best_parent_rate))
+		req->best_parent_rate = req->rate;
 
-	return rate;
+	return 0;
 }
 
 /**
@@ -199,13 +202,13 @@ static int zynqmp_clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 
 static const struct clk_ops zynqmp_clk_divider_ops = {
 	.recalc_rate = zynqmp_clk_divider_recalc_rate,
-	.round_rate = zynqmp_clk_divider_round_rate,
+	.determine_rate = zynqmp_clk_divider_determine_rate,
 	.set_rate = zynqmp_clk_divider_set_rate,
 };
 
 static const struct clk_ops zynqmp_clk_divider_ro_ops = {
 	.recalc_rate = zynqmp_clk_divider_recalc_rate,
-	.round_rate = zynqmp_clk_divider_round_rate,
+	.determine_rate = zynqmp_clk_divider_determine_rate,
 };
 
 /**

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
