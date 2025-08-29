Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE8B2CA0FF6
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 02:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poIA6w223EBFSjKDNxZRS9tMECs+a8e1E5X0LirjxMI=; b=CMloE9009IyMSj
	rUBTfGgexXh4rvuAZh82XbyGhx2bCuX4xl9JumQxEpA+RJ6Er8Ve/eGeNQgGULygGxBGcU5Us/290
	S8KRyP0u+YdzYpT/pVUDszQw+jFKqffF5fntgVfuEXEU/qKQyfV7fcpMHKikBQFLle4MIjsQY4RRP
	QjtnlM6kA4l41/jk2KX0mB7gwIFMoMh4SsuVPAcbaq3AvSBFArinuFpQsP885imDVtvvQLgOnakuc
	CbCDGFWMockUWEWN5oDo3guL/uJGWi+SvKg6McKQD6tDMCVcSBu1/IKuakjRTWyBHbBHdubu4bgnI
	bnltCVXORoBMr+UeJ82g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uromZ-000000046vE-3jDq;
	Fri, 29 Aug 2025 02:24:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urn8l-00000003tca-3hXK
	for linux-rockchip@bombadil.infradead.org;
	Fri, 29 Aug 2025 00:38:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:In-Reply-To:References:Message-Id:MIME-Version:Subject:Date:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=OQVjNKRtGeYd79k9EsHTPhO8iq2mtofexnH8gr3Lua8=; b=QpU5WhuWo1bGBFJT+eZGMnuonF
	jK5Ylm+0QnxJ/wbz2okR7g6y3QADlFTcXOmzKxI/Yp1DbjPbtq4BfTr2ph8TQpI9ZFcG0aBlIsq3t
	13mXlfVqb/1Sow/oG8siwU2TlaFx8WCXceopPoTnrI5TjlUH9lYQywq1D7hENDuMimwR5kcD8ARAO
	lTpeEKOdjItwgwfzCuUGUTJd34kCeBIf0CymF1SMqE0fu+s8iqo2PH6IYDwzpSOwcfc3I4IHLdzPl
	TwPzOPC2OTvuReWCrYA/nmQDPj42ITzj/0XlFq0/GcNsWXvu/82eN0oOS4eXcHBLaOPK36/N14KcE
	j2SNu5Zw==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urn8i-000000030Ig-3r0N
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 00:38:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756427927;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OQVjNKRtGeYd79k9EsHTPhO8iq2mtofexnH8gr3Lua8=;
	b=MeGgwKpQP21PZsdWaN6D4jpcm6dfE5nqwlb54zjGvXv4A9udiMP8hgnZVjYdy/fyHV9ScV
	ixetOv8JQ5HC7jVyFen9wO2Zrwq22Hb49sGRm/MT+uFc8MtehsmMKCkRk0pd7Ld58AnHrM
	fquESkcqppgE1kmjvZqxrbZ06SmG3mY=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756427927;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OQVjNKRtGeYd79k9EsHTPhO8iq2mtofexnH8gr3Lua8=;
	b=MeGgwKpQP21PZsdWaN6D4jpcm6dfE5nqwlb54zjGvXv4A9udiMP8hgnZVjYdy/fyHV9ScV
	ixetOv8JQ5HC7jVyFen9wO2Zrwq22Hb49sGRm/MT+uFc8MtehsmMKCkRk0pd7Ld58AnHrM
	fquESkcqppgE1kmjvZqxrbZ06SmG3mY=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-418-dja-Uf_3NmygkBvAnVHmvg-1; Thu, 28 Aug 2025 20:38:46 -0400
X-MC-Unique: dja-Uf_3NmygkBvAnVHmvg-1
X-Mimecast-MFC-AGG-ID: dja-Uf_3NmygkBvAnVHmvg_1756427926
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a9f562165so43943396d6.2
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 17:38:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756427925; x=1757032725;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OQVjNKRtGeYd79k9EsHTPhO8iq2mtofexnH8gr3Lua8=;
        b=rxUYL6yZAm9BIp8spy+946cvslBolDDLJl2PYiwwSYbDQm39xhPja6EzodFRloA3aO
         PM4mVRmgjGTjB38l43NzYkWLwSOwug6vRcPnPFa8sR44/OI2t9zCbthLrAQwjWMtZYiM
         v/k75l1+HqdAZYsZkjBQFl18EoLybtgKfAYzF/xpTdE8pYhkPNRtKSP3Y45XraKxegeY
         1ZMeu8L3z+cNDHrBLojQWYUHCJkaZG9bbL6v+wd9s/dvICw27sRTCi/3hz9LGk+Ru31x
         TpEidu39F4XjZDNXHCAaIzGvHXeeNQ7J2fQqD+WhKF+LDfiF1E5ABMcRk+/azePzAwnH
         kcZw==
