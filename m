Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35F8BCD37AC
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 May 2026 18:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dsqUhgTnY/+yWUna1UAYHRk6tUcLZzHJQvQf4gGkY2I=; b=4xrktoldT35S4z
	tElJ6AjesYPM7cKHTN+7JQijRHKAuIYZon47UY7TCQIVD+5L2ioT2WnCF3bLcVtWTPGXHZdNGDpod
	+XUGv9awPrf1JrXjlEtlMezFUA4oyrcoL5gnIBHfpTNQ1p4avTO/Ee3cW+Ji3vp/HXb13JpDvQqs9
	ksmovTouUScCqvUlbts6/35wD6OIFf/hF7IbKVwTz03vhmdG9Qz4V9XVkNsSERppu7KyIvBKbkHIV
	qBwlcj+caa4GvSytpNPlclij79L2IIUWCOkQ1TdHAN/F4QenHmBW67wHBgYkoOF8pMIR53gCvZYtS
	ImAIjrBY3YdvT0Hd9q3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNEBE-00000003Ro0-0LC9;
	Wed, 13 May 2026 18:19:36 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNEBB-00000003RnJ-2HTQ
	for linux-rockchip@lists.infradead.org;
	Wed, 13 May 2026 18:19:35 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-8dbbc6c16b2so918089785a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 13 May 2026 11:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778696372; x=1779301172; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KPjNzhHK50cDvgdayyNCGaEkmYz/Q2VYJa8N/oM2vHs=;
        b=YwMi8H7zSHy0iNiHA7xfO7eUoA+RjljJym3XtHTuf31SmrzhwHRNcxcuAHlDPzEbTS
         rMig4NlE6gXIRO/DaIGNEw6hTi4rALo+2POUtUCCNiB1tW3mIwBSE3CTORSfPZdemDpY
         NUqSVKxrlnZBFu5YECWLKnK6cXsTzcqjop5MXtYtIO9nC7kzazz94CVFnuwGRqNY7ekP
         oima0pu0mlhdd/Q2nYlmxFM6Y/usyUsNyUe3krfxy3aCMSG81sxz7GrDWPhYJy2WP0em
         AYEkHY9XFYKx4/RVfnYYFxwI2wpiWoGGl4BKwdtlGn0XSxynVfraZTVrq8q4Oje3tNke
         h4jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778696372; x=1779301172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KPjNzhHK50cDvgdayyNCGaEkmYz/Q2VYJa8N/oM2vHs=;
        b=ZR65Z9DHeoOozIQdNGIcZBt0RZgqbKZCM34vvOGyDVdfCgichBmdNTmp9c8uBlyFN5
         61qX+9ba8nr6HXeOOa93cmGOphR3UzJZAKeRJL09dqeaz5L+ltJgtQ93YYzdRQF7ec+p
         HgKH3V4+tYq8e7mbULn5y5aiKd/5tXjP8SwjVhR/1W16UKAcTgyPW1uIAbEZVe7fM3Ij
         SYfLCvyfiPu7GZ7vvwUsJd6s6mcLY7b00CUmb/takBvAhU6Pc+HASEo7780b3xXpIXaP
         sPnCc0GaTmChgjnLBhlkE6OL7+YZQcq1C0yd/svqXCg/VgWF54Uz6N/V1Ta6m/DMoTTi
         ObCQ==
X-Gm-Message-State: AOJu0YwUODHE6xeEEUzVAYLBevHwptYnwdW7L47I76EXLLWyVA6Acknr
	MGJhcwAam5/uzaaiO24Vxm013yc4S1JBbtnflASyT1U2x5+kdJufBjep
X-Gm-Gg: Acq92OGHXKRwqNNhIuZuLTLDxe7fnndvDPi4eyW5Jkuto6pExzHTgLJImurYjzFrzhX
	pLmndqy6qT5RxF6Cv9iahA/QhnD4KMfJctLPu6GkCdwXvZ6AGM8M8v9e3A5q59bygJ1ig7jG62O
	7GxFFJGSRsvBGvV87DmmUTKatkpnRN9RCUeBK9D+KkZuw0yq8G2hXVrVHW6cPNtd37Ty7L/dsRh
	PUMwW7vNhtgr2kfsrhhWrrpfpLPhj2ctFTY09E2XVnrmx+0aVMvktA1wIr/QlivqukZ/CrJ1Ro2
	U07hbNo7vT5ydYscNbOKPC74MnEyJ3ss5G7Goio+xy9xTb4QPoGs8KqzLP2DZPDvPXsdefa7QZ7
	t3KcmSWlWuZnc0+qQ+B/v3iUieZ+15FowVje0ZFF76Kf9vMhBKZ6Pmr9FU9mu4b200xXOTz2h9t
	JIfa//fUGAZkXk/VLRRNm+a8GGwy1+o1LAJBJyKcNUd7m1pgGw5f8//J9j7KTvE3RO6Vv85nQak
	ndGNFBhxV8hqzUGh7cm/YGMbh5j5WNE5lGlksl0SPGyBmIgxFJMNA==
