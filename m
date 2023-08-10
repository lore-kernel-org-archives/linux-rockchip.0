Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1BDCC04A94
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Aug 2023 10:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5hfKkEBW0sEnOZPq7nRnVYYZ84ZPxN7cCYcODdZyiLQ=; b=aRHqBDWxz4MILV
	WVXfj8p7Gdb5CCyWU45sESWOvxxvDsIao0wJw9hvs6j5lq/2rTcvTF2Gkd4Anmz8QvfBH6W8UuP9X
	BLngUkQkEUKY1h4DUpPCfsB2SEuBIbbcRfnUzsy7EGAUdgGWdCW352SpSCjIK8ZW6QEIKd0rQmJXn
	Ip9TPGo8JfJJpb7gRDg27HPzK1ORK3fT9JZTCQDEpNy7xD2+uimGRY1MMsNLOQDeBsfQ4qD7jkEOD
	RCHmAkzMc1wbp3Zx3cyvJo2UtpSpWnMQ0/2XenOk0WDQtcxqYvi6uerUsq7YsOQFT59N8Rl2RYp7V
	ec0La3rM3/B6wGCLkh7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3Cz-007GA8-3D;
	Thu, 10 Aug 2023 10:48:02 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3Cw-007G2p-11
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Aug 2023 10:47:59 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5237365f3a6so961383a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Aug 2023 03:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691664473; x=1692269273;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cL5UPVfVDvTPeQFgxKATIKznitcWyNXilLQp5uC80cI=;
        b=G6pHUHnoTRweCuka8lUSPfAXJhMF537/JJNKPyOuyVHJBy5UR0uOeLt8TW7dwXa4JD
         BEBO2xt/mITqpaAYcQ65ixrn/FU1/rF5Uo2CChXWuk6wBuA0iR1sT0O4SYChe32G/E9x
         2nV5gCCrVFq/EamTv7i9wU21Fs+zGTJWa/uPofqynaQLcuik19lqLog8NruRcQLUmRvp
         ZhPLwqEOmjw0yPYz8dSNNq957zC/gjOaH2cIpxW8F0j0tkGBbbzdykd2D6tbKd9B4k3W
         BXrzxJRZ78QSdp1HmG0pQX8ee0aNP460OnyCEwER3ENS5EBe7eOPBxLEYZ/CRizp28b8
         F6zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691664473; x=1692269273;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cL5UPVfVDvTPeQFgxKATIKznitcWyNXilLQp5uC80cI=;
        b=fBw8PrgbQLe+VqW+iZSWHTfIU5Usfd9nI1XMIgsJAj/Vqi37M+kygkidGhCIO3foTz
         9V4vERBzN/P6i8B53eoKLo2hVljb6zhA6AedEu2rjxDKfCrsqvBl5NeEh/qvjmLmvFvN
         Kqyp13UXjq3TBdNkgpTSByVxaXqPEGzcDGuux2eQ/rE2YO8cRZxxyOQKQ1x6MYIYvWD0
         xREOfXX4MND+0Gvfx9X8UDfqZoczEoYUV3+oiz4nXeUh/RxxSGD5Fm0yqBETo45Y0JOi
         WzBcgCQQNSKlB73e5AiLQguxDOqfPXNuqBZ8S/uqPlw5/eZMJcuDdGNfQC7oMOouBqiW
         JRGA==
X-Gm-Message-State: AOJu0YzHFQdhrc5l2zil/BB03wBpMqJG6Zq6W7+frEMb9FdANGT7NTwc
	b06eYyi4LkGw8/ti0VgtXKUBIQ==
X-Google-Smtp-Source: AGHT+IGXS1aQfmfAEnnnicUw9UC/MVRyaVegshXzkv6MrwG7ZgOG9nfvxHajlaARube88C1uKtE0IA==
X-Received: by 2002:a05:6402:28a:b0:523:406a:5f6 with SMTP id l10-20020a056402028a00b00523406a05f6mr1588660edv.12.1691664472836;
        Thu, 10 Aug 2023 03:47:52 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id x20-20020aa7cd94000000b0051dfa2e30b2sm653854edv.9.2023.08.10.03.47.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 03:47:52 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tom Rix <trix@redhat.com>,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	patches@opensource.cirrus.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	llvm@lists.linux.dev
Cc: Andi Shyti <andi.shyti@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/4] ASoC: aw88261: Fix unitialized ret of aw88261_reg_update()
Date: Thu, 10 Aug 2023 12:47:43 +0200
Message-Id: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_034758_357714_3107CF8E 
X-CRM114-Status: GOOD (  12.70  )
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

There is a branch in if() clause where aw88261_reg_update() could return
uninitialized value.  Pounted out by W=1 clang build:

  sound/soc/codecs/aw88261.c:651:7: error: variable 'ret' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
                if (aw_dev->prof_cur != aw_dev->prof_index) {
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  sound/soc/codecs/aw88261.c:660:9: note: uninitialized use occurs here
        return ret;
               ^~~
  sound/soc/codecs/aw88261.c:651:3: note: remove the 'if' if its condition is always true
                if (aw_dev->prof_cur != aw_dev->prof_index) {
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 sound/soc/codecs/aw88261.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/aw88261.c b/sound/soc/codecs/aw88261.c
index 82923b454dd4..fddba2f2de41 100644
--- a/sound/soc/codecs/aw88261.c
+++ b/sound/soc/codecs/aw88261.c
@@ -636,7 +636,7 @@ static int aw88261_dev_stop(struct aw_device *aw_dev)
 static int aw88261_reg_update(struct aw88261 *aw88261, bool force)
 {
 	struct aw_device *aw_dev = aw88261->aw_pa;
-	int ret;
+	int ret = 0;
 
 	if (force) {
 		ret = regmap_write(aw_dev->regmap,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
