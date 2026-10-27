Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F97606A31A
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 00:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=m8ww+Uu9;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Z7iFHJAM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=d7N6o9l3esURt6xmeNpEZgOSYf5I0RmhtwOBpvPcPEM=; b=m8ww+Uu97rNap6bBBCPZCVixFt
	2hSXAeXXpRIJ97qsY4NZIJOTOW04pNOSeeWYfyqo3iMwtr2TIqQkoZkeSt4Y+PtBZUncNrAcD9NkE
	7uL29BjnZOp60u4P+ZJAhr0wosu/1+QzNt3mMcAbVcN9mXoRpI5b0Ow4iBcI8DV4Nto1d+i4vOFdX
	JW/8CM8QQ8x7CQKFB3iNAnZcx6KkOSHcW88ZhaXpbqNI0nl4BZeEyh3mq4s/+2uxuQZNSoSdz/gxM
	degyLFIKktjjGXL+JKtvQ+c5MAipcd9WO99lxnF2fcKK6PUjGg+o22m7gb6lcyDHC5s6gfY4Ohhlw
	inGizjLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLUzS-00000003XFQ-0L17;
	Tue, 27 Oct 2026 00:24:34 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLUzP-00000003XEM-2jKZ
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 00:24:33 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-6afbc363efeso5258123a12.3
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Oct 2026 17:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793060669; x=1793665469; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=N+Xvec07uoX87AO29/8Wl59FJ0uKiswGsShIgxHmlc8=;
        b=Z7iFHJAMHkFORF+nEC5qtHgT++w9D8fgYouATiG4svq2BIuGpeEDcXV2ilmNBOyrDC
         FbIsXcG2+KXTOiFY6PBQkgxMsSkQO91o8ZJzKUrtsIf/ewwjn9CAmJSAJ79mIoSh3REm
         x5WaVUxdnJl6M12blew/8YA6w1lS1QPKs2MtnaNTmHEpAC0C5PQLUk6TNCg0exOg9IdW
         wZG0rrqLpV5WepUy92JFcuLUoxjqz2sbjCYQ5EHaWo7S3lUGk1LCohXq2tr6R7tnYiaE
         KQXTr65y3rbGyKN7mfWyzLpD78fuyE3ssdd0eJ8clEjB0aDnmUtU2PEw+5B1y5B2zc1m
         /Gvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793060669; x=1793665469;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=N+Xvec07uoX87AO29/8Wl59FJ0uKiswGsShIgxHmlc8=;
        b=T/GwfLzvVWSfkr5KD8IWeRnXujVvm61HANLnrd3HXSyosiAFae/Tyqm5E7Dya5b3NH
         EVS15fRcPJVYLsC9tY0izCJn6Y9kqxdZdU6Wlf2VeB5VO/plSud7DvZ3jszDdQnVkn9r
         KUZB3AkzQzYA5u/GY3ixUfRKOISfXH7Zg/jhaaI0WsfFaAFKKCNecnvXVXeY9849NGQf
         tHESpFQmF6VziUgyv5mgOjuoJx6znwIU0pWkSpVxX+vpiDj4iqLLzwaxyW6kFTJGgv0c
         e80jwXLevNM/9dsEQP9hTO0Ox/hSF/M3O4dMvjLJ8r1Keko2F9n+H+7zqkUf6C2vbX8z
         DlYw==
X-Forwarded-Encrypted: i=1; AKwUvBzT8AAHXqiMga5ln5A7RnNdLB8eac71IPbywD+cOscT7ZYbt1M0SpxterkvaN9CedyRUpEbVvSkiYf7jLEcaw==@lists.infradead.org
X-Gm-Message-State: AFq9FYKk9hYg0fCrPTWWoAjPuWzFfladZ9FF4qVkdRGzShJaT3Y5Ff+z
	lMVZkwiLkXaWnG4AFopggYMyAliLkWNW4rwnFNW/c7gUs03YyKAbZEB4
