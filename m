Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BC29C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3kIM41E+N8D/Emoh8Csp1V/oViOftRA+DsJUp4K4RUw=; b=vAWfZKe4OfsLpe
	rzRJd4uJDshxlZ0NNmR9sL9tp8oRLmwr0OpZ3FgANiDsE1OVct8TdezX+3XNe1wqJp7qzMT/Zpiwn
	MK9xhPLp5qDzAth+eQD82ZmXLmmBqgzGu4rniuCq5ydSPy3aS7E9iakbvZpmDlku2P1XaxlZ2icWh
	DWMhf8WNp0OXGQhHJyvaWW3ja7FWDT9gmmQqr7RCoGajXP6cgeC2WGNxnNgc3bCaZckLJNt84NxCT
	AW0HjvWtJdZ9nMDwBWj2DaZ62feOma+/691MnO52pKgbhhhrdxURy9TVqo7SBdU3uiAEb6vFLckhw
	0UIg0ZWa68c9mDxAorkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BxN-00At86-6K; Tue, 14 Jun 2022 19:12:05 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BxJ-00At6B-2y
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:12:02 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C036AF95;
	Tue, 14 Jun 2022 21:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655233919;
	bh=kFkq9EYQIYVYHtcJ4C11CNQqT3UkvhgAxURDV/zltyQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Tb9ZhQwoW6KiLThS8fkam+w+mRotLEPZ0SszpXIfNe0D27QAYBarRr9fnLHEALkC6
	 OtzDab+vvXYa9ojnF6XzFiMEEqixPz/YrSRUWVsYsB7H+Cv9OYJTe2MHIPbwsne60N
	 UG5w/0Ji5GVMHOQZBYLJQCTCLj2f3VoFq1nY4SMY=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	laurent.pinchart@ideasonboard.com,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 03/55] media: rkisp1: debug: Add debugfs files to monitor MI and ISP interrupts
Date: Wed, 15 Jun 2022 04:10:35 +0900
Message-Id: <20220614191127.3420492-4-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121201_329515_1634DF09 
X-CRM114-Status: UNSURE (   7.03  )
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

Add files in debugfs to monitor some of the interrupts of the MI and
ISP. Add the appropriate holder variables in the rkisp1_debug struct as
well.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  9 +++++++++
 .../platform/rockchip/rkisp1/rkisp1-debug.c   | 20 +++++++++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 4243ff5e2197..a67fe7b1dfa1 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -364,6 +364,15 @@ struct rkisp1_debug {
 	unsigned long stats_error;
 	unsigned long stop_timeout[2];
 	unsigned long frame_drop[2];
+	unsigned long mi_irq_mblk_line_count;
+	unsigned long mi_irq_fill_mp_y_count;
+	unsigned long mi_irq_frame_count;
+	unsigned long mi_irq_wrap_mp_y_count;
+	unsigned long mi_irq_wrap_mp_cb_count;
+	unsigned long mi_irq_wrap_mp_cr_count;
+	unsigned long isp_irq_v_start_count;
+	unsigned long isp_irq_frame_count;
+	unsigned long isp_irq_frame_in_count;
 };
 
 /*
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
index 1a59c00fabdd..02854e8ea1a4 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
@@ -220,6 +220,26 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 	debugfs_create_file("input_status", 0444, debug->debugfs_dir, rkisp1,
 			    &rkisp1_debug_input_status_fops);
 
+	debugfs_create_ulong("mi_irq_mblk_line_count", 0444, debug->debugfs_dir,
+			     &debug->mi_irq_mblk_line_count);
+	debugfs_create_ulong("mi_irq_fill_mp_y_count", 0444, debug->debugfs_dir,
+			     &debug->mi_irq_fill_mp_y_count);
+	debugfs_create_ulong("mi_irq_frame_count", 0444, debug->debugfs_dir,
+			     &debug->mi_irq_frame_count);
+	debugfs_create_ulong("mi_irq_wrap_mp_y_count", 0444, debug->debugfs_dir,
+			     &debug->mi_irq_wrap_mp_y_count);
+	debugfs_create_ulong("mi_irq_wrap_mp_cb_count", 0444, debug->debugfs_dir,
+			     &debug->mi_irq_wrap_mp_cb_count);
+	debugfs_create_ulong("mi_irq_wrap_mp_cr_count", 0444, debug->debugfs_dir,
+			     &debug->mi_irq_wrap_mp_cr_count);
+
+	debugfs_create_ulong("isp_irq_v_start_count", 0444, debug->debugfs_dir,
+			     &debug->isp_irq_v_start_count);
+	debugfs_create_ulong("isp_irq_frame_count", 0444, debug->debugfs_dir,
+			     &debug->isp_irq_frame_count);
+	debugfs_create_ulong("isp_irq_frame_in_count", 0444, debug->debugfs_dir,
+			     &debug->isp_irq_frame_in_count);
+
 	regs_dir = debugfs_create_dir("regs", debug->debugfs_dir);
 
 	debugfs_create_file("core", 0444, regs_dir, rkisp1,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
