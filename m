Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19561C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 17:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0JZSGkHb0f17ORnmD1ygvCVKPCPwJJLvnUQZMztjTs=; b=XDvU5k3sD/MOqu
	nBU4Y8kuq660hmFccon/Fuv4kaN1yriNxCIXbzdSRI6mCAWftlYLOyqv9ubu9UpYNNDGl0XWrvRD7
	Jnhb59wq5Eev3G+hp5MFpzIcslLyNAaQCOek66K2ut2zlouIg8Xm2rGJI1XlPw0cNFv2nJCh6I0Nd
	+Gd4KFNWSSFEh9IP22VaOF9qeweza6usfnq0oolJj/o+uLp0Pxut0vDm12v2EOA9uO9fqFW0HmxS4
	+7zykD7yM79exobqGSO9a5YMYADyBKOSwcCARlEN0Rgu+ql6/N8g/paS4AVsU2KQXRHyBMsNbJrae
	fmTPU93JMXHtlf6AhKVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQBg7-00BJLn-Lk; Fri, 04 Mar 2022 17:25:19 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQBar-00BFiP-5g
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 17:19:57 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3AB5321B9;
 Fri,  4 Mar 2022 18:19:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1646414391;
 bh=NhVNyN/Hqu9OJYLxGrtpiTI30hGwggbAJZF6AFwFqHk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EGi+A7k8FBlzgSU/GyiQYLk1ssjkiYZFfERIlw1Gp2gWf+jRTXHtbpDd1Vx6bxe9n
 WIHzqzXRMbLnqcsAqYP7/cuHfFRtP2sl13UbqVo53ouc4eibYa1/YncJ7jbrw8hAY2
 vmjx27eCeeyzBb/vLo35rOOZRBL11x83eb2gU9RE=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 15/17] media: rkisp1: debug: Add debugfs files to dump core
 and ISP registers
Date: Fri,  4 Mar 2022 19:19:23 +0200
Message-Id: <20220304171925.1592-16-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
References: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_091953_417710_A98ED85D 
X-CRM114-Status: GOOD (  11.84  )
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

It's useful to dumb the value of registers for debugging purpose. Add
two debugfs files to dump key core and ISP registers.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-debug.c   | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
index 8be4ac134cc9..c7872d8dc3df 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
@@ -16,6 +16,63 @@
 #include "rkisp1-common.h"
 #include "rkisp1-regs.h"
 
+struct rkisp1_debug_register {
+	u32 offset;
+	const char * const name;
+};
+
+#define RKISP1_DEBUG_REG(name)	{ RKISP1_CIF_##name, #name }
+
+static int rkisp1_debug_dump_regs(struct seq_file *m,
+				  const struct rkisp1_debug_register *regs)
+{
+	struct rkisp1_device *rkisp1 = m->private;
+	u32 val;
+
+	for ( ; regs->name; ++regs) {
+		val = rkisp1_read(rkisp1, regs->offset);
+		seq_printf(m, "%14s: 0x%08x\n", regs->name, val);
+	}
+
+	return 0;
+}
+
+static int rkisp1_debug_dump_core_regs_show(struct seq_file *m, void *p)
+{
+	static const struct rkisp1_debug_register registers[] = {
+		RKISP1_DEBUG_REG(VI_CCL),
+		RKISP1_DEBUG_REG(VI_ICCL),
+		RKISP1_DEBUG_REG(VI_IRCL),
+		RKISP1_DEBUG_REG(VI_DPCL),
+		RKISP1_DEBUG_REG(MI_CTRL),
+		RKISP1_DEBUG_REG(MI_BYTE_CNT),
+		RKISP1_DEBUG_REG(MI_CTRL_SHD),
+		RKISP1_DEBUG_REG(MI_RIS),
+		RKISP1_DEBUG_REG(MI_STATUS),
+		RKISP1_DEBUG_REG(MI_DMA_CTRL),
+		RKISP1_DEBUG_REG(MI_DMA_STATUS),
+		{ /* Sentinel */ },
+	};
+
+	return rkisp1_debug_dump_regs(m, registers);
+}
+DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_core_regs);
+
+static int rkisp1_debug_dump_isp_regs_show(struct seq_file *m, void *p)
+{
+	static const struct rkisp1_debug_register registers[] = {
+		RKISP1_DEBUG_REG(ISP_CTRL),
+		RKISP1_DEBUG_REG(ISP_ACQ_PROP),
+		RKISP1_DEBUG_REG(ISP_FLAGS_SHD),
+		RKISP1_DEBUG_REG(ISP_RIS),
+		RKISP1_DEBUG_REG(ISP_ERR),
+		{ /* Sentinel */ },
+	};
+
+	return rkisp1_debug_dump_regs(m, registers);
+}
+DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_isp_regs);
+
 #define RKISP1_DEBUG_DATA_COUNT_BINS	32
 #define RKISP1_DEBUG_DATA_COUNT_STEP	(4096 / RKISP1_DEBUG_DATA_COUNT_BINS)
 
@@ -60,6 +117,7 @@ DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_input_status);
 void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 {
 	struct rkisp1_debug *debug = &rkisp1->debug;
+	struct dentry *regs_dir;
 
 	debug->debugfs_dir = debugfs_create_dir(dev_name(rkisp1->dev), NULL);
 
@@ -88,6 +146,13 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 			     &debug->frame_drop[RKISP1_SELFPATH]);
 	debugfs_create_file("input_status", 0444, debug->debugfs_dir, rkisp1,
 			    &rkisp1_debug_input_status_fops);
+
+	regs_dir = debugfs_create_dir("regs", debug->debugfs_dir);
+
+	debugfs_create_file("core", 0444, regs_dir, rkisp1,
+			    &rkisp1_debug_dump_core_regs_fops);
+	debugfs_create_file("isp", 0444, regs_dir, rkisp1,
+			    &rkisp1_debug_dump_isp_regs_fops);
 }
 
 void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
