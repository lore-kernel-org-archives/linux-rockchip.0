Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 385F9ECAAD2
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 16:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+yw0FepyFPPxPo8VUn4qjPAp5M2bUxhDqlkYX4Kt7M=; b=KQByd27KvUXgGC
	uzqzvXvcDaIL4apYm0CcIkcFnHCob8Afppof0Id4Wbv1AFHnDdTkVyVO5LHdn8CtunkSKa7nAfQtr
	G9CGIVDUPpHrzjNY4r6mC8usdHQLtv83UOJNjgc8l0VPiulP9i3hIoUsbG+iODd1NQM3FOVAypvRk
	YMwD6AHwChaTJeqjikbhIAG7+UThR7LNUzOFqMns4FsY+O6WfQHDboljy4p6JpEoDSfj5tAJsrSCG
	PoISZdHHm6nc0WbrQNYMpXRTvDx78mb7KbIkGbEehqvQQsDlp1MvFm3YrsghTXf39nwbGxEopDOsC
	EzBdxEN6WdPQE3g0Atbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oShnd-00Bp38-DQ; Mon, 29 Aug 2022 16:39:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oShWq-00Bi4A-CI; Mon, 29 Aug 2022 16:22:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3dHdwOr6Fy6rNMey1AdMypO76cRPxQZpmoQKf6+wF10=; b=RktDMOqLNsc55Ji9yw7Kpl2M+I
	wXmSLDXIFxcUGAnMITfl+Xy4usVjgpH89DkNb4NUNE9IUhdv5WCdcFQTyF0G9cFOMTZosdAgU9GWA
	EUWVBuzpM/Mdulun67h1zzTZ2YOoSOMo0QxAGbKZTW0QrncJ8363ifMENb6VDDjiEa+KLt6zGzkF9
	PgpEQ3PX7Ade1fmvW1Iso12mN6ZmfgtcIjxMUbD4U0aGwQjq/uBWzVSyL721qBazvu9Br9PRufwP9
	SouXUWoo0rd85x4A/d4x3ggzgL1Ev2MB8KHE6ODvwxbQf1SPiFG9hE7BTwBOSi0dEP5O6yNAn7hjn
	BdIOWSqQ==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oShWl-007Xli-Mn; Mon, 29 Aug 2022 16:22:21 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:3d67:aec0:f788:1143])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 068816601D9F;
	Mon, 29 Aug 2022 17:22:12 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661790132;
	bh=jZ9NFVqXi4FQciS5KmPkM1ahnD1FjnqqnfI6QhWlEm4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cf/AEloyBREGq4t/Ig1uPq1ztSBRbE+Ig1ZC6/54KHIiFeIEg3wYhnCwbFlTp0/Zf
	 ti9D2TrdsQar/pwDzZdzJ3FuZB0YML9NEv+/3Azyl/vq3Gd0PPuftiG2nU7QtohKie
	 eWkUycBI9Up/bjEPhjnhgmhE2ZmPnc9SNIKzOXaMq95YtiA3RIfT/Lv1++cGdsHajO
	 bKTP1clnY0JTKr7XuH2snFYb4Ug92iyqQaL+cfZ0nrvgGyv0sUHPzIVXH3kNm952EI
	 DuKsUrF5d1SDKrNI+1T9XHGaIyKMCM4OuChjJrFGjwHeSE0Hamego4BJaBY4qmNjD9
	 85okJvjK/b4Gg==
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
Subject: [PATCH v3 6/7] media: hantro: imx8m: Enable 10bit decoding
Date: Mon, 29 Aug 2022 18:21:58 +0200
Message-Id: <20220829162159.881588-7-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220829162159.881588-1-benjamin.gaignard@collabora.com>
References: <20220829162159.881588-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_172219_925401_9E7C2B52 
X-CRM114-Status: UNSURE (   8.35  )
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

Expose 10bit pixel formats to enable 10bit decoding in IMX8M SoCs.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
---
 .../media/platform/verisilicon/imx8m_vpu_hw.c | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/media/platform/verisilicon/imx8m_vpu_hw.c b/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
index 77f574fdfa77..b390228fd3b4 100644
--- a/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
+++ b/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
@@ -162,12 +162,39 @@ static const struct hantro_fmt imx8m_vpu_g2_postproc_fmts[] = {
 			.step_height = MB_DIM,
 		},
 	},
+	{
+		.fourcc = V4L2_PIX_FMT_P010,
+		.codec_mode = HANTRO_MODE_NONE,
+		.postprocessed = true,
+		.frmsize = {
+			.min_width = FMT_MIN_WIDTH,
+			.max_width = FMT_UHD_WIDTH,
+			.step_width = MB_DIM,
+			.min_height = FMT_MIN_HEIGHT,
+			.max_height = FMT_UHD_HEIGHT,
+			.step_height = MB_DIM,
+		},
+	},
 };
 
 static const struct hantro_fmt imx8m_vpu_g2_dec_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_NV12_4L4,
 		.codec_mode = HANTRO_MODE_NONE,
+		.match_depth = true,
+		.frmsize = {
+			.min_width = FMT_MIN_WIDTH,
+			.max_width = FMT_UHD_WIDTH,
+			.step_width = TILE_MB_DIM,
+			.min_height = FMT_MIN_HEIGHT,
+			.max_height = FMT_UHD_HEIGHT,
+			.step_height = TILE_MB_DIM,
+		},
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_P010_4L4,
+		.codec_mode = HANTRO_MODE_NONE,
+		.match_depth = true,
 		.frmsize = {
 			.min_width = FMT_MIN_WIDTH,
 			.max_width = FMT_UHD_WIDTH,
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
