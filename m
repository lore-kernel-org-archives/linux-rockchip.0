Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C14C3C55174
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 13:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mTQX91rL8nO6TQG1zRv5gw4JLXv6nmt++cbN849hhCA=; b=czIaHDVzFLg24p
	dL117ewpxZkliHfhBythgtwcIioTqLM55ryambz+2KjQUkiCTWSvZq97t0dMAAg/KIGG9sW8arBfz
	zhW2CfN4frOG1ExOl6NE81UPr1DVIgGgLUxrsC0rKFzq7j8H2W+DVu8vbvy109vN55EjoY9aBvY7I
	7KLnvz4YxgS36Ak3rvcCo6oFaK3cKo0QeiqzQJx2GTAgwIpNPhRu3d7cPE6IlSUDW9nFZbU9a+czg
	XJtBLsLjxCaKpm5BfSXkoGFyz0R8TuiOkOICsdXQA+W1Ix5vV0o9rsTFLSM5nCc2H0pqvE/shjESU
	Y/hlYIIqgWszNk/L5x7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrbvw-0000000412i-48aC;
	Wed, 05 Aug 2026 13:45:25 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrbvt-00000004116-3kjE
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 13:45:22 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-c1fbe461f59so159978266b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 06:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1785937519; x=1786542319; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=WOcxr0r4B6mG0penADxapnFXlT75rDmS0IOhLRToCPo=;
        b=rlSzr3WNkDshU+K94Bay9GcM6Dlv96iKuTfD8Laf+kS40Sv96vDICelLh8JXvYIT3y
         ZKLOH5bvOC4OtxDqVsw65+PcaSY8qovogBJIxbMwVEVprr/YnXawz7Aen0TKhbxKf/kq
         qFjvhhTteVyJGjMoBt/Gk5RjfA5Qvnmu4gRRLfOTPxS4eC1x7QHCmU38hPJX11O25RZa
         A3IU0qcsV5VDd/oRApwBKMZPURBZCsrCjCCw8h4yfVEFUngFAp8dzVld4Ylee6iSWmXG
         d0N8hcPfjcWD77Z3H/mayVv0ZTJkZv3WNLfcZGtE8w5Fe+JAkWO02zOKuQClQkFQ5Ob8
         L6Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785937519; x=1786542319;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=WOcxr0r4B6mG0penADxapnFXlT75rDmS0IOhLRToCPo=;
        b=LuyS2Rwe2diNu5SQ4Y462R26SFFxFhAjALwdXmN46DTFYoIqeHuFEiP1qiSaQSQu3D
         TyCmV3EfinAhSkRxSSjLS1Sh+g+kmKYar74kZIp2jU5W2auTMc8QVGb7xwcA0uzvKDN+
         uFfBAZqzesWVAheE8TwaqmZhV8gEKovGHFnz31QVGMVJobQX52xxpfTlhuZ9g51P8Nn2
         imt/U7aQf2l2NfeW7Gphvcx/Bfr3IuLcJ3H7nJYsfdML/qfHawgbQ1cyTZQ+sXNIoUHN
         CBN4/ckaknaLWR+2xxQXs1pcdbMt21zyMM/mzXahNwY1rt00aRvm/BLyVqgXxRtDZBZa
         Oiyw==
X-Forwarded-Encrypted: i=1; AHgh+RqLyaZrUn/U0uL9pqa9cwaQq3Z2XriPGioW5IXQBRMW5PLF/YGvOD5wM0yiXDWTFi59CoZWgkpq2qJ4vA1Snw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxUyLLJxayscN2bseVnIwrRcANcHJXGm35M6dsxJVI6N8TxMihG
	qhpTLuDt/5I5FpayAaAu7+8E6k3pNFTw6NMU3h9/73k6zvswjqxil7AROXePj0xo3+AK3TgO/Yu
	B18mLJAc=
