Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C683C48260
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 09:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+U0ckCRwvObqhiIwtrP5w1pik9dOQPbdgiGl1vC3kw=; b=s/AETn1Z9C/Ato
	SQDj4BiAumJqgQ2xuzJeOcKkPRupSD0aGcqGoMJrUkF/l/Y82rM9dqhPEnYeAJauu5nein/APKnAv
	Ycxld9ITBeVcxmi/DLVnoNz5SOSCJ3YtQJ4CVnLR5IKC2VEIERITHAAcsX8M64hG/ZsgjFNxGY2h7
	r+bWwrPhskoR/s0yS1bkAtYMVKpiddN1Wwnm3gm/2UYoqsz/3rQVqzrX6DTWwoStxyz3/3/YvnNXb
	clVEplHVMBQRjAJ3UBitgsBu77Vx+Shw/pmsYIGqurbThXwH85hRlnNJINR/zWXo4sIlOzMpf/M5m
	jIf8fDlmEK/lA/jYLVyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raut0-00000001ojJ-2aL1;
	Fri, 16 Feb 2024 09:52:02 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rausl-00000001oWy-21PH;
	Fri, 16 Feb 2024 09:51:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1708077105;
	bh=tkuaNBMkKydcINY6S71b/9WvjINpnpK8UWPJ1sC4kN0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gANvFRmVZ4eC1ndXJdBrndZE/qXSLcyVDMVrnGXkk7nbNYTGhPdiHThqBNBARIRyO
	 pACNdAAf7TlNyoGb2sQPx7scMeb1urIqKg6qY/FPEDkEzcm0rIPP3aACVTk5IT2V+S
	 2qi39wzFwU3nDlXdZtGEffKzMDyFTFglSa0+0jTZzIE/j9DuwIFmMjowjX4hC79zV8
	 tg1rTZ3bnGxs5Z56Ir8VYr2epyyRlAeMWg7A+L6NRzXbIpFuQ2MLPC1mnanfzEV2c4
	 lDobBAS/odXA/tm+ZLwscUbvTT9i+LFWrdbu1TNzy/oqOeL/U4A3m9PlowQfFp70yV
	 ucM8cckugY7OA==
Received: from shreeya.shreeya (ec2-34-240-57-77.eu-west-1.compute.amazonaws.com [34.240.57.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B27543781F9C;
	Fri, 16 Feb 2024 09:51:40 +0000 (UTC)
From: Shreeya Patel <shreeya.patel@collabora.com>
To: heiko@sntech.de,
	mchehab@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	dmitry.osipenko@collabora.com,
	sebastian.reichel@collabora.com,
	shawn.wen@rock-chips.com
Cc: kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-dt@vger.kernel.org,
	linux-arm@lists.infradead.org,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH 1/4] clk: rockchip: rst-rk3588: Add BIU reset
Date: Fri, 16 Feb 2024 15:19:19 +0530
Message-Id: <20240216094922.257674-2-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240216094922.257674-1-shreeya.patel@collabora.com>
References: <20240216094922.257674-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_015147_672711_233C4ACD 
X-CRM114-Status: UNSURE (   8.43  )
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

Export hdmirx_biu soft reset id which is required by the hdmirx controller.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---
 drivers/clk/rockchip/rst-rk3588.c               | 1 +
 include/dt-bindings/reset/rockchip,rk3588-cru.h | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/clk/rockchip/rst-rk3588.c b/drivers/clk/rockchip/rst-rk3588.c
index e855bb8d5413..c4ebc01f1c9c 100644
--- a/drivers/clk/rockchip/rst-rk3588.c
+++ b/drivers/clk/rockchip/rst-rk3588.c
@@ -577,6 +577,7 @@ static const int rk3588_register_offset[] = {
 
 	/* SOFTRST_CON59 */
 	RK3588_CRU_RESET_OFFSET(SRST_A_HDCP1_BIU, 59, 6),
+	RK3588_CRU_RESET_OFFSET(SRST_A_HDMIRX_BIU, 59, 7),
 	RK3588_CRU_RESET_OFFSET(SRST_A_VO1_BIU, 59, 8),
 	RK3588_CRU_RESET_OFFSET(SRST_H_VOP1_BIU, 59, 9),
 	RK3588_CRU_RESET_OFFSET(SRST_H_VOP1_S_BIU, 59, 10),
diff --git a/include/dt-bindings/reset/rockchip,rk3588-cru.h b/include/dt-bindings/reset/rockchip,rk3588-cru.h
index d4264db2a07f..e2fe4bd5f7f0 100644
--- a/include/dt-bindings/reset/rockchip,rk3588-cru.h
+++ b/include/dt-bindings/reset/rockchip,rk3588-cru.h
@@ -751,4 +751,6 @@
 #define SRST_P_TRNG_CHK			658
 #define SRST_TRNG_S			659
 
+#define SRST_A_HDMIRX_BIU		660
+
 #endif
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
