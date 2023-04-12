Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEDF8C7619A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Apr 2023 13:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPunezC9KJeQd7fXmsSivSqawT49gB9dMo1QHYVDngg=; b=TW9aDyW9XjsmhB
	/kivkVNft9VTEHFYygMpz4JKDSewomlyXbj9Gg9ZHgMHFRC6hsAx3aqeNLdRJ/LyiHvNMWYjP+RUh
	0AYAckjMkpNd2EWoICD3XaLPDh9lgFR4JK5VwbF2M5BG02T9gldAgxgYVZ3PI42Wuq+7kcoJDglGQ
	43jgPpBa/fx8Od2+518jiiLTiBC5mCb2lyIEgkxU0tchWdCi4++aftaj84BV7gArhOBsBMj+18UR/
	Gwll+O7M9VcbmuujamWvFBcUf0WSPZE5NL4sV08pRKf3GgOrNp84qcpgXrwG1ITrHyViXTwoPI9+q
	wRVj18GfKonAmELW66HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pma5Q-003FJN-27;
	Wed, 12 Apr 2023 13:00:32 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmZ62-002ytw-04;
	Wed, 12 Apr 2023 11:57:08 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:c2e:89bd:4b8e:9e98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 84E266603216;
	Wed, 12 Apr 2023 12:57:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681300624;
	bh=7bTQ885Lf7fJe0LhySXOychmfiOBST4o2pY/rZ1W8Qk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Biu6xNX8ak8hTu1MQB+uTsePEPlYxmKvP2f54GSbyMjUgt8zxGNJ1s3sPFe9kqFts
	 IZjluMjTWwiCA1+7FUO58gRDVF3ngQG0UKGbEZ+4JElO+RI2X1yuj1zmevBTvuHfxk
	 rQrMNqVE1NWnlhb14k7AqXgg4eBsSZO5Fo+tz1PSxIpaUNJmpcvAypkyDn6Xk2zbtQ
	 aNK/b0OQk91magqhr5v3sSTb+d0RAhfTOSEJoHsZGX4u/bBhkRBOFtR4KlYjyy28GU
	 Od/7jUK5FxyG/fXqw/TceeOHPjBE6ulUzNhwq969/Er2t3S8GNQ6pBl4iKQ28OgqQO
	 yiRlB+ROnCqCg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v6 02/13] media: AV1: Make sure that bit depth in correctly initialize
Date: Wed, 12 Apr 2023 13:56:41 +0200
Message-Id: <20230412115652.403949-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230412115652.403949-1-benjamin.gaignard@collabora.com>
References: <20230412115652.403949-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_045706_186542_ECC66B69 
X-CRM114-Status: UNSURE (   9.81  )
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

Make sure that bit_depth field of V4L2_CTRL_TYPE_AV1_SEQUENCE
is initialized correctly before using it.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/media/v4l2-core/v4l2-ctrls-core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
index 9fd37e94db17..a662fb60f73f 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
@@ -111,6 +111,7 @@ static void std_init_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 	struct v4l2_ctrl_vp9_frame *p_vp9_frame;
 	struct v4l2_ctrl_fwht_params *p_fwht_params;
 	struct v4l2_ctrl_h264_scaling_matrix *p_h264_scaling_matrix;
+	struct v4l2_ctrl_av1_sequence *p_av1_sequence;
 	void *p = ptr.p + idx * ctrl->elem_size;
 
 	if (ctrl->p_def.p_const)
@@ -157,6 +158,10 @@ static void std_init_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 		p_vp9_frame->flags |= V4L2_VP9_FRAME_FLAG_X_SUBSAMPLING |
 			V4L2_VP9_FRAME_FLAG_Y_SUBSAMPLING;
 		break;
+	case V4L2_CTRL_TYPE_AV1_SEQUENCE:
+		p_av1_sequence = p;
+		p_av1_sequence->bit_depth = 8;
+		break;
 	case V4L2_CTRL_TYPE_FWHT_PARAMS:
 		p_fwht_params = p;
 		p_fwht_params->version = V4L2_FWHT_VERSION;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
