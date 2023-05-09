Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61713C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 May 2023 15:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nGsuX+1aBbCZC39fFdVW7sI3gW9EdsKo3Z76sqT2dNo=; b=CDsnfBzEmWZcdU
	aVpANqxqXm1/6XQYW7ru2RJtCgqpHV1raJnUQ0pgckQw5KUipyXlmkd/j1cB06Uk+QfVr2boNZJMP
	nnO9YnfbqfXdqpCvnlx4NHt9fh4RiIwW36iK5c5yieVI32TEqYeRyKgLS0Cl+sawo78vtkDzDX8Ke
	R9X6FLL3KQ2l/Gk5Zq35eyJ7YUxcN64BBv121Xrbo3iANulZlqQfS9u6vIrclA/0aRzflPRDD6eXk
	dntvzMyjPIUiC9mc5tP3JaTZh3X2xVB0G4kQwZk4hFjaTRND2WWWmIx5XKBSbHeE8E8z0ulU++1+K
	bIfYXPHH36Oc5HlqAMQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwOs4-003emz-2o;
	Tue, 09 May 2023 15:03:20 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwOs0-003elY-0C
	for linux-rockchip@lists.infradead.org;
	Tue, 09 May 2023 15:03:19 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-306dbad5182so3843741f8f.1
        for <linux-rockchip@lists.infradead.org>; Tue, 09 May 2023 08:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=yngvason.is; s=google; t=1683644591; x=1686236591;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pK5NzJ9ziuEkY80D3VsCAngV63DKm6HcJ44c4nALZ6M=;
        b=XMOznpr6W1KHCA3b+rQxaF5bEyjaIcsYUadoMEOEvgkJZD8+jxnACLfdz8qoUCpBOG
         A4oJoNDTz3MPil2JhCRqxGJCYZRsOwNvr4saOm2EqMD+nm+Tg3qYbmQOy4YmB0w2myil
         4ZqRrFOOEpGlJaRNTVXO1VbEsHxf4nLp4zQqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683644591; x=1686236591;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pK5NzJ9ziuEkY80D3VsCAngV63DKm6HcJ44c4nALZ6M=;
        b=ll6inEL9tDVz4jLrFWFfSuv6MNSEgGijcAIWYzPp0c1yz+/xyETvrZgiAjnfi8Rxot
         qgGc4YmNUSpb0yWw98cwrIJ25bZpYZiKZzR+EXAWyLtNR7H/SORYT+np4/EM0WJKEW34
         /krrX0R/f07TiI+JLwM+BOPf+fzQBCUyx+ofpg8tSuSzyP4th5pShJA+8Lr6zREz71m7
         FGbckjJn49YYltRBD5MMaMm1q2p64NlGDM2aDtZxOznw4DAYUOPqiLu/k8eujGbSWSz8
         yr10hIQYqkSsJ8U4exjKUTe0mM5HczM036Oi91huHQe/Ddd1IeH5f/5wVNV6Zy6O6Sbs
         7rsg==
X-Gm-Message-State: AC+VfDwCJ2UNtLjkO/ADWevgspqInBY9xZcE59KhGLoaalIgETogCaQl
	+GWX5wVi/pAP/6Zb8Wi4oHK2Y7+VAkM9V8RNqkDsMA==
X-Google-Smtp-Source: ACHHUZ431gDx8koKiopG2pHzobK49xX78f7b+WGWOqHizQK63Gg2QRw2Un0jJXpeolN9dCE6zsn1bg==
X-Received: by 2002:adf:e84e:0:b0:306:35fa:202b with SMTP id d14-20020adfe84e000000b0030635fa202bmr9242698wrn.6.1683644590162;
        Tue, 09 May 2023 08:03:10 -0700 (PDT)
Received: from andri-workstation.turninn.appdynamic.com ([2a01:8280:aa07:ad:7285:c2ff:fef0:4baf])
        by smtp.gmail.com with ESMTPSA id n10-20020a5d400a000000b00307a3045d65sm2588373wrp.46.2023.05.09.08.03.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 08:03:09 -0700 (PDT)
From: Andri Yngvason <andri@yngvason.is>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Andri Yngvason <andri@yngvason.is>
Subject: [PATCH 2/2] media: verisilicon: rockchip_vpu2_hw_jpeg_enc: Add data_offset to source addresses
Date: Tue,  9 May 2023 15:02:49 +0000
Message-Id: <20230509150249.824440-2-andri@yngvason.is>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230509150249.824440-1-andri@yngvason.is>
References: <20230509150249.824440-1-andri@yngvason.is>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_080316_095885_347DCA09 
X-CRM114-Status: GOOD (  10.58  )
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

This accommodates planes that are backed by a single dmabuf.

Signed-off-by: Andri Yngvason <andri@yngvason.is>
---
 drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c b/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c
index 52c76fb91c56..716c248dc2bf 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c
@@ -99,7 +99,8 @@ static void rockchip_vpu2_jpeg_enc_set_buffers(struct hantro_dev *vpu,
 	vepu_write_relaxed(vpu, size_left, VEPU_REG_STR_BUF_LIMIT);
 
 	for (i = 0; i < num_planes; i++) {
-		src = vb2_dma_contig_plane_dma_addr(src_buf, i);
+		src = vb2_dma_contig_plane_dma_addr(src_buf, i) +
+			src_buf->planes[i].data_offset;
 		vepu_write_relaxed(vpu, src, __vepu_reg_addr_for_plane(i));
 	}
 }
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
