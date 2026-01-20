Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 698E4D262B0
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 22:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=II9rYoLsEFyZI+YbETIHZFENVE+NR2lirYs7+DYZS7I=; b=wxHCKZhIssfFV/
	Y1plU5HjXy3Y33eac8WHWzF+QDgCcxJZgqbLXj5mww67txxZRMWO88SYco3psIxmn8qjBIdUNFX8Y
	Eiv/bIciWEGFZcrynxo9l/nx6lCjdevqnGQaFKiglba9UMmpwJ5+5sf05/BQEvlB8+7gcCHSppXK6
	OW1BcNmb72opXMbdDbEVxz2eHN4C5M8OcKb1WocpLwwxavJHSxA9vvX5pprXRwnROjEzJSfhd2mlX
	FQ/J9mqTEkdhLE7suwE4epf+NQxeWo9xj6cxeKIp5hm3MOB3A3Eg2Ts9xZW5wRjurE18yQ1MVN7Wd
	cWJx4bGU/WOjuNouZxrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viK6F-00000004Y0I-0NeE;
	Tue, 20 Jan 2026 22:21:23 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viK5z-00000004Xek-3m7o;
	Tue, 20 Jan 2026 22:21:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768947664;
	bh=EXChkKtMpNp0GDUfPdW+xanq4enywieNEBvIqMjgxK8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=beJbGOJe2sORzTGOM0qJB/ES/8lJ4Z23QUfpGidstvZr/Db5zBiEwCwK/1zO6qhKt
	 QoGzYFElavAFKBt1IeTLs8tUaJ35NWWegR2zl2KoEFtBp5EH7OPXzrvMWetUBrOFJU
	 q1cilgNQjvxiSg0KF/CfPprnWGP9lxnkOWM8g5kb+5tSKMfIRAenWUxfh2SqT1qWw9
	 koicm1DJoZtwDjBBFXzgOB13rOZHPoro4NGWYCMr2IXSDobr5D7R9q328unX7byrib
	 7r02vCYUjs/MMvPdSXapXAYA0hkQurv5751dbN0zv+HKpVaZJS0geuSdt9VUJh8zaU
	 Q9MDEt3duIhDw==
Received: from earth.mtl.collabora.ca (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6DDE517E0CF3;
	Tue, 20 Jan 2026 23:21:01 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Heiko Stuebner <heiko@sntech.de>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Ricardo Ribalda <ribalda@chromium.org>,
	Hans Verkuil <hverkuil@kernel.org>,
	Yunke Cao <yunkec@google.com>,
	Hans de Goede <hansg@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Pavan Bobba <opensource206@gmail.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	James Cowgill <james.cowgill@blaize.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	Jonas Karlman <jonas@kwiboo.se>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v9 11/17] media: rkvdec: Support per-variant interrupt handler
Date: Tue, 20 Jan 2026 17:20:11 -0500
Message-ID: <20260120222018.404741-12-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120222018.404741-1-detlev.casanova@collabora.com>
References: <20260120222018.404741-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_142108_217208_E0A2A099 
X-CRM114-Status: GOOD (  13.02  )
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

Prepare for supporting different variants with different interrupt
managers.

To support other variants specific function type later, introduce the
rkvdec_variant_ops struct.

Tested-by: Diederik de Haas <didi.debian@cknow.org>  # Rock 5B
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../media/platform/rockchip/rkvdec/rkvdec.c   | 21 ++++++++++++++++---
 .../media/platform/rockchip/rkvdec/rkvdec.h   |  5 +++++
 2 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index ff6a09e45462e..174536ebdcc7c 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -1222,10 +1222,9 @@ static void rkvdec_iommu_restore(struct rkvdec_dev *rkvdec)
 	}
 }
 
-static irqreturn_t rkvdec_irq_handler(int irq, void *priv)
+static irqreturn_t rk3399_irq_handler(struct rkvdec_ctx *ctx)
 {
-	struct rkvdec_dev *rkvdec = priv;
-	struct rkvdec_ctx *ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
+	struct rkvdec_dev *rkvdec = ctx->dev;
 	enum vb2_buffer_state state;
 	u32 status;
 
@@ -1246,6 +1245,15 @@ static irqreturn_t rkvdec_irq_handler(int irq, void *priv)
 	return IRQ_HANDLED;
 }
 
+static irqreturn_t rkvdec_irq_handler(int irq, void *priv)
+{
+	struct rkvdec_dev *rkvdec = priv;
+	struct rkvdec_ctx *ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
+	const struct rkvdec_variant *variant = rkvdec->variant;
+
+	return variant->ops->irq_handler(ctx);
+}
+
 static void rkvdec_watchdog_func(struct work_struct *work)
 {
 	struct rkvdec_dev *rkvdec;
@@ -1261,16 +1269,22 @@ static void rkvdec_watchdog_func(struct work_struct *work)
 	}
 }
 
+static const struct rkvdec_variant_ops rk3399_variant_ops = {
+	.irq_handler = rk3399_irq_handler,
+};
+
 static const struct rkvdec_variant rk3288_rkvdec_variant = {
 	.num_regs = 68,
 	.coded_fmts = rk3288_coded_fmts,
 	.num_coded_fmts = ARRAY_SIZE(rk3288_coded_fmts),
+	.ops = &rk3399_variant_ops,
 };
 
 static const struct rkvdec_variant rk3328_rkvdec_variant = {
 	.num_regs = 109,
 	.coded_fmts = rkvdec_coded_fmts,
 	.num_coded_fmts = ARRAY_SIZE(rkvdec_coded_fmts),
+	.ops = &rk3399_variant_ops,
 	.quirks = RKVDEC_QUIRK_DISABLE_QOS,
 };
 
@@ -1278,6 +1292,7 @@ static const struct rkvdec_variant rk3399_rkvdec_variant = {
 	.num_regs = 78,
 	.coded_fmts = rkvdec_coded_fmts,
 	.num_coded_fmts = ARRAY_SIZE(rkvdec_coded_fmts),
+	.ops = &rk3399_variant_ops,
 };
 
 static const struct of_device_id of_rkvdec_match[] = {
diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.h b/drivers/media/platform/rockchip/rkvdec/rkvdec.h
index 751f39afe7e2d..faabedd2b9d88 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.h
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.h
@@ -67,12 +67,17 @@ vb2_to_rkvdec_decoded_buf(struct vb2_buffer *buf)
 			    base.vb.vb2_buf);
 }
 
+struct rkvdec_variant_ops {
+	irqreturn_t (*irq_handler)(struct rkvdec_ctx *ctx);
+};
+
 struct rkvdec_variant {
 	unsigned int num_regs;
 	const struct rkvdec_coded_fmt_desc *coded_fmts;
 	size_t num_coded_fmts;
 	const struct rcb_size_info *rcb_sizes;
 	size_t num_rcb_sizes;
+	const struct rkvdec_variant_ops *ops;
 	unsigned int quirks;
 };
 
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
