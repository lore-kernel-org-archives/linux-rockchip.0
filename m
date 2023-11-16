Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6A02C54FB9
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 15:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9jjzU9M+tIapQfPFPtk6DlxIFs4rYTbwjj8z0e6qlA=; b=H8DIlll6jg5RWP
	7WziQcY06SGowaCyMrLDi6TCC6Wk9i6RQbybdvEPLSK8HeQHhDkbTJNIT4TyvXiN1wH4aJk1fyd0U
	ZfPSt0nZXGY2GEdf59GgVg9pkreCE9rSZw/s4gTKwtFij9NmjAukQSm5fSUaB8hI5oEFdO2/G292s
	iifl+LdoWjrPji2FhgygTv/UoyvyRq2fr2nwRj2jGDaY9+lgQLnPZLu9w47yr4ZfZtjhFSMf9xyJ6
	ZrEkw/kN98Cfy75xzmyfTnkAXiPdgfKBYlG6RM6CbhTJQrxL5q/cLvUm3Fw/iCU1nvNKFlFQlDJmf
	xKC/XZS7j3VHhq9quuBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3ebj-003rJH-2m;
	Thu, 16 Nov 2023 15:48:43 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3ebX-003r8z-1s;
	Thu, 16 Nov 2023 15:48:33 +0000
Received: from localhost.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 22B5E6607351;
	Thu, 16 Nov 2023 15:48:28 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700149709;
	bh=BY0sbxpm5Rf/FVPVvUAfc6hpVbEdkpX0L7b1vxWfMEA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oPVwla9EfSUkl+veP0U8qGqhda2TGfetqap4Bmramto6x2j2n7SeKMnWUvuZsyg71
	 vFN74GbG8QqbTHRo7s/Yww6Xewg3xlapQbFk9W6RhMFPRekZWPwE0enUCWQBPMMBnK
	 h9Kl/V+QGhujIiJ+RoMZ3z9X1wuAkHyOf82S9SeiUHjIAtA/viI7yDY9BlLzqmtQ1j
	 zg98jCindurfZRzNIzglm6FqFDLLWwAyL0c3L7t2gn0aRb5Zdw/FsY0fE1D1Brt0Wz
	 u2d0NEfGBrXqEdnat7Ma4vhfILY+ACIVRvpD6ryHB82wUFxUNmtBgBlNj9HczHtfYE
	 rNxqRgNkbaetA==
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Cc: Hugues Fruchet <hugues.fruchet@foss.st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	kernel@collabora.com
Subject: [RFC 2/6] media: verisilicon: Correct a typo in H1_REG_MAD_CTRL_MAD_THRESHOLD
Date: Thu, 16 Nov 2023 16:48:12 +0100
Message-Id: <20231116154816.70959-3-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231116154816.70959-1-andrzej.p@collabora.com>
References: <20231116154816.70959-1-andrzej.p@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_074831_766099_4BF18757 
X-CRM114-Status: GOOD (  10.01  )
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

It's a THRESHOLD and not a THREDHOLD.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_h1_regs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/hantro_h1_regs.h b/drivers/media/platform/verisilicon/hantro_h1_regs.h
index 57e89bb975ae..7752d1291c0e 100644
--- a/drivers/media/platform/verisilicon/hantro_h1_regs.h
+++ b/drivers/media/platform/verisilicon/hantro_h1_regs.h
@@ -92,7 +92,7 @@
 #define H1_REG_STR_BUF_LIMIT				0x060
 #define H1_REG_MAD_CTRL					0x064
 #define    H1_REG_MAD_CTRL_QP_ADJUST(x)			((x) << 28)
-#define    H1_REG_MAD_CTRL_MAD_THREDHOLD(x)		((x) << 22)
+#define    H1_REG_MAD_CTRL_MAD_THRESHOLD(x)		((x) << 22)
 #define    H1_REG_MAD_CTRL_QP_SUM_DIV2(x)		((x))
 #define H1_REG_ADDR_VP8_PROB_CNT			0x068
 #define H1_REG_QP_VAL					0x06c
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
