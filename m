Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C5A4C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 04:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Cc:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PzsK9ujJxh+paMDJ89ly0Ema7COmWN6jOp27dBv0pvk=; b=CZ/bvH9ONLDVfD
	qPOy33t0JQjIEdLaVAmP/YQl6zqKcMXCd1QOCHxlSkUm5TwwzlIigda3bWGuN4Ppf+jIy0YJhomGp
	yevd+B22+nzB3aGXrm+psb5mlAjiHQRWDSKKaqOmi4uO3QlvcKW3TUZIhKNOGYch00J2qxOJwpSbh
	6oz4do91cklAvBvAtRNnmfu3FRk3JdyGOnJYSu4I5H8PTbUkCdAO1d9E9mgJFDm8sONjfzmpmfcLY
	dxKkGGwlofveYXAPJ8i47LiyJ+u/sLIPA+T1HvuxnabOoxnjB7+OaN2ezl/POMhNJ7BqoNwdg8RXz
	DS3HdwJ6ljCDjnHWIe7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEMKA-005Nfc-1l;
	Sat, 16 Dec 2023 04:30:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEMK8-005NfI-39;
	Sat, 16 Dec 2023 04:30:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=wdNndgGeLlcNwK9hbEpoW5H6j3meU+l8uskTtib8Uhs=; b=kbkqs3qszg3rMdcX8+XVJrHHN7
	e14AC4xTSnA3Wb7SEKh0/gAjshb4ReiNMsxWUwN7eWHSWsSOCGo08sweWbMbipYKfw2rmnQWAgWJb
	ojqYop1W2RNfKYX/yW5sRFO5Fpd6XBGPgiSY+MhEty13PpEjHt2EHBWgsaj1j78isZKRzFvCa2Z5L
	+FOZTMarspyVu1Xumz3MTEYdccsamsdjc0ZdnlWZznXSj4G7tNeYKMGBBZT3y9V7mWf2Dmu6oGtZb
	95Zub4eq7tIVX235mm6gTnfPWAC4Y1VEug+AjUrI1EId35YQ6CjCu7gAZpC+C0LFh08Eh90rZCn3Y
	lkrWP3ag==;
Received: from out162-62-57-252.mail.qq.com ([162.62.57.252])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEMJq-00AQhy-34;
	Sat, 16 Dec 2023 04:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1702700694;
	bh=wdNndgGeLlcNwK9hbEpoW5H6j3meU+l8uskTtib8Uhs=;
	h=From:To:Cc:Subject:Date;
	b=PBo56z9UUgFzo2jq3NhD256bfM/6LuFgLxCrL6xcCOAD3D9lYwj5OMZZdngf3WLaB
	 h5TOO2zAos+cL4CnWkBR1SgcojIcQSf5MuOlde/VVks7/LvNOKoYBQhhG+WmqnuKqO
	 U43VzeUKj9z4z9O4yhaDbrZFlZr0rsqc7pyL3DVo=
Received: from localhost.localdomain ([118.112.114.229])
	by newxmesmtplogicsvrszc5-1.qq.com (NewEsmtp) with SMTP
	id 4A409021; Sat, 16 Dec 2023 12:18:36 +0800
X-QQ-mid: xmsmtpt1702700316tp6eo8v02
Message-ID: <tencent_4AE0AD70494AB08166266B6493F4C507CE08@qq.com>
X-QQ-XMAILINFO: OZZSS56D9fAjyoRLlB1WdJJ7RuUl5TjiHz/6ppILou0ypj6soqQ2oZ5NyubAhc
	 DN24kzTe67KAiTHnoBVxvZvHlA42BS40WYljtQDeSEbTIFZo+Lac5P1MzPAkUrayDmiGGed4IPWI
	 pCzclg7f6F50xLoPl+EFNUjNlJxSOD+7jjmW4589o+VYwvvAgOjxbj3PzwxLSsCj4M21MogIKcVg
	 tbx/rSLdhnknTRmW+RT9/wvJyN1IIg6JhqPUwYwjlNrEkWbXF0NlGSduz83ULwVM0/VIvIERNzZF
	 zcpUYw9LwtJFK2hktBmNBj4VWDRyNwCjiPZ0adw/WEm5F+aekXYkYhfyHF+19Bv+hB3MsU9B/BW+
	 ldmwMut55Qe3eT9+w7TXKG92Fzh3iCvZIbywl2VAIDtG0X0QEnlHJpDXAv9cJo8R5QZEE6mMEdCE
	 x5ODcDy/lH0Q3Ze78LRa+NpKyiy4Uti/RnoEFfL+YLNabr7bDbCqAJrjLLZNaxYqzW+2v6NW+cld
	 RwbIcJF8F3kqL4dTCKfsmFAB0X/eoHyqvVoArUPbLzC97GA0TWuxOl/dUXeHa2BQBurS1N5K+PnB
	 viok+f9dI+j/cDxxAf3QZZ66LNelTjUetQmmMX7ewRXZLXzXK5ICCdqzVY24/yIu75UE0oRI1YnZ
	 siRITp27/PuuFblHyLyFa8zkWd9RLUBNCrPGNh4hvuiXpatTNadLSGiBssIMD6YlBqF4OiKfVZ69
	 DiP5q2qXbputQQ7QfoPif+yBtNlUMBgQzP0ks2vmWcf3ArYxaWHI5h6CsIP9cf1C/hX9Ggqz0hxl
	 nwf4M6LdVEVcNM/mM4zRcxw3M2/AReVS6vY5UEnEcHLmDm/G1Acy/V6yYc9swWGZNo3KcMIZG413
	 K3gpWMlcF7U1c9voc9GHdE9mR6KXCrd8vBpY0iQClINVEINSwwEfOQfKVs2LO6+DymO60sMPLdCV
	 bdTrTM82dPD+lkcrC9FODEPaYU9AsxDk98wYfTBV0OcZYn0oFOlouT0fGLshVNgZbVC36V/Ww=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
