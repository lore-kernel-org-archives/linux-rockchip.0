Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E973C282EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 18:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f3T20PAs+Vn+itT6GkqNG69GESdZ6WmudqmF82TqvDo=; b=BHkiuRJlvTSI6g
	sm5tWk7Rin4etku2r0e3OXMZD40sSsUvKarKCzjWJoKc4vPl3CyknmrhLurOitVW1pD1Bt7akchxD
	HDzXJYDoorygEy/0rOHxfUVfS+MEyKT1v85D5EeLKwyB1i/FPlUkU2Fw+mx8Dk/UfqkWz/1zOSRK7
	6I3jxXHYtKDKDl/z5H3A9FB7zdjAoO4ku2Py+sBH17m7YHkWTVM6lXAU3OjRvbqrBBsm3o2cqrmdj
	dNopdI+kRPmL0Np9ON2ReEfm2sjQerC7uCXgvbUbIp1tEJ4mcTymkIf1WwUKMxVWBOg9AP1WfjqAA
	iJUin5bWLfs6YG6kwsyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tubZD-00000006nLs-2fmw;
	Tue, 18 Mar 2025 18:21:31 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tubXW-00000006n69-2pwe;
	Tue, 18 Mar 2025 18:19:47 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-223a7065ff8so21694515ad.0;
        Tue, 18 Mar 2025 11:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742321985; x=1742926785; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IWXXj2vpA8WsbFi0qPRvWIGgICG/QaRDC6OXeQOYQS8=;
        b=FRQ1XQxPT5rsUvPWpT7UHvHbCFQsBxdDBYArknPKWzgmMUhf74XKND3kRm8rK0v+7T
         +TeUnS3iq2S4pg40giR8JYuk0hZerRZEJH0QmeYC6DcwKB4GBBrMpbCyFGxQfVxp+1g0
         y6LR/LD6/9uw5SEseFgM1lpTRojVUnyH1AwsManvoQq5G/l2VBtOIjf5hI/o2jbOzd5d
         7G9GeVZKx04jLKU9XcSYBI+jS/gGY+PCQszUlMJMJ4wHcbk924jbtsO+GX4Hb0mhmANd
         9Z/DeRrQpOQrVT1ayATMs5cj0FBW1Mcgzfjo/VKUwYfvTM2myFLYfBz5Mk1NkLtqI8Fv
         tLGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742321985; x=1742926785;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IWXXj2vpA8WsbFi0qPRvWIGgICG/QaRDC6OXeQOYQS8=;
        b=FJq690+6dS79yqonqOiTIsc7Q6AFNAqSKPJiHmFnDdCLSi4jNTy7sDUISR+Hxq7QBX
         Xuo0cK0ZHPTmjwzSXsWKr8x5ZtSnN3E2AyNBla+EiL0gcTbX6xtcGo7EIxLtB0XaLOL7
         t+tZwQbFHOyRcMB28NFLKIXAvQrbePYHhEOnAmy2tSzJji+Wp4JGoUUh60h3fTTNSPtC
         iy6uwOogro2Et0+FaZjbZ/bxRj2Lvd7xPIjnmFxNLj32rna2/TKDDCGmzxustR3AVaGH
         DTcUpvtlkZQNrtaaOqut+SVNq+BUxjFqCzCkjG8FPtVFWSn4kSPh3SccD55qhwMaYXni
         1CSw==
X-Forwarded-Encrypted: i=1; AJvYcCVlutpqztKIKus6+7OISPSDxzdznamhytcHzSFbYPHWWHwMOgdRp2l8R+Trc/dJKYMB4PqRUCYSFiSv6bI/hTQ=@lists.infradead.org, AJvYcCXxuUcTg+erKwXdbs+vfT8hl5kTyvWsG8Iu31K2oYCNJMZV5Y+TWy2N9bnS1WZTaotx4KdiqdB8MAzTOtBUS0K9@lists.infradead.org
X-Gm-Message-State: AOJu0YyCETPuljPlwPspn4LoapEnQQwns8ofnk18sNRMb31QyTp6/Off
	2nBd+ZnErGfgBD+b0K7XkCnjX2J9l2k0TchIISw1KqVnGk815lgT
X-Gm-Gg: ASbGncukHH6lxbtyyVpxpXkLZJAgC5A0k4RkbJ3JUE5aQbbW7MP7QIQpl+CXiaiX+tb
	qbxRoRR+chpBjJzRj0NVl8fyuQA0t6Gul5nxxBiplAld5pNBEPWUXXvXOyMQqhezdRF+biYBS6O
	IrhuhP4n1HLcg8Bm6JYrWQM9YxenA1712IxdiCx/2fPcryA8Za5qmbz8+WLBmFeCmnekyBxHJrp
	TauIU9Jo8GawiWSlMPhBQFS4UZl3Y/Vr66sifN+t0biX6nQepDe2nmnDXxUOpcCrqpYz9pnqTys
	2xtuMZpPiGNa2dXpZCn0mVS9mVQdQ2yhxPgaFO5ZXVY04Co=
X-Google-Smtp-Source: AGHT+IGy8HRi8t/4P7W6clWm8ulwpmfSGVobi9wvP1Uuzt6DNIeDr3OKASvL0ZL77QVKb0SOfKk4vg==
X-Received: by 2002:a05:6a00:b42:b0:737:e73:f64b with SMTP id d2e1a72fcca58-7376c10cb80mr179692b3a.1.1742321985193;
        Tue, 18 Mar 2025 11:19:45 -0700 (PDT)
Received: from anarsoul-xps15.lan ([2001:569:7d4f:2900::398])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7371167dee2sm9887838b3a.111.2025.03.18.11.19.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 11:19:44 -0700 (PDT)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH] clk: rockchip: rk3568: Add PLL rate for 33.3MHz
Date: Tue, 18 Mar 2025 11:18:51 -0700
Message-ID: <20250318181930.1178256-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_111946_714446_2598DBE2 
X-CRM114-Status: UNSURE (   9.60  )
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

Add PLL rate for 33.3 MHz to allow BTT HDMI5 screen to run at its native
mode of 800x480

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 drivers/clk/rockchip/clk-rk3568.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 53d10b1c627b..1c73e18a9862 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -89,6 +89,7 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
 	RK3036_PLL_RATE(96000000, 1, 96, 6, 4, 1, 0),
 	RK3036_PLL_RATE(78750000, 4, 315, 6, 4, 1, 0),
 	RK3036_PLL_RATE(74250000, 2, 99, 4, 4, 1, 0),
+	RK3036_PLL_RATE(33300000, 4, 111, 5, 4, 1, 0),
 	{ /* sentinel */ },
 };
 
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
