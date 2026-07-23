Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBFD0C531CD
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 10:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3qLdMvDThR2Ugs9b1++nZRZQt8wglgLLQFzn76/X098=; b=3ZE6HidCxM36Nv
	b99O36YL4YIkMby3FmYDEwwDGGYQCPof2N93V7frnZpfdMKzKsmDFHeJfCc1HfJfQX7kDxZ/EjIXV
	qDoSNnlTMEHGTV9Y8+iPARopoJ5VruWIOxuSix9Js6ylIDtks4SGWoUFGYhraomKxoICBNshLiB6g
	cSPGlW7cNkjasvx8DxYvmXZctSkpKdHfRBlOK+ldG6UTP0mfnmYdItXQ+mPs5Vu4rDP+OZIqapkAw
	YQODW0+oOFmJrJlV/zUlxD13pYZBpr2DdJvkr8NMjbrNcWvzTWY4s6wKcDo8e7QhNINhzscsWVp/7
	Q1b1t4PoqrSwzFUduQ5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmqZF-0000000E0fF-3cFT;
	Thu, 23 Jul 2026 10:22:17 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmqZC-0000000E0eU-3nWC
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Jul 2026 10:22:17 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-69c7ab350e9so792675a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jul 2026 03:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1784802133; x=1785406933; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=kzj0fk/cPMNrKTYV5MOF5u7NMggcty/MWwr6k4CAmao=;
        b=dAfD7SxqQs9MwuQaN0sZuJmxtuC1os6L3+IQuAEQ3Go/u3VGPDz22Pn2Jz8T3YXzcO
         q9RJorIn2M+zX8uLrSSPZALLFwMurEBUpk+E9dBC6IPLlIXRx9ml1EXc3KsmlIXteX7D
         lhnKtV/RG6TGznrhjZ/RP22p6ibEFPDVpO/TYt81PMCde3siulMnFwbnNHNIz2Dpd0q3
         IFJdIW/0QG0AVCf46iGDRGDmnoqJ3RYVYzL73zNid+8J3B9KnzHl/lMxZGto/j3yL+1+
         tnqkA98ZA5J+RG4Lfs5EnWH3VnBjmqIpcX+icKjelDXmhSqhgkXjq3rIIoYkbwP6GdP+
         pKeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784802133; x=1785406933;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=kzj0fk/cPMNrKTYV5MOF5u7NMggcty/MWwr6k4CAmao=;
        b=dyRIMvLVWn8ZQWcl5H9Zbv6wI/lNc0+XdVYLKo3bRUwVvu556ZBD9n7TYrneNSl9AO
         hFjWR9RvMrOmNhDc023+X37sCAHMaz09BVHu7yJMb1aG1Zf1yYT3L0s2AU/kAWpIPMcA
         aNXL2ZN7tB3Q5Q+ZhohVstemKij24NgoiI1wcVyVrsOqNyeDvZ0EK/49z26ZFdIYR5bL
         unz10Kh6PKunickADtEhTEXbQjZ0hBqC/J6z58Dq5+1RD1kCl9nAg1+CxcaVDGLVgWPT
         6EikXlMQ91/vR1eF5zUNrdIMBq9tp9xiHMg8TWWlaEjB42uRiBcQ1zY/oNXeGA36JoTc
         aKCw==
X-Forwarded-Encrypted: i=1; AHgh+RpFPnVYSdNBBWso7qfzHYfqETl7W4tqVZVTSmhsqYeMNr/MZQuitxiHGKVgKXkySc0z2TMq+cdRfFUrfZM8tA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyuwxC8AWRQr2g58w0ArEr5WrsU/3rQbIhWRS3FPzFZJfwhOb9f
	gJSP06Q+o5PNFDaxsXQAckfDwYHIjUmAIbefUyv7pA8686vxBy00k+wcle3WM1Fx8CI=
X-Gm-Gg: AR+sD115RhLa4zYddT65ZMVVAXp03HQ38XS218QoDIenHoPEcwLfXIB6w+lgI13ru8e
	wKC3NSkn1G6SXDetS829zHMbwP2olzfYT0Dk05+hrqfCnCDt+sXhAYpYopQaDN3G2crioKhcfuO
	C4HY9TZzJz9b8rYBo3fowVU7YOfGKDL1lx4lQJffVQGYTt+zV2hjcCpL+GUQhF0Os9wyl3KENa7
	Oha6xlYBIye3tVRnKUg4Dju1CvfgCks9JAHssxeEwW5+sTKtadATdNMBHlBAGZfZGMHHT7xXcp+
	jBAfagvwJESiA0oOsxySmzufncLfiPA7Fy+NZMk2FYCztQ68SB5GDj9AAhznPW78w8O+OAjvdw2
	EJ5b1myDGoh0krT7V5alZMltFed7I6kobuve4SR9uuG3gG4VRAQOHJ5adSSoryGIPEz4cAWHTzN
	gH5b4I/dGdE0SU+Uitd7ytKw==