From: renjun wang <renjunw0@foxmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	heiko@sntech.de
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	renjun wang <renjunw0@foxmail.com>
Subject: [PATCH] media: verisilicon: Fix some typos
Date: Sat, 16 Dec 2023 12:18:05 +0800
X-OQ-MSGID: <20231216041805.12936-1-renjunw0@foxmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_043035_785832_D9D701FA 
X-CRM114-Status: UNSURE (   9.23  )
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

Function hantro_g1_h264_dec_prepare_table() does not exist,
should be replaced with hantro_h264_dec_init().

The register name av1_ulticore_tile_col confused sometimes,
although not be used corrently. The correct name should be
av1_multicore_tile_col.

Signed-off-by: renjun wang <renjunw0@foxmail.com>
---
 drivers/media/platform/verisilicon/hantro_g1_h264_dec.c        | 2 +-
 drivers/media/platform/verisilicon/rockchip_vpu2_hw_h264_dec.c | 2 +-
 drivers/media/platform/verisilicon/rockchip_vpu981_regs.h      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_g1_h264_dec.c b/drivers/media/platform/verisilicon/hantro_g1_h264_dec.c
index 9de7f05eff2a..ad5c1a6634f5 100644
--- a/drivers/media/platform/verisilicon/hantro_g1_h264_dec.c
+++ b/drivers/media/platform/verisilicon/hantro_g1_h264_dec.c
@@ -243,7 +243,7 @@ static void set_buffers(struct hantro_ctx *ctx, struct vb2_v4l2_buffer *src_buf)
 		vdpu_write_relaxed(vpu, dst_dma + offset, G1_REG_ADDR_DIR_MV);
 	}
 
-	/* Auxiliary buffer prepared in hantro_g1_h264_dec_prepare_table(). */
+	/* Auxiliary buffer prepared in hantro_h264_dec_init(). */
 	vdpu_write_relaxed(vpu, ctx->h264_dec.priv.dma, G1_REG_ADDR_QTABLE);
 }
 
diff --git a/drivers/media/platform/verisilicon/rockchip_vpu2_hw_h264_dec.c b/drivers/media/platform/verisilicon/rockchip_vpu2_hw_h264_dec.c
index 46c1a83bcc4e..6da87f5184bc 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu2_hw_h264_dec.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu2_hw_h264_dec.c
@@ -460,7 +460,7 @@ static void set_buffers(struct hantro_ctx *ctx, struct vb2_v4l2_buffer *src_buf)
 		vdpu_write_relaxed(vpu, dst_dma + offset, VDPU_REG_DIR_MV_BASE);
 	}
 
-	/* Auxiliary buffer prepared in hantro_g1_h264_dec_prepare_table(). */
+	/* Auxiliary buffer prepared in hantro_h264_dec_init(). */
 	vdpu_write_relaxed(vpu, ctx->h264_dec.priv.dma, VDPU_REG_QTABLE_BASE);
 }
 
diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_regs.h b/drivers/media/platform/verisilicon/rockchip_vpu981_regs.h
index 182e6c830ff6..850ff0f84424 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu981_regs.h
+++ b/drivers/media/platform/verisilicon/rockchip_vpu981_regs.h
@@ -118,7 +118,7 @@
 #define av1_mcomp_filt_type		AV1_DEC_REG(11, 8, 0x7)
 #define av1_multicore_expect_context_update	AV1_DEC_REG(11, 11, 0x1)
 #define av1_multicore_sbx_offset	AV1_DEC_REG(11, 12, 0x7f)
-#define av1_ulticore_tile_col		AV1_DEC_REG(11, 19, 0x7f)
+#define av1_multicore_tile_col		AV1_DEC_REG(11, 19, 0x7f)
 #define av1_transform_mode		AV1_DEC_REG(11, 27, 0x7)
 #define av1_dec_tile_size_mag		AV1_DEC_REG(11, 30, 0x3)
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
