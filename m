Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EE0FEB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 09:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LpyXaIrLsGIxSdc+V8e8ih3bxsatlolPsvDENk9flzg=; b=jUpa0tn6XnBBxp
	POeMUapgF+s2zLkIJkY8oZzYnnJe/10hdPJ9O1ON9y7/k5+1SODhbRkLZLOF023n33z9bkrIF+RhQ
	TQucLzBU5uQQYmKcOl+8OQVwAp/oeZosQ0dV3+5DT6JSnlaH7ea1j9GDge9Ocdu7QMFC0ng5KAAwN
	ddSCJoVVEgA8f/Gx4XRIFQjFEm27raJLp8pnoV//ewU23ZcX+yiqX5n0nDr1opE/DmdiQuCEvEciz
	X/duIY3y58i9miyLwx8b+7036uVWpVHR/ewTIqq8v4eFK/HapOSacmLP1n7frUy2WuaetGzsoeYcc
	rXZpm4Pv3JXTMeXezU6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBu2v-00DqAU-0j;
	Wed, 21 Jun 2023 09:22:37 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBu2s-00Dq8z-1I
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 09:22:35 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b474dac685so51196531fa.3
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Jun 2023 02:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687339351; x=1689931351;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EDeNQQqyz/nKt5P8lWcisu6DsEDZkm29WDucZUEslLo=;
        b=LvA+yAc7uqyQWWHYSZ/EweD6nBt0ToDoNvUQfmFPftuB3YQaD3wDtfcddxerdjpqLK
         zNURLecHDA0Q6cOBY3eeGf4xX6I9MmmOuJ3gASfKbMSoWsMUsi6UzaomNPo4JNN88KxB
         y3nMyhHHXkjrJ0okRDyTFUog714z1htWRo6ewS0Zm/XhbEi+5kbQVg7YkggJN9ODNKW8
         looCIxDSUKflL9OdA8dMMf3ZwQufzYK0AjgZ47SJeC/bu/mpG4Ov3dQHEsE+VGcWlOPx
         0kihrQ7jlL0p5ijllp28oM66AKUJrmxVHjFbWLmDiID2FFyCr5wG06Pi4u6MY21pLv4q
         9qKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687339351; x=1689931351;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EDeNQQqyz/nKt5P8lWcisu6DsEDZkm29WDucZUEslLo=;
        b=j/1UUKDVXW3ft0ZWtXHHtqawQuVzGAwLnj/IS4f4hO4pfDvgHCzztxx1nS0hdGdO7G
         gQgkYsj/vCjoq+qixueit11Bw8uz5sLOr/B989q8kKYUmNFf10a4Yfm6tO9cJJLp6M2z
         B+J9ry8zsD1JG1W/TULvqeiqaM6c5pCw3PaHSG5uLLzQlC8JZqZp0Dus8MqTZHxK0sac
         zw6e6hd5xSXK5vi7Y6iV4uBBR5WxAPrjP0v6H3erdAEWo1KL3bFnkmHbFGzYPRAGB0aS
         gNwqBjM9J5FXEeKC1VWupDVBwM8Sh8OCctTILyaIeGHZwPNv8Ak4ZqlRR8W9UMhsJpva
         0lcw==
X-Gm-Message-State: AC+VfDypQJhyq4TFOOz+ZrOVFjqUihSHaD5fBkmOf8wPRvJaz/h/l8QA
	UYhRu9n8sFYMASlaWTK+LgY=
X-Google-Smtp-Source: ACHHUZ4b5B0OPx8Ocken2B6jez7ePavuLOeKLr41nwQeM7rYzRLGaa8mAeN0QJbfqgiDZ0QYVm5Ecw==
X-Received: by 2002:a2e:3211:0:b0:2b4:7d83:c80b with SMTP id y17-20020a2e3211000000b002b47d83c80bmr5066194ljy.13.1687339350913;
        Wed, 21 Jun 2023 02:22:30 -0700 (PDT)
Received: from localhost.localdomain (sa-84-52-56-253.saturn.infonet.ee. [84.52.56.253])
        by smtp.googlemail.com with ESMTPSA id w7-20020a05651c102700b002b1b92910c8sm811575ljm.86.2023.06.21.02.22.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 02:22:30 -0700 (PDT)
From: emma christy <emma.t.christy@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: emma christy <emma.t.christy@gmail.com>
Subject: [PATCH] Subject: [PATCH] media: rkvdec: removed redundant blank line
Date: Wed, 21 Jun 2023 12:22:23 +0300
Message-Id: <20230621092223.10805-1-emma.t.christy@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_022234_444546_686B294C 
X-CRM114-Status: UNSURE (   9.31  )
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

Signed-off-by: emma christy <emma.t.christy@gmail.com>
---
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
