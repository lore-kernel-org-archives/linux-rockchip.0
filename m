Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF2FC35257
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 18:42:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 110B1208A9
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 18:42:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="tHTBjXwU"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 110B1208A9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bCTGaOHXB+E7kQ+i5F9qxO23P2PK/VkyLgmCmVFlIoo=; b=tHTBjXwUg0b7D3NlJ7mnpx8V+E
	DcDiWorqygxPCKis3u512GWYRze3pS3TTZIURRCYAExhW2hcByPuGhQyoAQyYBXD565ndEuAEd6Xg
	mAqlPGOUNMZ2+/wckHfcPz9scCHmXvFdHNuxKsRqC4HlXUiBLW1mjEZjQOKaPmRnpSHptzwxhZxAo
	z6nzzmrKDGXUcHEmNBkALK5evgHaSeOQnmBltF0BDKM56npbR3G4+aboLifp4OQQI0cRlSOwwk1Hl
	LNX65YAe0822UrQaNoeHdbU1kiDU4WMU5m3kPkj2BkJugVK798nFqxLOfftClp7coc8aIVpxRgxxG
	NiDok9YQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kOQ0r-00048f-Qy; Fri, 02 Oct 2020 18:42:37 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOQ0n-00044j-JI
 for linux-rockchip@lists.infradead.org; Fri, 02 Oct 2020 18:42:34 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec00987cfa6c93a91dfa.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:987c:fa6c:93a9:1dfa])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 4307829DEF5;
 Fri,  2 Oct 2020 19:42:31 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 2/6] media: staging: rkisp1: params: in stop_streaming,
 use list_splice_init to move the buffers
Date: Fri,  2 Oct 2020 20:42:18 +0200
Message-Id: <20201002184222.7094-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201002184222.7094-1-dafna.hirschfeld@collabora.com>
References: <20201002184222.7094-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_144233_853476_4A1E6DAF 
X-CRM114-Status: GOOD (  11.00  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Currently the code uses 'list_cut_position' to move the
buffers to a temporary list. Replace it with
'list_splice_init'. This is nicer since we don't need
to access params.prev. Also, replace INIT_LIST_HEAD
with the simpler LIST_HEAD.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-params.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index 986d293201e6..cb9f3332a9a0 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1462,9 +1462,7 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
 {
 	struct rkisp1_params *params = vq->drv_priv;
 	struct rkisp1_buffer *buf;
-	struct list_head tmp_list;
-
-	INIT_LIST_HEAD(&tmp_list);
+	LIST_HEAD(tmp_list);
 
 	/*
 	 * we first move the buffers into a local list 'tmp_list'
@@ -1473,7 +1471,7 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
 	 */
 	spin_lock_irq(&params->config_lock);
 	params->is_streaming = false;
-	list_cut_position(&tmp_list, &params->params, params->params.prev);
+	list_splice_init(&params->params, &tmp_list);
 	spin_unlock_irq(&params->config_lock);
 
 	list_for_each_entry(buf, &tmp_list, queue)
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
