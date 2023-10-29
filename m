Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C670C4167D
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Oct 2023 18:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFjuIBtK1bhUJFJuyvxjRzj6oX6ha+H93LPhRKnUKKY=; b=dDoQNy/kKsA7xa
	45D8U4s8w+crZUVM1RRSDT5q+edl6JPRr73VCbmFHliTlKEuQcC924ONuFLzw7ig+cd0Gcl/cpuuX
	9xHhwOb3F9JIccWd/avz29L1q1+NsOhv/bFJcz/v5Td4Kxq5LESba4TwWlrYPlJ9WR/BRt5PLj55E
	wK2/fPxgMX+N6oVStVdruI1dyH7ojxKL4lhSBe3u5y+uhk+pzhLmXT+E81B9gAflK9SJOFEWDjlE+
	Sq0B8Vqo8C8Ed9IaM02nRLrhcbfzLPBRvi2mnRbUHeJcEJUXYsketc7FdfNX9R/T0u0NYBc5sx+Wu
	dC3JTMamyptMW41hrhgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxAco-0020Te-27;
	Sun, 29 Oct 2023 18:35:02 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxAck-0020R7-24
	for linux-rockchip@lists.infradead.org;
	Sun, 29 Oct 2023 18:35:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1698604493; bh=UMyPdcE6zeOq+5y1/omox7ixHdl35HYxXzyXW/wl23I=;
 b=HXHKZtHuw2U39iDoIzCJa8IGTW0iQJKWmHlXt7LSGItWcBUbHJjykSnbdhz8j6nUvsHUSpkey
 X8X8NbG8oSgOdpAYQLBAC6AKS6b7yo5rUBli2YtrwcodnQeVeznObJLrY3XYs0V6BMFeyQFm2aB
 fqUbeef0I5aEgk2FGkMUxwAYpPdqPAO/SEgfx1v8OCP9GktclnKcHifu4LLPfu9xF/0ceUzlqG2
 mvCfP/nrxSvnfh+c2drz9vBknknF7Q5bgB5GyfF9zhFznoTisBFH57d4D2/nWHJDe/5zubphBMS
 2AWYS0ZYMYHkQgZzBxUc8bhOTUxgZcAEi9i6Sci+8tyg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Cc: Alex Bee <knaerzche@gmail.com>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, Christopher Obbard
 <chris.obbard@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 05/10] media: rkvdec: h264: Remove SPS validation at streaming start
Date: Sun, 29 Oct 2023 18:34:12 +0000
Message-ID: <20231029183427.1781554-6-jonas@kwiboo.se>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231029183427.1781554-1-jonas@kwiboo.se>
References: <20231029183427.1781554-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 653ea5cc8fe0ffca230b0f49
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231029_113458_725226_702FC98F 
X-CRM114-Status: UNSURE (   9.49  )
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

SPS parameters is validated in try_ctrl() ops so there is no need to
re-validate when streaming starts.

Remove the unnecessary call to validate sps at streaming start.

Suggested-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v3:
- New patch

 drivers/staging/media/rkvdec/rkvdec-h264.c | 19 ++-----------------
 1 file changed, 2 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index 8bce8902b8dd..815d5359ddd5 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -1070,17 +1070,6 @@ static int rkvdec_h264_start(struct rkvdec_ctx *ctx)
 	struct rkvdec_dev *rkvdec = ctx->dev;
 	struct rkvdec_h264_priv_tbl *priv_tbl;
 	struct rkvdec_h264_ctx *h264_ctx;
-	struct v4l2_ctrl *ctrl;
-	int ret;
-
-	ctrl = v4l2_ctrl_find(&ctx->ctrl_hdl,
-			      V4L2_CID_STATELESS_H264_SPS);
-	if (!ctrl)
-		return -EINVAL;
-
-	ret = rkvdec_h264_validate_sps(ctx, ctrl->p_new.p_h264_sps);
-	if (ret)
-		return ret;
 
 	h264_ctx = kzalloc(sizeof(*h264_ctx), GFP_KERNEL);
 	if (!h264_ctx)
@@ -1089,8 +1078,8 @@ static int rkvdec_h264_start(struct rkvdec_ctx *ctx)
 	priv_tbl = dma_alloc_coherent(rkvdec->dev, sizeof(*priv_tbl),
 				      &h264_ctx->priv_tbl.dma, GFP_KERNEL);
 	if (!priv_tbl) {
-		ret = -ENOMEM;
-		goto err_free_ctx;
+		kfree(h264_ctx);
+		return -ENOMEM;
 	}
 
 	h264_ctx->priv_tbl.size = sizeof(*priv_tbl);
@@ -1100,10 +1089,6 @@ static int rkvdec_h264_start(struct rkvdec_ctx *ctx)
 
 	ctx->priv = h264_ctx;
 	return 0;
-
-err_free_ctx:
-	kfree(h264_ctx);
-	return ret;
 }
 
 static void rkvdec_h264_stop(struct rkvdec_ctx *ctx)
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
