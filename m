Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F3F2C54FB9
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 15:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvUSYF9x7vic2T5w/RmVjXv4kME+r+j0EB6Yu59uJao=; b=E4X5fM9nhjLI8c
	sFw9u9nbPePjIxI2n96Asmh28E0EVt1pPenQ29zA5hnTki+IyJtfctPET2BB/TZfDmf7T3tGpwzpT
	1bRab6Dz/jJM74hTkfBBHrPJYXthdQ6Q9mJbEX2G9Mx/CGszUBAa4MH4gmT5kMkzaZR8AgTpUBHC2
	j2d7x72JwvhSbdu6EAypBD68PY1/3gtZjYfAg/m7aPDRINpYbA0I7oF3fGcusxSqcC9KXNe+Kmrwm
	2J8OXAVdxBCUbBDbsN5QrAwjsAsHqHIBnZRGo1biNNeKd9TTgdxnvRB1wQ5sNtNRFiQqfxHagP8PW
	NeuyWUYfZ0/6MHbltRkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3ebl-003rKg-1Z;
	Thu, 16 Nov 2023 15:48:45 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3ebY-003r9p-1K;
	Thu, 16 Nov 2023 15:48:33 +0000
Received: from localhost.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5638A6607377;
	Thu, 16 Nov 2023 15:48:30 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700149711;
	bh=4cgLKTgnVvYWRE/faVahndrRcA5UJbNrZ9b/DGo2+3M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=etCEYydZA2yxC3PIsk2+nUDQofJiiZUNeIKweun2Fe1TgNzSxuQtKBYgN/xIFCyxK
	 LwT2D0+u4yvJdNFEvnV1gI2mTy17gGqlPuSCealHhBEKlGh0x4mQH+iIcI6N93FwcO
	 uExFhkYsZ6Mu5Cy3GHLeexxea74Cs+8w4ej6rIw+Zx/6RJoFAAPJD64wWTrsVVQAFV
	 QdWqVLgZAUEFPvaXseelAUkczkIw1GjcvDWVoVRVPI6cvuvCZzv8es3eFj8qUL/pJc
	 prsnNwcMce4i5hWxAsKoYe3QNWpT8zQD5DmoLynPoT231EYmsBWN/LNv09rTd9MqhF
	 FuXv6uX2yt7sw==
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
Subject: [RFC 4/6] media: verisilicon: Update H1 register definitions
Date: Thu, 16 Nov 2023 16:48:14 +0100
Message-Id: <20231116154816.70959-5-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231116154816.70959-1-andrzej.p@collabora.com>
References: <20231116154816.70959-1-andrzej.p@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_074832_580075_7F17A0ED 
X-CRM114-Status: UNSURE (   7.08  )
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

Add definition of register at offset 0x00c.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_h1_regs.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_h1_regs.h b/drivers/media/platform/verisilicon/hantro_h1_regs.h
index c1c66c934a24..efb46da23eab 100644
--- a/drivers/media/platform/verisilicon/hantro_h1_regs.h
+++ b/drivers/media/platform/verisilicon/hantro_h1_regs.h
@@ -23,6 +23,15 @@
 #define     H1_REG_AXI_CTRL_INPUT_SWAP32		BIT(2)
 #define     H1_REG_AXI_CTRL_OUTPUT_SWAP8		BIT(1)
 #define     H1_REG_AXI_CTRL_INPUT_SWAP8			BIT(0)
+#define H1_REG_DEVICE_CTRL				0x00c
+#define     H1_REG_DEVICE_CTRL_SCALE_OUTPUT_SWAP8	BIT(27)
+#define     H1_REG_DEVICE_CTRL_SCALE_OUTPUT_SWAP16	BIT(26)
+#define     H1_REG_DEVICE_CTRL_SCALE_OUTPUT_SWAP32	BIT(25)
+#define     H1_REG_DEVICE_CTRL_MV_OUTPUT_SWAP8		BIT(24)
+#define     H1_REG_DEVICE_CTRL_MV_OUTPUT_SWAP16		BIT(23)
+#define     H1_REG_DEVICE_CTRL_MV_OUTPUT_SWAP32		BIT(22)
+#define     H1_REG_DEVICE_CTRL_INPUT_READ_1MB		BIT(21)
+#define     H1_REG_DEVICE_CTRL_AXI_DUAL_CHANNEL		BIT(20)
 #define H1_REG_ADDR_OUTPUT_STREAM			0x014
 #define H1_REG_ADDR_OUTPUT_CTRL				0x018
 #define H1_REG_ADDR_REF_LUMA				0x01c
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
