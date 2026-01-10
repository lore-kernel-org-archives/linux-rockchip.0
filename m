Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CB2BD277D0
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jan 2026 05:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/F90k5LXPsfCqf3lWnYjWiZTbOM3G1rJmYyMfRakj68=; b=X2kI+BkQXaPVRI
	CiqsqcINNp6CBsrb56IyZgJ5xUaeBW4cuG8ZepMjVNL0Z3Qq7YgvbIyccqz9H5qfnOCNV/isa7uSN
	ywRTqMsEhn+ClJ3QVU8oIhg1MtavHbS7PBDzCpDOLufnGbgNYOg871LDRAJWM8H5C3gyOdBeLEjEh
	YR3663oNhK2TwLuiicstkZeEivjq0tVb7zGUqD8yLNZVMp3q1GIY0APNHB4wr+KHMzZP9q+Fh2Pdz
	hMUd8ULyBC+loMoZFJaD53f4t7e2a51oFEtjvaqMP3o4hJLw3Rt0EFq9l4Fm/n4I+HgINAZ+mZKqH
	5mD9Kya7LayU1/xbJSFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veRfV-00000003HOh-0J01;
	Sat, 10 Jan 2026 05:37:45 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veRfR-00000003HKy-3bl2
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Jan 2026 05:37:43 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-47795f6f5c0so30070505e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Jan 2026 21:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768023460; x=1768628260; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SwF/unBnaFW1rvIB2VegLLFRYP2bQTcQU4jqjcGifVk=;
        b=D67QE1saGbuQPbfQ7kyn7Sc+SOAcmtGm+PL+PCtayhOuORjkbm50VvsghP+56llJob
         fuxO20oWgEEukKykNeWScuDu7IG2487u6i77sxOLW0ydXP/Il2Zok0dshqQ9xp1vlCVt
         PPcPSFQIyu1ozO5VWI9H7RfyNNhjIqY6GTkoC3wxT40UxiTPHQ+A9mUIqd1e5Jqvpjvo
         5W5Hh4sTcFw4MGTgp51apSLMejhsRJ5/+62j4jZeMk7X5oXkR7xshKUjkPeDaGAP3hri
         q077k4I8zbBHYL/z2LQ6YBWgMoRBKGi/svKzr0fHIMoqAzRHU95WSZaAaNIOLHLYCpfO
         pvTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768023460; x=1768628260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SwF/unBnaFW1rvIB2VegLLFRYP2bQTcQU4jqjcGifVk=;
        b=BQOer+myXCj+8rPYmMu3g5pxwznxRyNFb6Czq1I7oPUbGOBRkzGx4uv0ULExYM5STv
         RYDsDNpHGUI3VakVwVros1ew5uAe4gG+TuY0D0hbkoQygVCfrzEjj9OF6bBXrbkexyoz
         UpGUXZTFtrFt8pxvFqFiMrCx0alXOxZaSdJoOdGCQ5xU3ojV74RC0Wptm3cCzwk/38dB
         HFr+BU/Kb01yqMhW3i8f5CT1qCaxm1ksGWj59Xf5AIlIwL9N+YOndESOR6odmY5uWTAy
         MmG5H3fgeD2W6HLok7Fknx9LhZ5vkFjqRHJ1TtWWXMDyltq20ZzHRpKq/jGUa4zOUBqG
         SGAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpX24sZ3JJr44e4VqN1xbdiEsR0hEEUbg4+0fB8CrEVs4S9cNeYzLBaNzvtx66YbCuT9mYuIYsMc9KWSOmaw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyAsqfuEziR79c77zYoTAAhjBTyG083CSJ5xOGtHEYZpIJB8wrc
	n8zRFWb9Bl8KBT+cE0aPdp2139O934Vfip9/DrqSxBjrk6sXV89ilaiY
X-Gm-Gg: AY/fxX4FKgAbPPqPNv55RSuiaIZexIj0f7Q5ZgLyeQ7dnAKinia7zfETIpUQ3QkjWhd
	aWBdrLrUUqBb2N4v2VqQBVY+jgqLPkQDcTJ6UPzzvDdjyY5+Q4w7oAtD8xJlDYewIHRFAEncLUD
	Xk/598Lxcg9pXUUKdnE0WhyFY+JILLBlzdobsVKqotcSXpV4BDX+B/5VbMeixc3x1PfqUXabO5Q
	u065HY+0sQ64BW2n/kHcm7ZhXORFrn6JuOObd5V6ZUY6C0pkpsXpFZl3CXPY/qCHJgo4gwKuSHx
	skkqa/5CFgN5UAs0hAExCXhXYr0RCTFKy4vypFWyQhkqS4r8Up/1XsCIM8bW9mXD7H14r0qAEoP
	RIth/dn491D1AnCXxPoGN8ABosZOIhoiffaSXdup70AMEYHY3i5ZgwiCTxnUnOGhjf8gciOsxaL
	CN9+5sh7cwLBo5E0Y=
X-Google-Smtp-Source: AGHT+IETNRaHMNAZQeH2gwTg4jdbHnvg19YnwNKOZH/s/Wk/33B+6YxgXnlQIAepe6DAJfUBCWI5ig==
X-Received: by 2002:a05:600c:8b65:b0:477:79f8:daa8 with SMTP id 5b1f17b1804b1-47d8fbda479mr66222065e9.17.1768023459645;
        Fri, 09 Jan 2026 21:37:39 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dadcfsm25973825f8f.3.2026.01.09.21.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 21:37:39 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	=?UTF-8?q?Olivier=20Cr=C3=AAte?= <olivier.crete@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Dang Huynh <dang.huynh@mainlining.org>
