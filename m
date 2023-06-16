Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E26CEB64DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 14:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D0TqLe8VxzPwKsUfQi+VB6PXeMwljfCzfAM33jzD4R4=; b=mp85xGunkByvxn
	Jnpq1LgkLqifpHVBXsxqoQC125gvUfeRfNCfwvs5XFCUdp7iM46GbSGLMCYssQBnAKi6VVZTdgSLn
	BDc7eeUIFG7WQOzD+cPuxHfmdTSF5M9jcVJesp0ZEnk8Q7CkA3GqOOg7jHrtIRw555PTXju9KaBNX
	9DYr9c9tTN6oY4d+RY3MPeUqo8fff4Erm250tJZY4Ri5wqhlO6aN2d0mqDuvAZ0LZ/Bx1SmduhqYO
	GkOcnOyNGW6jbkijh7esagrinxBuBqGpbXbbu2N73R9UtRuOqMKxiAwBKLCqkyJ6NsJFPDCEl8Wz/
	KtLT1z6QmqfBiy84EpZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAAlA-000r6f-0D;
	Fri, 16 Jun 2023 14:49:08 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAAl6-000r5k-0v
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 14:49:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6DC3863DC9;
	Fri, 16 Jun 2023 14:49:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E387DC433C8;
	Fri, 16 Jun 2023 14:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686926942;
	bh=8PHm9QC8vIhbyTtp0cJ+k53orRmf0g+m7GbXYTsDqoM=;
	h=From:To:Cc:Subject:Date:From;
	b=nOqxJkOV7qE4jg5x4HRQDLiMypRFcXeisOQMHsuoQd/mdYhyYyLs7zCQw9+Ly6I37
	 rJVg1SMFN6QtkE4xwZrUWCpnKN3bvEMEi9JbMWTbEwPAwV7pQYcRT/nJcI5oCMX0Db
	 LN9KxA7zAFEdvDeohI14t2WFwdyaUh3t86ekomcrEDmLivsp58UWLc+wf9P6xobh1x
	 HAMK+KOMiEqeAehgZbI7oA4H6xln8FQD+ualLaWVlDJ9x3WYoTMfbDrk6EhILRku1a
	 zC3X17HvXEk4CpDVo/zDAJzUHjD6NNzNj1IbGFeIpFlFmtj+P6QTuwzDwsVHGbw//o
	 FVyipDF9zaRwQ==
From: Arnd Bergmann <arnd@kernel.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	kernel test robot <lkp@intel.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] media: verisilicon: fix excessive stack usage
Date: Fri, 16 Jun 2023 16:48:47 +0200
Message-Id: <20230616144854.3818934-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_074904_427271_1A70F953 
X-CRM114-Status: GOOD (  13.95  )
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

From: Arnd Bergmann <arnd@arndb.de>

In some configurations, gcc decides not to inline the register accessor functions,
which in turn leads to lots of temporary hantro_reg structures on the stack that
cannot be eliminated because they escape into an uninlined function:

drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c:1022:1: warning: the frame size of 1112 bytes is larger than 1024 bytes [-Wframe-larger-than=]

Mark all of these as __always_inline so the compiler is able to completely
eliminate the temporary structures instead, which brings the stack usage
back down to just the normal local variables.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202306151506.goHEegOd-lkp@intel.com/
Fixes: 727a400686a2c ("media: verisilicon: Add Rockchip AV1 decoder")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/media/platform/verisilicon/hantro.h | 22 ++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
index 6523ffb748812..6c5e56ce5b351 100644
--- a/drivers/media/platform/verisilicon/hantro.h
+++ b/drivers/media/platform/verisilicon/hantro.h
@@ -370,26 +370,26 @@ extern int hantro_debug;
 	pr_err("%s:%d: " fmt, __func__, __LINE__, ##args)
 
 /* Structure access helpers. */
-static inline struct hantro_ctx *fh_to_ctx(struct v4l2_fh *fh)
+static __always_inline struct hantro_ctx *fh_to_ctx(struct v4l2_fh *fh)
 {
 	return container_of(fh, struct hantro_ctx, fh);
 }
 
 /* Register accessors. */
-static inline void vepu_write_relaxed(struct hantro_dev *vpu,
+static __always_inline void vepu_write_relaxed(struct hantro_dev *vpu,
 				      u32 val, u32 reg)
 {
 	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
 	writel_relaxed(val, vpu->enc_base + reg);
 }
 
-static inline void vepu_write(struct hantro_dev *vpu, u32 val, u32 reg)
+static __always_inline void vepu_write(struct hantro_dev *vpu, u32 val, u32 reg)
 {
 	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
 	writel(val, vpu->enc_base + reg);
 }
 
-static inline u32 vepu_read(struct hantro_dev *vpu, u32 reg)
+static __always_inline u32 vepu_read(struct hantro_dev *vpu, u32 reg)
 {
 	u32 val = readl(vpu->enc_base + reg);
 
@@ -397,27 +397,27 @@ static inline u32 vepu_read(struct hantro_dev *vpu, u32 reg)
 	return val;
 }
 
-static inline void vdpu_write_relaxed(struct hantro_dev *vpu,
+static __always_inline void vdpu_write_relaxed(struct hantro_dev *vpu,
 				      u32 val, u32 reg)
 {
 	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
 	writel_relaxed(val, vpu->dec_base + reg);
 }
 
-static inline void vdpu_write(struct hantro_dev *vpu, u32 val, u32 reg)
+static __always_inline void vdpu_write(struct hantro_dev *vpu, u32 val, u32 reg)
 {
 	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
 	writel(val, vpu->dec_base + reg);
 }
 
-static inline void hantro_write_addr(struct hantro_dev *vpu,
+static __always_inline void hantro_write_addr(struct hantro_dev *vpu,
 				     unsigned long offset,
 				     dma_addr_t addr)
 {
 	vdpu_write(vpu, addr & 0xffffffff, offset);
 }
 
-static inline u32 vdpu_read(struct hantro_dev *vpu, u32 reg)
+static __always_inline u32 vdpu_read(struct hantro_dev *vpu, u32 reg)
 {
 	u32 val = readl(vpu->dec_base + reg);
 
@@ -425,7 +425,7 @@ static inline u32 vdpu_read(struct hantro_dev *vpu, u32 reg)
 	return val;
 }
 
-static inline u32 vdpu_read_mask(struct hantro_dev *vpu,
+static __always_inline u32 vdpu_read_mask(struct hantro_dev *vpu,
 				 const struct hantro_reg *reg,
 				 u32 val)
 {
@@ -437,14 +437,14 @@ static inline u32 vdpu_read_mask(struct hantro_dev *vpu,
 	return v;
 }
 
-static inline void hantro_reg_write(struct hantro_dev *vpu,
+static __always_inline void hantro_reg_write(struct hantro_dev *vpu,
 				    const struct hantro_reg *reg,
 				    u32 val)
 {
 	vdpu_write_relaxed(vpu, vdpu_read_mask(vpu, reg, val), reg->base);
 }
 
-static inline void hantro_reg_write_s(struct hantro_dev *vpu,
+static __always_inline void hantro_reg_write_s(struct hantro_dev *vpu,
 				      const struct hantro_reg *reg,
 				      u32 val)
 {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