X-Gm-Gg: AR+sD10t9yFLos7IxeFq/4P7jI0vt+WwrHPMFv2zYDobgRNAdyvTetcaH+FdodqOGmA
	cwSfHyJ9oYQc6OB+EAARQTB3HCJH66WbrAtA8+vPHlgXXx3GzJBj1tLOfNbNkplu/TJBlVQY7Px
	7yOUgq+zsctk70Ehslc1EgEkTnuqWwApr4xeegqyLB6QmiDYgX8bFYGQC2YqkkogWPq4SvKUput
	wUFhUesl2tEnrJDnhv3x6LqiRHXpgdzksKdzC0dbbpwfaiCTmb6CI2ghSUifesL8BuK2xYpv0tu
	RgK0/ARVJo+KO2AVHp6Yzdj560WSQlysdWU/P0w2isdZSAriKtiYK5tPiCSnhZRUcNywc4AD/qf
	2WjvEKK1JT7mesNGfi7i9OsfSnNIdwCsb3Dd6WwJKKkEn5LJ3ZvxNzAUcGbDNkYsuL160pxtUYx
	ZMZKn6KqiBGVNkQur+mOPP4LgeTwO8r0StiwcOU5PFDQV33WqAkc1BjUsskFoGVS1pG8QXG/FaX
	L5uYGe82i7iAAWUH2kSoYl5Psn42qONfwjOYWLiTQ==
