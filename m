Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7EBCE8FDA9
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Dec 2025 11:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcPSkrn8cOV1ysRYBffbmPx9TYChW/8hi1jColaK2pI=; b=l6mROqRpQr+gk6
	uQY4Wgda3jqOyw/IF32gEsyT3CuE2iscki0zkY0JjPElwIL+BgH7hRtIZuERcPDhuMy87BeLXdKlo
	4ccZ9LwA92Tnpkzo3IymdMmhvWUM6BQi2I1+qla7HN9mJZRReHKTYSozclHbCU6Ha/AfHN6tgNref
	kxxNO9dmiaDiGobG/MfQq4Jr6aVML/N0NVbBRtXyB1bN42z4BnsebMHP3ScZGBMYjoF73m9FdPu6T
	4y8TrJbRDeIlnrcMC5AduhcmHZMUhnWvzurUsrdkxaATKV+FmZ008qMzU0sgBSGOI3UpEdjs5vsZ+
	EtM3hbmkhe2bBrHevqxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZ633-000000018tG-3P5I;
	Fri, 26 Dec 2025 11:31:57 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZ630-000000018r8-33im
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Dec 2025 11:31:55 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4779cc419b2so56689175e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Dec 2025 03:31:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766748713; x=1767353513; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rhf0TH4eJNjuHSmbRZBfmqwPKHrm+PMdGGpE2aA2ePg=;
        b=gW4v4L98bgFklQ3TlBX43AW/HrUQXJmeoNhZmytO4GYupo2U0hJIGc7rvpoLqi6tWm
         IyvhpnmTXyG0xx+nt5WLL2Jk53Rdou63mByqczG/Hx14AnG1bHd7/dMbV7s4c2eVaxlr
         UeAcPnm1ujQ+iMTIQrET/2vpsomTZvNfYZv8WFrW7A3mklf0AgUhcCrLBcWDm94H9K/+
         +WwDpKjAOZjCBVhwmDQkObR4Ej3xNg5OBszhPViPKT+WRfZZHJVPQrQiJjCJFzF3Gnf7
         2IekyhLFt/b3k9oW/77l6JXdKqBiROdOprAtqM8IIksuHrc792UYWqLaAxjv0PyE04j4
         Xvug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766748713; x=1767353513;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Rhf0TH4eJNjuHSmbRZBfmqwPKHrm+PMdGGpE2aA2ePg=;
        b=njSIPOMHA6Nzqa4PTzm+PGNc/KQ/FtOemuRDB7ROvQgv6RVOJdcL9ioHp2aALhw0M0
         vkyWzwH8lllZAD9pW0Q8h6J0ZjmdF+4DJ81hrlgyWh6g6CsdK54PKh/K4SirV43RV7CK
         0c4T8ROLNE8ABZWnmUmmyfscjTdfJnbQ/OFjmgXFQwnguUrSOGvwQ/v6ZlA2h4pS4K9n
         LT7FQX3zwPqMyNPX6OYBzX5f0ep2N0/ON+/4WNXKEz1hU4yrjiRguJ1hzdyg7g3uVZAR
         1GA27oXbWa3P+Xj8J4qbFTmaOz21bGVLP8XZhFkJwdSc1XNtQamM/9V6kjg1HAVdmL6Z
         vCzA==
X-Forwarded-Encrypted: i=1; AJvYcCWlxBLGpMEuyMg7PXxm8y+dmHbJ/1/KetJw4kBSmsVe6YA/KLudhfK05fIgIQyceZcnWVwNem1Kx/ONKBijWw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwKEuMWvfjpRhDDGCDcI1+C/zTc3llSS4klwuDvLDi/gDV7zMhm
	H0brbcpyxTM4srXzgcqhSuCTlW3DIoC2owWAhNvd+GN6qScu5QcrkP8s
X-Gm-Gg: AY/fxX5fU0f8pMRV5K+W5uPnACR5H2DSvF+CVGQuX9khEIiGfsG/dWafi92ZWYaJ5Rf
	gXCDxIayLFScmw5O3rdmUrXaGttf3H6cxVcEry5S+LEODcXnbu6p2fC6LV4HjPxk1PLsNJkRif4
	v0CJDmZgsSzUuzW00+xaRH4blrruIRkSd61b8u29qsxqNTJk2da1tm8SovI9SqhdZTh4saSrk6m
	otjP3uKCUA9+0MVnWKXtqdaIbYF2MQI8p8NDYYQRldcuZkgD3tCtwdgsCPoOIv8+Odq+xEOIcua
	LOoLQAbp66aRek8p9ExeToRHVxG3WgtzHBhUY94f7WjrP0T6Y2NhTnNomlUHg3/SX5/yQ9K5IvF
	/IQg0X3M90ITZ3x8KKVSUSoLIcFcdKqTjSZ3XMfado9pjrJqtCFMWe6rzGtpr2squ5h4IJV96kO
	4tORAwfhqDnKMMI80=
X-Google-Smtp-Source: AGHT+IEdX/opTeKmbf9vs+IfU8RNLfI0e1Jx0FbC8ZOgZmZVG+BhcxQJNX7MD2OXkK7u+x0+7A8c8A==
X-Received: by 2002:a05:600c:3506:b0:477:63a4:88fe with SMTP id 5b1f17b1804b1-47d195499e5mr211765625e9.2.1766748712900;
        Fri, 26 Dec 2025 03:31:52 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1b1bdsm44182107f8f.8.2025.12.26.03.31.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 03:31:52 -0800 (PST)
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
Cc: Nicolas Dufresne <nicolas.collabora@collabora.com>
Subject: [PATCH v2 2/3] media: rkvdec: Add support for the VDPU346 variant
Date: Fri, 26 Dec 2025 11:31:39 +0000
Message-Id: <20251226113140.573759-3-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251226113140.573759-1-christianshewitt@gmail.com>
References: <20251226113140.573759-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251226_033154_883942_520005A8 
X-CRM114-Status: GOOD (  11.56  )
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
Reviewed-by: Nicolas Dufresne <nicolas.collabora@collabora.com>
---
 .../media/platform/rockchip/rkvdec/rkvdec.c   | 103 ++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index e547057dc75f..6b39e99d8a8b 100644
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
+			.max_width = 65472,
+			.step_width = 64,
+			.min_height = 64,
+			.max_height = 65472,
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
+			.max_width =  65520,
+			.step_width = 64,
+			.min_height = 64,
+			.max_height =  65520,
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
@@ -1643,6 +1734,14 @@ static const struct rkvdec_variant_ops vdpu381_variant_ops = {
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
@@ -1691,6 +1790,10 @@ static const struct of_device_id of_rkvdec_match[] = {
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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
