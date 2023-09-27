Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E23CE82CA1
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Sep 2023 15:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/YS0qMWvDZKO1jBcZVFsFdHG9fykTBccGixP0YDMx0=; b=n2kqTB0dl8YgMg
	7x/tpyt2keisosWGHLChT4jEH0dcYYlHz68CgC4Jt5Iqjcd8hyW7grgG9Dwy0m/xXXOc+L8CkESHf
	2YLRNvyYCJETDTOiIJeoNP6MZSDAODWyawUnf8oV6Drc8CrIFM7cPjg38kRMrImW8w+pC+wtAlL9G
	5wfEOTWpXIHj4uEZKw+33p+Pwu6+Qj8kj91U7Xf3FB44T4DZTXrJtLZeayOo7clheNn3Rua9mnSQX
	jVHoh0fc3J9UeHb7ShrkrIw4FwJdbbAoa71LH8kq3d6To5BHLqdSMAuXdmn93+/Le+TvE5Zk+xMpQ
	tyKgjV1oPNxyv7d3L5Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlWaz-001H8i-0j;
	Wed, 27 Sep 2023 15:37:01 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlWaD-001GEM-0b;
	Wed, 27 Sep 2023 15:36:16 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:672:46bd:3ec7:6cdf])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 296086607335;
	Wed, 27 Sep 2023 16:36:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695828971;
	bh=zXmFfNU0uMtsKoYh9PP3wEGhm6Xs7lwp8Ba27axk8pE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BOQtuDkMoqtsOACLQs67RS/PzXJb5sAPVe0BvP7L3NBGr5awaCxUhaOTXaZ5/Wqrk
	 6QjnDL1a6U02Nv8XVHibFLjrjOb1oHop8q/X17tzszTjAs7Jg6XkVhwHuIClrAgHsh
	 X2umz2XaAltPAbCfS0QYfvi8MyrqVp0mUmC7ItAGBteZx2XQNJHOsxdTZSsoXlxs9P
	 9WOvGb80FDe3h4IgjJcdfeObMMyFD5cuj6GccdEFXqSTWnhLF2tnNzGB1bNogM+G/O
	 sjZTEXwwXBZa2SA81nvFkkV+LaGvCWGnYCCLGU+hRLuzy/0fDLbnTDFDDvawWZh3Di
	 XKHGXATN5662A==
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
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v8 09/53] media: atomisp: Use vb2_get_buffer() instead of directly access to buffers array
Date: Wed, 27 Sep 2023 17:35:14 +0200
Message-Id: <20230927153558.159278-10-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230927153558.159278-1-benjamin.gaignard@collabora.com>
References: <20230927153558.159278-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230927_083613_389142_7C8DF21F 
X-CRM114-Status: GOOD (  12.08  )
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

Use vb2_get_buffer() instead of directly access to vb2_buffer buffer array.
This could allow to change the type bufs[] field of vb2_buffer structure if
needed.
No need to check the result of vb2_get_buffer, vb2_ioctl_dqbuf() already
checked that it is valid.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/atomisp/pci/atomisp_ioctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
index d2174156573a..4b65c69fa60d 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
@@ -1061,7 +1061,7 @@ static int atomisp_dqbuf_wrapper(struct file *file, void *fh, struct v4l2_buffer
 	if (ret)
 		return ret;
 
-	vb = pipe->vb_queue.bufs[buf->index];
+	vb = vb2_get_buffer(&pipe->vb_queue, buf->index);
 	frame = vb_to_frame(vb);
 
 	buf->reserved = asd->frame_status[buf->index];
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
