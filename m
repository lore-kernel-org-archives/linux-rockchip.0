Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C7F4CD98F2
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 02:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFQiXUenjLeGyarrpun8N2nmi4Y5L3xj165Q6L/mG/I=; b=Xou9WYht3C2o7a
	cdVedaZdKOI2Qw4kHJ6baptrESVDj1gt4lYOhwHhA2sfJ/qlp7CW0HgqeYKrS/hsQQsN6wDJlvUgd
	eVrlxylTNdE0hhe5/rtU7uSytk18BC3Q33OLDYsaXpdVi8HKNseGjw66ZxFBNd0bibS+TRouyu9KK
	X4VPnzv33Dr+ayChnGHlaSF6ui7oDwe5FQCQFJN99Dkrnf8UfBYDAd6qGzpge/ZPTolBs14jz6T03
	tMIN0WGIm7vRuFegCYfvTZVnGcnNG1WEnFL+IXGA19fW1Oravz6Li39In5fXpLH2PiEcg25fxTUMr
	jOQPry+/oEKGetaLaBSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsV-0000000GURb-3YHv;
	Wed, 17 Jun 2026 02:19:43 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsT-0000000GUKJ-1Il5
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jun 2026 02:19:42 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-9159f631656so66006885a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jun 2026 19:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781662780; x=1782267580; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J8O/pXXJ//moyFh/7MLx1Wt0Gv3Nz0eHoldtSppYnyw=;
        b=eTvf4u1/bU01at0Sb6OzZe14KUREGInUYxf8QmfWrB1c6JjYOnLgjvNcs11Ueeva/C
         093WN439ysHEcMfDoqcodxmErpencsyYpIpOk89MJUTLVZnETRkU21rRsGQor3nVBSin
         /WtGRnzcNkVdwnuCK2FIDrf55AG855pdqozoajdbyl28mV9PP7B8eRPhJrGhqR5jSBu6
         D6NciELSpvVzrL+V0a/PbSvXi4HqWxYktq65UgNVZauFgfVYhpprtGjZEbl68UH/QecM
         MZgHov5eXlrPUzCqfKuyFeEVWY5rvkJxM8l7w4x4Ig5cV7LfAF6eEtaPXtGGLmockvZF
         A6iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781662780; x=1782267580;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=J8O/pXXJ//moyFh/7MLx1Wt0Gv3Nz0eHoldtSppYnyw=;
        b=p7Cs5fy+mjJ8IrbGkbdlh8F5SL7SsBxxqqZrERZWKygCKDA3TqjnBfLw1N7pv7ZdIl
         G/zcnkjkcArojzOsn1sxmQeeGu8bVaHzX5SMP0anPDc90RvRiilwbVHLB0zZMBNs5SPM
         51vYh7NhJAiAvnlTx2dcw+G0c4GGkaa7ltb/jY+wcWWdcmQQWFVjT8MgyfoGHzjeUqSM
         HAuQFQNCaDLjkhW0+SWx4FPIlcPPPA9ClUkSJJy8X/pztx66G7GGdDiLBlT29o8WUmu+
         d+1eKZjuATK9PAVMZF64IIbO8I7OuMjEs6/EASlAR95dmj66JjdsZvI8bHTr+u/ZUwbD
         9zLQ==
X-Forwarded-Encrypted: i=1; AFNElJ9WGEqRk+GE9S7ftNvSTqrbvjfx5nL0DQ4SJ4wAMmUzg06huvP7PNjVpkqZQ+Iq7GS0iUuGKWum0bIWWnyX1w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwACeirbFAhz4NiMbTgqmSYSfUbuygJkYBsp5HSZ0tLC6HSCks7
	9SAB4Ox+GXIciLZ3tuMQOkBCsyjRLRcAmlzD7FER8PlwpctU7am/0rXi