X-Received: by 2002:a05:620a:8886:b0:910:1c85:4adb with SMTP id af79cd13be357-910b110235bmr62071185a.37.1778696372150;
        Wed, 13 May 2026 11:19:32 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-910bd02f12dsm27871485a.40.2026.05.13.11.19.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2026 11:19:31 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] media: rkvdec: hevc: cap EXT SPS RPS control counts before descriptor assembly
Date: Wed, 13 May 2026 14:19:22 -0400
Message-ID: <20260513181922.2075438-1-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_111934_019682_653B855E 
X-CRM114-Status: GOOD (  19.71  )
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

V4L2_CID_STATELESS_HEVC_EXT_SPS_ST_RPS and
V4L2_CID_STATELESS_HEVC_EXT_SPS_LT_RPS are registered as dynamic-size
controls with a per-control element cap of 65. The V4L2 control core
enforces only the payload-element cap. It does not bound the spec-derived
count fields that the rkvdec HEVC helper later uses to walk fixed hardware
descriptor tables and temporary helper arrays:

  - struct rkvdec_rps::refs[32]
  - struct rkvdec_rps::short_term_ref_sets[64]
  - struct calculated_rps_st_set::delta_poc_s0[16] / delta_poc_s1[16]

A userspace V4L2 client that can open the Rockchip RKVDEC m2m decoder node
may submit SPS/RPS controls whose counts exceed those capacities or whose
prediction reference index underflows. rkvdec_hevc_assemble_hw_rps() then
walks past the descriptor table or temporary-array bounds.

KASAN under a small KUnit harness wrapping the real helper reports
slab-out-of-bounds in all of:

  - num_short_term_ref_pic_sets = 65 (write past short_term_ref_sets[64])
  - num_long_term_ref_pics_sps = 33  (write past refs[32], intra-struct)
  - ext_sps_st_rps[i].num_negative_pics or num_positive_pics > 16
    (write past delta_poc_s0[16] inside calculated_rps_st_set)
  - INTER_REF_PIC_SET_PRED with delta_idx_minus1 + 1 > i
    (u8 ref_rps_idx underflow then OOB read on calculated_rps_st_sets)

Validate the SPS/RPS counts before calling the assembly helpers. The cap
values match both the HEVC spec ranges (num_short_term_ref_pic_sets <= 64,
num_long_term_ref_pics_sps <= 32) and the fixed driver descriptor and
helper-array capacities. Reject controls whose counts exceed those, and
reject prediction entries whose reference index would underflow.

Fixes: c9a59dc2acc7 ("media: rkvdec: Add HEVC support for the VDPU381 variant")
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
Assisted-by: Claude:claude-opus-4-7
---

