Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CDA0F436B9
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Apr 2026 15:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lqy/ZpQvpLn836X1Q/3MZYVciW3Kt/G50hj6RQMxsIU=; b=u8m1WZQR5mrzx3
	pCFaWOk+GMZslgcmjaD6t/jGE7fV8sr/sUCVfrfjwflB1Jr7Cim1D0ppjpo4n+jGUPiy253naOGUi
	PTZCPYZhkFpyZfzsG8slEyKAHbWn1JLL1Q3loJS7JMl5UBktz8PiGSfzMsGjS/AHJq0P9jYu9aBkT
	8BcIClh69cxBPlJM018MLxIC6nVG+To5iLrxyH+x8GPsQPgWWIckOGQ2qCLFCVHN96EDDUVrOBuEt
	WJp97Zzcw49+fa0bgayApc4xDPXmW/qIbG3/8LzQ3+NNK6nhJTTBk+bkF3Y0zsKLHvSFDW3Y2iOIr
	3fu89+uTZb2+0KPv/OLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDkrc-00000004Bn2-2wgr;
	Fri, 17 Apr 2026 15:12:12 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDkrY-00000004Bhq-3Jmq
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Apr 2026 15:12:10 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-b9b1ffbb9f5so121194266b.2
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Apr 2026 08:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1776438727; x=1777043527; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VqX8mavnBNkgyap63RnjubBar/UFOY4VCctk2eUAZ6g=;
        b=eWiB1F/k1h9zkuei47ow/wx1jqn1kBWAnmsL4TlvM7PyROo73fvcbiw+4EhP+Ohd3q
         saiM7T2+tfKlFsNsGHACyHwbglzgzB9yUic0C2a7yxPNR2jOLm0dgF3vGE57hGXk6wLy
         ENJhUGwpRl4EuQqxML06wWxPMUAKLUvMyEqTVKVCnJoDEQ9w3594lLDOPfSeMDrr4fHG
         s/Hhdl+6MVPeLi2d2EiiOLP7J+fAcfYmLBfnNZ09TolIwqQ71CZi9yphxJALsGbHYdj6
         axwjIWpQ+Zl57lbnGcl6UUUfUUyun/QJj+FvyR5g7WU9u2JYNJHSpYUP43d2CXR9xqD3
         OhIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776438727; x=1777043527;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VqX8mavnBNkgyap63RnjubBar/UFOY4VCctk2eUAZ6g=;
        b=feZRL+MJfY8JH8IN2liLHKWLf7opxiBOnM/BqDLgVOCVWBliB7md5f95X5RKv/c5lj
         kAoPcXPgz0z9Idj1usLMXMULfgj8FYpaayBUpOGWBHUbNAF3FJCXxf0yNYOkBguc97HT
         qMvHS5onaK0XJMyxyhcVqbH5PBvBrspb5L17m2hhSwyQBXd3BiFxlYVFxlQEFtssjjpg
         6WHsqy1nkyv1l8d3inVop0P9OcbClXzNAuJacXVHeyo3Jt09eC5OwPOJlxAxzlaNRwZ9
         zfoPKfECFPtgiVOl/a2QvQCr9zv7JRS9THArkLDRXuol35sW+UoZseCR2OsQZZtBOxoO
         FfIg==
X-Forwarded-Encrypted: i=1; AFNElJ92ttzqgUkVWtRT4YCOJa1xGJnpLJgr+hiPjt/UTKg7s6HLfF5/SwJ/Esr9TSdT6Zy0wh9LB/QQgf6kgD1W5g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5farS3T1GsIT5UdkWOJdVyRsWjfB6bZiam4EoMGxgLv8+oWvi
	oXWk0Qc5D6bG4n5EgFVffqYP5/PhvlsHVFJvT/QmP4XjzJ4mUDnKxoevRfGZZHHRbRQ=
X-Gm-Gg: AeBDietaiso5n2KzwdC4ZCVB3EH3HyWGBh1xTRmWbkNA69bkTwreKEaldcKB0/Vk3jf
	btI3QrMPyiBnH8ClJmp0/mEVq4TWpl8u+KoG94DfjDEAHz7C7lzfovw6qs7nIrlY7nvMDQeQJjc
	ZQ7U8aGV/AKw5ca0S2aL8paXCgBK1EYnQ43qgmgi50WExqD1x6esBYeiowDQk66QrlRys/exL0S
	r4eWNhP1qWt/TcAZaIdToU8VHUWfvuOEUls2lYMVlNgLAgem+4pYKLm1RUU4e/uighSfy8r3mmw
	lZfmmdgk8OnJHvhxuFXUMwKHLFGuNN8Jv6ihwgDYUEnABC/0mqthHp/frHrCNsOjBjdJVnePZw2
	YMLerxCOmLYyozMunah4nmG12BWCExV/VyTKwzMNFlxj+XgNVlbkYuKlaWpLW1jn+YYVrNkuNJF
	YlxC2baY4BQvJNsXwTCwAkOXab2ydqolMQS/zg67JltcBTrntPKahO0wOg+YdRKW0/1HIh2b8Xw
	oUb9t1HEzQ99fMQ/GXkA3lIqQQ=
