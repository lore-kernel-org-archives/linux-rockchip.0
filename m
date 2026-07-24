Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09CCDC531F9
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jul 2026 09:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HG6OWtHMp0G+eXfKdqSVBum/u0EA7KPW0mNROr7dUDM=; b=JiPdGgk5DsAv9z
	cWIL3XLOx5MciM1vdHvNmcxITjDDNF6knQ4iPWjdRHKyjapKrfqoC2znPbVKWdjPhEO9LTAR18yQ2
	Tml8MqsS1+lkPGrei5lAlwZ9VZA8wRJGHItRZSNBLTFhSLj6Vaot8enLEbZ6rghH3V0L2Faq5rK80
	oXDBCR6f7ef7dTiumDWXbMPsfFDmD5LMx+yqbto2tagbFSzvTlEPA1rY7CM8aBoIoGgqJ2J/Ph4Hd
	WytRA51Q044lYQ2th8yds5Ve0gqEoRZndk1+VU3iWnvEWGo/HsV7F42uPjqFZkjUQy7gMz7ov9BJv
	Ujms1m5dsYSuD1jgsEQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnBpQ-0000000FuEY-2rA0;
	Fri, 24 Jul 2026 09:04:24 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnBpJ-0000000Fu8U-0dT4
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jul 2026 09:04:20 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-49545ba3d4eso1283185e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 02:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1784883855; x=1785488655; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Q/Jg1vL6WCoKWmNIVSdaiN+VbT2b9Zn9L0z1UYJ+buU=;
        b=Gka1GpkHkGWEPrmiabpLRqg3pHQK0N7Ou085pNpjXWLXG2u+PtY8Qe5EUr6vWVrbji
         odTVhfb1pIll5HJ9xsroMBBS0gQhvJPNTYdtIm2Xiid+b9h7hRexZ9iFFCgD00p2SxH4
         vGdLsz+2rRza5MYNePyLwrwa8UyNFjL9uxoUXF93QKKhB/M0e1YXJ7Y1iP4NNGNtzA3J
         Y7VuNxNFR2VN6obLGeXb+ZKKnNY7bM38GSUpIrlKXyPqvsc8Qo7pIX7PiVeWb/HVt12B
         RO7uxCzO4jrhV8rIGk2mlOSz+yfd/42Z5Bnk1dwebl8eER3vV2zRCtyMY5e33gPZ1lfs
         ooZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784883855; x=1785488655;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Q/Jg1vL6WCoKWmNIVSdaiN+VbT2b9Zn9L0z1UYJ+buU=;
        b=U4SujDv6zHcAeL+xKlI9WwpXTZ9hdf8HMlIVshtVx2/x1k3JqNax8VIP69ZvHIrBVJ
         iu8qkeuKahbEsAFrHMes6fPP/zoEq5pxvfVW1ZsFCXZL5YXOZ5L97KPqSEkFgQkc6Xx3
         91L94GoIOEvayZljKJzUhira6gRF54IDofAbiRqfrU/PPweI81TyzaGEm5EKnFaQP7DG
         LrcwU3v32ZoVkdj7uHbNVNXySUod+8qTlYLW98/HT2io459ye4yvK1JGYnEZnXt7kDoD
         A+LAy8sVpeP9pfG0JFFzeAlMxGmwjWqY4MpK6EpUFX1c4ZuoQBVaCsy4ZLRZzvHuQyi7
         1fTQ==
X-Forwarded-Encrypted: i=1; AHgh+Rr6SmMzAZBUJeMFat6gfsfjk199LHPfQkWCY92wdUPOOxUwvM+P4Wp+x5tPNJZi5WAmS91jo6nnjc7K4R28dQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxDRVbjbcIS1DYvg4e1jpnWBO8zVbqcpds/jma3HTiroFOKYOAx
	ua9Q9oG4O9j5vjHVvU0kIBjZDxozEpm21o03m5X3AZCZIdNmH7Z3qZbvjSjuPWECs3Y=
X-Gm-Gg: AR+sD128h/RfMgtn79H3AOkuSKMmn1xeFQ0EGYNPZsYJTgp0InApABWXmxNFi1DqWTW
	HKyc1PGxkhynd1czvHoer8ARP81fWcgNKQ9OUSCFBXKiC4oggyM0t4ZGebqkeOOlwJD3qP8rGkG
	oSGw/g1cYBFJlWdlL04pMiO7Bc8ijU2VpkgzjjXsfE1b5EqNnRBLN1SIL3ntmdJsNJgb1F5PvCT
	gsJVWYOhNVNajy+h9wwuj4uAc1yi0/Qd4fMOlSdymUXooEpXCONWvzqLtjHhDLxxZ5LiEHJLZl7
	IXM+a2NDX0fWnExig0OVOYmAaLJ5quIVmk0MIlq3QxPRVIH5ppZtnqbhzu8Knk1gX5baLhD19DM
	jKJRWLShm6TJ3ULwoAggRB/bNMotmVDgiXAAoNhDabtUakSFbHf+ZgqY4IMMXElh57Yn5HJ2zxQ
	+8KcVyAm891eY=
X-Received: by 2002:a05:600c:6d04:b0:495:52dc:73a9 with SMTP id 5b1f17b1804b1-49573cc6d0emr50329905e9.11.1784883850753;
        Fri, 24 Jul 2026 02:04:10 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:e584:93af:f3aa:2c19])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4957af78a02sm52350385e9.7.2026.07.24.02.04.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 02:04:10 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
Subject: [PATCH v2 0/7] clk: clean-up simple provider misuse of the
 consumer API