X-Gm-Gg: AYBFou3BnLBeq0eFhZAZZzaqCojsk7LncjfvNyKNAQG5/e75Xp3/3QYZtOjoe3W7ClY
	BgCq+MvsGUkIDkM59C93CBjrxMbJtHrgY2wpd916/E8Dg6jPuNfbCwO8FZfBnJK899X9KcBqTZk
	hFld8JlI6JshLuUcn8VRWulIYzVE55fdU4YcQdqfCds9+nzA9Aepk6X8QbiFKh0FY2jiQAOIVq4
	5dCvomd7BGDXMgHVNT8Z74fMN4edMt3iQEN8qacxkQSl/BEADtlAt2XjQUQxjJIAKZS2jIIepVa
	lxSQG0OpKhUzoVg9K4H6/4o+bC/dqyxhvjU0cjhgwvS1r5LJR6Gd7Y/UnIdharnAAbzBNGwGzIA
	NiexNNamq+RtDjXQgGZZDW+CO6qaXiSkupINWKK/uYubztYmDkqsiv3fTOJRirBrZmibTieMJnb
	na+/6WJ5D0x4928Uv79S6LHvtTotDEnlolDIAWFjRzCESyUqarPdnhwBdvf5eTETy9HLaKpgNvS
	bbLc/l4GuX96JX833QLNfJm+ePm5eyTwQawZSDlv1+sTjMfNLlGGWQOtj3tWXo=
X-Received: by 2002:a05:6402:3d1:b0:6b4:35af:328d with SMTP id 4fb4d7f45d1cf-6b442fc9e5fmr6712467a12.14.1793060668811;
        Mon, 26 Oct 2026 17:24:28 -0700 (PDT)
Received: from nb-xps.ts.zxczxc.org ([78.56.243.43])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b445984207sm3975344a12.22.2026.10.26.17.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 17:24:28 -0700 (PDT)
From: Nikolay Bryskin <nbryskin@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Stephen Boyd <sboyd@kernel.org>
Cc: Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Nikolay Bryskin <nbryskin@gmail.com>
Subject: [PATCH] clk: rockchip: rk3588: keep the OTP gates shared with the secure world on
Date: Tue, 27 Oct 2026 02:24:19 +0200
Message-ID: <20261027002419.2099708-1-nbryskin@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_172431_721305_D70AA637 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The secure OTP controller (OTPC_S) shares three clock gates in
CRU_CLKGATE_CON18 with the non-secure one: clk_otpc_arb,
clk_otpc_auto_rd_g and clk_otp_phy_g. The kernel treats them as ordinary
gates: clk_otpc_auto_rd_g is disabled as unused at the end of boot, and
the rockchip-otp nvmem driver enables clk_otpc_arb and clk_otp_phy_g
around each read and disables them again afterwards.

Firmware in the secure world (OP-TEE reads its hardware unique key and
the secure boot state from OTPC_S, and programs them) has no way to take
a reference on these clocks. Once Linux has gated them, every secure OTP
access times out, and a normal-world nvmem read on another CPU can gate
them in the middle of a secure access, including a fuse programming
cycle.

Mark the three gates critical so the normal world never turns them off.
They are 24 MHz gates for the OTP block only.

Link: https://github.com/OP-TEE/optee_os/pull/8034
Signed-off-by: Nikolay Bryskin <nbryskin@gmail.com>
---
 drivers/clk/rockchip/clk-rk3588.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index 24baa0ef9bf3..8e0f408fdfad 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -1158,11 +1158,11 @@ static struct rockchip_clk_branch rk3588_early_clk_branches[] __initdata = {
 			RK3588_CLKGATE_CON(18), 9, GFLAGS),
 	GATE(CLK_OTPC_NS, "clk_otpc_ns", "xin24m", 0,
 			RK3588_CLKGATE_CON(18), 10, GFLAGS),
-	GATE(CLK_OTPC_ARB, "clk_otpc_arb", "xin24m", 0,
+	GATE(CLK_OTPC_ARB, "clk_otpc_arb", "xin24m", CLK_IS_CRITICAL,
 			RK3588_CLKGATE_CON(18), 11, GFLAGS),
-	GATE(CLK_OTP_PHY_G, "clk_otp_phy_g", "xin24m", 0,
+	GATE(CLK_OTP_PHY_G, "clk_otp_phy_g", "xin24m", CLK_IS_CRITICAL,
 			RK3588_CLKGATE_CON(18), 13, GFLAGS),
-	GATE(CLK_OTPC_AUTO_RD_G, "clk_otpc_auto_rd_g", "xin24m", 0,
+	GATE(CLK_OTPC_AUTO_RD_G, "clk_otpc_auto_rd_g", "xin24m", CLK_IS_CRITICAL,
 			RK3588_CLKGATE_CON(18), 12, GFLAGS),
 
 	GATE(PCLK_SARADC, "pclk_saradc", "pclk_top_root", 0,
-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
