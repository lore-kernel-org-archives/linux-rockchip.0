Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C22BEEB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jul 2023 15:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g98iDZzVfpS2YUYO6OmbfzfmVMLC9vv43h54RVHLR+Y=; b=J4M2vcFli7Ynv6
	G146IjK7IM4tGjGjAU1q2KxKEWDkCbT+2f5YUZgZ2icaWrYDbRnicvN+0YRTzTxhAZsfdxonlngB7
	AGiGQwgbOWdRLVqoUVuodroIscY8St/WIZpNtE4V74bYNlbWqwAHRYbdI+VExWrC9p1fSGyvbIEYL
	WRL/xCIqpAgV4Rvm86jmt9klwOzDaeEqdxMBeIAR3vqmZdJqKuJpY1gj9FclRNBpOwhuyUaaRY5cf
	PvgTw+r0/Qbjf+sJYg5Ibr2vQZMTY+SqUZyDOVUMekJkBCBpTiLo6bUpkCs2LmeKD55/SvglBVrQa
	k9517gtxQvDSA9YJeyHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLPnw-004Lkz-1G;
	Mon, 17 Jul 2023 15:06:28 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLPnt-004Lja-16
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jul 2023 15:06:26 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4be:84ed:4a71:a2ea])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8AAE96602329;
	Mon, 17 Jul 2023 16:06:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689606378;
	bh=FRTZXCxmrhmbJigySAGoMfBq+46yLv4nhFi0T5kqD10=;
	h=From:To:Cc:Subject:Date:From;
	b=HkCE/fpXN6izquRUoL7dKUqu1EjdsbGb6dTk2T9oNGfO5AAimaMt1sjvo0rsXZivk
	 CXIXOE9NrFuP5WO52RGZwfeJ17ETh2YPEr8d5nNAc6BJwFqrd1sQD6551bFWnkUIPQ
	 bXHcnr81zCsh6YwrYUbrEisFgZc9fc0niAxNYOkKReHNUrOa6V4joqwpXSmS8Z44Qy
	 CiRKl5XL4WfjxOzU4bgNsjvXvbhYm3hP1BG2Fd+osNRitMu6sr12RdWsb60tpqEYnc
	 2EF+h8ZaoXoiu2lh1ja7YJEIoyduKUExGP0DoQ+ep5XGm4jnxgFJAsrIgjj6GuxhmE
	 e9kFtmK1NHAlg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	nicolas.dufresne@collabora.com,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: rkvdec: increase max supported height for H.264
Date: Mon, 17 Jul 2023 17:06:11 +0200
Message-Id: <20230717150611.42832-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_080625_525679_2B1AB165 
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

After testing it is possible for the hardware to decode H264
bistream with a height up to 2560.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 134e2b9fa7d9..84a41792cb4b 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -120,7 +120,7 @@ static const struct rkvdec_coded_fmt_desc rkvdec_coded_fmts[] = {
 			.max_width = 4096,
 			.step_width = 16,
 			.min_height = 48,
-			.max_height = 2304,
+			.max_height = 2560,
 			.step_height = 16,
 		},
 		.ctrls = &rkvdec_h264_ctrls,
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
