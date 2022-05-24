Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DDF2C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 May 2022 12:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RgZkj/Hsp1jIs2j+jd+pubtPD4OZ7ou6D0Nbf35+dUc=; b=KpD9kFo+bkB+Ap
	2k2wgGFKAcVkw0cbgvx1/+7ynI5oyBVUF0JiXqPFJyEeexyNNxqZCtda438P329MU2M5mlwSu2hGJ
	crE6SB49cnz9RMpUHd84jTIzEjvPUb2roSv+2MJKzNfljhjmhPTgQvseOdCzLg96sg8BZL6ok+iFA
	GVNGhao55dI/DCiQIpCyJfFeFXS0z5eXdK+9jBjCWDvqg4gXVr+PtJC2ruVyp8mVNmb3g7rVAAwRE
	EGGo7W4s3Np1sKHju5UPkdfpUplGJOlJghrn8tLPkqgZtwJyE9buvM3Y/TC0sbOh/LOf7ABSnacEH
	EpnAcoJO70kQBl+b9Zag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntTCe-007tGt-2R; Tue, 24 May 2022 11:59:56 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntTCb-007tFi-Lc
 for linux-rockchip@lists.infradead.org; Tue, 24 May 2022 11:59:55 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 010CB1F43E41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1653393592;
 bh=+BemnG7IWyoEHXSpYjscGO1bMMzKPeDF+hhkBNitIBM=;
 h=From:To:Cc:Subject:Date:From;
 b=K3+bhaI6Q5Q/I4eji0874puJaOxxq0oWYPZy7M43IM3f1rN31peZG0mu5pkFh27nB
 RoKA4hbPU0534Khatc8OXkyXPK2BVRM/QW4QWXudiYOZ1m6YAx3xtGECwLUaNRgYUK
 9W/0jmJkZP4TUQZ2DWWmTifeIor2KTlzcouE0m9TuE08CiymG6eb7hXqxuaYkwGIde
 rG38f1I8Uzz+sEL1p7Mj0BDW+Vep5ZvFlV3hOZXMJf86/RUMO0v6sQeUFPo2uveETL
 P22K3uQ+D1Q624Qd/THbySbnPhPTD1+VVXaUHWShBWXxi8opTb0hqV8QO0toEJwHBt
 iFZUz4eEGz4Dg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2] media: Hantro: Correct G2 init qp field
Date: Tue, 24 May 2022 13:59:45 +0200
Message-Id: <20220524115945.2294015-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_045953_880235_24923128 
X-CRM114-Status: UNSURE (   9.86  )
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

Fixes: cb5dd5a0fa518 ("media: hantro: Introduce G2/HEVC decoder")
Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
With this patch and the patches needed for 10-bit support
Fluster HEVC score is 137/147

version 2:
- Add Fixes tag

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
