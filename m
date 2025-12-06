Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E4D5D3B7D1
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Dec 2025 10:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ee+qp5xEbfGy8zRc4GJ1G23+9EByDhD9BdGYHZ03eBo=; b=vM7SdeGuZxqlB7
	T4mQMrz8MQnf3g236Y6tA2cstJiynqz8EQXPxdCttmkmaGR1UiVZ6BymiIZeX9wKrkG/ToOQJrFOz
	0sfsE8rzwuKKnRv5tm0NtRi1cing+0X2OIOcgFuFlbB6bbUAFIhhPSBPp6DxfjLBLojOITIwP7Wmr
	qNMO3NwsX9QEYBfmuA2iktWSZ6RuSltX92xRpbzh6/nGvr/RjCsjoQFmdefrQWj0ijBPvF9u+gTZO
	Q2QvMTuJTtIvHLzlyeHor6xDNDqm1V+TtS2Dcbnp9V7JVV0QEt2evHsDmRR6yM0rhjEJE7Yies7Z7
	6MaZmUdCb5JE8fx6uabA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRpO5-0000000AoCD-0Gsc;
	Sat, 06 Dec 2025 10:19:37 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRpO2-0000000AoBs-3UNG
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Dec 2025 10:19:36 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5957753e0efso2879124e87.1
        for <linux-rockchip@lists.infradead.org>; Sat, 06 Dec 2025 02:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765016373; x=1765621173; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HePzOK2YwREM++8Zxr7PF7Xhi3Zuwv6TtIklSs2K0TA=;
        b=d9VNvu4AUO5n5esWNlxUIaOU24R+SoNtpM5MEJDpfxYKz5jtI36AV+mMtjxdKjCRFJ
         7p2JUw5iMv3nMWdIRiIwd/wHUz7kVTQbwKcAZoi+R+MqiixJawKCV1uWlLt1pwvlSIr/
         2sisVMiMOLiTxIK8NxfKx9/OePVxuTVzmpkSlW/uz+cYktZFsfHp3Y5eadnDH+uQ42XZ
         G6Ge3XCkT6qNph0wng6zPWVOrAbZ981y6pvTKbvhTHMFnPVAoLNpEfKfdM3dcPw9YJHx
         z7CsnkLTETvyA9HnJBRoUI1xxb+FR4MZ1MwG05c5DlR/wf0S+aqzL1JAgwqnlA7JHI/z
         0/xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765016373; x=1765621173;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HePzOK2YwREM++8Zxr7PF7Xhi3Zuwv6TtIklSs2K0TA=;
        b=bifIcULz7u4BA2GQAUb0dihY53jiUBBl8OGaQtjf2vkzBNuv4+Ew3V6v6GpQN0Ct5z
         qH+tDP0cC5rb3d3Sk2cXI4dxmCYJIhia6i5FiLJCzQr9C6tl6f88sMNLJ77frlptqzT8
         ozfChr4LzSvu5V1mHxh+K6zJieFogLGvtK7el+0WTzOpKAQQxxskEvAf/eIYIY7cDxRA
         TsPeu71FhHK5tIHjmLP7X6gip1yC40ak0g3tZRFU/vaqKnkMaODNucqcnO3B5sfNhC49
         7LrxnoZ9MC+CmpPQ9K3yDdWmSjYlU9kwVyGqJrkDg5lP3Fo0HfjCr4bHl4l5ib+vlZbS
         eZMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWu1HlBts663V41+i3G1zyyEN5eIDfHX65B9gUTL2oIJMwVsOhqG/Fbe/y5yzFm7neYaXMYUwKp+T16JOJZpA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzBw7y5qC+AdHnczUH3KbCRW5VUrPnWj3Fn4l59FKvfPXbASH1S
	/CAGcpnrSSqJ0ZYSb0j6Cz0Mx5mPhD8DwIJbuPyBBaoNLp2nh4stEmm6XMUYkV5AChM=