I don't have a RK3588 / RK3576 board to confirm this through a real
/dev/videoN request path yet, but was convinced enough by:

  1. Static reach: registration of EXT_SPS_ST_RPS / EXT_SPS_LT_RPS with
     .dims = { 65 } at drivers/media/platform/rockchip/rkvdec/rkvdec.c
     :239-287, the SPS-count-driven loops in rkvdec-hevc-common.c
     :213-225 and :228-251, and v4l2-ctrls-core.c :1213-1277, which
     validates only EXT RPS flags and not the spec-derived count fields.

  2. A KUnit harness (separate, not in this patch) that allocates one
     struct rkvdec_rps + a single calculated_rps_st_sets element via
     kunit_kzalloc / kzalloc and calls the real
     rkvdec_hevc_assemble_hw_rps() helper. Under UML + KASAN_GENERIC with
     the kasan_multi_shot boot param, on a stock tree it produces these
     reports:

       BUG: KASAN: slab-out-of-bounds in
         rkvdec_hevc_assemble_hw_rps+0xb0c/0x1080
         (num_short_term_ref_pic_sets = 65, write of size 36 0 bytes past
         the rps allocation)

       BUG: KASAN: slab-out-of-bounds in
         rkvdec_hevc_assemble_hw_rps (num_negative_pics = 64, write past
         the single-element kzalloc'd calculated_rps_st_sets buffer)

       BUG: KASAN: slab-use-after-free / slab-out-of-bounds reads via
         u8 ref_rps_idx underflow at calculated_rps_st_sets[255]
         (INTER_REF_PIC_SET_PRED with delta_idx_minus1 = 0, idx = 0)

     The num_long_term_ref_pics_sps = 33 case is invisible to KASAN
     (the OOB write lands inside struct rkvdec_rps) but corrupts
     short_term_ref_sets[0]; the harness asserts that case explicitly.

  3. Same harness on the patched tree: all five cases (four adversarial
     plus a legitimate-limit regression with ST=64, LT=32, num_neg=1)
     pass clean, no KASAN reports.

If hardware-side validation actually does reject these counts before
rkvdec_hevc_assemble_hw_rps() runs and this patch is unnecessary, please
say so and I will withdraw it. If it is reachable, I will follow up with
a runtime hardware splat once the Orange Pi board I bought arrives.

Let me know if you want a patch set with the KUnit harnesses too.

checkpatch.pl: 0 errors / 0 warnings.

 .../rockchip/rkvdec/rkvdec-hevc-common.c      | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
index 3119f3bc9f98..895fb16bc572 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
@@ -408,9 +408,58 @@ static void rkvdec_hevc_prepare_hw_st_rps(struct rkvdec_hevc_run *run, struct rk
 	memcpy(cache, run->ext_sps_st_rps, sizeof(struct v4l2_ctrl_hevc_ext_sps_st_rps));
 }
 
+/*
+ * V4L2 caps the EXT_SPS RPS payload length but not the SPS-derived counts
+ * that the helpers walk. Caps match the HEVC spec ranges.
+ */
+#define RKVDEC_HEVC_MAX_SHORT_TERM_REF_PIC_SETS	64
+#define RKVDEC_HEVC_MAX_LONG_TERM_REF_PICS_SPS	32
+#define RKVDEC_HEVC_MAX_RPS_NEG_POS_PICS	16
+
+static int rkvdec_hevc_validate_rps_ctrls(struct rkvdec_hevc_run *run)
+{
+	const struct v4l2_ctrl_hevc_sps *sps = run->sps;
+
+	if (run->ext_sps_lt_rps &&
+	    sps->num_long_term_ref_pics_sps >
+	    RKVDEC_HEVC_MAX_LONG_TERM_REF_PICS_SPS)
+		return -EINVAL;
+
+	if (run->ext_sps_st_rps) {
+		unsigned int i;
+
+		if (sps->num_short_term_ref_pic_sets >
+		    RKVDEC_HEVC_MAX_SHORT_TERM_REF_PIC_SETS)
+			return -EINVAL;
+
+		for (i = 0; i < sps->num_short_term_ref_pic_sets; i++) {
+			const struct v4l2_ctrl_hevc_ext_sps_st_rps *r =
+				&run->ext_sps_st_rps[i];
+
+			if (r->num_negative_pics >
+			    RKVDEC_HEVC_MAX_RPS_NEG_POS_PICS ||
+			    r->num_positive_pics >
+			    RKVDEC_HEVC_MAX_RPS_NEG_POS_PICS)
+				return -EINVAL;
+
+			if ((r->flags &
+			     V4L2_HEVC_EXT_SPS_ST_RPS_FLAG_INTER_REF_PIC_SET_PRED) &&
+			    (unsigned int)r->delta_idx_minus1 + 1 > i)
+				return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
 void rkvdec_hevc_assemble_hw_rps(struct rkvdec_hevc_run *run, struct rkvdec_rps *rps,
 				 struct v4l2_ctrl_hevc_ext_sps_st_rps *st_cache)
 {
+	if (rkvdec_hevc_validate_rps_ctrls(run)) {
+		pr_err_ratelimited("rkvdec: rejecting HEVC SPS/RPS controls with out-of-range counts\n");
+		return;
+	}
+
 	rkvdec_hevc_prepare_hw_st_rps(run, rps, st_cache);
 	rkvdec_hevc_assemble_hw_lt_rps(run, rps);
 }
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
