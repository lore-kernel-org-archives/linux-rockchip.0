Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBAF2F36B91
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Apr 2026 06:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version
	:Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Mdd3et2ACEMJ/jwAo04bPtZslkbev6tlulUoIGdL1Co=; b=L0O86kGUBOurJq
	tKWIfPmI2GBSP5KIDEw9Ku5q++XGfZW13D5qAeQMfu0f1C5LT2KLbKP7RtP/CoydOvixpARWsNZ/Z
	qbivGJS/b6t+OgQp3va37bn6Q2N+HSuKuUCyxC0th10g2yt7fxGbjTWylceKMINc6fXt9JiReP6Ah
	RByIdDtppJPQe98DXSsYa4lhUzpcGLBsKJ1Wkwxx9t7rB8hdjFsNt20kDyIjB5DlOyPo5bkMhLaRh
	f7/5Ov9K0hTYYuIA+0MRk/ixjbesS94x1jBSuCykny8em8cuzIpmtXKew5DQJP+xNuPJBdw/Zl/gT
	E6g2j2td/RdkxAFLGI+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB59e-0000000BfWy-2uCj;
	Fri, 10 Apr 2026 06:15:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB59d-0000000BfWo-2ZGv
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Apr 2026 06:15:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B35F560125;
	Fri, 10 Apr 2026 06:15:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A9C3C19421;
	Fri, 10 Apr 2026 06:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775801744;
	bh=M4ZvHRLjaEnVv6jn0UrFfImmOzcuCGWp0QomZ3x9aM0=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=Q9hT1EWtpmIKbgvRcxp50jRAKt8+iLJYvb1arV3CLQ+nwpROmel2pCPHSDRflGOQw
	 nzYrnx+LhBvyFZ1pSO/7h3xJxnkge7vdC1fOaNoxzz+xBJuFvRLYLBNAMkkZpEdw1i
	 YOWHiMP+nBYB8T10gxhUJJVR2Tk0LX+IqwAvLtPNY3pqK/g/zjt+AJ9x7os869rdLv
	 Pxf8L4pIDm9yf0mMA+tw/BVd/Eg6MDCi6+KH6s8Tlm9l5nA5TNxbpej6XDTCuouDUf
	 vxxdRyZAqbR1FBM87ewaEx57IdBy4faAjoDR9uWJjicgmgaIVukzeZCaGNflda1qEB
	 aZyPah8zRVP7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DFBAF36B91;
	Fri, 10 Apr 2026 06:15:44 +0000 (UTC)
From: Rouven Czerwinski via B4 Relay <devnull+rouven.czerwinski.linaro.org@kernel.org>
Date: Fri, 10 Apr 2026 08:15:42 +0200
Subject: [PATCH] media: verisilicon: remove hantro_run declaration
MIME-Version: 1.0
Message-Id: <20260410-hantro-dangling-declaration-v1-1-9a5cd401e1e8@linaro.org>
X-B4-Tracking: v=1; b=H4sIAI2V2GkC/yWM0QrCMAxFf2Xk2UDXDUV/RXyITTojo5O0ijD27
 0Z9PPdyzgpVTKXCqVvB5KVVl+LQ7zpINyqToLIzxBD3YQxH9LHZguzfrGVCljSTUXMPaRgOnHu
 mPEbwwsMk6/tXP1/+XJ/Xu6T2TcK2fQCtNtI5fwAAAA==
X-Change-ID: 20260409-hantro-dangling-declaration-a337df1daf42
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Rouven Czerwinski <rouven.czerwinski@linaro.org>
X-Mailer: b4 0.15.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775801743; l=1100;
 i=rouven.czerwinski@linaro.org; s=20260126; h=from:subject:message-id;
 bh=S0B4Mku1guaft4/xRhZzu1ThAb3ZD3LGOoP/Tz4zCTw=;
 b=7E6nGoMWJBA5PgHEOkOKz1jYhKj6PFmoJ6mDMXpGK+YWJZp4CEAev4BXVwo+lLQaef01nbT5p
 3g3pCcNPbjyAgv6neHlgj05TGfATo/w8fx9F2WK5CfrarKI9VZgMIOu
X-Developer-Key: i=rouven.czerwinski@linaro.org; a=ed25519;
 pk=/5pmUK/XIAIIo8JA0axgfy1k8NRhRTQkxVwZYa1ga7U=
X-Endpoint-Received: by B4 Relay for rouven.czerwinski@linaro.org/20260126
 with auth_id=616
X-Original-From: Rouven Czerwinski <rouven.czerwinski@linaro.org>
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
Reply-To: rouven.czerwinski@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Rouven Czerwinski <rouven.czerwinski@linaro.org>

The function hantro_run() is declared but never defined nor used, remove
the dangling declaration.

Signed-off-by: Rouven Czerwinski <rouven.czerwinski@linaro.org>
---
 drivers/media/platform/verisilicon/hantro_hw.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/hantro_hw.h b/drivers/media/platform/verisilicon/hantro_hw.h
index 5f2011529f02..13e573f1f19d 100644
--- a/drivers/media/platform/verisilicon/hantro_hw.h
+++ b/drivers/media/platform/verisilicon/hantro_hw.h
@@ -427,7 +427,6 @@ extern const struct hantro_postproc_ops rockchip_vpu981_postproc_ops;
 extern const u32 hantro_vp8_dec_mc_filter[8][6];
 
 void hantro_watchdog(struct work_struct *work);
-void hantro_run(struct hantro_ctx *ctx);
 void hantro_irq_done(struct hantro_dev *vpu,
 		     enum vb2_buffer_state result);
 void hantro_start_prepare_run(struct hantro_ctx *ctx);

---
base-commit: 591cd656a1bf5ea94a222af5ef2ee76df029c1d2
change-id: 20260409-hantro-dangling-declaration-a337df1daf42

Best regards,
--  
Rouven Czerwinski <rouven.czerwinski@linaro.org>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
