Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64FDEC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 20:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OwAXPlmjBBg+TNIc4q6qZLfciaq4iufC15Nh/uYF3hc=; b=EdfwXLHilzPJd+
	wfRUEENCgc+MtWpI6J/d9IqRC3RtWVdoA8VWHNiiRfSk67wv/Hz7/ihiYunZni5HtTg7/ppBzh3IO
	zbbPfv4Q/XE/D39De7ePS/ZzCesawuQNzpvZ/6Sb/0OQJ2v/fq3U86FgPA7Ce0n9imF4PDevrUrd1
	IIb5/DM9Z4emb6X+pvjrG7Cq5MFxQh9vja/r7dEYToAV+vGtR7tP9yrkeKmmVltmDAPiEZRaGgZSH
	1+5jP4Pp+fqJYEGUup4CZygmQjBMmfECiQ+zYABVdoML3KFkxd/03JhYSZm2gsEPOJFXxwQwnr0cW
	xUaFiy3E4HcoK8QDh4ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWOTJ-008zGY-2t; Mon, 21 Mar 2022 20:17:45 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOJv-008tZs-Uf
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 20:08:12 +0000
Received: by mail-wr1-x435.google.com with SMTP id a1so20845923wrh.10
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Mar 2022 13:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9ucjurjOvrnrrbawIJXLKDlqa8V8uccBbyHnKi4+U0E=;
 b=3wuPfy2RH+Ymxx/9SwcWmTDsnnJEKwy/r9XF6UO5MnE+O8LuVg6+0EzZnQfixXVAvP
 VkH9TpOf6SHabA+zBwjbo9v6wt2HrypvzA8FG1hHvBBUd/y0l6gmEINU6AFVQGXxI5En
 U5Ds7xy1uYkiUXBTx6dWcGWll13LPaVrTUjryrVyc76cpC20WVohsCJCxrKyYfnEFk7Q
 QrSW4FIDI1Zed5rtVxgw3TIdefmHnrJ3mgrjvzhNajq1rSgODe5zPj6NXxjVTZJ0mbFu
 nRTGEYf06+zIg+kq5vvn84dExn3QrgSxwZ866mnMpBAx5VPMjy9l57uWiwiGlGYRvui2
 W2lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9ucjurjOvrnrrbawIJXLKDlqa8V8uccBbyHnKi4+U0E=;
 b=Wpt4MV0N2UYE3fu+P9CQS5fC9xLbGp93o6kynkDtBZQI6eQvC6kiatmlve/i5yu86U
 JLnl3qhZ7Qr+fsMIAbOBAqcWobrgSBgcAaPiypQY8H6PsBjc+JTC2f2d3eJLzmsKKhvF
 WZkPoDrVfxeLQVRnuThMq94gGKMdb5DsGF1gwqXIHAPInL2Xvumi//mc5A+5IrQU42X7
 zTLaG460fmynhyu/7CGwDr530bDfwvWmbWud85tlZMq/sGU/7MIJ0HoczVH7s5M9AIZb
 76cu6y6+0npjHv1m80EwnbhCwpOT/dJawUzKn6MBlAMNW6CXsvgHpwI/Q+sPOfOul9Hx
 X7YA==
X-Gm-Message-State: AOAM531PnLE+I/E2ll4pZte1qcsqn8Umpc24mLIsXtadBo7q70ZQPPGM
 rqJQ70nmktvq8jEI1B78/urcSg==
X-Google-Smtp-Source: ABdhPJyE/LR3AyjH3tqnMFFD+/rjJUMIzhATha74RVKWFJS8fgaKQKdvfFPfuNT01HSFlOARgkVZOw==
X-Received: by 2002:a5d:5255:0:b0:203:ec9c:6d5e with SMTP id
 k21-20020a5d5255000000b00203ec9c6d5emr17807215wrc.70.1647893282761; 
 Mon, 21 Mar 2022 13:08:02 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.08.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 13:08:02 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 17/26] clk: rk3399: use proper crypto0 name
Date: Mon, 21 Mar 2022 20:07:30 +0000
Message-Id: <20220321200739.3572792-18-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_130804_035986_3170645B 
X-CRM114-Status: GOOD (  10.84  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

rk3399 has 2 crypto instance, reset for crypto1 is correctly named, but
crypto0 not.
Add a 0 to be consistent.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 include/dt-bindings/clock/rk3399-cru.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/dt-bindings/clock/rk3399-cru.h b/include/dt-bindings/clock/rk3399-cru.h
index 44e0a319f077..39169d94a44e 100644
--- a/include/dt-bindings/clock/rk3399-cru.h
+++ b/include/dt-bindings/clock/rk3399-cru.h
@@ -547,8 +547,8 @@
 #define SRST_H_PERILP0			171
 #define SRST_H_PERILP0_NOC		172
 #define SRST_ROM			173
-#define SRST_CRYPTO_S			174
-#define SRST_CRYPTO_M			175
+#define SRST_CRYPTO0_S			174
+#define SRST_CRYPTO0_M			175
 
 /* cru_softrst_con11 */
 #define SRST_P_DCF			176
@@ -556,7 +556,7 @@
 #define SRST_CM0S			178
 #define SRST_CM0S_DBG			179
 #define SRST_CM0S_PO			180
-#define SRST_CRYPTO			181
+#define SRST_CRYPTO0			181
 #define SRST_P_PERILP1_SGRF		182
 #define SRST_P_PERILP1_GRF		183
 #define SRST_CRYPTO1_S			184
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
