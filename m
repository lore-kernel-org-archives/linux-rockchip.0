Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF1AACDB483
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Oct 2023 11:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tlJnkRMMT4BOZ0lhHyP6mS/v/y/6QaatsyxzSKr7b7w=; b=y8FlU+0KgoNMHA
	ulN7VANfbRk/FDeV5PeyUZoFIY2TDrO79F+fORldUYZpsuDqbLUMFObKwzFlgG9Ia/x4GqEA/w7bT
	Dn9HgVNiMFvbohmNz1WN0uDoqmQIBN+Nv4gr84bgoQtTQLmeCp/2Ly1FyZB5PJB2WYUVx/c0y+gnb
	3xBHuUeGBn03GR7HspS72R7J0Rp+odBdecfjdOQjWZ6BSpuusyvlK0iAcjoMCHUegU94VA08DmO+k
	9qTKeBQS5oQcCHhJJkTLDXsC5suyWu2N8zAQnFDTI+S5mosfZsfbyif2Do8p+/1TSvcEgWdipR3na
	oG4BjzRy0TvbeyFQcMVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qquD6-000rRC-0s;
	Thu, 12 Oct 2023 11:50:36 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqu9p-000oDv-1a;
	Thu, 12 Oct 2023 11:47:16 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:7ae7:b86d:c19a:877e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C84C76607359;
	Thu, 12 Oct 2023 12:47:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697111232;
	bh=wcmCqoCWnm3znNuFzs/XictU3y+G/8bndqFUAwDdrfY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=S+BZk8dfAmvxBWrALG+owBFsVHdcRGqSqKhhr4l8ZcJp1jy3j5/ZUKIYroVNVwzsn
	 z6kFVAryYiu2EaQruCBoWMD/SXFWFOe+UF7YIFFpYcOvXG/J+EVxYBDWqZa6s/SqaZ
	 5N1MiXSV2PftsdU2s4KSkEMyYl0duJe+XP1UPfAEbCpgMtaAyBjc6geM9EXLXv3cG8
	 ctfEu1WgQnSoqB1xwPGB38DJlzFQCDU+vqEjlp6ah4bmHnL/731BtJXW3ejCsSHJpe
	 ACerqsYA6wOyCobEUO9Bahwe20vDZRLw4BSojKNI3EeWt1ks1PWi2neOlITQ9FLDuV
	 3zSWibJQbL9kA==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	ming.qian@nxp.com,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Joseph Liu <kwliu@nuvoton.com>,
	Marvin Lin <kflin@nuvoton.com>
Subject: [PATCH v11 42/56] media: nuvoton: Stop direct calls to queue num_buffers field
Date: Thu, 12 Oct 2023 13:46:28 +0200
Message-Id: <20231012114642.19040-43-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231012114642.19040-1-benjamin.gaignard@collabora.com>
References: <20231012114642.19040-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_044713_767538_19C50482 
X-CRM114-Status: GOOD (  10.77  )
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

Use vb2_get_num_buffers() to avoid using queue num_buffers field directly.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
CC: Joseph Liu <kwliu@nuvoton.com>
CC: Marvin Lin <kflin@nuvoton.com>
---
 drivers/media/platform/nuvoton/npcm-video.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/nuvoton/npcm-video.c b/drivers/media/platform/nuvoton/npcm-video.c
index b9e6782f59b4..f9b4e36a5175 100644
--- a/drivers/media/platform/nuvoton/npcm-video.c
+++ b/drivers/media/platform/nuvoton/npcm-video.c
@@ -393,7 +393,7 @@ static void npcm_video_free_diff_table(struct npcm_video *video)
 	struct rect_list *tmp;
 	unsigned int i;
 
-	for (i = 0; i < video->queue.num_buffers; i++) {
+	for (i = 0; i < vb2_get_num_buffers(&video->queue); i++) {
 		head = &video->list[i];
 		list_for_each_safe(pos, nx, head) {
 			tmp = list_entry(pos, struct rect_list, list);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
