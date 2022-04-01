Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D062C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n50RCIa9w0declhIIqdJ5yHbTUAFp6iwYmQTS6UqRck=; b=SFVFAYErAGpzpU
	fc3s2J+sWWsvbf9kt0Hb7LHYbPm9q6SRbpN/Jop/nFu5OEAg+ZoKglHN9NV3A5np47uWeYb02+w8P
	pd6Yerv22SalWqQZYObh1hIGn7kgTcmEQGy2oyI11VhCWbJHTBCCRDSuC6agKuHoyhPK4VCeDU5ze
	mZnJbYiYcVmfaqFOvT7I/Z9I7fvyqovCARmaSlZHk4MNZx77joVtzGYSQTSLlwfugu2TP8PgmtrWM
	ZOAsTfKfoCZ59LHSBOovmyVh2WeiDNnkpoITE0mXGz3RjoXs4YqS75JCciOwVM4IK8o1c2QHa9vt/
	d4ByhQTD6JcnMZSztmpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNw6-007C0S-SO; Fri, 01 Apr 2022 20:31:58 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNj7-00758r-Be
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:37 +0000
Received: by mail-wr1-x435.google.com with SMTP id w21so5827335wra.2
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cR+Z8RB2co35LM6ASUB3urTOV74O7Pl6BmQw6qrgeVA=;
 b=F+b//7ebZG6SCRHXjH3fcWFvI4evbQH6PJM/pT+w539r892GHo348TQMdaMRMfNJEU
 ycStsmkvKpGsMvZcKrnBmcEGzx2cx2ShdH0u0MmZZ4cjd+CnfevBIHmPI2Gzh4JP0+eC
 hqG8Ftc9sXwA0mU/otz7fizhDV52kkniz5Mi4XP8JM+3QrSmkr+Gs5Og0wKr3ZKms1kH
 PCKVOOJwToj3KMGhfgxkS8ArFAMUqo4X/INfy20Pg+zH8+0ct8PxPGtsbU9Y3HdrYpWz
 xqtJbQ5o5vwkhJr2wkLharTSxiNLPoDgdES9dOlXcR4ZvBmuz6pAULXYuKzwSy7KG6Hu
 isdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cR+Z8RB2co35LM6ASUB3urTOV74O7Pl6BmQw6qrgeVA=;
 b=lS0SGlDUyOxD2iZ/pijs4YbJ3XHrEyM5sJdp3mW9TtY6DldqRzj+VxPrlm74pIfvke
 N+sDMsTqASa2XXx72vwgA7FufCt2eCRuGkwS8xefWgp2F+/d2x5Bx29i7w2+Y0IhuSZK
 OOQzAGmJkXjPxBypkPKInMQquAOrH9ExWxBJJkJqUXZQFzPy0ElI7PHCqSk6q3J+z0Bi
 ArzvKKL+aAIP1/vvI5X+bVY14ueeKOgJ27EBggciGuEUEg3+VDKy82E3kFZ23gDIXF3u
 QGDxc9RZa2hWxDltLT9iAjxcdMW/3FMG3VNAyYj6XLrGZMS+N+Okg/79N2EhPgVcmpbp
 clyg==
X-Gm-Message-State: AOAM531YUvshiizAAmvh2Es+3P1SMMnAzz2EkSSPszOUmif9aiEZocYt
 Wc89YYTdJjvfmNS8uTEO694cRg==
X-Google-Smtp-Source: ABdhPJx7aIKPQJg3dNNasF8MG7dM+sdSO97S/xOctU0CE2QNY6+zyb9ZXNyg4h8USL9vf6hITMWslA==
X-Received: by 2002:a05:6000:18a7:b0:204:1bc0:45a with SMTP id
 b7-20020a05600018a700b002041bc0045amr8815545wri.119.1648844312181; 
 Fri, 01 Apr 2022 13:18:32 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:31 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 29/33] clk: rk3399: use proper crypto0 name
Date: Fri,  1 Apr 2022 20:18:00 +0000
Message-Id: <20220401201804.2867154-30-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131833_426284_DAA40F7D 
X-CRM114-Status: GOOD (  10.89  )
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

RK3399 has 2 crypto instance, named crypto0 and crypto1 in the TRM.
Only reset for crypto1 is correctly named, but crypto0 is not.
Since nobody use them, add a 0 to be consistent with the TRM and crypto1 entries.

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
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
