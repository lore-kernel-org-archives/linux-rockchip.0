Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 791EFC5AE4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 15:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCfknWpInZAKPRJmS88eIaOR5s7Kn5IGhi517KhX2F4=; b=hiGl93u+099AG2
	I6x+YZlvJYk2eG3c6vtoNHxAZOPuZ7XgpQhgimGG4WFP7WkeXDq8eJToHVtA9IHNE0dfGaRYWi5A0
	OpZyXnPQ5M1cgIPd+PoBWZ538PyqNLJrM9xVDdA7T/5bZKC0VmXnCy+7kx7lSbErz82IgbJj9dKne
	912rEw6tf3HK4M5gEsZScr6qJo5/X8L54QrK92r+O5RAnXB8X3aOnYehep3Rg1bcitFYjNN3GV4OM
	OAtattdZQoiZinITVFTA8m5azG0s4nSw/c9epr9vHXmTFLqwUgOGKGMIEcmdPhJQZWUtJTaUtgl2E
	XKrzBNxJRwP4+uA5ZDSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3ebi-003rHY-0i;
	Thu, 16 Nov 2023 15:48:42 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3ebX-003r8k-16;
	Thu, 16 Nov 2023 15:48:33 +0000
Received: from localhost.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 09DF8660734D;
	Thu, 16 Nov 2023 15:48:26 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700149707;
	bh=kpFEYAw6aX6fSWJ1Whx5HzIMLRtUw788ZzIbHzPRFQo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BoW5jHi1P6XONRt+b+n3+2IUxFCWrO3slHGgiXFBkFcTeZALt+fyfodz6GWNoL9tB
	 6/2JeGLs6Mssqfcud8XhQvuzwp3EfsF+TlFLYH2Pg0BVPXLFvbXAblxGloalaQveOk
	 jDRNal0m1cMVlv1Ms3R9rI7H8MebhcVQE2yncryKUDNx+sa2e1UNXwo+EMdnnjcXHg
	 8PxrIhccT9hawaTHWMVfhy3PzxaPc9PuZWqlOz50sz3vbA1Ya8Y9Te4MbiAk8rfMEh
	 hiDcrPIPTYsNAaYFGkECX0DGYo36C4xQO7NbfvvG1o6oqjopFwZdbSaclXMYhJBVsT
	 wJghBO/KwxgYA==
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
Subject: [RFC 1/6] media: verisilicon Correct a typo in H1_REG_ENC_CTRL2_DEBLOCKING_FILTER_MODE
Date: Thu, 16 Nov 2023 16:48:11 +0100
Message-Id: <20231116154816.70959-2-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231116154816.70959-1-andrzej.p@collabora.com>
References: <20231116154816.70959-1-andrzej.p@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_074831_527642_31B64CC3 
X-CRM114-Status: GOOD (  10.13  )
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

It's a FILTER and not FILETER.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_h1_regs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/hantro_h1_regs.h b/drivers/media/platform/verisilicon/hantro_h1_regs.h
index 5062ee1c87a2..57e89bb975ae 100644
--- a/drivers/media/platform/verisilicon/hantro_h1_regs.h
+++ b/drivers/media/platform/verisilicon/hantro_h1_regs.h
@@ -65,7 +65,7 @@
 #define    H1_REG_ENC_CTRL1_INTRA_PRED_MODE(x)		((x) << 16)
 #define    H1_REG_ENC_CTRL1_FRAME_NUM(x)		((x))
 #define H1_REG_ENC_CTRL2				0x048
-#define    H1_REG_ENC_CTRL2_DEBLOCKING_FILETER_MODE(x)	((x) << 30)
+#define    H1_REG_ENC_CTRL2_DEBLOCKING_FILTER_MODE(x)	((x) << 30)
 #define    H1_REG_ENC_CTRL2_H264_SLICE_SIZE(x)		((x) << 23)
 #define    H1_REG_ENC_CTRL2_DISABLE_QUARTER_PIXMV	BIT(22)
 #define    H1_REG_ENC_CTRL2_TRANS8X8_MODE_EN		BIT(21)
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
