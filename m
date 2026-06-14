Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A882CD98E3
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 15:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfw4ItylStuE/xwwzt5SJMPL8RSAmbl4O/WxqBxsXsE=; b=UWctobtE36ciOW
	DFIp5klVn4X8czQrySs+jVez9X+62xXh7nhEPM7+Ny0MRIiMJziyCZCujgPVZQXKF3gIg9dfxNc5O
	P7Hfj6GMNxHHpwSwCWCJDheoqJj2YgZufQygo32ttV8NDdI3usJwJinDJ/hDDoKH5rTnxJh5d6GR3
	TSBeuY0rA+2UAWTB0ld/lVWZfgEvK2s0BZNMsQnasff65FnV+ouaouMWAJgQ5S8EI6uNDlF0TEhLV
	vXx/kuwZ6bBGe0PKPv3iAM+4vn8LMYit+0eUShHrahaxSZsT8YNAI2xkqUWgh3V16gHfAGqWN3GKO
	fpz8V8AcgSWYsG2K3zQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnCD-0000000D9hI-12Y1;
	Sun, 14 Jun 2026 15:56:25 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnCA-0000000D9bL-0jFi
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 15:56:23 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-8cd45d4b7e2so31948286d6.2
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jun 2026 08:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781452581; x=1782057381; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ppzEj7clxwYqaF2xsc1Xu8dwkm63CSTY5UlsiLbKHOs=;
        b=ogwu2PdXHu8QFUOwBaxK57Vb1iEy9WuItug1DAXYXu5mDdBbo9/nY9WQquqZ+9AOBY
         vWHwxDbeoaUOXWGlEg3J2zK1wgqAOEtuScorz4Vou+YqwQU35+gy5T/kqvgumXnNxx5I
         Ud4lzw6MjZrZ2EYoMZUZGeBDm6MAlOSRG+PRYtD5jsH1l/+UQSUoAxlPSwVU4shYr4WY
         rTaFchizXQq6GH3mOiICUvZRScWlhWYUaQ4hIYEUG70GSOfMjoFZgl/cKltX3fVIN1mR
         bS7rXEbAW91k2LdSC4ObUL811b1S9yXBW+65VDuO1r0KtitMSRe9itqBkipcp9jvJduO
         QHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781452581; x=1782057381;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ppzEj7clxwYqaF2xsc1Xu8dwkm63CSTY5UlsiLbKHOs=;
        b=Xow7Z8CRED/YdiXGzAvMAjCjcbCh1kV7ZbAB6vL2TCSYFWm0Qnn3qcRZTuBWzk6usx
         OkaNOuIc3oZDP5cV8Faaiw/hnWV1eG9+TbH5B+wZYX1hqiJb5eUYn66/i9NfJv4IdRD8
         wuQ8uhDQh2vRhtB22dEMFnphnHRPtDZCBFj2770kxtkifO2k4kGiOtZSBNXhe1A7IPj7
         z4c8S6Zmn6S+bEUrz/U2eR44PkflLuzCLXCWVmhc/dSjiRfrndCXtHcOkLfhFV5R5UTA
         COCXlg1ugQjJMRzimr1YjMja7u0nz/0DPofICHVpClJWdu5FgPYlzy1sM7LGlrM6h2ur
         Q6Rg==
X-Forwarded-Encrypted: i=1; AFNElJ+8qnnlN6CNG3xLwHHJ5qNCz66alHPzQWQxWdVLltp8dhmY0IrzYOtsDJ4wkrjtpejOX2naIymbWroGQWALng==@lists.infradead.org
X-Gm-Message-State: AOJu0YzgmB1p46/Rc37pDL5QrTXkR/ibS8gpuniz2sWt6TIgb2QIU/Bi
	2Q2D93TbSffGsm7HXeKcFiEUmKJkc749rZGmBxwsApt6SOqbHj1wnXVI
X-Gm-Gg: Acq92OFDjQPgkfMrt7gDb3cAjM2Y396odEKcniemfjkANGbIwo26jRglwpN/jsbJYnL
	tYig2h+MzhAs2jtqkKz3ofOW8LThAN/ZId1UF0Dmd8ydBBrtv9zNE2zzR0435Yf4lVAag1nMJiu
	B8IGTyoQ2DoAm3U3pWIS3FMI/KQPVv7VD/UGnB5kgZZGs+NRgREYNyUfbYuzeDV20wgW5emAUC3
	uLCRYOMlgzihcbMD349PZh1FRitGH49lPquvFw5GA700EYFoN5pO20gac2GWR9n6a9TGxjJ45nx
	8zmD0q8QWCvqsrzCa8Dd/Uknvq2ljgXf6jB95d+nfGVvBWHeOtJMkWLdDHSEJD9LMAnVdJVcDn3
	FBtRfor2Yl/pHljSovsaSMCn/dV+gXeNcdnhCohcgJwk0iv7ZjZMa6AAyFtEtWQ14gwkbTtHiW1
	LacsesCgBYTaqy4kiVfR/PvXN0EQ2MANRyZpCyosu1Vw7VHbLJWoN4m9as45wnxUSUU25JsXWCK
	/7/qDHX/XyfoBoQaPlP3IJq3L4p4VqFd3DaFLaK4js=
X-Received: by 2002:a05:6214:40c:b0:8cc:ef56:d997 with SMTP id 6a1803df08f44-8d32bd2d8cfmr184388716d6.7.1781452580813;
        Sun, 14 Jun 2026 08:56:20 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8d30522cbeasm82008446d6.44.2026.06.14.08.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 08:56:20 -0700 (PDT)
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
Subject: [PATCH v2 5/6] media: mediatek: vcodec: bound AV1 tile-start copy to the array capacity
Date: Sun, 14 Jun 2026 11:56:07 -0400
Message-ID: <20260614155609.3107600-6-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260614155609.3107600-1-michael.bommarito@gmail.com>
References: <20260614155609.3107600-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_085622_219387_15B25241 
X-CRM114-Status: GOOD (  12.06  )
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

vdec_av1_slice_setup_tile() copies tile_cols + 1 / tile_rows + 1 start
positions into mi_col_starts[] / mi_row_starts[], which hold
V4L2_AV1_MAX_TILE_COLS + 1 / V4L2_AV1_MAX_TILE_ROWS + 1 entries. tile_cols
and tile_rows come straight from the bitstream; bound the copy to the array
capacity so the accesses stay in range.

Fixes: 0934d3759615 ("media: mediatek: vcodec: separate decoder and encoder")
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
Assisted-by: Claude:claude-opus-4-8
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
