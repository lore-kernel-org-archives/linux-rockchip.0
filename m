Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB285C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 May 2022 11:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BKhrxX5aP+3EpEKSU0N98QUlT1/drBjGFBlrj0swfeY=; b=kL8PYOQJrmUKzL
	vYqzt2tK36P62u3jRi7ccw3Hxi2zjwKwNd7uziNXM85kmR3GcuhpolcV2MApk0iR5iPlrEuYwWF3w
	ZA1aO4UD2srmjklah/ymAHpkrH4JOE3L6759S/8mg8vAp9kmxIKY2RkdlKFA8pxvqciHX8E4SeqZb
	DvwIZn5h9MtipDVe8rTh/pSSpBq08PALzBZ4CIU8YuRQS0uGSxFUC+Ww0G37525sPo+8JJg5aX/Te
	/glT+7gy6oB8PhrpCr6eo2MFNT6KU6OJ/FxQ+R1Li9PIGUYMRJ413C8CH+Hm0Y5MueWCkGCBuRrDH
	Py6zLhy4FM3NKEPNW7YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntT5Q-007rii-PT; Tue, 24 May 2022 11:52:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntT5N-007rhR-GL
 for linux-rockchip@lists.infradead.org; Tue, 24 May 2022 11:52:26 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 77A331F43D78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1653393142;
 bh=ALAqMrfW8Y9IKBszQmPYt8RTPIp0NQCV0UbgRyOpuc8=;
 h=From:To:Cc:Subject:Date:From;
 b=Om7aAl9CKiGbjRYF0vV47sdFVmoVIiOOnYKWD51j3BX5Qu3kJo7s/lVW6dP9PKjyH
 0Ht6OZx34gUywRVmJyhQHZEDF+3tTT0syN+Q8KF9TS8XwTQYSbJHjpIZGoKRDzUUkE
 Q3WHA3UkZsmYSP0rDUFRExKUbERFxXE8PI+CE9CpzJhe3zQxvj5TsPR1Oci/mksQU5
 0Ppgf5/sO0uRM7ZrZMdNYy9lM4rYJ4+IKojoZMQ6vc+4HSZxIeIkWEbiagiR5mXj/K
 F4nnJc9osgWPUOPjUuScs4TJMjPO3DV5tvKhppwhu4R9XgWkZE67rsaZ+BZ42JV7BJ
 mDxFgBJZRFBxA==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: Hantro: Correct G2 init qp field
Date: Tue, 24 May 2022 13:52:12 +0200
Message-Id: <20220524115212.2284908-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_045225_716768_FF1843B8 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
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

Documentation said that g2 init_qp field use bits 24 to 30 of
the 8th register.
Change the field mask to be able to set 7 bits and not only 6 of them.

Conformance test INITQP_B_Main10_Sony_1 decoding is OK with this
patch.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
With this patch and the patches needed for 10-bit support
Fluster HEVC score is 138/147

 drivers/staging/media/hantro/hantro_g2_regs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_g2_regs.h b/drivers/staging/media/hantro/hantro_g2_regs.h
index 877d663a8181..82606783591a 100644
--- a/drivers/staging/media/hantro/hantro_g2_regs.h
+++ b/drivers/staging/media/hantro/hantro_g2_regs.h
@@ -107,7 +107,7 @@
 
 #define g2_start_code_e		G2_DEC_REG(10, 31, 0x1)
 #define g2_init_qp_old		G2_DEC_REG(10, 25, 0x3f)
-#define g2_init_qp		G2_DEC_REG(10, 24, 0x3f)
+#define g2_init_qp		G2_DEC_REG(10, 24, 0x7f)
 #define g2_num_tile_cols_old	G2_DEC_REG(10, 20, 0x1f)
 #define g2_num_tile_cols	G2_DEC_REG(10, 19, 0x1f)
 #define g2_num_tile_rows_old	G2_DEC_REG(10, 15, 0x1f)
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