X-Forwarded-Encrypted: i=1; AJvYcCUDpZXkhkg1g9ByHqztvEjo5bMrJy+QUZfkUQxcl2K9XD5MNWnvqT/wFkMM2XbFkHQe3I551lAzKPHqFm+bng==@lists.infradead.org
X-Gm-Message-State: AOJu0YxOIfmu+T7R1mMh66LmK1BpfQr4n7QS/PD74di1xAQiUyfkA7cO
	6jjSkjwmfnm2eQyT51T/hVYKbeg9U/VRcBtUFipibnSjEkoZrKRyg2c9sHOVKj7P0YS9gQDLJxy
	XvBy68N6I37EHMgcPR7mrT2JocKH6ebXN5dDVSPLuqn8rck1iJlkP1Ys55PyJHs7X0M8SIoOOM6
	gVEKWDXg==
X-Gm-Gg: ASbGncsEWRU1TD3+SQw1wIpu7CazzCnxlvn2QnTh2N36/gISbMQS/nHhc3WKhBtBCU6
	0QzMGItf5fn+VQtdBV3apA+IZH/i7UnZIgG/EdRyIrsa0fkyY8GX1UCaGSCiRkVIpDHxxTeT+yf
	XKLDnDMyNH/qY+tjHrVNPa+ikM4uxIsSFCVp79cv6juiojgt1eNM8eIQIAvETKJycgvUVXoIQDw
	zelMyLxvJAOEL3q5X05YrHPAMV/D6ZUvuTvtjrwS9ZLEZUMtNv0U+PPCWYKkUa1C1BuAkqmNTe5
	JMmxT243BY1BZd6xIFVRJRL49GIsNBsUUJZhF8pzFQDwA1gbIqe6RefXbM4I/D0+j6kxnSKp+YB
	Of8kje+fduwS5RSIf3fUBoP57nhxBUfIIDw==
X-Received: by 2002:a05:6214:cae:b0:70e:782e:b23b with SMTP id 6a1803df08f44-70e782f22bamr10926606d6.3.1756427924882;
        Thu, 28 Aug 2025 17:38:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFR8adeLmPp6i8NPj//2LYlvbZ2JGvJAUD70v2I2NLKTSUE6nmwskQ+vGH0x5SgjqCGSE+qBQ==
X-Received: by 2002:a05:6214:cae:b0:70e:782e:b23b with SMTP id 6a1803df08f44-70e782f22bamr10926366d6.3.1756427924487;
        Thu, 28 Aug 2025 17:38:44 -0700 (PDT)
Received: from [192.168.1.2] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70e6264141asm5588696d6.65.2025.08.28.17.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 17:38:43 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 28 Aug 2025 20:38:22 -0400
Subject: [PATCH 3/8] clk: rockchip: half-divider: convert from round_rate()
 to determine_rate()
MIME-Version: 1.0
Message-Id: <20250828-clk-round-rate-v2-v1-3-b97ec8ba6cc4@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756427914; l=1835;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=lRErUXfhlVyOjMePggfg3EacyZAvSvm+w3vZGvHjG+s=;
 b=77L/EGAGdRYd5Zfk7wMZPiUoUyEJ+wFGI5TKO4e9gl+bXy3dLwkQMeaRO1HRElJrc9TAOKFe/
 f1vZeXk72u/BkLnWKmAly+0tQG9J1VwJ/BPTEXNwrw7PqrQdgLjH3+M
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gNok1_sD0quuNHUDf2so8tNixx8us0RcYv2IaIGi_xs_1756427926
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_013849_141110_55B0E287 
X-CRM114-Status: GOOD (  12.21  )
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
 drivers/clk/rockchip/clk-half-divider.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/rockchip/clk-half-divider.c b/drivers/clk/rockchip/clk-half-divider.c
index 64f7faad2148f27099d1ace36da45207e2315a1c..fbc018e8afa44c87a5a7b53475fc98b318ce1ec8 100644
--- a/drivers/clk/rockchip/clk-half-divider.c
+++ b/drivers/clk/rockchip/clk-half-divider.c
@@ -92,17 +92,19 @@ static int clk_half_divider_bestdiv(struct clk_hw *hw, unsigned long rate,
 	return bestdiv;
 }
 
-static long clk_half_divider_round_rate(struct clk_hw *hw, unsigned long rate,
-					unsigned long *prate)
+static int clk_half_divider_determine_rate(struct clk_hw *hw,
+					   struct clk_rate_request *req)
 {
 	struct clk_divider *divider = to_clk_divider(hw);
 	int div;
 
-	div = clk_half_divider_bestdiv(hw, rate, prate,
+	div = clk_half_divider_bestdiv(hw, req->rate, &req->best_parent_rate,
 				       divider->width,
 				       divider->flags);
 
-	return DIV_ROUND_UP_ULL(((u64)*prate * 2), div * 2 + 3);
+	req->rate = DIV_ROUND_UP_ULL(((u64)req->best_parent_rate * 2), div * 2 + 3);
+
+	return 0;
 }
 
 static int clk_half_divider_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -141,7 +143,7 @@ static int clk_half_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 
 static const struct clk_ops clk_half_divider_ops = {
 	.recalc_rate = clk_half_divider_recalc_rate,
-	.round_rate = clk_half_divider_round_rate,
+	.determine_rate = clk_half_divider_determine_rate,
 	.set_rate = clk_half_divider_set_rate,
 };
 

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
