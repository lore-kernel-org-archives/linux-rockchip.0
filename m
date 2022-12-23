Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4C2DC3DA79
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 19:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVfg9TkZDioiKaWh+vlPIB/cX/O2uEEdNFH6tbLt3nk=; b=lme+u+wr8qLzeT
	a3GjI1BiTF1Lpt8jE5wqbQ/jxhAInY3V02HzLw410pIQc/EEjRenHdCAtHtv3bM6mrfHXA5QK9GBO
	33XGyHqt865T8Fx3HEtf4jziQEM3K+PcIu1EUwbXLhXnr3eyXHbj6ig2kgUqSzo1JMsLFwk6l87kx
	YftcZur6XuGqI//IpNYzaRrPgpsz5nwhW8okpur2r5F6shvG3TYN38us5hgU7tNPx3B1PqlcoMGTL
	AZPIXPgkBU2zhQVAZUoddjoSHraU7d9rkuCtROmbR0NMK6X+GDb5fshN6TSGLo9Pw7T4uR/V9WTVd
	AxG/bErrn8D3us8C747A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8nsl-00BcBv-LW; Fri, 23 Dec 2022 19:39:03 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8nsW-00BbyF-UP
	for linux-rockchip@lists.infradead.org; Fri, 23 Dec 2022 19:38:50 +0000
Received: from whitebuilder.lan (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2CA6A6602CE4;
	Fri, 23 Dec 2022 19:38:46 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671824327;
	bh=eBl4+2U4mQQRTAtyInaP2j+zvWYhkSkjm7NFsSgFaXQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QJvWKvQjLgZgCirY7Ajy75zAiBEMylZ1tHA5Dv/UZvan9DxnC2Xe4FPZ3PIxO1K/w
	 F38xN/A6OmP1IEuIsrcNkNDklBhJTfIKvMpcvaaPWtAVGcuiZYPN0qVOPsdkjvmVjo
	 ef3k2PCz9jx2XhcpLMmYFP/cnb3bWRh6C5IQhiDTTC3iXksZZMjAbZT464r+z1f2QA
	 zWWGONfBbyKwzmfv2BSU3FAbG9g3/fpifiw/+69wHfCENqpkR8p70h7vksoCfbvRRw
	 P/GdIpznA4b/OROhL9Wss32R/UHS0hY5eGKa0EYVpkcAkKCFLZv1Bv9xzQpHmb33ub
	 LAvyHe6xEy3Pw==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: kernel@collabora.com,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/4] media: rkvdec: Fix RKVDEC_ERR_PKT_NUM macro
Date: Fri, 23 Dec 2022 14:38:04 -0500
Message-Id: <20221223193807.914935-3-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221223193807.914935-1-nicolas.dufresne@collabora.com>
References: <20221223193807.914935-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_113849_152353_E6D52FDD 
X-CRM114-Status: UNSURE (   9.59  )
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

This information is expressed by bits [29:16], but the actual
implementation was reading bits [13:0] and shifting that 16
bits to the left.

Fixes: cd33c830448ba ("media: rkvdec: Add the rkvdec driver")
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec-regs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-regs.h b/drivers/staging/media/rkvdec/rkvdec-regs.h
index 15b9bee92016c..14530b81560ed 100644
--- a/drivers/staging/media/rkvdec/rkvdec-regs.h
+++ b/drivers/staging/media/rkvdec/rkvdec-regs.h
@@ -212,7 +212,7 @@
 #define RKVDEC_REG_H264_ERRINFO_NUM			0x130
 #define RKVDEC_SLICEDEC_NUM(x)				((x) & 0x3fff)
 #define RKVDEC_STRMD_DECT_ERR_FLAG			BIT(15)
-#define RKVDEC_ERR_PKT_NUM(x)				(((x) & 0x3fff) << 16)
+#define RKVDEC_ERR_PKT_NUM(x)				((x >> 16) & 0x3fff)
 
 #define RKVDEC_REG_H264_ERR_E				0x134
 #define RKVDEC_H264_ERR_EN_HIGHBITS(x)			((x) & 0x3fffffff)
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
