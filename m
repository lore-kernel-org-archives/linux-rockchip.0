Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22309C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 May 2022 14:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZRUiGkp/bNqhLSZAd+3rXHMqNO72yLu5N72WLB5vPU=; b=0k+7ovFCchv4qs
	z606704r3OQOteYhrQZ4jNOxMSILNCRARe94iUm92hg2arFTZEeulIqor7h4mDDIzn4du4UfaNAbm
	O0K+Z3ZWGSvpMvS7BwSqciWQVxRWxZwtjcbwGM5hQm4bMAM+t/0qY3U18ho1k3jg8kVa5aqxVxYxf
	Rs+ykUvnJGVxCe1PIyJ0AY9QmnVLLthGvLp3chJwMvAt0UKmRinw3lVK74VaO6PE6+ZnMS2kzPJx1
	a71jX/NWsDa3q3cBxv35aH2SGudBu7PdipY99ZWkbk0Afi5Cf2NarMSL3sPHFXjKKOCwJFgRtE0aa
	4BlT65BNM1N3La/U+WpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub5n-000IpE-KB; Fri, 27 May 2022 14:37:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub0b-000G61-Mr; Fri, 27 May 2022 14:32:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GLVqUfPxvSeL8oVsHZnlhvvngwvaN2p1BcCS+atYnE8=; b=WOZs0yyS0IC++TNOwB2arT7oa+
	2dC3ie9P8fqij+7xvuPPkYlO2QBebaarIyZbG+q0t25JHTVcbx5prjDz+ROCLrhYg4jJiWkNXsAyx
	4QUJkdZij61osiOrR89IPyczVGACUZ4PpyG1+BqlMC5QVXnQznl9p+KuLH21RYNEjJRXIPtBXhWKY
	hOxITMgQ7T1pJr+imfjKTrv6LNFsVYJzooWX0O1oaaCf+BPrXDUcgb5hl13NaD4yb5LeWE57JUSm2
	uEWmTq6h/w9Txo0dvdXv+Jm+pQmck8RWvGnV5VGNAnSI8b0r5yqGjxHUMh/V97C8FPfiBerCG0jK4
	4qc5SS5g==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub0U-002D0i-Hh; Fri, 27 May 2022 14:32:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: benjamin.gaignard)
	with ESMTPSA id B94681F462CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1653661919;
	bh=i4pIB3wtTE3UKgF4OYr5mvLHbEmiDbEUxKOWdftiRKc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=l4PauH2vFINw06J4V++s71prfzd1mrKjl3JPf5Up48X/Qn3hcLtIM7g28hOaS9UZ2
	 8KfzYHM/fpc5xguXIQK2i0wa3Al0Se5nLW4PSZAXZw6tsOEXvYRkRsl7Nx1Qp9VwmD
	 uJc6nZ2S0/AUZrPh08s5s6Lk6fqQooyVa+JTNStHAxr24EXv/MxnvILt8OFgl/NHgL
	 pzZRhMoFkziuVVjq/YXnTR7lo6cwla28zDZD4QT1yuhDgCBWl/+3J8kqps0UckOIKb
	 oS4m53mPsg6+XOzVlNxJkHvWkx5+yu0YWjZa3MijqLpDMhIEnrP81jRqyKSifhTYCR
	 6wL8Id/j3VT0A==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	mripard@kernel.org,
	paul.kocialkowski@bootlin.com,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	nicolas.dufresne@collabora.com,
	andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v6 13/17] media: controls: Log HEVC stateless control in .std_log
Date: Fri, 27 May 2022 16:31:30 +0200
Message-Id: <20220527143134.3360174-14-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
References: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220527_153203_094790_F47585A8 
X-CRM114-Status: UNSURE (   6.78  )
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

Simply print the type of the control.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/v4l2-core/v4l2-ctrls-core.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
index ff8a61f24d0a..c5c5407584ff 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
@@ -307,6 +307,21 @@ static void std_log(const struct v4l2_ctrl *ctrl)
 	case V4L2_CTRL_TYPE_VP9_FRAME:
 		pr_cont("VP9_FRAME");
 		break;
+	case V4L2_CTRL_TYPE_HEVC_SPS:
+		pr_cont("HEVC_SPS");
+		break;
+	case V4L2_CTRL_TYPE_HEVC_PPS:
+		pr_cont("HEVC_PPS");
+		break;
+	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
+		pr_cont("HEVC_SLICE_PARAMS");
+		break;
+	case V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX:
+		pr_cont("HEVC_SCALING_MATRIX");
+		break;
+	case V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS:
+		pr_cont("HEVC_DECODE_PARAMS");
+		break;
 	default:
 		pr_cont("unknown type %d", ctrl->type);
 		break;
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
