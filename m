Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60951C0015E
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 15:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kbYf6f5EG89WqaVjHinhQpmeXMp+S6J2yKH30id/0Po=; b=dCp9DuH+dJmimh
	SDpUUDNK91ZCUQW4ZUhIxU4d6VMtQYTFTg7MVJb+1z+cVP0hE9ehVAYU8jj1oUi9MTcgV3FbYqUpO
	+ihfHH97mhSQzuBCdpm9C3MWcUE0m3ZGUirqQutWYYd0TwRt8oTb5cahBuH5TLW6o9RsGz54CMBiO
	1/56lBLe9YRfm9u3AbxT0xxBetMHqAZZKF2zr3l6Iv/NDNOOvPkqdOYsGw+6nSjX2yaFvvr+2XEkk
	b2S+M8xHOf/kulbfr/lwEqRhMTl9OJmSeH0EYJk3xCgqbzobJeyE7JaS3BzQowwkeaoBCIVUHKbrO
	xbLE+Pa/gab4IZRs/KWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBzyx-00EzGY-0t;
	Wed, 21 Jun 2023 15:42:55 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBzyv-00EzG0-1g
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 15:42:54 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b46f5d236dso60357561fa.2
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Jun 2023 08:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687362172; x=1689954172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wzxiaQ082ZFew564dfizmutmqfV0MIQOlwM4DhrL6Ig=;
        b=DnH636UX7kGEnRpOVDWD065E2A7A+d66pQf0h3YL7NRfQsbdrdNIvirYGSd73IkXSk
         kcoJ1lnxOlZBW2fKCvEuRhpKtupQbp4IxZMvKcJ4YvvlMg6MlfIForbYnAX+Tt1W8qQy
         5aQQM36JHa5n1+VX8r2GdnmDN+GhkJOcUVltA3OiZygvcFnM4vqgzHjPvVChi2SdNgWa
         YHwUzJ1OdLIXlCrua4LA032FZudH1sIWh/D5nv0fjmg05eOG+BDPpVNHegMTRjMyx0FO
         iLU3RW1XC0I7fdkuta3Abr4kAjZqfqyZKXuey3P4yhUeNbOJ4jHlVXWbyP8QO4ghHQGl
         Dl1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687362172; x=1689954172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wzxiaQ082ZFew564dfizmutmqfV0MIQOlwM4DhrL6Ig=;
        b=RNccijiXlPTnkBSrD8wsxfzLVZvS8ADUgcuXnYgcleKne6i0lh501H18CGPK7Fd9qk
         NHfI0dL0SWfTwsnOfBPAQscQJ+a65YyLGq2Xpqisb8W408Gb6y5c/IsPMdI2wgYQg1Wl
         l7FbSHcm04tUgtjFKv2MqjsSysuJh5kK1dyXcinGMqiTX14yn3RkfFApWIwmQpL3S10N
         v5ofBWCi6gAGojlRp3ECG+Nx5vzXzm54WXwC9aAwZwHsdgVp0Y+DMSofjkOTuJxG6eA1
         7SiO3tr4Trhl9HVg2+i85h50iBsXjwM8EeLT23VqN4fLrTU0XgednE1i13MhL56L2ojG
         Zu0A==
X-Gm-Message-State: AC+VfDxNOl1Ao3H9P3OsyNenwweuZRIhzcFIJOFAXhEQqdfnfOvVEFtC
	10LY6Oy3fjX5pSyr2Yew/F4=
X-Google-Smtp-Source: ACHHUZ6Oy/XXvR8t4B7d/NTgPTdlbFRDbN1BltI4AoZQjNz5Dhl5IEq4dU7qm1CazjTVer2vn6hV8g==
X-Received: by 2002:a05:6512:55a:b0:4f7:669f:7da8 with SMTP id h26-20020a056512055a00b004f7669f7da8mr10582510lfl.7.1687362171346;
        Wed, 21 Jun 2023 08:42:51 -0700 (PDT)
Received: from localhost.localdomain (sa-84-52-56-253.saturn.infonet.ee. [84.52.56.253])
        by smtp.googlemail.com with ESMTPSA id j17-20020ac253b1000000b004f76684329esm813156lfh.234.2023.06.21.08.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 08:42:50 -0700 (PDT)
From: Emma Christy <emma.t.christy@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Emma Christy <emma.t.christy@gmail.com>
Subject: [PATCH v2] media: rkvdec: removed redundant blank line
Date: Wed, 21 Jun 2023 18:42:47 +0300
Message-Id: <20230621154247.43983-1-emma.t.christy@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_084253_563450_5BA838F0 
X-CRM114-Status: UNSURE (   9.35  )
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

Adhere to Linux kernel coding style. Removed redundant blank line.
Issue found by checkpatch.

Signed-off-by: Emma Christy <emma.t.christy@gmail.com>
---
Changes in v2:
  - Fixed Singed-off-by.
  - Fixed Subject line.

 drivers/staging/media/rkvdec/rkvdec-vp9.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-vp9.c b/drivers/staging/media/rkvdec/rkvdec-vp9.c
index cfae99b40ccb..0e7e16f20eeb 100644
--- a/drivers/staging/media/rkvdec/rkvdec-vp9.c
+++ b/drivers/staging/media/rkvdec/rkvdec-vp9.c
@@ -227,7 +227,6 @@ static void init_intra_only_probs(struct rkvdec_ctx *ctx,
 				}
 			}
 		}
-
 	}
 
 	for (i = 0; i < sizeof(v4l2_vp9_kf_uv_mode_prob); ++i) {
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