X-Received: by 2002:a17:907:1614:b0:c16:4e5:944a with SMTP id a640c23a62f3a-c2039ef1567mr294580466b.21.1785937519280;
        Wed, 05 Aug 2026 06:45:19 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-92-99-174-41.alshamil.net.ae. [92.99.174.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a16577d59fsm1617670a12.10.2026.08.05.06.45.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 06:45:18 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 05 Aug 2026 17:45:09 +0400
Subject: [PATCH] clk: rockchip: rk3576: fix source muxes for SPI0..SPI4
MIME-Version: 1.0
Message-Id: <20260805-rk3576-spi-clk-v1-1-2f040d0d163b@flipper.net>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQqDMBBA0avIrB1IlZjYq4gLTUYdLVYyrQiSu
 xvb5Vv8f4JQYBJ4ZicE2ln4vSY88gzc1K0jIftkKFRRKas0hqXUpkLZGN1rwdJ4stYaM6gaUrQ
 FGvj4DZv2b/n2M7nPfYEYL9++TxRyAAAA
X-Change-ID: 20260805-rk3576-spi-clk-37de88877f09
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>, 
 Sugar Zhang <sugar.zhang@rock-chips.com>, Liang Chen <cl@rock-chips.com>, 
 YouMin Chen <cym@rock-chips.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jonas Karlman <jonas@kwiboo.se>, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3497; i=alchark@flipper.net;
 h=from:subject:message-id; bh=O1dK7PbUelw/4/J1OKfbGHie7DYKMuZjlf933Pye7bY=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQV22XfvvmuqP1RUldnq1nfdpZ5hndVIz79f7PVW/4mp
 5fj5Tu1HRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oZGOsY4RAxenAEz1BSaG/85lXT8ibTi0Dv9zX5KQtMzq3YsFcfwX5U2Dg68fNH+meYPhDxf74pk
 Xn+Sl1rTNlldp2/O8b9pH/avLzB/EXXBV3n0kjBcA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_064521_959789_718A5F94 
X-CRM114-Status: GOOD (  11.22  )
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

The TRM defines available source muxes for SPI0..SPI4 as
 - b00: clk_gpll_div6_src
 - b01: clk_gpll_div8_src
 - b10: clk_cpll_div10_src
 - b11: clk_xin_osc0_func

Which doesn't match what the current clock driver implements, making it
impossible to derive some SPI clock rates such as 37.125 MHz (which
requires clk_gpll_div8_src as the source mux).

Add a correct mux definition per TRM and point SPI0..SPI4 clocks at it.

Fixes: cc40f5baa91b ("clk: rockchip: Add clock controller for the RK3576")
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
Hitting the bug requires explicitly setting the clock parents for any
of the SPI controllers, which no mainline users do currently. This is
therefore a forward-looking correctness fix and probably doesn't
qualify for backporting to stable.
---
 drivers/clk/rockchip/clk-rk3576.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3576.c b/drivers/clk/rockchip/clk-rk3576.c
index 63f229e73a45..2cdd667f4004 100644
--- a/drivers/clk/rockchip/clk-rk3576.c
+++ b/drivers/clk/rockchip/clk-rk3576.c
@@ -315,6 +315,7 @@ PNAME(mux_100m_24m_lclk0_p)		= { "clk_cpll_div10", "xin24m", "lclk_asrc_src_0" }
 PNAME(mux_100m_24m_lclk1_p)		= { "clk_cpll_div10", "xin24m", "lclk_asrc_src_1" };
 PNAME(mux_150m_100m_50m_24m_p)		= { "clk_gpll_div8", "clk_cpll_div10", "clk_cpll_div20", "xin24m" };
 PNAME(mux_200m_100m_50m_24m_p)		= { "clk_gpll_div6", "clk_cpll_div10", "clk_cpll_div20", "xin24m" };
+PNAME(mux_200m_150m_100m_24m_p)		= { "clk_gpll_div6", "clk_gpll_div8", "clk_cpll_div10", "xin24m" };
 PNAME(mux_400m_200m_100m_24m_p)		= { "clk_gpll_div3", "clk_gpll_div6", "clk_cpll_div10", "xin24m" };
 PNAME(mux_500m_250m_100m_24m_p)		= { "clk_cpll_div2", "clk_cpll_div4", "clk_cpll_div10", "xin24m" };
 PNAME(mux_600m_400m_300m_24m_p)		= { "clk_gpll_div2", "clk_gpll_div3", "clk_gpll_div4", "xin24m" };
@@ -706,19 +707,19 @@ static struct rockchip_clk_branch rk3576_clk_branches[] __initdata = {
 			RK3576_CLKGATE_CON(16), 0, GFLAGS),
 	GATE(PCLK_SPI4, "pclk_spi4", "pclk_bus_root", 0,
 			RK3576_CLKGATE_CON(16), 1, GFLAGS),
-	COMPOSITE_NODIV(CLK_SPI0, "clk_spi0", mux_200m_100m_50m_24m_p, 0,
+	COMPOSITE_NODIV(CLK_SPI0, "clk_spi0", mux_200m_150m_100m_24m_p, 0,
 			RK3576_CLKSEL_CON(70), 13, 2, MFLAGS,
 			RK3576_CLKGATE_CON(16), 2, GFLAGS),
-	COMPOSITE_NODIV(CLK_SPI1, "clk_spi1", mux_200m_100m_50m_24m_p, 0,
+	COMPOSITE_NODIV(CLK_SPI1, "clk_spi1", mux_200m_150m_100m_24m_p, 0,
 			RK3576_CLKSEL_CON(71), 0, 2, MFLAGS,
 			RK3576_CLKGATE_CON(16), 3, GFLAGS),
-	COMPOSITE_NODIV(CLK_SPI2, "clk_spi2", mux_200m_100m_50m_24m_p, 0,
+	COMPOSITE_NODIV(CLK_SPI2, "clk_spi2", mux_200m_150m_100m_24m_p, 0,
 			RK3576_CLKSEL_CON(71), 2, 2, MFLAGS,
 			RK3576_CLKGATE_CON(16), 4, GFLAGS),
-	COMPOSITE_NODIV(CLK_SPI3, "clk_spi3", mux_200m_100m_50m_24m_p, 0,
+	COMPOSITE_NODIV(CLK_SPI3, "clk_spi3", mux_200m_150m_100m_24m_p, 0,
 			RK3576_CLKSEL_CON(71), 4, 2, MFLAGS,
 			RK3576_CLKGATE_CON(16), 5, GFLAGS),
-	COMPOSITE_NODIV(CLK_SPI4, "clk_spi4", mux_200m_100m_50m_24m_p, 0,
+	COMPOSITE_NODIV(CLK_SPI4, "clk_spi4", mux_200m_150m_100m_24m_p, 0,
 			RK3576_CLKSEL_CON(71), 6, 2, MFLAGS,
 			RK3576_CLKGATE_CON(16), 6, GFLAGS),
 	GATE(PCLK_WDT0, "pclk_wdt0", "pclk_bus_root", 0,

---
base-commit: 0f6da28aab51b16762ed82e8fdeaa5042da45b08
change-id: 20260805-rk3576-spi-clk-37de88877f09

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