X-Received: by 2002:a05:6402:360f:b0:698:4291:b85c with SMTP id 4fb4d7f45d1cf-69f6b62e844mr1014125a12.8.1784802132716;
        Thu, 23 Jul 2026 03:22:12 -0700 (PDT)
Received: from alchark-surface.localdomain ([193.32.126.214])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69f35020dcfsm1944928a12.20.2026.07.23.03.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2026 03:22:12 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH v2 0/2] Fix RK3576/RK3588 fractional PLL rate calculation
Date: Thu, 23 Jul 2026 14:21:57 +0400
Message-Id: <20260723-rk3588-fracpll-v2-0-3adfb9dda235@flipper.net>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3WNwQ6CMBBEf4Xs2Rpa1BZO/ofhAGUrqwSaLRIN6
 b9b8OxhDi+ZebNCQCYMUGUrMC4UaBoTqEMGtm/GOwrqEoPK1SXXSgp+FmdjhOPG+mEQ7lRobTu
 Tl6aANPKMjt678Fb/OLzaB9p5s2yNnsI88Wd/XOTW+ytfpJCiVaZsndQ25eoG8h75OOIMdYzxC
 87QhPjAAAAA
X-Change-ID: 20260721-rk3588-fracpll-f4377cd80983
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Elaine Zhang <zhangqing@rock-chips.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Sugar Zhang <sugar.zhang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>, 
 Wyon Bi <bivvy.bi@rock-chips.com>
Cc: Dragan Simic <dsimic@manjaro.org>, Liang Chen <cl@rock-chips.com>, 
 Quentin Schulz <quentin.schulz@cherry.de>, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2625; i=alchark@flipper.net;
 h=from:subject:message-id; bh=vnZAqLwPovH/ju9j2Cyh+UYxWO+gHOZuE8JwAskYk/k=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQlvvZSt3l+8tDEaeF+5ZclWoXF4mTeHPNpu6nBsnjpi
 xfn3mTEd0xkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hkY6xjpGDFycAjDV7RIMf7gCWNtZbgd/bo03N2560bkzYeHSyfVvQjtDO8y2xFuVCDAy7Ju+aX5
 2xjVn98mXPH5nlqbvvFez5/WkKznH/7yfL/9MnhMA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_032215_013568_2B27BA50 
X-CRM114-Status: GOOD (  14.41  )
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

Fractional PLL rate recalculation for RK3576/RK3588 doesn't correspond to
what the hardware actually does due to two issues: wrong denominator for
the fractional component, and wrong signedness of the fractional
component. The result is the kernel-visible PLL rate being off by about
2 MHz for the two affected PLL rates vs. what the hardware produces.

While this fixes a real bug it's not a regression, as the issue was
introduced in the same commit that added the RK3576/RK3588 support.

Note that there is a separate unrelated issue with the rate table, namely
the 2256000000 Hz entry currently leads to a VCO frequency of 4512 MHz,
which is just above the TRM-stated maximum of 4500 MHz. Also multiple
entries in the table end up with Fvco < 3 GHz, which according to the
TRM leads to a PLL period jitter of +-2% vs. the +-1% for Fvco > 3 GHz.
To be revisited and optimized separately.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
Changes in v2:
- Split out the denominator fix into its own patch (thanks Heiko)
- Reword the commit description for clarity (thanks Quentin and Sebastian)
- Add relevant clock derivation formulas and key constraints directly into
  a code comment for easier future reference
- Link to v1: https://patch.msgid.link/20260721-rk3588-fracpll-v1-1-b289bf17cf17@flipper.net

To: Michael Turquette <mturquette@baylibre.com>
To: Stephen Boyd <sboyd@kernel.org>
To: Brian Masney <bmasney@redhat.com>
To: Heiko Stuebner <heiko@sntech.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Wyon Bi <bivvy.bi@rock-chips.com>
To: Finley Xiao <finley.xiao@rock-chips.com>
To: Liang Chen <cl@rock-chips.com>
To: YouMin Chen <cym@rock-chips.com>
Cc: linux-clk@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Dragan Simic <dsimic@manjaro.org>

---
Alexey Charkov (2):
      clk: rockchip: pll: Fix the fractional part denominator on RK3588/RK3576
      clk: rockchip: Fractional PLL coefficient on RK3588/RK3576 is two's complement

 drivers/clk/rockchip/clk-pll.c    | 16 ++++++++++++----
 drivers/clk/rockchip/clk-rk3576.c |  4 ++--
 drivers/clk/rockchip/clk-rk3588.c |  4 ++--
 drivers/clk/rockchip/clk.h        |  8 ++++----
 4 files changed, 20 insertions(+), 12 deletions(-)
---
base-commit: b4515cf4156356e8f4fe6e0fdc17f59adab9772f
change-id: 20260721-rk3588-fracpll-f4377cd80983

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
