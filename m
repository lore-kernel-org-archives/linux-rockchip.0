Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EA70109024D
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 16:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+/IcWohw9S9MqHFXvrFyyWKed8uquGjxZBtTta/+rZg=; b=h8Mdi5ahzQ6qb0
	ENyj38r/VKOKP12dIW3jyCZT/NQsjp3tsVSPf/XJkouMCYQxrapASp1+61UM16sov2eGTRhFOSRLw
	AdkqxIaNSoW7m0rYURqIq7BTOBu6A0Kt5TWtZSg7pSgydJDNnN3oYWS384uCwCkQVAJqGIOWPuF+8
	lHpMl6sASs9EKtTowYwQht//H1/BNDC9Xshyh4SiipJMTGD7cZczDpJ/CUZfPVHNvwjprqjx/VtWq
	fnSfD8mJuy4/G1Y9VAC4SQGA2Cd16OaPwPccGHvILqUgKYiP1/+/CB4orwEcVJgxKJffe4//JOaUj
	yYmS+NKkJmojq0JvvsIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3GGX-0000000B4yx-1xim;
	Thu, 19 Mar 2026 16:30:33 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3GGU-0000000B4xw-2rda
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 16:30:31 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2b061b6cf36so8618145ad.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2026 09:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773937829; x=1774542629; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7WbbIrQRZg+WI5V+d2UHHYYa3r1L0mKPW9kQXI1QdeY=;
        b=XEiCZNmrF8i/bOOPCZhEf5ei95AULC4vSjQnjlvg3IqvAbbYomBbomi4QkPrzd9pI3
         vFQaTI3DBPDAPxzMLDR14YnANAXiPo5KA+mpEF+QCbvtvOIubyxirZedxmgPCM2a0fu5
         pVcYtY6QU4j3VmbodxSEX0WefKTrk99yP2qhOHV5AhiUHkMk3ws6MOlv/i/6bwYTeeaH
         YM85NanXpGqwcU243+s5EsfQPnqjQxea+eU2u/BLVO0X99jl3iSZalh/h1zqXufkraoh
         yK2gJuaIvIj2drNKNcyBvJnLOgHYUPTLAINbyHYk/DnA0IuzmoKBQt8m4ToiAajUhAPM
         4l0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773937829; x=1774542629;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7WbbIrQRZg+WI5V+d2UHHYYa3r1L0mKPW9kQXI1QdeY=;
        b=bQSsBgcw5JuJNFf64uyTIMa3soa3r2pzSyCi6nKTMmds/vo2u+8QhWP+tDup8FYIGX
         b4t8beaHWMrR0I7bSHExTM8wv7obAPyd4h0X0tEPi8qWOezuNdUYlpj5fsDEzmS1Mtcq
         k1dvBsx/VOsCR5IjFqXwFohPitUQoZzanH0hco0Bz22huY5xqBdOsm1tu4fkoV///x3H
         TvqPkFlFVgFvn+c+w/2uxR71Zr/gfTqkRooUz6hs23kCGxaNgIdw5HWxMJvtdV9Drp8/
         kbtqJ3lXiBQmUFA40cfsRB2nhwDlYxgUhhEEAaldI/UiY/U91meHVwNutDxeml/7ILTK
         9QaA==
X-Forwarded-Encrypted: i=1; AJvYcCUX+4LtmdDKwIZDE4+0VZw13Q4atXPV8j7IXFOAFjJiN3zfBxODXuU9YUYYhrHRqR+ruKDcpMaLC4FAeY7RWg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yys9JP92wkAP0HHnUnzH4rHxAD58ITyaG0nyat9UFhSdWED3N8s
	vM7dzSHvg6Ws8pM+/Bg0QnBuDTV8ezPNy4erSO9XBww2p/yicay3OOkb
X-Gm-Gg: ATEYQzyrt7KhxCriOZN7jOF+RY+YEajbmUYMdi3JZVOElsYP+UgZMENHhtpVvUl6Xl6
	tiiumZPxC0LTHJ6QPARSyJReoTICYWr+myNlvDXaoOcUhol9LipLtfRG5wqbap1LmYoatmlsDnP
	9Lth4aiRpuQwHZNPkUvT4mZXKB7mA0x6EqxpIPQ8tD9pUnz4GpenYWYafG6KI5aUGGt5feAQNPd
	xc54NnIza/NlnGxX+o1B1XbHMbvcf3VlyqY1FRkAP8a00zTljerjkWR8m4wPk61GkjYfuCLk4BA
	EfNaIImiT+pyPJW/48J3Wg2IO6MNZX6k/2E697oIemmkSDPiYmDDBoZarje5LKOVeqo+ALBFfdK
	ab4weLaUZLr8Cq4lHcEqJPONIGSC2blNC69g1MO5H6rBSCYZ3CW2u2ao1+dLn/1/HL9krvpy7V1
	U64ZEmTEKJosEQ44udL3k3cEiT96U=
X-Received: by 2002:a17:903:17cb:b0:2b0:67a7:5c4b with SMTP id d9443c01a7336-2b06e3bd39bmr79715765ad.28.1773937829185;
        Thu, 19 Mar 2026 09:30:29 -0700 (PDT)
Received: from ubuntu.. ([152.56.142.182])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06f7e8290sm61584485ad.82.2026.03.19.09.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 09:30:28 -0700 (PDT)
From: Anas Iqbal <mohd.abd.6602@gmail.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Kyungmin Park <kyungmin.park@samsung.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anas Iqbal <mohd.abd.6602@gmail.com>
Subject: [PATCH] devfreq: event: rockchip-dfi: fix missing clk_disable_unprepare() on error
Date: Thu, 19 Mar 2026 16:30:11 +0000
Message-ID: <20260319163011.18876-1-mohd.abd.6602@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_093030_724718_BA22EC53 
X-CRM114-Status: GOOD (  12.72  )
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

Smatch reports:
drivers/devfreq/event/rockchip-dfi.c:215 rockchip_dfi_enable() warn:
'dfi->clk' from clk_prepare_enable() not released.

If rockchip_dfi_ddrtype_to_ctrl() fails after clk_prepare_enable(),
the clock is not disabled, leading to a resource leak.

Add clk_disable_unprepare() in the error path to properly release
the clock.

Fixes: d724f4a4581b ("PM / devfreq: rockchip-dfi: Prepare for multiple users")
Signed-off-by: Anas Iqbal <mohd.abd.6602@gmail.com>
---
 drivers/devfreq/event/rockchip-dfi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 5e6e7e900bda..8db0bceeded4 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -185,8 +185,10 @@ static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
 	}
 
 	ret = rockchip_dfi_ddrtype_to_ctrl(dfi, &ctrl);
-	if (ret)
+	if (ret) {
+		clk_disable_unprepare(dfi->clk);
 		goto out;
+	}
 
 	for (i = 0; i < dfi->max_channels; i++) {
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
