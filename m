Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34143CCA47F
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 08:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZRUiGkp/bNqhLSZAd+3rXHMqNO72yLu5N72WLB5vPU=; b=QKo+SK4JOC2/Tc
	qBQ6o5bFMrehTIthYSR13Obc1Jv4DymdSpiysPATrqjuszCEl3EGwBbEGOhZjUT3fLzFFiTfpXHMu
	lEzotBu+nRmMiU6/2/8kYgBtvdyweMC50Lzu640EcD2ndD87ayK8zYc8yTVlnzsRV6xR5qjlDSRFv
	ekarEftw/l6gwTLOC8wN3/XdtG4VHBjcN+f1K/sRjRKPPCG1/cVm1KuBI8c3QBE4W25L9bRXf0X11
	1esk6ZAZEMSdWAWe8kU35Oy4OWdASNLa8bAKd2bA+NMge96/W40yhTkOjFr3cQ0czTc13DlpzC/T+
	ikySK7Q2iJSO3mUVPDbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o128b-008LZW-RD; Tue, 14 Jun 2022 08:43:01 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o122T-008I75-7a; Tue, 14 Jun 2022 08:36:48 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4a7b:8d3a:acaa:ec46])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5E32266016DB;
	Tue, 14 Jun 2022 09:36:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655195799;
	bh=i4pIB3wtTE3UKgF4OYr5mvLHbEmiDbEUxKOWdftiRKc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KUetNPpgVYhS4Uj1WiwTNd8DDtzoko+Tn28YFXawTJfgNl6WAM34Lxf2bZ4RriGuB
	 0L61gHJpQ2VKd5/OikKpJ0/cpYBeI3iaA3KQRUkngjW3hj61ApPxNADxXh23oz4isG
	 ot+PanyquJLA/1rpS0XgUkPgKSGrIzcwRTWy9ObW/zdU2CPziYnqR1AqgIJoLRfHG1
	 dZyLybS1CUAIb1++892cGxKYd9R2rIKkjevsuGnS+AbvHH+w93Pjp42vogev37/V71
	 GPkadm1F9VE65HGe2bQFnt+sn79aP7i7P1Yaa0VPuX9RokSAYWCyaFx8KM4ulE9jOk
	 MUCmdkPLwfYgw==
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
Subject: [PATCH v8 13/17] media: controls: Log HEVC stateless control in .std_log
Date: Tue, 14 Jun 2022 10:36:10 +0200
Message-Id: <20220614083614.240641-14-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220614083614.240641-1-benjamin.gaignard@collabora.com>
References: <20220614083614.240641-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_013641_458520_9D7B0104 
X-CRM114-Status: UNSURE (   7.44  )
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