Subject: [PATCH v3 2/3] media: rkvdec: Add support for the VDPU346 variant
Date: Sat, 10 Jan 2026 05:37:26 +0000
Message-ID: <20260110053727.2295260-3-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260110053727.2295260-1-christianshewitt@gmail.com>
References: <20260110053727.2295260-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_213741_958859_CA4F12F8 
X-CRM114-Status: GOOD (  11.70  )
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

VDPU346 is similar to VDPU381 but with a single core and limited
to 4K60 media. It is also limited to H264 L5.1 and omits AV1 and
AVS2 capabilities. VDPU346 is used with RK3566 and RK3568.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Dang Huynh <dang.huynh@mainlining.org> # Pinetab2
---
 .../media/platform/rockchip/rkvdec/rkvdec.c   | 103 ++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index a5cf6f3240f8..6e49b129d11f 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -236,6 +236,62 @@ static const struct rkvdec_ctrls rkvdec_hevc_ctrls = {
 	.num_ctrls = ARRAY_SIZE(rkvdec_hevc_ctrl_descs),
 };
 
+static const struct rkvdec_ctrl_desc vdpu346_hevc_ctrl_descs[] = {
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_DECODE_PARAMS,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_SPS,
+		.cfg.ops = &rkvdec_ctrl_ops,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_PPS,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_SCALING_MATRIX,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_DECODE_MODE,
+		.cfg.min = V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
+		.cfg.max = V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
+		.cfg.def = V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_START_CODE,
+		.cfg.min = V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
+		.cfg.def = V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
+		.cfg.max = V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
+	},
+	{
+		.cfg.id = V4L2_CID_MPEG_VIDEO_HEVC_PROFILE,
+		.cfg.min = V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN,
+		.cfg.max = V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_10,
+		.cfg.menu_skip_mask =
+			BIT(V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_STILL_PICTURE),
+		.cfg.def = V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN,
+	},
+	{
+		.cfg.id = V4L2_CID_MPEG_VIDEO_HEVC_LEVEL,
+		.cfg.min = V4L2_MPEG_VIDEO_HEVC_LEVEL_1,
+		.cfg.max = V4L2_MPEG_VIDEO_HEVC_LEVEL_5_1,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_EXT_SPS_ST_RPS,
+		.cfg.ops = &rkvdec_ctrl_ops,
+		.cfg.dims = { 65 },
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_EXT_SPS_LT_RPS,
+		.cfg.ops = &rkvdec_ctrl_ops,
+		.cfg.dims = { 65 },
+	},
+};
+
+static const struct rkvdec_ctrls vdpu346_hevc_ctrls = {
+	.ctrls = vdpu346_hevc_ctrl_descs,
+	.num_ctrls = ARRAY_SIZE(vdpu346_hevc_ctrl_descs),
+};
+
 static const struct rkvdec_ctrl_desc vdpu38x_hevc_ctrl_descs[] = {
 	{
 		.cfg.id = V4L2_CID_STATELESS_HEVC_DECODE_PARAMS,
@@ -463,6 +519,41 @@ static const struct rkvdec_coded_fmt_desc rk3288_coded_fmts[] = {
 	}
 };
 
+static const struct rkvdec_coded_fmt_desc vdpu346_coded_fmts[] = {
+	{
+		.fourcc = V4L2_PIX_FMT_HEVC_SLICE,
+		.frmsize = {
+			.min_width = 64,
+			.max_width = 4096,
+			.step_width = 64,
+			.min_height = 64,
+			.max_height = 2304,
+			.step_height = 16,
+		},
+		.ctrls = &vdpu346_hevc_ctrls,
+		.ops = &rkvdec_vdpu381_hevc_fmt_ops,
+		.num_decoded_fmts = ARRAY_SIZE(rkvdec_hevc_decoded_fmts),
+		.decoded_fmts = rkvdec_hevc_decoded_fmts,
+		.subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_H264_SLICE,
+		.frmsize = {
+			.min_width = 64,
+			.max_width =  4096,
+			.step_width = 64,
+			.min_height = 64,
+			.max_height =  2304,
+			.step_height = 16,
+		},
+		.ctrls = &rkvdec_h264_ctrls,
+		.ops = &rkvdec_vdpu381_h264_fmt_ops,
+		.num_decoded_fmts = ARRAY_SIZE(rkvdec_h264_decoded_fmts),
+		.decoded_fmts = rkvdec_h264_decoded_fmts,
+		.subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
+	},
+};
+
 static const struct rkvdec_coded_fmt_desc vdpu381_coded_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_HEVC_SLICE,
@@ -1657,6 +1748,14 @@ static const struct rkvdec_variant_ops vdpu381_variant_ops = {
 	.flatten_matrices = transpose_and_flatten_matrices,
 };
 
+static const struct rkvdec_variant vdpu346_variant = {
+	.coded_fmts = vdpu346_coded_fmts,
+	.num_coded_fmts = ARRAY_SIZE(vdpu346_coded_fmts),
+	.rcb_sizes = vdpu381_rcb_sizes,
+	.num_rcb_sizes = ARRAY_SIZE(vdpu381_rcb_sizes),
+	.ops = &vdpu381_variant_ops,
+};
+
 static const struct rkvdec_variant vdpu381_variant = {
 	.coded_fmts = vdpu381_coded_fmts,
 	.num_coded_fmts = ARRAY_SIZE(vdpu381_coded_fmts),
@@ -1705,6 +1804,10 @@ static const struct of_device_id of_rkvdec_match[] = {
 		.compatible = "rockchip,rk3399-vdec",
 		.data = &rk3399_rkvdec_variant,
 	},
+	{
+		.compatible = "rockchip,rk3568-vdec",
+		.data = &vdpu346_variant,
+	},
 	{
 		.compatible = "rockchip,rk3588-vdec",
 		.data = &vdpu381_variant,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
