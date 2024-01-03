Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A04EAC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jan 2024 19:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k6h7TEqgKQXdAzacAS1QnEnEuyOOMdpof6EodLpfrKE=; b=Gcef/yk7m5gP5c
	Hv1JNwTz24BM+J7bdfwI/nPh4znijaEH001UWD4dM1bY8DMkqAJLMyCvDcZITtiAXjHafZJEyhnR5
	WUkENQw3zof3mRIVCsg6vFzSO/OclUCmQ1l69nRfbKMrfEeCxAJCpAIMnjQ2XR4nibrJgywmQBuMd
	4UyRKM2pVbimuw69m5r8zqRbhC+lKZKrwRrB3zTizRYnNSnb/VsNMolxtQhXWfj7RtKGQKMw/dsqw
	DCssRnf1UVCvg6ViXPwZ4pgxRp6QlxtGROyPjATBayS4j0JrtufHOQLR4abmjLuy8vDAV1cP/10zh
	hWtO6xjP6/bZqw2Bts+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL6iP-00Bsf5-2H;
	Wed, 03 Jan 2024 19:15:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL5kF-00BdyB-11
	for linux-rockchip@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:13:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=Ab5XaTGPq5S7G57L55K1MrUfnrCLyEBcbZWZr6ZrVTQ=; b=jvKneSSrCYl7LphJ1ypGTOMMED
	tAIKTChqjS8+urN3TGvh5eEKkut10H9J/+1LOZUBKpabqS/H9vr5azMPHFK5OI7VmDvFp2m7YKtXa
	iPQX2Pi3ds1pdEjMztygshCXEZVc7X9bHTGE8zRWnKnlIAK4UqQ1IvBd7HvaAuqrSlG0tPdAvURZs
	E6ILnUiAmi7S3/Abiy08xC1QFMalY9tH3ChyBEa4l/23G5HnS2Hbit+HDyY0KByDci2h4Ozz8j+z1
	aVarI1M4hUKEbL+V6nob4Lnd2KSNagASb9ftICmRmud6VOP25hIoNa4ibyYeNWTnoZHYjkDvm/wjI
	DKznPLpQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL5k3-005dSk-0Y
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Jan 2024 18:13:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1rL5jl-0004UL-D9; Wed, 03 Jan 2024 19:13:05 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1rL5jh-000Apa-NY; Wed, 03 Jan 2024 19:13:01 +0100
From: Lucas Stach <l.stach@pengutronix.de>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de,
	patchwork-lst@pengutronix.de
Subject: [PATCH] drm/rockchip: analogix_dp: get encoder port ID from DT
Date: Wed,  3 Jan 2024 19:13:01 +0100
Message-Id: <20240103181301.3339595-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_181329_573950_3ACB71C6 
X-CRM114-Status: UNSURE (   8.67  )
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

The VOP2 driver needs this port ID to properly configure the
display data routing.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 84aa811ca1e9..cea8d1af0ec7 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -344,6 +344,9 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
+	rockchip_drm_encoder_set_crtc_endpoint_id(&dp->encoder,
+						  dev->of_node, 0, 0);
+
 	dp->plat_data.encoder = &dp->encoder.encoder;
 
 	ret = analogix_dp_bind(dp->adp, drm_dev);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
