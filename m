Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C27EC761A6
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 10:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTzpqL5y1gvh2tpcuH/T8RG2lIEenk33rH+Q3ktLBgc=; b=PgfYFMbcDgQSZ1
	dYctOhkfhjdmwV9g/bTN3gQCsLYlHAlMd0jKlaAJvkDzJ552MwUTNG64oeEw0Yua6VpJ7L9OYa6YT
	Wk94I4YNe20aUFlC6vvkHZ/+U/iYGZJVR7t6LJKk81EbheX+TxFS6WDiPXU8grPnhYZvhvsEBFJGt
	g4gieuv3Vg5NH4YqL0a2FWe6A8r77Fhe+j+F4w7z5NUPselAXpfcQD8E5NsfgLjRP6tyqwZfsncNR
	hr3qUww7tfWa/IrW5x7xTWm0VYKIzm4U58ZlMH1VqZ7doYfsduUads9nb6o2GzR+54IUKDxZtY0Pt
	GUah72QcAu1+Wo89FyKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peZGG-00C2dB-1p;
	Tue, 21 Mar 2023 10:30:36 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peZEx-00C1in-2u;
	Tue, 21 Mar 2023 10:29:19 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:f5ef:1040:e3c1:3d00])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A3E0066030EE;
	Tue, 21 Mar 2023 10:29:12 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679394553;
	bh=Iem6HuAbjZeNxfcZHAnfFZWjJnJ1iJw/BVVWXexqEJU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WButoN+nNQSgZEerfDe52xiPWzHegqd9VQfxTzPkPgVJ/nAPKuov6Ae1l+BdAZDbr
	 pc4b0sl58f/TaeR2yao2PDQLC08h2ldDoeTqn9LN1ahRrqK2ZoVDLklFZ97+UdZwat
	 tfUBjdmxhrIhJCGrTJ6/sldyl3qieqNsbOijAx3fUvIVDqwE8Z1/15ZVWx/UGC3xF4
	 qcxN9/XJvRmDmywniptzSy00CA6mpAPbMIo9TpMhG/uh1alnO1YEeVo1jgTQ4E0HL5
	 XSeEHEuEwcXnBltev8vDXcUCE1BRyMdC8vqzTsDBFBhWUaab/3POgr65OjHNTFD9n5
	 BU6MGHEEVKWMg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: tfiga@chromium.org,
	m.szyprowski@samsung.com,
	mchehab@kernel.org,
	ming.qian@nxp.com,
	shijie.qin@nxp.com,
	eagle.zhou@nxp.com,
	bin.liu@mediatek.com,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	tiffany.lin@mediatek.com,
	andrew-ct.chen@mediatek.com,
	yunfei.dong@mediatek.com,
	stanimir.k.varbanov@gmail.com,
	quic_vgarodia@quicinc.com,
	agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	daniel.almeida@collabora.com,
	hverkuil-cisco@xs4all.nl,
	laurent.pinchart@ideasonboard.com,
	jernel@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 7/8] media: vim2m: Use v4l2-mem2mem helpers for VIDIOC_DELETE_BUF ioctl
Date: Tue, 21 Mar 2023 11:28:54 +0100
Message-Id: <20230321102855.346732-8-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230321102855.346732-1-benjamin.gaignard@collabora.com>
References: <20230321102855.346732-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_032916_215359_C5022D06 
X-CRM114-Status: UNSURE (   7.90  )
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

Make vim2m support VIDIOC_DELETE_BUF ioctl.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/test-drivers/vim2m.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/test-drivers/vim2m.c b/drivers/media/test-drivers/vim2m.c
index 7964426bf2f7..3500a3df66c8 100644
--- a/drivers/media/test-drivers/vim2m.c
+++ b/drivers/media/test-drivers/vim2m.c
@@ -960,6 +960,7 @@ static const struct v4l2_ioctl_ops vim2m_ioctl_ops = {
 	.vidioc_dqbuf		= v4l2_m2m_ioctl_dqbuf,
 	.vidioc_prepare_buf	= v4l2_m2m_ioctl_prepare_buf,
 	.vidioc_create_bufs	= v4l2_m2m_ioctl_create_bufs,
+	.vidioc_delete_buf	= v4l2_m2m_ioctl_delete_buf,
 	.vidioc_expbuf		= v4l2_m2m_ioctl_expbuf,
 
 	.vidioc_streamon	= v4l2_m2m_ioctl_streamon,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
