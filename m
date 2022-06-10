Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E287C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5P9qr9/8qgW3/UYxAAuDav9Y5WbCm5lxI3EirIVRc8U=; b=ewJkxXikvcpPIG
	9WUriXVfJiVtC6/+um0G+J1f7zMxUw/inEwmwNTKvzqx+lfiYrKM7svWDj8J6DKYmtCTy3Je3H+JU
	3tbuydQ3lwtwrL/lB6L43J7+IE+/4fdV0rG7cObExsWlwZx4f7mnOIf9d6QaLZS3UpiK6FgY00kCj
	SlD6fEp+M9RqTiDLWTIEJRP3fIJ+VmKnRWeDJyHzyPwI6HJN1HJWkw6t24oqemt4e03vhgIWQwudG
	cYe5rXjQHaCq/2Iie7etbgaQHk+Z4iaPcrP8CW2ud/s1CaWssKdaTgL8bLHxBDEENUxEwr6vZZZzA
	XkSJcXHCC5JzDBA/4hiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nze80-008F6J-T7; Fri, 10 Jun 2022 12:52:40 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nze7y-008F5U-QR
	for linux-rockchip@lists.infradead.org; Fri, 10 Jun 2022 12:52:40 +0000
Received: from whitebuilder.lan (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 45E776601723;
	Fri, 10 Jun 2022 13:52:33 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654865554;
	bh=p58BGLd7hMm8p/2ISuy3Dy0LlqXqYJNmYcWNBWGs/eo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=k/12mt8TUAGfUMKdUILYc1U9Q0mcOKvYLKWOvKQehdBhmZwNiUxJswfiOfpoooU6Y
	 K7SyrWEXe2qjxHIqPHedkJ37gilThxf4XJm1pghTKSzfqIS5CJyy/DGRM6cwux/56x
	 BJC76p7e5Fq2jAX5N9L4Q+7mVubr9Jjllr2y0C1llKCJP6kL7yxELDiubw4W84nWK5
	 y2J3cAIz0OPwwKlQj8IYtTfQsYgJi0tzCounvyIkiAzE3Nbynsh4HGqqJjeLMjn96a
	 wnXDKPIFQARXVZqpvN92Lkf+CAUBKMooUOkILCPvyNcXkpfILLtadGlIz7x/dGu5lp
	 QNoDgEhEwkwOA==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: linux-media@vger.kernel.org,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Boris Brezillon <boris.brezillon@collabora.com>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	kernel@collabora.com,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/5] media: rkvdec: Disable H.264 error detection
Date: Fri, 10 Jun 2022 08:52:11 -0400
Message-Id: <20220610125215.240539-2-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220610125215.240539-1-nicolas.dufresne@collabora.com>
References: <20220610125215.240539-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_055239_026963_A3A73C7E 
X-CRM114-Status: GOOD (  13.96  )
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

Quite often, the HW get stuck in error condition if a stream error
was detected. As documented, the HW should stop immediately and self
reset. There is likely a problem or a miss-understanding of the self
self reset mechanism, as unless we make a long pause, the next command
will then report an error even if there is no error in it.

Disabling error detection fixes the issue, and let the decoder continue
after an error. This patch is safe for backport into older kernels.

Fixes: cd33c830448b ("media: rkvdec: Add the rkvdec driver")
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index 2992fb87cf72..55596ce6bb6e 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -1175,8 +1175,8 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
 
 	schedule_delayed_work(&rkvdec->watchdog_work, msecs_to_jiffies(2000));
 
-	writel(0xffffffff, rkvdec->regs + RKVDEC_REG_STRMD_ERR_EN);
-	writel(0xffffffff, rkvdec->regs + RKVDEC_REG_H264_ERR_E);
+	writel(0, rkvdec->regs + RKVDEC_REG_STRMD_ERR_EN);
+	writel(0, rkvdec->regs + RKVDEC_REG_H264_ERR_E);
 	writel(1, rkvdec->regs + RKVDEC_REG_PREF_LUMA_CACHE_COMMAND);
 	writel(1, rkvdec->regs + RKVDEC_REG_PREF_CHR_CACHE_COMMAND);
 
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
