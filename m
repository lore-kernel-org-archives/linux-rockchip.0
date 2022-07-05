Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AB4BC43334
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 09:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5di7RCy6KSEEZ58/t8C+E4m7pWZ3twHZIq+V9lLSJC8=; b=dvABXjlE57k58n
	SJkIcwnxC2NfoAVYSnZlMuJVcYN71uf2JnCv1CaefGiw56vhKCI+RT1wwZeOziF97eMXxnxlI+2cR
	8bdFUsQVKQ4WKoJ+X82M5Sqdu0o4OdJnbnJzqjY/rZN03Ns4tVA6Vc4AxHp5+UtR6UHqN2p80R0Vb
	RUO/H8QMj2SO3M4GC4w4ghPYPQW6OrSoa6z8vd+1tOvO8PsSUi8S4b8RVbiKgyf8wUgew1wDuuLek
	ytGV0PqyjZP7FQOpEP/SVQZd7iLCMpKrceXfDNl6BP1zW8SXt5HSK57l25W9PxgRCZeBUN+p6hjIg
	DXzTwYInzhE5x6CD2RjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8eV3-00GUL1-RB; Tue, 05 Jul 2022 09:05:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8eKj-00GO5E-H0; Tue, 05 Jul 2022 08:55:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=CTmAgIJGTtfsUHXDU02EYMoq/tDhXPZyX5luuIArlCU=; b=HuSwMg7DptltdJmglTfbVWSLSo
	m7PYfQps9XoDQhwJi66/7MW0fSrPt95sgrWEGn9d7txDLgDL+n7LaDjrZuWBpb+c5mFm/43FG/uPh
	hHa7a2DWbC8ihNTQRQ3+IGKgVVLlQ4qz+UFol/MINRA5HDHR84M70yl9pLW1Oe6uxcxtSjlHlWMJ4
	s/7HRbP2MZciOqVUXYxYX4luL6MqDWhEURjzWM/NOx9Ay0XJD7WeO7SGZCHPvRCPPxnG6FfwjIpFP
	wQnGYjQ3FwFunx9Qv8p/6f/JCjH8JVMyYLfHCpG09iFqtul7Q8Lc0Y8420ytpGnvp8lUW9OiWLq++
	JUl7ZewA==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8eKS-00HTnD-Ef; Tue, 05 Jul 2022 08:54:56 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:6610:ee84:2ba:7917])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9BC2E66019C7;
	Tue,  5 Jul 2022 09:54:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1657011277;
	bh=63DK0QU2jOvymNfj3HqpMerTR1+oNui+5easuOdNoyM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hHWOSvfW5+K+/1IFuDV1T5S10z8rYT+V2Cn8JL3Bb3sbWH/89c/uIrPaxw0hWLHuK
	 3WNvD/E/LpSpRK23OewfuT7rm/epg/Qy7lQzWabghUPKtjRZqN+EMEnmLyo0kaB4Zs
	 psyASXixBNBjoEm5YYM0cO4pkcsdj6HtdhvKhPRNhcDfg8x28WsJT3ULTah1qsLOin
	 rl1K6rX9GPapYO71i0Pt+hoCHE5P5iMXhPFAkFyoL1GQB7pP2zJnDWxdL5LuKtYtkm
	 pDG9wGYnvmejCLYH737aVuGQQIDE7nTbQZ525UhUSuz1tjw3p+2QQ70wAd9u9JYHwX
	 unn/iPmFEXI3A==
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
Subject: [PATCH v10 13/17] media: controls: Log HEVC stateless control in .std_log
Date: Tue,  5 Jul 2022 10:54:16 +0200
Message-Id: <20220705085420.272912-14-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220705085420.272912-1-benjamin.gaignard@collabora.com>
References: <20220705085420.272912-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_095453_793023_C97CB080 
X-CRM114-Status: UNSURE (   7.71  )
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
Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Jernej Skrabec <jernej.skrabec@gmail.com>
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
