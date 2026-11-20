Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122DF606A6B9
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 23:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uFAzPnAd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wn19yUP/iCrIREN/aqZyAO07xmKmflp+fvPGmkx+8sw=; b=uFAzPnAdNYRCXMf9g7FzCo4MRP
	Enuih7ttun7y4TSuQEsorg59oJAouUOyIjsyGjJPXapX17lNwX9IGjo6yxjLTDz1/yFEky/AgQncP
	wHRT91nz/XFqDNUCoauJlei1e5p6cAPK7A6LFUDMzjFXWjrWR3SA9eYezB48KZ2qk4L7TZTSDcKhP
	gz2+j9Wc5BAoxNubjo8pgcTBNJ9IPJgumqhsUq4kONm397Evgxr3Jg8jSujUNK7dX9u/IoxRDEKGq
	ghyBZNpC91FOfdeaG5K940KzUG8qUPlDoWkcP08Y0FolWQ72rNT4KxCzfd41az+mcyTuUBY3aRK9n
	zf6bj9ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUYEm-0000000GR82-1y4D;
	Fri, 20 Nov 2026 23:41:48 +0000
Received: from pidgin.makrotopia.org ([2a07:2ec0:3002::65])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUYEi-0000000GR6d-1xvz;
	Fri, 20 Nov 2026 23:41:47 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256:X25519MLKEM768)
	 (Exim 4.100.1)
	(envelope-from <daniel@makrotopia.org>)
	id 1xUYEb-000000002eA-2Mzf;
	Fri, 20 Nov 2026 23:41:37 +0000
Date: Fri, 20 Nov 2026 23:41:29 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Alex Bee <knaerzche@gmail.com>,
	Hans Verkuil <hverkuil+cisco@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/7] media: rkvdec: hevc: apply request controls first
Message-ID: <e98082d31607d7474788fa9c76b525ac285b1590.1795217229.git.daniel@makrotopia.org>
References: <cover.1795217229.git.daniel@makrotopia.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1795217229.git.daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_154144_525362_705D241F 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The HEVC run preamble looks up the control values before the request is
applied. Applying a request can reallocate the array of a dynamic array
control, so the pointers taken before may point to freed memory. The
slice count and the information whether the RPS controls were set are
also those of the previous request.

Userspace can trigger the reallocation by passing more elements of such
a control than in any earlier request.

Apply the request first and look up the controls afterwards, as the VP9
code does.

Fixes: 3595375c2301 ("media: rkvdec: Add HEVC backend")
Cc: stable@vger.kernel.org
Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
Changes since v1:
- Rewrite the commit message
- No code change

 drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
index 2b8e04dd15727..c249e3f16f42c 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
@@ -429,6 +429,8 @@ void rkvdec_hevc_run_preamble(struct rkvdec_ctx *ctx,
 {
 	struct v4l2_ctrl *ctrl;
 
+	rkvdec_run_preamble(ctx, &run->base);
+
 	ctrl = v4l2_ctrl_find(&ctx->ctrl_hdl,
 			      V4L2_CID_STATELESS_HEVC_DECODE_PARAMS);
 	run->decode_params = ctrl ? ctrl->p_cur.p : NULL;
@@ -460,6 +462,4 @@ void rkvdec_hevc_run_preamble(struct rkvdec_ctx *ctx,
 	} else {
 		run->ext_sps_lt_rps = NULL;
 	}
-
-	rkvdec_run_preamble(ctx, &run->base);
 }
-- 
2.56.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
