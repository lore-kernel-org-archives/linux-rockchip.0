Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15BD6D3B7D2
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Dec 2025 11:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ee+qp5xEbfGy8zRc4GJ1G23+9EByDhD9BdGYHZ03eBo=; b=F6X2S+bCUYpMwM
	Inq3HTur3v3Hb6wYrO2kMNQVJcgvfUiWrshO5KNryK415vCUyZ9M1rP2v3Je8EF0aDT41Lh/CoqmO
	fEB5zCmZbXWGy16lSNs11jFzDuSZYWiu2KtMDHCRaqdX2jSmrGd1OB+dyf2xdehpDY9QEqca3FG3x
	sWUIVVh2WlWI3hMS6xPbWHQ8eb3MgUaJRnNWkPXHBuSyNvIz4Qn2oykxX4m2gt9acfa42viT9NMf4
	JFx+m3hfX5z5bni3J7+E2UZr0gasMaFkFx4BFOTVw99Sm0Ezju9slU4IFVSxjCWEyD79mb4CYrLfQ
	FdfEDhfmbASxzhKfLPXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRqk4-0000000AsrE-2DiB;
	Sat, 06 Dec 2025 11:46:24 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRqk1-0000000Asqr-0luM
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Dec 2025 11:46:23 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-597de27b241so1609077e87.2
        for <linux-rockchip@lists.infradead.org>; Sat, 06 Dec 2025 03:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765021579; x=1765626379; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HePzOK2YwREM++8Zxr7PF7Xhi3Zuwv6TtIklSs2K0TA=;
        b=LJWNrus6Y+GkctcGSfootxz13+KrCTniHVwV8Ix/jXx8hkBsJCzOyZP5Hu14Y0Bhod
         mz2Q22irfZ09vMhTDO0qtpKKSnlSUmt0xpQBTETIUfc7yUjqs9rqf2PuZ8Hpi7AhavrR
         Xclsz82f6N/tw+N9fP6Z/y6X1EDGHkSv14vTQH48l7TgNlo1Gv+hCdHxSflHj88j0jeI
         lXDzzVLimcvGdLjimHhaQ2knokzXieGGHax4/21wwhqowgZwKKcnxaGCw6+fh4lOGFwI
         K7FJH7gQd1aNv1Tfj81HwqjkRFYLyb09SL//izRztAA7cc67yoVIRdtdl/BPZfrB4gIP
         YLjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765021579; x=1765626379;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HePzOK2YwREM++8Zxr7PF7Xhi3Zuwv6TtIklSs2K0TA=;
        b=riMW1xzAY1scRM5u/+pjCBZJmd9+6MQKLVlzPfcLjbK9ygRnhp7XApoqkpI2GaAnPk
         7bU+noGbNS+rHEuJOKjwuvE9ri2TcafQtezLitQ2IM3faKL6i0/mYEzm6h7uWttM0A9g
         wej+GU1lr9/HMDAygTQmjy1xbKi2DjeTdSW1HA5xI+aFDSAYDCsanjeyBqgFe1HOhChk
         7i+NNA8ErwW+eTErSYPBUjXY5Pdcm7+AbVHHOEAe5NJgSQB1xSATO67BzQTT2Ev0WYUh
         FdxAREAyRrFTspd6oa1qvNZ2t9JJLAxVKO8VxOFNOzHtjf2UefPEKNvAY+k5PEkrabdA
         FxlA==
X-Forwarded-Encrypted: i=1; AJvYcCU7ROQVZlBg/53OF6MixLkprXZBlE1PJW3cnmIh5gwU6LW9OACcu8yGmsCW1j7WINNB9SWqDrU3B0j2Gb4eeA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9UPH3DtbwjpaxwrUnheI+FgEhcN2Yfzq13We9N3rtMlWCxHUu
	Ul8lQOZDF9NI63q/1KWGZMztqRwGLclV2MesS3AfI3Lw0mPWc4cp8xTAsShVgAVBZlQ=
X-Gm-Gg: ASbGncvlSNzkxtNtLS1bnSuaBkMOb/GoRCh4WQ8vUcxJkpY3wSt/+0olm1lGS/Hnq3j
	g3lJHcm954vkkH/ttZU7chZ7AzplbnNrRgjZrH2Oc/uuW7rSnSl84y+Qq+8pO6kkt5IbHei8OVK
	Wq7nnmKV5UvYkLXeemN02U7tR01f0g4Yvd9GSKRSZ5xCo6HkOzDv0+0fHkLDoealFKmHDhOMSJl
	gu9NnNkHfNUyw12cKiInGKy07DiNS8d7YYUTXVsXGHLmNF47cl944LaMxS5Fwt/1O63JL/8ZTQT
	NJg3pxZLYVTBZqdQtVbfMUVMNFgLvpE0X2Tco9DYnX/9+fozEpyJjk3m8DjEZOdEVtJHBe/djDp
	DOBRfOErsJnZ7hW2VwDaDrz7OqXWJ+K2roZvAViN2yFXG6Og8wMxqz/Od2cW44ytjEO6eW/0bxr
	M07r0fqumzNWCzzJc=
X-Google-Smtp-Source: AGHT+IHLtSSBaH5vwkicDwq4VHYkBOA2QyJRB3rOh/XN2E2xH2ybmyHraxYc+LAfhlTKju/XpBChLA==
X-Received: by 2002:a05:600c:828d:b0:477:7b16:5fb1 with SMTP id 5b1f17b1804b1-47939df0045mr23564235e9.7.1765015327245;
        Sat, 06 Dec 2025 02:02:07 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310c802bsm126055205e9.6.2025.12.06.02.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 02:02:06 -0800 (PST)
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
Date: Sat,  6 Dec 2025 10:01:58 +0000
Message-Id: <20251206100158.2041439-2-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251206100158.2041439-1-christianshewitt@gmail.com>
References: <20251206100158.2041439-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_034621_277832_7CC327D0 
X-CRM114-Status: GOOD (  11.02  )
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