X-Gm-Gg: ASbGncuDUf4C2tGVw6VBlYNbG/Lnf8NrTDfQ9nrDntxCrZzBs+ctoxosnR6lNm1O+b2
	1y+VEpMfYv9wZzu2AG8VeIda9kjDQ/iDoXPpfoofRiPM+KTtgJa6TFVgIYW9fftFxB/BD+fQlAp
	OGrILRyjNfplCAyQmIclp8ZuSF8MZb1j9nJj94qfye+2CFKomE40RNXhOySESz66hN43etWHtRf
	tjnYmXm/DC+3j/pVzAmU3IO/+CBbCNdTlZ7ajGZyhVumch0j29mYd598OGmntQMITdZXxAdrfir
	CSIGfOM9/tWhKostaj1Veq+OidU11P0r8Y6KHdCGplnW8GMNKTVHt0V2cOKkGPjEXY/8jjEC83r
	AChCKGgcIWIR3tH1H8pHKOIxU/8VzJOKg56p/vXo3SQWq3DHvGqYPyu/xfFuCihBmL080VfMyeV
	s5QxvZ77d4mY7VkiI=
X-Google-Smtp-Source: AGHT+IHZhU14o4ScBHW4P11RxOcWO7E57dLHDLPGPlafHtqW8aK0T9R3cLmmCnbIYLub9+VE97fizQ==
X-Received: by 2002:a05:600c:8b0c:b0:477:a219:cdb7 with SMTP id 5b1f17b1804b1-47939c8b376mr21743575e9.0.1765009703680;
        Sat, 06 Dec 2025 00:28:23 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310a6d9dsm123094705e9.2.2025.12.06.00.28.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 00:28:23 -0800 (PST)
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
Subject: [PATCH 3/4] media: rkvdec: Add support for the VDPU346 variant
Date: Sat,  6 Dec 2025 08:28:08 +0000
Message-Id: <20251206082809.2040679-4-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251206082809.2040679-1-christianshewitt@gmail.com>
References: <20251206082809.2040679-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_021934_906022_111CD777 
X-CRM114-Status: GOOD (  11.31  )
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

VDPU346 is derived from VDPU381 but with a single core and limited
to 4K60 media. It is also limited to H264 L5.1 and omits AV1 and
AVS2 capabilities. It is used with RK3566 and RK3568.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 .../media/platform/rockchip/rkvdec/rkvdec.c   | 110 ++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index a1c02ef3a97c..cf68454b2217 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -295,6 +295,62 @@ static const struct rkvdec_ctrls rkvdec_h264_ctrls = {
 	.num_ctrls = ARRAY_SIZE(rkvdec_h264_ctrl_descs),
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
@@ -449,6 +505,43 @@ static const struct rkvdec_coded_fmt_desc rkvdec_coded_fmts[] = {
 	}
 };
 
+static const struct rkvdec_coded_fmt_desc vdpu346_coded_fmts[] = {
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
+		.capability = RKVDEC_CAPABILITY_H264,
+	},
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
+		.capability = RKVDEC_CAPABILITY_HEVC,
+	},
+};
+
 static const struct rkvdec_coded_fmt_desc vdpu381_coded_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_H264_SLICE,
@@ -1654,6 +1747,19 @@ static const struct rkvdec_variant rk3399_rkvdec_variant = {
 			RKVDEC_CAPABILITY_VP9,
 };
 
+static const struct rkvdec_variant rk3568_vdpu346_variant = {
+	.coded_fmts = vdpu346_coded_fmts,
+	.num_coded_fmts = ARRAY_SIZE(vdpu346_coded_fmts),
+	.rcb_sizes = vdpu381_rcb_sizes,
+	.num_rcb_sizes = ARRAY_SIZE(vdpu381_rcb_sizes),
+	.irq_handler = vdpu381_irq_handler,
+	.colmv_size = rkvdec_colmv_size,
+	.flatten_matrices = transpose_and_flatten_matrices,
+	.named_regs = true,
+	.capabilities = RKVDEC_CAPABILITY_H264 |
+			RKVDEC_CAPABILITY_HEVC,
+};
+
 static const struct rkvdec_variant rk3588_vdpu381_variant = {
 	.coded_fmts = vdpu381_coded_fmts,
 	.num_coded_fmts = ARRAY_SIZE(vdpu381_coded_fmts),
@@ -1693,6 +1799,10 @@ static const struct of_device_id of_rkvdec_match[] = {
 		.compatible = "rockchip,rk3399-vdec",
 		.data = &rk3399_rkvdec_variant,
 	},
+	{
+		.compatible = "rockchip,rk3568-vdec",
+		.data = &rk3568_vdpu346_variant,
+	},
 	{
 		.compatible = "rockchip,rk3588-vdec",
 		.data = &rk3588_vdpu381_variant,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
