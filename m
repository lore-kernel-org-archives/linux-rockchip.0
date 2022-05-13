Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECA3DC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 May 2022 20:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njE8TUDInD8/Q58GKHbp1RQJ+TEEQvFpW5wzEbw3Stw=; b=z4zqVlFcXJZcxC
	9yeShYxyKbIqVkfLTpDUvG7Qv2HCI9c/qZjCeoYYoUL0AtR2Ul0BanUnxsK/uX5HGpMAXTjlR7XHJ
	nUsfTZToAhI2MG5kIVcMEAVW/MgMFs59U2WPm+2w8SSH7neshTrMizKReYYa0sW/NTCs8AXE06hJP
	8NIrJoFgo8RP5kq8c7Xe+lEEBgl7DikDOasRD24tehx7Yd0ABEi5bwuzGLzRbwObZu919fLFJxX5F
	3dXNAZgTQ934DYzGy/grHk31C4Gm2ZNsmbgT1ubktgyLygJ72dwsq4i1IBcbMc3cqBFLXtu0GKwt+
	wK5rbTJCsD3FBMGVXGYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npc6u-00HaoG-Jm; Fri, 13 May 2022 20:42:04 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npc3q-00HZ4Z-IV
 for linux-rockchip@lists.infradead.org; Fri, 13 May 2022 20:38:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 7A9CA1F4648D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1652473797;
 bh=LjTJxs5qEzAa3nkEOUZdNzT48i0a0uaCnC2plhBS5zs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MB455OrcIQrH7tKLVa186WBFXhoBTk3j9/bJ1hrcjrvcHSQHqA6EwiPs6GGOEeZob
 V+DfjddNdMqFmU6rmQcEchWJby9cDdPUJw5SO5SK7U4MPMqB+ogTgml+zkvfr5MA5k
 YnXZZ8gBqlpFsIqS7qI00Pjf6/uxa6dumwVNRymz3MbwhW5lbd2g+gYi/vx+Am9+MK
 uN5lrYQF8qQZh6VtfcvqpDya5hiUzDHoZIzXamNFkDTW0nPZKejdEG68SzWa41nhOu
 AiY0YAfkmVcARIYspGSBjLbIBXFNP6GvdnTMOtLOX5aF19SAu4hVk8oXtgvkSzKF0j
 dGav5ndnQobcQ==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: nicolas@ndufresne.ca, Jonas Karlman <jonas@kwiboo.se>,
 linux-media@vger.kernel.org,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 14/20] media: rkvdec: Ensure decoded resolution fit coded
 resolution
Date: Fri, 13 May 2022 16:29:16 -0400
Message-Id: <20220513202922.13846-15-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.3
In-Reply-To: <20220513202922.13846-1-nicolas.dufresne@collabora.com>
References: <20220513202922.13846-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_133854_830789_C53198EB 
X-CRM114-Status: UNSURE (   8.40  )
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
OUTPUT buffer resolution.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index e3d44d5b35f3..2bc4b1a40989 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -257,6 +257,8 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
 		pix_mp->pixelformat = coded_desc->decoded_fmts[0];
 
 	/* Always apply the frmsize constraint of the coded end. */
+	pix_mp->width = max(pix_mp->width, ctx->coded_fmt.fmt.pix_mp.width);
+	pix_mp->height = max(pix_mp->height, ctx->coded_fmt.fmt.pix_mp.height);
 	v4l2_apply_frmsize_constraints(&pix_mp->width,
 				       &pix_mp->height,
 				       &coded_desc->frmsize);
-- 
2.34.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
