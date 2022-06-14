Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C30B8C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 08:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZRUiGkp/bNqhLSZAd+3rXHMqNO72yLu5N72WLB5vPU=; b=eQjGduxgbFzsvY
	njLbH/zWKs/NaLzfrL6Mo9TKvOqAH7Xr1VBT/fsH1T66+7DM69i97m6wgOJ04CeFwUtCfGbfrsQMD
	NqN+JCTa3b4fw5oU5+QIMxjIJPIfwAgBwPOUDDem5rypOic/n8lCkCT3odJgXSMX+5ZqIeRrkxaAM
	7HAGwKtG6d4eqY73ubPJvuDgMBG9h7T8UWdOJVskXHozY1M8dBosVQ6ayZno1rAIctbLBFQPWt0XC
	BhaynTEKqK9D79TsK0YBVKV0XqS8PvLq5Cwnb7NHVgK8VJ7hvddlpv8x/t6GLxEcgS+gtb0tHwCwd
	lSWPKPL52XlS+na8eI4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o12IU-008Qbm-9R; Tue, 14 Jun 2022 08:53:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o122q-008IMD-5T; Tue, 14 Jun 2022 08:37:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GLVqUfPxvSeL8oVsHZnlhvvngwvaN2p1BcCS+atYnE8=; b=or1JtkeYs9mHx9ZYFTSlzy8ZUW
	aO28CMdAuTcEZ+RduHnscd4/pDSwec/UWglZtSMVuLr9py1Q5/DAMxWVlUNjjF3oRPCuDrxhmx5+p
	F/O4mMgnPhPkgK+CnH5O62JyFyk6I7AuwfsBAMIxBGKN19Ns4sfBwLpWRI7JM2Mg44BDuaILZ/WOB
	1nSNt2GHbjslfw+2C4g8FeN5Vwmv9tudzpbOu0sChqYM76ymW9fRkCEeYnl+xsN6cAcy13e2vIqFo
	2hc6Glw7sd6O348OiTcgpIT0w5RRH3HL8nZvG7fEK3Fv/NWRs0rHWJxn8A/lTn1h8S5GSp2Df7bRi
	f/vuyhhQ==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o11JT-007nUT-Lg; Tue, 14 Jun 2022 07:50:15 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4a7b:8d3a:acaa:ec46])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2595D66016ED;
	Tue, 14 Jun 2022 08:50:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655193004;
	bh=i4pIB3wtTE3UKgF4OYr5mvLHbEmiDbEUxKOWdftiRKc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NOPVihPr+5cKe9Rp6AsgTBlgNTQOjYLl24bRlzE3uVb8aZQJVXE7mNlTHZtc7Ti/u
	 qLKgsgBXekfD+H15Cp1BRZZyUzIutpswvJunEQj8C8CA5Z5+tZSJoPe+AA0fvMmHaw
	 2/N6/oCSicUh8H1J1qTsh1+2dFpxerkvjGtzO+uwf9U8nz0Pm/fdonezJsBxBPsHee
	 Q6gfwQ8uwt5pToBpA25O05Pm/az00TiOHsSPGBe2IFNSp9PByLWu07TSRnpxO9BWEd
	 0V6VHFhUL8AvdTaaocPaNC/I1tAs1ARQrMKiXL1wmVcHY8BHIO/ps1plmD2w+xZpDA
	 9vZv9gMrPSlnQ==
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
Subject: [PATCH v7 13/17] media: controls: Log HEVC stateless control in .std_log
Date: Tue, 14 Jun 2022 09:49:43 +0200
Message-Id: <20220614074947.160316-14-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220614074947.160316-1-benjamin.gaignard@collabora.com>
References: <20220614074947.160316-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_085012_052640_EF36803B 
X-CRM114-Status: UNSURE (   7.29  )
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