X-Gm-Gg: Acq92OHlBU88Ez6Zdr/C8Ckh6voBJE4Eu8bDqSP4Y81Qnrs5oiFZM9CXcQF0vTHnaS+
	FrV5tTY01VTT0g98pztOwJdJ+RcCGtBs3DdpdoNQFb2p4vx6mxStCiN9Z7kcO0k0q0deZwNUtnZ
	NWHIGF1scflNO+tKB9M+XHuY+dcNDoalPe2ODKSVVBeMmeyghOssxe/xvQyegzDU5uAEzoCEoSU
	DeI2/53j0F6hlqMYv7i1VNvB/M4ry63jKpFyR6j17jQvatDJNZm1NB1xONy8Mob7aLinaxfnnL+
	EZIUyMgKkVcK1qDQCh1lh+zkLvabWfpu4iPLIlIHU/jjJ0wIrFMMzzvr5a3b4mXynhhX8IJrX65
	ZoUC3tJl4adz28Bg5p8A3Em8+SRLOXOt0oDSssB4tEWUEKa+EOHSTLMAhBDcrLT/vcZupoEsdcu
	rr8AvV2XbZZ0qbO2H5mt31+pvyqzHjApn39BvlOq3HEidfznB0yRnOYUXlN1PQCVwYfyMYvej3J
	ZnqG3z3Hb2RccMLELDsKRXB2nfswmBj
X-Received: by 2002:a05:620a:2948:b0:8cd:d688:7aef with SMTP id af79cd13be357-91dcd160370mr170783785a.19.1781662779948;
        Tue, 16 Jun 2026 19:19:39 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9161a006e35sm1657646285a.28.2026.06.16.19.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 19:19:39 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Hans Verkuil <hverkuil@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Yunfei Dong <yunfei.dong@mediatek.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Heiko Stuebner <heiko@sntech.de>,
	Kees Cook <kees@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 8/9] media: mediatek: vcodec: bound AV1 tile-start copy to the array capacity
Date: Tue, 16 Jun 2026 22:19:05 -0400
Message-ID: <20260617021906.2746743-9-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260617021906.2746743-1-michael.bommarito@gmail.com>
References: <20260617021906.2746743-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_191941_375001_6FDEC18C 
X-CRM114-Status: GOOD (  11.68  )
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

vdec_av1_slice_setup_tile() copies tile_cols + 1 / tile_rows + 1 entries
into mi_col_starts[] / mi_row_starts[] from the bitstream tile_info. Bound
the copy to the array capacity.

Fixes: 0934d3759615 ("media: mediatek: vcodec: separate decoder and encoder")
Assisted-by: Claude:claude-opus-4-8
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
---
 .../mediatek/vcodec/decoder/vdec/vdec_av1_req_lat_if.c       | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_av1_req_lat_if.c b/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_av1_req_lat_if.c
index 2d622e85f8271..49d9b4a72387e 100644
--- a/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_av1_req_lat_if.c
+++ b/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_av1_req_lat_if.c
@@ -1299,11 +1299,12 @@ static void vdec_av1_slice_setup_tile(struct vdec_av1_slice_frame *frame,
 	tile->uniform_tile_spacing_flag =
 		BIT_FLAG(ctrl_tile, V4L2_AV1_TILE_INFO_FLAG_UNIFORM_TILE_SPACING);
 
-	for (i = 0; i < tile->tile_cols + 1; i++)
+	/* Bound the copy to the mi_col_starts[]/mi_row_starts[] capacity. */
+	for (i = 0; i < tile->tile_cols + 1 && i < V4L2_AV1_MAX_TILE_COLS + 1; i++)
 		tile->mi_col_starts[i] =
 			ALIGN(ctrl_tile->mi_col_starts[i], BIT(mib_size_log2)) >> mib_size_log2;
 
-	for (i = 0; i < tile->tile_rows + 1; i++)
+	for (i = 0; i < tile->tile_rows + 1 && i < V4L2_AV1_MAX_TILE_ROWS + 1; i++)
 		tile->mi_row_starts[i] =
 			ALIGN(ctrl_tile->mi_row_starts[i], BIT(mib_size_log2)) >> mib_size_log2;
 }
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