X-Received: by 2002:a17:907:3c8e:b0:b9c:b069:8abe with SMTP id a640c23a62f3a-ba418e853b7mr164954266b.12.1776438726689;
        Fri, 17 Apr 2026 08:12:06 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e591cesm7376426f8f.36.2026.04.17.08.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2026 08:12:06 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 17 Apr 2026 19:11:46 +0400
Subject: [PATCH RFC 3/4] clk: rockchip: rk3576: allow dclk_vp1_src to
 propagate rate to parent PLL
MIME-Version: 1.0
Message-Id: <20260417-rk3576-dclk-v1-3-26a9d0dcb2de@flipper.net>
References: <20260417-rk3576-dclk-v1-0-26a9d0dcb2de@flipper.net>
In-Reply-To: <20260417-rk3576-dclk-v1-0-26a9d0dcb2de@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: Pavel Zhovner <pavel@flipper.net>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1840; i=alchark@flipper.net;
 h=from:subject:message-id; bh=9E+GVCevJV58fhmm0CYyTjqLcW41sUgTRpTXQLHwLHc=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQ+8t127xRniY258Vemr65Gvz625DB3Scj+eCYSeP5gs
 fcvv3b1joksDGJcDJZiiixzvy2xnWrEN2uXh8dXmDmsTCBDpEUaGICAhYEvNzGv1EjHSM9U21DP
 0EjHWMeIgYtTAKZ6aiEjQ3+bJOvdiLL/kZfbGnlnOLHPfHN8uXm/VpTI9PfMj8VenmJk2Fa/+au
 BLrPpiRN5S0p7vgYdNTL//2592W/rcMcA1r3zOQE=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_081208_854641_F30FC02C 
X-CRM114-Status: GOOD (  12.24  )
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

dclk_vp1_src feeds the display clock for Video Port 1. When parented to
the default GPLL (1188 MHz), the 8-bit divider cannot synthesize the
248.88 MHz pixel clock required for 2560x1440@60 which VP1 supports:
1188 / 5 = 237.6 MHz (-4.53% error). This exceeds DisplayPort's +/-0.5%
tolerance and causes black screens on strict sinks.

Add CLK_SET_RATE_PARENT so that when dclk_vp1_src is reparented to a
programmable PLL (e.g. VPLL via assigned-clock-parents), the CCF divider
can ask the PLL to retune. For example, VPLL at 1992 MHz / 8 = 249 MHz
(0.048% error).

This flag relies on reparenting the VP1 source clock to VPLL at DT level
to ensure no consumer calls clk_set_rate on dclk_vp1 while its parent is
set to the boot-time default of GPLL.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/clk/rockchip/clk-rk3576.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3576.c b/drivers/clk/rockchip/clk-rk3576.c
index 2557358e0b9d..28eb5a802e83 100644
--- a/drivers/clk/rockchip/clk-rk3576.c
+++ b/drivers/clk/rockchip/clk-rk3576.c
@@ -1105,7 +1105,7 @@ static struct rockchip_clk_branch rk3576_clk_branches[] __initdata = {
 	COMPOSITE(DCLK_VP0_SRC, "dclk_vp0_src", gpll_cpll_vpll_bpll_lpll_p, CLK_SET_RATE_NO_REPARENT,
 			RK3576_CLKSEL_CON(145), 8, 3, MFLAGS, 0, 8, DFLAGS,
 			RK3576_CLKGATE_CON(61), 10, GFLAGS),
-	COMPOSITE(DCLK_VP1_SRC, "dclk_vp1_src", gpll_cpll_vpll_bpll_lpll_p, CLK_SET_RATE_NO_REPARENT,
+	COMPOSITE(DCLK_VP1_SRC, "dclk_vp1_src", gpll_cpll_vpll_bpll_lpll_p, CLK_SET_RATE_NO_REPARENT | CLK_SET_RATE_PARENT,
 			RK3576_CLKSEL_CON(146), 8, 3, MFLAGS, 0, 8, DFLAGS,
 			RK3576_CLKGATE_CON(61), 11, GFLAGS),
 	COMPOSITE(DCLK_VP2_SRC, "dclk_vp2_src", gpll_cpll_vpll_bpll_lpll_p, CLK_SET_RATE_NO_REPARENT,

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