Date: Fri, 24 Jul 2026 11:03:51 +0200
Message-Id: <20260724-clk-provider-simple-clean-v2-0-56f306156d25@baylibre.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHcqY2oC/42NQQ6CMBBFr0K6dkypWJCV9zAsyjDKKFDSYiMh3
 N2CF3D5fv7/bxGeHJMXZbIIR4E92yGCOiQCWzM8CLiJLJRUWubqBNi9YHQ2cEMOPPdjRzEjM4A
 pmjMiZoRKirgfHd35s3/fqh/7d/0knLbDrdGyn6ybd3lIt94/npBCChIvWhcqk5nOr7WZO64dH
 dH2olrX9Qs5b7Ao1wAAAA==
X-Change-ID: 20260723-clk-provider-simple-clean-a8d5ccc4ec20
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Heiko Stuebner <heiko@sntech.de>, Prashant Gaikwad <pgaikwad@nvidia.com>, 
 Thierry Reding <thierry.reding@kernel.org>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Tero Kristo <kristo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-tegra@vger.kernel.org, linux-omap@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2761; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=ngZbu7qrPPUnt3qz5v/OxI6wrSNHJGvbM+okq4uzzqA=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBqYyp6PPnWrA0DSJ4UJ6CstsYSqMPhVc8i6ZcbD
 Bp8my0uaVqJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCamMqegAKCRDm/A8cN/La
 hYzUEACbbA9uvxujp8Cmfa3PzoTZ5cGEuPTX8RpG+NIB9lOpZWMoa1fR+25/AnbklP6EnRNPt+u
 mo8vWsoNfpYFAb8+oigyEE+UnaDdY2RNM2IpaXdUHdlmUXX36sAkdpuw9PlrKiuWdJALla4BjfA
 vpi9rQ+FceaCxa6CVs5+w+RXlougTYlBPouzG+njfSj1WEYb5/rpTwD2c48q0A0SjiOXbL/3T1s
 uDYBpb2rN7LYB2YvxshiaLkaEOpb+5QGIRDHwHyoHwrn8E1hIvyrIo1HDtT8C+fm1rbtfce0iEH
 2q1UNJD27j9cnfxi+9ShMnnkhlIRhbpMG8V5eNDlp9zxpdzl/J31H1H0FUDK2kg9Pe/hZRt88y6
 xDgnulPPOR3YwraARkMAe0tmhYidPptJsBhVv59yAiZkZTgzX49HLrHFNazof0ZS250Sj5AtsT7
 yHIwPN8P+O7YLcwV5nqpad5lXpDi3YOJSqhJRlB36fglCpGY7+MMJap5EsulmSGu323+2LqsIXk
 b4vgUzy99hr4oRBEh/cmQjNPnN4/4l4TQZaFmeNm1ysWPv/eQ9PXyFexmj6AZwzC1ue6qALz4vA
 qsjEHdWeIoMJKf6sFWEIgUm42wjc0Q3Dr8dWMkUFSCdFPc09zJkJXNtt20TC8kc3Qg9Z/vEkbiH
 rEW8+SG6UGURodA==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_020417_333704_C3F73ADC 
X-CRM114-Status: GOOD (  10.79  )
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

Clock provider should not be using the consumer interface.
In other words, a provider should not be dealing with struct clk.

This change targets occurrences for which the provider uses the
consumer interface and corresponding clk_hw interface exist:
* __clk_get_name() -> clk_hw_get_name()
* __clk_is_enabled() -> clk_hw_is_enabled()
* clk_get_rate() -> clk_hw_get_rate()

---
Changes in v2:
- Change split by platform for the different maitainers to pick it up
- Link to v1: https://patch.msgid.link/20260723-clk-provider-simple-clean-v1-1-0c9668240467@baylibre.com

To: Andrew Lunn <andrew@lunn.ch>
To: Gregory Clement <gregory.clement@bootlin.com>
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>
To: Stephen Boyd <sboyd@kernel.org>
To: Brian Masney <bmasney@redhat.com>
To: Bjorn Andersson <andersson@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
To: Heiko Stuebner <heiko@sntech.de>
To: Prashant Gaikwad <pgaikwad@nvidia.com>
To: Thierry Reding <thierry.reding@kernel.org>
To: Jonathan Hunter <jonathanh@nvidia.com>
To: Tero Kristo <kristo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-clk@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-tegra@vger.kernel.org
Cc: linux-omap@vger.kernel.org
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

---
Jerome Brunet (7):
      clk: mvebu: clean-up simple provider misuse of the consumer API
      clk: qcom: clean-up simple provider misuse of the consumer API
      clk: renesas: clean-up simple provider misuse of the consumer API
      clk: rockchip: clean-up simple provider misuse of the consumer API
      clk: st: clean-up simple provider misuse of the consumer API
      clk: tegra: clean-up simple provider misuse of the consumer API
      clk: ti: clean-up simple provider misuse of the consumer API

 drivers/clk/mvebu/clk-cpu.c            |  2 +-
 drivers/clk/qcom/clk-hfpll.c           |  4 ++--
 drivers/clk/qcom/clk-krait.c           |  2 +-
 drivers/clk/qcom/clk-rcg.c             |  4 ++--
 drivers/clk/qcom/clk-rcg2.c            |  2 +-
 drivers/clk/renesas/r9a06g032-clocks.c |  2 +-
 drivers/clk/rockchip/clk-pll.c         | 24 ++++++++++++------------
 drivers/clk/st/clkgen-pll.c            | 20 ++++++++++----------
 drivers/clk/tegra/clk-tegra210.c       |  2 +-
 drivers/clk/ti/clockdomain.c           |  2 +-
 10 files changed, 32 insertions(+), 32 deletions(-)
---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260723-clk-provider-simple-clean-a8d5ccc4ec20

Best regards,
--  
Jerome


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
