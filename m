Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E31FBC43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 09:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5di7RCy6KSEEZ58/t8C+E4m7pWZ3twHZIq+V9lLSJC8=; b=A5TAFqAfhPxzjD
	G6I6MzHu9HZx4iy4uBwGvhMHSIu2kmsfYQR+MVoNulMs3Ii9ahJT/jS4tCu0qFCAyk0aEMCHy9N4h
	USfMdgWjq5oOHh6BpiwxpkHvchoTq1KXL3fXJCCRawB84+O1piUF3cFrq+77sSZ/EBHnH0fcQnsGY
	E/u/XFGmdhSa1TrKadz/WvNxZ5fqJDt2DuIHPpPG+tSaJ9/xCB6yJ6pMj5qktZ/JEFpCrnV18zqNM
	iaz+mOEV69CkYSAbcopNpgT8bYR6lw96eEoCWK/btKdpSJank4aEBybBOAG2cLnS0LvVUx+EzdPQp
	ln7SMNG3ggZyPnZUnslg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91aj-007tjB-99; Wed, 06 Jul 2022 09:45:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91Ur-007qGf-9D; Wed, 06 Jul 2022 09:39:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=CTmAgIJGTtfsUHXDU02EYMoq/tDhXPZyX5luuIArlCU=; b=NplURvVseMYnlo9HlIqWc8Ao04
	g8QNEyv1Cw4/krcYDQ73+d3ZcV+fyCLsjgyIABaA87eTrc59gX2kOxv4YRTcjMHqXVIebt1qie/uB
	GxOHrJdDXRXJwdmY5zW8Yzej8Sed44Hml7KG2yj06iBVUATw6X5e/WdPqUKbkm0w3ueAZ86iUc7a4
	7bY1mClswDuTzqqEr+0mLNRSHvxuY2rgzV6tKQB4sfA4vENy/e6chPW92jle5iCYE4k64Os8YVUsP
	vYNJmzHn5ORRZGGyi62UPzMupZa9uvyBe90vs2dq8POqV972dcv9IlmDZNF7zQ+VuHEhL+BWVMD8r
	m9IAg+8g==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91US-000Nzh-22; Wed, 06 Jul 2022 09:38:52 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:3a70:988d:42ce:f5cc])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7896F66019D2;
	Wed,  6 Jul 2022 10:38:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1657100300;
	bh=63DK0QU2jOvymNfj3HqpMerTR1+oNui+5easuOdNoyM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GKU1gKM2NUa1vMlUP67CfgQVQ71YeTLpCq2cg/hSpnLfz5DN4zFIQUcaXMmYdCwy2
	 v2IP4QTrc97Z0xvsYpflk0hA0AJ9EI0+xZPdKeJa6JmDUrnf8Bc6hxwpubPlQM8r0l
	 IgaEi/vX4eMKYBm9NIrXH5ZFgwSAEvwZMDHD5nU+YNqvqQ+B0j5yerb8AeZeSXCVkQ
	 2f2uzRjn2SXj/GUNONBdNbXsVbfOTD8ZCnHZp0YxOvYrSDzPc4K3UAQPG9aIfl7HMX
	 MT9n/Fv9usAAuQIQdN9Tb56e54qbglOnrn15YL70ZvJZOMw7TAFGAWd6VGIRwbzi/a
	 BRvUfwZp0Vn7A==
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
Subject: [PATCH v11 13/17] media: controls: Log HEVC stateless control in .std_log
Date: Wed,  6 Jul 2022 11:37:59 +0200
Message-Id: <20220706093803.158810-14-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220706093803.158810-1-benjamin.gaignard@collabora.com>
References: <20220706093803.158810-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_103836_823660_E27E418B 
X-CRM114-Status: UNSURE (   7.64  )
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
