Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED49AC5478C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Feb 2024 17:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tkGq9cs7rGcpNZh79mSJTzdN/gHGQ2PE3gh4l76V0I=; b=FmxwWANveZJtqN
	oRRkOUi9mLT6gkuBn63E9X5Utd7ipeCwK1ggvvxErNAUJ88kW/J/h+lNuZktNeGYR73+zR5qC48Ra
	AD2xSLy9F6SHZ8nLeI97QDI7TkWDIOEJV4kEJ1T4MyrGtFcjxQ+FJ4saovfu4NyOznrlV914hBTDn
	TRb+dpAGXvy2MWitbUSyVOZ033wdrlg2byDoY5P4ntxfzNtIRkQQGON2ikGAiVyiRPiqRY0qTeJBh
	wgQYDwQRPzdO3eMaqFlFYX0ix+SfVziHXhvnPoz+r3E7/3j2xp7u5CMMLCZnejVRaSGJiRjI+S1Bm
	uyk5IMTLSFs9OJBQxGJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcpxn-00000001pX6-0cXD;
	Wed, 21 Feb 2024 17:00:55 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcovu-00000001aDG-3K3J
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Feb 2024 15:55:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1708530889;
	bh=fp7Af2JavyVIFNlDhfBtLvTU8aA7T4w2d45EtkwuBHY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=yjLWpG6EANx78oYE9sH5do7GUj0U7n+V9eQoJ6/nfjsLYYzECcc6/ECZpDD9kqRtk
	 +byzVefibEpLtL+FIeZV1iV6rLOzAIP0DuDL5f7lrNH4A3W9gTYUtqdzXYuvNTlkZv
	 7ltm40Pw0xAGZF79l1BR8vRBUR3FDrt2s2W4nT0L8CSALgnY7CW5xXfgpnD0NS5EnL
	 1UZENZGIDlsBycNcwrRDG8aYJCdib2Tyg+usqMjgRCqnm6oyFy5rYc2TVSNU51tjKf
	 NwJqXMS6b3P/5Kvc/F+yRC4kZbj3zB6+eSUBdikETFRcr1OkJqIofofDORBqvK9Vuy
	 JAopl0JowHDdg==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 967903780629;
	Wed, 21 Feb 2024 15:54:48 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	hverkuil-cisco@xs4all.nl,
	nicolas@ndufresne.ca
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v20 9/9] media: verisilicon: Support removing buffers on capture queue
Date: Wed, 21 Feb 2024 16:54:35 +0100
Message-Id: <20240221155435.100093-10-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240221155435.100093-1-benjamin.gaignard@collabora.com>
References: <20240221155435.100093-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_075455_107054_11D2A2CF 
X-CRM114-Status: UNSURE (   8.02  )
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

Allow to remove buffers on capture queue because it the one which
own the decoded buffers. After a dynamic resolution change lot of
them could remain allocated but won't be used anymore so deleting
them save memory.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 941fa23c211a..df6f2536263b 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -756,6 +756,7 @@ const struct v4l2_ioctl_ops hantro_ioctl_ops = {
 	.vidioc_dqbuf = v4l2_m2m_ioctl_dqbuf,
 	.vidioc_prepare_buf = v4l2_m2m_ioctl_prepare_buf,
 	.vidioc_create_bufs = v4l2_m2m_ioctl_create_bufs,
+	.vidioc_remove_bufs = v4l2_m2m_ioctl_remove_bufs,
 	.vidioc_expbuf = v4l2_m2m_ioctl_expbuf,
 
 	.vidioc_subscribe_event = v4l2_ctrl_subscribe_event,
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
