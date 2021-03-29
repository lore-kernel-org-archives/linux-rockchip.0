Return-Path: <SRS0=mUlv=I3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DATE_IN_PAST_03_06,
	DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6560C433C1
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Mar 2021 18:09:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 45DCC601FD
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Mar 2021 18:09:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 45DCC601FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bUaluvKG1IFc0qX3Y2Xs3GDbEB6DNStGIdkOtWP06UQ=; b=jr0EZpGDxzGAO3eYBhjiyYaPU
	deq3rImw60ZZkWS6hirM1ELo51A59qqBBAiESGgpZVm+T84+KSAzb5U9oVA4drkJG9E7UYMOldjl0
	RqTh3cB4NXqh3lMbarWdY/Dqp0JCTmY7DYdfTydMjqBe68Q6YO7VOj1FIRJEjHC8+WwL2rKKQgMLb
	/FNy0BV9iwGVGcyhtoQo65Ar14/ElcytlnzBxQFbWHXfzNeflnAWC+++EDTT9tmrgsbDH80uHgNgi
	iiL5glKzHoa0NabdBRT6jhAuVLNuivvbIN0XI+28lROBF9CbzH4Ngjx2iRnurC5bELZN0Fuu647Ah
	eoWRA4YiA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lQwKP-000zSL-97; Mon, 29 Mar 2021 18:09:29 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQpDO-000aOq-0h; Mon, 29 Mar 2021 10:33:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 210C71F45B9D
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v7 10/13] media: hantro: handle V4L2_PIX_FMT_HEVC_SLICE control
Date: Mon, 29 Mar 2021 08:57:40 +0200
Message-Id: <20210329065743.11961-11-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210329065743.11961-1-benjamin.gaignard@collabora.com>
References: <20210329065743.11961-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_113346_190528_65D4A1EF 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
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

Make sure that V4L2_PIX_FMT_HEVC_SLICE is correctly handle by v4l2
of the driver.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/hantro/hantro_v4l2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 77d7fe62ce81..0655324fd0d4 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -392,6 +392,7 @@ hantro_update_requires_request(struct hantro_ctx *ctx, u32 fourcc)
 	case V4L2_PIX_FMT_MPEG2_SLICE:
 	case V4L2_PIX_FMT_VP8_FRAME:
 	case V4L2_PIX_FMT_H264_SLICE:
+	case V4L2_PIX_FMT_HEVC_SLICE:
 		ctx->fh.m2m_ctx->out_q_ctx.q.requires_requests = true;
 		break;
 	default:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
