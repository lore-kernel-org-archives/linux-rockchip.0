Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B59606A31E
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 16:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MYdIrVLB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=J8YFFQ0a
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ht5P9T2t9PbJpLXg2K9tdM4JxvybQoK3Mcu8ofVuXFU=; b=MYdIrVLBg7pG5BNuSt4gJAk3hh
	3cmd2bOswzWiLXBBTv2gH0vlXUyL+YrLL5PG3v+G91wZ7KvTnyNo4HAEwC5hFy66nVaDWJEcT53Zs
	V5U/M6MPLMemA6nST0bwvDI+Nsskl8KzHC3MYalKpzrxY6qISWKW8zH3ZzlkY7NUCBmOWHNQIpe2f
	s93OPDQn5lmIhQViw3lyAuebb7ifjZNLPHZlf1z1G96CM1X50m4WMNInnpiVGkNPWbW34acrAsVpV
	55kr4hUUWRMyizZVTtEaOdUsposfI1vobZ56eSjtY95+GLPhmbG09STvZ7PmOLUnERDIvq3S57wGg
	la00PIsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWz65-0000000H8x4-06rs;
	Fri, 27 Nov 2026 16:46:53 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWz55-0000000H8IQ-2Ohh;
	Fri, 27 Nov 2026 16:45:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795797949;
	bh=Ojr4CPkhMmvonRIHNhgph/1SQ75Ajo/2PT1nLoJMfng=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=J8YFFQ0aUe4gZM0y9GtsFjGfErA4HSVCjwbflJNONTsK+FHkDPQwQdCcEZ3ycJItw
	 LovaW/wXwR9GlBzioupxneGCONKP1yV6uiN99In+foU5KVE3/QX/LZpAiDR352Y99r
	 cXIuLSRB9koyYflF0GOsak+Be796vMm7NASpP0KoxkcS0iL61Bsfj27+V8K8iCaEIc
	 RCwd9s1CccSY9RmlKa1eRLMBgMRo+UF8PKV9zv+/xq7VaDxCIQQv/VC78T1BO73C3F
	 Ptq+NWCedbrf5bFjhYiZpIGATIVndhqhJJhQrsURNYX/7/QfPNIjaYu/QCUjM6wMGG
	 JYoXhgQ5OXXSQ==
Received: from [192.168.0.15] (unknown [100.64.0.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AEC0717E08C6;
	Fri, 27 Nov 2026 17:45:47 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
Date: Fri, 27 Nov 2026 11:45:09 -0500
Subject: [PATCH v4 5/9] media: Add missing types to v4l2_ctrl_ptr
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-v4l2-add-ftrace-v4-5-24138479002f@collabora.com>
References: <20261127-v4l2-add-ftrace-v4-0-24138479002f@collabora.com>
In-Reply-To: <20261127-v4l2-add-ftrace-v4-0-24138479002f@collabora.com>
To: Daniel Almeida <daniel.almeida@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-trace-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com, 
 Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_084551_818016_5B29CD82 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The v4l2_ctrl_ptr union contains pointers for all control types, but
v4l2_ctrl_hevc_decode_params and v4l2_ctrl_hevc_scaling_matrix are missing.

Add them.

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 include/media/v4l2-ctrls.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/media/v4l2-ctrls.h b/include/media/v4l2-ctrls.h
index cec9217d97ac..6e363262c868 100644
--- a/include/media/v4l2-ctrls.h
+++ b/include/media/v4l2-ctrls.h
@@ -49,6 +49,8 @@ struct video_device;
  * @p_hevc_sps:			Pointer to an HEVC sequence parameter set structure.
  * @p_hevc_pps:			Pointer to an HEVC picture parameter set structure.
  * @p_hevc_slice_params:	Pointer to an HEVC slice parameters structure.
+ * @p_hevc_decode_params:	Pointer to an HEVC decode parameters structure.
+ * @p_hevc_scaling_matrix:	Pointer to an HEVC scaling matrix structure.
  * @p_hdr10_cll:		Pointer to an HDR10 Content Light Level structure.
  * @p_hdr10_mastering:		Pointer to an HDR10 Mastering Display structure.
  * @p_area:			Pointer to an area.
@@ -81,6 +83,8 @@ union v4l2_ctrl_ptr {
 	struct v4l2_ctrl_hevc_sps *p_hevc_sps;
 	struct v4l2_ctrl_hevc_pps *p_hevc_pps;
 	struct v4l2_ctrl_hevc_slice_params *p_hevc_slice_params;
+	struct v4l2_ctrl_hevc_decode_params *p_hevc_decode_params;
+	struct v4l2_ctrl_hevc_scaling_matrix *p_hevc_scaling_matrix;
 	struct v4l2_ctrl_vp9_compressed_hdr *p_vp9_compressed_hdr_probs;
 	struct v4l2_ctrl_vp9_frame *p_vp9_frame;
 	struct v4l2_ctrl_hdr10_cll_info *p_hdr10_cll;

-- 
2.56.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
