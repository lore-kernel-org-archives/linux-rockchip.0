Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35968CCA47B
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 12:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9K0QrNkCPHoziMNvZW7I1n/8oOyko7ZNqUnH+m1dLWY=; b=WZlHvTs+M+gCM2
	vbExz5UAsm9JEnxSqplghKtSin0IgoQCGMAH/vlsNc3NgfONY+a+sFxdyPYWWgXtAQLwfLOAFyT33
	x+kZq16VrcJleX1xlnG5/ai0+caF6+SlT7nc6kWMjHK9SBjJI01S2Gay1joA1s17Rp91Fd2ZVFyib
	fLrM8ZteI1eanJ8fYheyCvVr3TtloWVMwEZTDXKS/EMg346pFpTGjZPXqJBUPsAqVp6ni4hQfvrKd
	CfCv4lkp4l9hmq9hvdCmfa3oIJQvqfdY5uXLwFBkl63n565UDotzcXLcHb8S4KQXkNrAhIT8OPTs8
	KFjYl+tqSE7EN935mJug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nze87-008FBD-JX; Fri, 10 Jun 2022 12:52:47 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nze84-008F80-De
	for linux-rockchip@lists.infradead.org; Fri, 10 Jun 2022 12:52:45 +0000
Received: from whitebuilder.lan (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C48896601725;
	Fri, 10 Jun 2022 13:52:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654865563;
	bh=7hV4k2F2AcwF7i/toKo78FMa4mcKD+wvplQQ+zerGAg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gq+TSIpE7muF4e0VQ6gm9IBeHKeRk0p3UvL5q8/Hlw9KWXcr7fUnvdTyTxFscEY+h
	 VadP8dTrHK0TvHj54DRwY/RfeE7XBYLAc4YgxqYZCqtvPuEBynUaDB/U2u1xAnv1IS
	 BVQS31NtpUKWncLgIz5jstZLchQiG48exFZRnsZwzVjmI7S7W5Pru6pJTowxdG4vwz
	 xEklqbHFWn039wGSNs9T6hATco5bsadsz4t3iE24I04bqo7wQFAHzwcEFC8cbaghjn
	 WyPqHaEMfj3qsgJ4RV6hxFVFGyBxf/dvw23Ndg9MGuKrbOsVE0c22xJ0EoaFXZxgJG
	 IGBYApMmLN67A==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: linux-media@vger.kernel.org,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	kernel@collabora.com,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/5] media: rkvdec: Fix RKVDEC_ERR_PKT_NUM macro
Date: Fri, 10 Jun 2022 08:52:13 -0400
Message-Id: <20220610125215.240539-4-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220610125215.240539-1-nicolas.dufresne@collabora.com>
References: <20220610125215.240539-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_055244_630363_4194C9BC 
X-CRM114-Status: GOOD (  10.55  )
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
index 15b9bee92016..14530b81560e 100644
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
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
