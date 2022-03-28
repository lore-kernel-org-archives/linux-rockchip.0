Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC49DC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Mar 2022 20:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sexgKKxiuoJNMQd4vnUi3io1KNhElwcEPwKcppF+SW4=; b=xHOKWydm/yNvVl
	BJ0sRns/jv6DVPYz7h5GxyVT2vyAOmp+NxUJUfTv3/IwMZvkVO368jSlGysDrbDvicxciSfejiIFV
	oMvHoGehWMaDXZEkEveO4oY0DjwRzq9Ilaqle2sD9/+/s1dF9VAkmBjSIfcn5k2Dp32RDQ6mJIQpx
	NKqNFkGUjPcljCa4kNszeP3SNcyEmWfvKeW7F3HyOL2CE4VtM1gLPuNgqQbSZ3GAvcTJ2FpwzRt5+
	nxnPyHb+szkuFx+W3QHgEhSXTW4xnlJg0/xRA7ErNN2RYxARDjlwoNOtQLlUoP4fl7lydWyrKODx2
	m9F9+ZWGFNf/f6Vy6Lkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYvXG-009zOh-GI; Mon, 28 Mar 2022 20:00:18 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYvXB-009zIp-S2
 for linux-rockchip@lists.infradead.org; Mon, 28 Mar 2022 20:00:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 963391F4388C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648497612;
 bh=Y/EFmW32eD4KkKmhvAOQSjuBN39ky/laGXZQlpMupCc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bSgtdbGw4tYbD69RdtJrdkBRkEuQp47VMh2KzTtJdxoliJAInHWpAHa19MWxP+ef7
 8+GEh/+RSK3v3aF5PfKNrNUqd8rGHpodqKNHRdiTz1R8P9f4Ov4nFjly0Wk7J0y2KL
 ebN8TluDyF/oyUDQjHticp2yjGFipQF4zAyFzAqMG8CfzypxRAqXv+br4WHoTNwEjv
 P6RrkSI/k+dhLbroD+xeNFri+pu9XFzpF62MkVHgPTQ4nnYpVB6DfMiWOJSEZ4+rGJ
 ydKvI6bNa+vrgIfidR0R1xXfsNdXWfyLSjqgVojDmoT2bhEoooxxac6gjk4LUS5x4u
 htRTV+HcbUkHg==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH v1 16/24] media: rkvdec: Ensure decoded resolution fit coded
 resolution
Date: Mon, 28 Mar 2022 15:59:28 -0400
Message-Id: <20220328195936.82552-17-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_130014_091975_A97AFC58 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Jonas Karlman <jonas@kwiboo.se>

Ensure decoded CAPTURE buffer resolution is larger or equal to the coded
OPTUPT buffer resolution.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 05824f1997f7..22c0382c579e 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -269,6 +269,8 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
 		pix_mp->pixelformat = coded_desc->decoded_fmts[0];
 
 	/* Always apply the frmsize constraint of the coded end. */
+	pix_mp->width = max(pix_mp->width, ctx->coded_fmt.fmt.pix_mp.width);
+	pix_mp->height = max(pix_mp->height, ctx->coded_fmt.fmt.pix_mp.height);
 	v4l2_apply_frmsize_constraints(&pix_mp->width,
 				       &pix_mp->height,
 				       &coded_desc->frmsize);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
