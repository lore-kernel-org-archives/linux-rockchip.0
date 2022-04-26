Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F6C3C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 13:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5lZbopukreAxcM8xGXSCitvly1dJA3e5jSJvE/7w+U=; b=WDDXAouBLMieUl
	ba0yxZDCiFvdv7Qa2liB81eK0iY0twQ3id8i1FEXrUtrGzG9Z3xz5mOGqwf7106XBzfhSKUVJbM2k
	Nty4I4FlmL8oPTGT7a5C+kiTqX/M25cPoM+aRzurVvcfVnAEXjBLIThaaL0Iri1iW6dZKahE7sdt6
	swknle41ihP9APQVJSC7AUYexKdxy8aIvwyyhgoYNsi3p9GKY5kLBsbj1TXlrLyvmyH+9SAzBW/kE
	ceARXNOy7MUSq5eKBWZyM2TBHxcUaEbonq/kWrb0eYJSYVuuzS/OCjGpeJtcj8er0idf38qnPmvwA
	lbyGGsQnfEqV/5EKNP1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njKur-00ETSx-TG; Tue, 26 Apr 2022 13:07:41 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njKlt-00EPAa-8a
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 12:58:30 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 762DA1F43982
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650977904;
 bh=FmxP3Of2pm4gkbqbbaer5qaBCfIvVbPhhE5DeBELz4c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hBcUdsG1vo3Ibv1T3PQzLkVRTO0BNO/MVGkjQjQwI+Cq1k4fW3YqyXc+hxVDtQf/o
 MJuP+asy+HuX8zNfZEw/5amOnVG+lj3zPobSzVPtm7WuekupyjirBzpIGRu0Cq98GL
 unLEetrzkGph3I6wU4USp8dMV6FRCHAqo9gjaEOKEuSHlDMgn9f17RAdUro6jJ1Wqu
 uPEsQMUgSnXfrEjpk5ebf2GLQCIv418eOVG79hBN5E7Zv/6+6Asg/D3t2WXaURMCbn
 8JaCNhHnsPh6AgM3V5WfTkzw1p2TWjl9L9muaea9yujNEXRbpLnSD2BpZQNgkLwFT1
 bsPyAFMV8nknw==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Boris Brezillon <boris.brezillon@collabora.com>
Cc: nicolas@ndufresne.ca, Jonas Karlman <jonas@kwiboo.se>,
 linux-media@vger.kernel.org, Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 14/24] media: rkvdec: h264: Fix bit depth wrap in pps packet
Date: Tue, 26 Apr 2022 08:57:40 -0400
Message-Id: <20220426125751.108293-15-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220426125751.108293-1-nicolas.dufresne@collabora.com>
References: <20220426125751.108293-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_055825_579604_30C29B32 
X-CRM114-Status: GOOD (  11.55  )
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

The luma and chroma bit depth fields in the pps packet are 3 bits wide.
8 is wrongly added to the bit depth values written to these 3 bit fields.
Because only the 3 LSB are written, the hardware was configured
correctly.

Correct this by not adding 8 to the luma and chroma bit depth value.

Fixes: cd33c830448ba ("media: rkvdec: Add the rkvdec driver")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index bcde37d72244..8d44a884a52e 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -662,8 +662,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 	WRITE_PPS(0xff, PROFILE_IDC);
 	WRITE_PPS(1, CONSTRAINT_SET3_FLAG);
 	WRITE_PPS(sps->chroma_format_idc, CHROMA_FORMAT_IDC);
-	WRITE_PPS(sps->bit_depth_luma_minus8 + 8, BIT_DEPTH_LUMA);
-	WRITE_PPS(sps->bit_depth_chroma_minus8 + 8, BIT_DEPTH_CHROMA);
+	WRITE_PPS(sps->bit_depth_luma_minus8, BIT_DEPTH_LUMA);
+	WRITE_PPS(sps->bit_depth_chroma_minus8, BIT_DEPTH_CHROMA);
 	WRITE_PPS(0, QPPRIME_Y_ZERO_TRANSFORM_BYPASS_FLAG);
 	WRITE_PPS(sps->log2_max_frame_num_minus4, LOG2_MAX_FRAME_NUM_MINUS4);
 	WRITE_PPS(sps->max_num_ref_frames, MAX_NUM_REF_FRAMES);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
