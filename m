Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E16EC5AD2B
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Aug 2026 09:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n4V9i4PNfmkYIJRlqAhD6/cx07KphOzD71uPe5MC1os=; b=GFQ96IbBxtD0hd
	7LyWohsiaZJ3Vwkyztm+BG2RfKu8p7gqwUfGgPZFrTb3o/q3KCPRba8ovVLqrJ1ue+Qs9NXJQCXCW
	u11vOzicVYHdIeBdrB1jQMtGEH1gXhN3dPJ5qhrSYBR9vb6JSPJ1BWkMH1pXKwcQmHjUCQIMjIgtt
	kkmCPXSapU4Ud2QkReYwxicVxbBkkohnhw0Doncp40zsQWy0lZro4e3Xzf+37QSaQmZLLfxIksgCT
	J/ttFJO2NtINIBR8eu6uvjdoBd0qzAxvIPkPyFFDRVNxLSh+mBUNTWac1IBBx68Vturg18t1DxznW
	HJ7RpbVpsl1WEXo74fXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdO1-00000009DfP-0cj7;
	Sat, 08 Aug 2026 09:30:37 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdNz-00000009Dei-083T
	for linux-rockchip@lists.infradead.org;
	Sat, 08 Aug 2026 09:30:36 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2cea3004256so4499535ad.0
        for <linux-rockchip@lists.infradead.org>; Sat, 08 Aug 2026 02:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786181434; x=1786786234; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=gC2ItiHuCYFgaLZeaOk4o80zqG6tRez0H0meLhFxwtI=;
        b=S+TyMf1xisGxQivmb4h/5rqgo2TgwHVomMTksNh48li9ydxSnYa7cY8tfu63ja4Rqu
         PVqJVfWg1Wq1j7JNFurpmkbzDS+iL6WoJgKDpYpQMCpq7dy4OD+6W36oxam82yIHcP7H
         57u0YDfA9U4BaAJxWZk74Ww51pspbA89FK9yJxuAyKzsrwqhofTJ/ZuWysm+mCsmRqfm
         VNiIDkvHswfqXw6ma3J3pAlXwpQM3yZwYzYQ5rA+6QTkR8snHneio26vfPHUYNHKB6mE
         7YZBt2OZHoWN2MjW2fZXowQnIGN/q18yJvq5f/m8xgOPSyPgviw8juNyYAL7AC9m346l
         dX1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786181434; x=1786786234;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gC2ItiHuCYFgaLZeaOk4o80zqG6tRez0H0meLhFxwtI=;
        b=NGwancweeftwmxQq8xAmlyaDmCefQQFQcpMhhzFdx+sd566O7uP5Ooi9LVTpC+8vN9
         Zp+2y1FnIxlcz68mgcCbU0M+aMW8SXHl4INypnJonZInyPruuoriOuEv9QVzx30aHCZ6
         2aSY4x/TgSuJG2gL1kTjmWwq4nASYLnTE5pT2/xxJpgTo/vBwmuQ2zAeVSUGctz6TbWx
         LW1tJhMa6Z67nugQlFJXMYjAZ3j8m0Hhi5QZd9JK1exSvwuLZgUOZjy1dBicRKgxFGVb
         02TARBLcZ3M8k2ZaN3rAxziKUP9lDOlsElbdupodw6NaYaoxMdXHzdYQEPTg94dULfri
         NMjg==
X-Forwarded-Encrypted: i=1; AHgh+RpGW/2L1w2dcnK2qZaiGTiFvAsnBm18g/Ie3afHnSur7pGLr+AXENGz6z5+cxqqcMVKzaOxNFKWQfIM5m79oA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxXn3/JQalG43pqAo/psA9zr9mt+U2H2ITDjhZwDn4/yx0VLhbR
	ZEbNfXbNhZ7UBSUR6gP00n0D4HYIudLxkmqW7xUwoO2f1u9zT03pgY3U
X-Gm-Gg: AR+sD10QqRY3/9fIiICA4fRVKjxHlxJ0h6lIdVUSE3uKT3+NWZkIjF4PLc8tApTW5yc
	uMSO+PDccBMk77nKy17rYzCLoxPGp4BiABxQ4T73/PIKavQ3AeblhMO3kcs366VwByBfyomgDxM
	v2Aw6zSePP8eCSTPahuMdUhsVxozMm0Z5yVEypOjXWGt+SzSv7QQineLLqd04AQTLSGWCgsnvQ8
	pXYknpfUnln+6q3qOVMkphNK4du9ul3I0SC34GMzWjsxlsAGJDIWWCcoUbaMG+5+P+oeJslXgbd
	dtNwu5B03O2N3SbMiS1EHRgC+VwE9pxFOLTqgUA8HxXVZNqFMT61PVLytbvxO5F2zHZK73oBIqy
	FbkV+xk0oqQSMBJfPlmQO3F7hkq3e886olRMcK2ipfF1hSeuUjm9tjfmvIL0MLJRuJHDRzBV+JP
	laVYEisEbyhrJhooTvZ6aeXpb+AW6OO3UXUJ5e50yZzqfRxY4semC9y/Z0c7DmSojHMpys
X-Received: by 2002:a17:903:3201:b0:2d0:401c:2ebb with SMTP id d9443c01a7336-2d0ca7125cemr362470225ad.4.1786181434060;
        Sat, 08 Aug 2026 02:30:34 -0700 (PDT)
Received: from lgs.. ([101.76.249.46])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d14ccac0f1sm17098055ad.7.2026.08.08.02.30.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 02:30:33 -0700 (PDT)
From: Guangshuo Li <lgs201920130244@gmail.com>
To: Corentin Labbe <clabbe@baylibre.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Heiko Stuebner <heiko@sntech.de>,
	John Keeping <john@keeping.me.uk>,
	linux-crypto@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Guangshuo Li <lgs201920130244@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH] crypto: rockchip: fix autosuspend cleanup during teardown
Date: Sat,  8 Aug 2026 17:30:16 +0800
Message-ID: <20260808093016.2738659-1-lgs201920130244@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_023035_394929_2211025F 
X-CRM114-Status: GOOD (  12.00  )
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

rk_crypto_pm_init() calls pm_runtime_use_autosuspend(), but the
autosuspend setting is not undone if pm_runtime_set_suspended() fails
or when runtime PM is later torn down by rk_crypto_pm_exit().

If the autosuspend delay is set to a negative value while autosuspend
is enabled, the runtime PM core increments usage_count to prevent
runtime suspend. Without calling pm_runtime_dont_use_autosuspend()
during cleanup, this reference is not dropped and usage_count remains
unbalanced.

Undo the autosuspend setting when pm_runtime_set_suspended() fails and
in rk_crypto_pm_exit() before disabling runtime PM.

This issue was found by manual code inspection.

Fixes: a216be3964c1 ("crypto: rockchip - introduce PM")
Cc: stable@vger.kernel.org
Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index b77bdce8e7fc..cfca472f996f 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -150,14 +150,17 @@ static int rk_crypto_pm_init(struct rk_crypto_info *rkdev)
 	pm_runtime_set_autosuspend_delay(rkdev->dev, 2000);
 
 	err = pm_runtime_set_suspended(rkdev->dev);
-	if (err)
+	if (err) {
+		pm_runtime_dont_use_autosuspend(rkdev->dev);
 		return err;
+	}
 	pm_runtime_enable(rkdev->dev);
 	return err;
 }
 
 static void rk_crypto_pm_exit(struct rk_crypto_info *rkdev)
 {
+	pm_runtime_dont_use_autosuspend(rkdev->dev);
 	pm_runtime_disable(rkdev->dev);
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
