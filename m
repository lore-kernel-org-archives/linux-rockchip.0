Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61993C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 20:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XzCnAJId5I4nelLHZ1TKoW46NGsBNOcDlepkJ+Caog=; b=pgljy76R8XrFyG
	FyzUHRG6AxJcPgzD7ejlRXJmNehTMO01dHZcDYZWX7L9n2D6Vu05yxWWAyxYSb+oK+sTjFPr3MYph
	APi9GQx0uG6aB3514gj0AnFdEYUDykNhKm3O3wlD8M1i/8JKPINodHNJAVthPEP0sAPcW/JJH2nWb
	ITc/pLan/gT01RY+xHSBbHFS4hgkKr8SDPyzc/4FwPjMlrNXOebYv5MEVnfG5xDXLIVBTu/7EZXyy
	gdM5gyQHddcADO6BKC30P830ccCutC80bb6HLyThIOgvckl2vlYtzXlVsmpZnazvg9OkaXdTp93eH
	ju80DSmO9dbVT/KEm0Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWOc4-00935W-79; Mon, 21 Mar 2022 20:26:48 +0000
Received: from mail-wr1-f51.google.com ([209.85.221.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOK4-008teR-6Z
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 20:08:17 +0000
Received: by mail-wr1-f51.google.com with SMTP id u16so21215113wru.4
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Mar 2022 13:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BLjOQyn7vWMkEPL3YYfpuMi7xJgnIr5nJYm6Y0L1/14=;
 b=jKZtZBoF+9D29LJdTrP/WOpH/cL6jYaJC9M0oJuNgOyTdPr1TJAPI1W2pBoz9Layd9
 7uSO+zDYiRBUX0UM8LbbsPxXW91fIBcgIqvMT8eaf1xa2hWGc3CNRNq4CXuQ1Y6eu9eJ
 6hqRRER8yr1rBhBksWX42igHEepCKJnCHaDZbl1Kp7FdNrkS4eBZohJS+YpYLOFo5z/p
 yrr3hOdZpAuRTTFF0I7rHrh+pqKRW7GmLAGgTcNBz/DiHtFUsoM0WMfltE7owv7QMGxZ
 jG9wL+y2FdunXMckttPckesTN2HvpfXNg9vM2yI26FsFxEqFPrWGb4NI9t1tVdn4jlPD
 oHXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BLjOQyn7vWMkEPL3YYfpuMi7xJgnIr5nJYm6Y0L1/14=;
 b=IFeS2cWTZmJxArAjt4gHTBsOw2+vJrNrR7XQbdPXlVZO+UtlgqW7KrrsEy9P0yuNAc
 3jsGYuzYyWEySw0huxN3vHuS1SDE7047ldzYDQW0b5+8iUbC/8o5aanRSn7qQB8/gqLg
 xH5KFEMRyrJ8HqhVtrgFtqnqE09eVp/429iFhN4Tpc/MEJ4Uy/woi49MVlWi4Mb4s9Gu
 +tMKuRB1pqEdq+gOsGuK9YCWQuN4iVMU0E6bqrt08CSUhY4qrbBEH51GiRnP/jg/au7/
 TZj4byFKG2lJtuxnO/s48N7YXCK1a92Rv/g5rUfRJdNhAiKzB7dbg5ufX2X1aYJ5PPpJ
 s9nw==
X-Gm-Message-State: AOAM530LhVher+Z4f1nZrXbvoktQBkQ4Tdbirzfyka44rgXpPYHyVN37
 G8EMxT+P+kLRoqWFsBrylgI4VA==
X-Google-Smtp-Source: ABdhPJw+15wozTaGAkfF7E2x/BPx9ctqPg1cM7rmgS855iWGEC3nUElEC3OQjcdUVIZxkSJwNtjFmw==
X-Received: by 2002:a5d:59a1:0:b0:204:1777:fc08 with SMTP id
 p1-20020a5d59a1000000b002041777fc08mr3924749wrr.545.1647893289973; 
 Mon, 21 Mar 2022 13:08:09 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.08.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 13:08:09 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 26/26] crypto: rockchip: use read_poll_timeout
Date: Mon, 21 Mar 2022 20:07:39 +0000
Message-Id: <20220321200739.3572792-27-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_130812_269342_2BB611AD 
X-CRM114-Status: GOOD (  11.86  )
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

Use read_poll_timeout instead of open coding it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index 1d20f58275f0..0ea47f50607e 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -9,6 +9,7 @@
  * Some ideas are from marvell/cesa.c and s5p-sss.c driver.
  */
 #include <linux/device.h>
+#include <linux/iopoll.h>
 #include <asm/unaligned.h>
 #include "rk3288_crypto.h"
 
@@ -314,8 +315,7 @@ static int rk_hash_run(struct crypto_engine *engine, void *breq)
 		 * efficiency, and make it response quickly when dma
 		 * complete.
 		 */
-	while (!readl(reg + RK_CRYPTO_HASH_STS))
-		udelay(10);
+	read_poll_timeout(readl, v, v == 0, 10, 1000, false, reg + RK_CRYPTO_HASH_STS);
 
 	for (i = 0; i < crypto_ahash_digestsize(tfm) / 4; i++) {
 		v = readl(reg + RK_CRYPTO_HASH_DOUT_0 + i * 4);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
