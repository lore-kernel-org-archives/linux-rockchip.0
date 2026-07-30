Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF84AC55164
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 15:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WMwlL/c3fDs8SrcutTLZoMySq3ZXezJaOis64KYQVhM=; b=IO8YgiTdlnoQua
	MtC/yCDbSZM8TsHhsWrh2Og6i0dm9NUHFXjvqOyYK5PJASICaCHKGEVpVsQF9Ns3XeqAlxRo4pEU9
	heMbBg9yjGxtGRYS1gNvDPwZlWsK2j4d1iX3XP5AigfIOPCyvXpjcS2Mhc1tOJUun5cUwPV4JbEmm
	e06Avz+GdGu0XUuwS6ujZptPdTAc3L8ObVLYHP9tzm44ck4O8i85WQLmpqr2DINUkAlQ0lQ8SSPBL
	71MlCTdROriLZXdVZOyBYIHpEP4lzHaKj3Gn6hxwnjigxZqXVs3/qFs1kDaASxBx5Xm4p7H8aOCPw
	WrLcS4m5VxeFZf+jtD1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpSo1-0000000As45-0p1p;
	Thu, 30 Jul 2026 15:36:21 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpSny-0000000As3G-2U9C
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 15:36:20 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2caced6038eso11112805ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 08:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785425777; x=1786030577; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=eemCSxLVEosFJ70MWmOxEAPXsjZ44shUjMRdUXsw+jc=;
        b=o4ZXHPVsEO9B7+nZt6MFql5AzTw5Ap+Aj9Lv4CdRlbT2ncFbbOZ4GXXwBW2T64eJDU
         DhJYAqn6yFXZKBvJZkooTqTsotVOEZvx7jERAETkjbvrbfiAzR9+x6bt0oNtBL68cPKA
         CWB061GT/WBOkEQ1tVaBXDsa4U08YXsanq1Xa0FHb9C34vkgU4DwOWqTDKui4EIcfTs7
         gc/XdbAI/JluK/adGAYZTKgEbFyM2aqnCT9i6up1Y2/GZF9ydA/ECY4b8N9mTS4Xp2gI
         Xuz3stetkjTUtI+Yxp5rYGhwjCYMTOqj/6NOtkXmA4mEVqVkMxGSwVofqlQezGY856zW
         00Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785425777; x=1786030577;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eemCSxLVEosFJ70MWmOxEAPXsjZ44shUjMRdUXsw+jc=;
        b=C6iG43WvpwNkQeb1WKAa+exGtw/c+L7fsFZ9SQ2brparGUgUHchss6QJBIbGq3xuJa
         9XmTT2cFwtlzpIvipfPWAmkbi7jS/0OLkiMJAJohYzKmZlMynK+Omzcgh314o1ra1oo3
         BnUwKF472YT1rG1kZbF0m7WfSHRVbBOo2jEVyfUcDy7Xx0MzG8A4KOvajsxi+psqhZJS
         UFceqBBZiK1DJILmp7I709k/P0Jtcew4yOudPDcmqJS+gjc/6iQJ53UDxdvcfQf0Nfqq
         eDEiG4uBbpTa2FV2Gn3KCmXehK9twCz1bOm1lOX14+1WzUhpBI99gb1gK1HpTtNe++Tp
         4a0Q==
X-Forwarded-Encrypted: i=1; AHgh+Rq3y+6NCNX3ixKTIbSiQanPGfzVTEvp6XoFZAPLWZwpTq13A+P8Byb5QGoRSHW4sVcNHK/7qLyxpH+pdEn4AA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3pq6ECRxoMxPkiu/TMQdAKZ8camJkEw1gDnyZlBJtprhmQ23k
	ipsGJ75edwlK2Rk2foM/L5sv2C5HljvQm2aziet8vwbzM0f8Pr3szJhshe4we22+
X-Gm-Gg: AR+sD11Ms2UMx0MrMakmAt2h100ZLjssRDgrKf12w7cYrKyxjfMpqIio+/jALysXikP
	nWegW0CDv0PBaXBNrXwat1RwIW5r2ZaWpMsnld7VCHW7x7PcAa9dPBNdCTXPEThbSMRXLR/ITqH
	LiBuuFyPwr0OIU/G17kOqxoj8pR0PRiR481y0pXweTIfKTizqucrJAWKBS73b4e3HpAL5FmWstT
	OMvUYBR9cIPqUmViKd3UL7y2qYumLtKkzFPa1BysCGizUKQvX6Swsy9KbM/xnrEYTZzCZ5YXwzI
	kZWvKKFgf53c3ic70dFZ+8g5Y3h6uCGB1FKGzH7pd4ZrMhRkbs9woglWuPYmm7/09/yemUJ6it2
	VDo0PvfG9Q/pzdPQccXZdykDpZiSgYwfSQE4MIlMobilo9dplkCCvPSZq0WPYBKe/XxDkvhHtXl
	27Tw9270/is+6JqZukeAQcpbKMi5qocSip5pbmPnrbhKLRrTZPxAVDHDe8CNptI2DkrXriGuzoY
	sSGAbTiSfsSYD8k+KPUCaFRfOmbwdDCROpmIHFszfkugg==
X-Received: by 2002:a17:903:1104:b0:2c9:d8c5:d55d with SMTP id d9443c01a7336-2d03e9b6bd5mr5417115ad.16.1785425777367;
        Thu, 30 Jul 2026 08:36:17 -0700 (PDT)
Received: from debian-rockchip-rock5b-rk3588.. ([184.22.25.116])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d022a46969sm28820085ad.25.2026.07.30.08.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 08:36:17 -0700 (PDT)
From: Tharit Tangkijwanichakul <tharitt97@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Hans Verkuil <hverkuil+cisco@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-kernel-mentees@lists.linux.dev,
	skhan@linuxfoundation.org,
	me@brighamcampbell.com,
	jkoolstra@xs4all.nl,
	Tharit Tangkijwanichakul <tharitt97@gmail.com>
Subject: [PATCH] media: rkvdec: fix v4l2-compliance failure
Date: Thu, 30 Jul 2026 15:36:03 +0000
Message-ID: <20260730153603.5721-1-tharitt97@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_083618_640329_39EFC3FA 
X-CRM114-Status: GOOD (  11.45  )
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

rkvdec fails v4l2-compliance in two tests related to
V4L2_CID_STATELESS_HEVC_SPS. The Control ioctls test reads the control
with GET_EXT_CTRLS and writes the same value back; TRY_EXT_CTRLS then
returns -EINVAL because the VDPU38x rkvdec_hevc_validate_sps() rejects
sps->chroma_format_idc == 0, which is the value returned when the
control has no default.

    v4l2-compliance 1.33.0-5491, 64 bits, 64-bit time_t
    v4l2-compliance SHA: b32589c51481 2026-07-16 08:51:38
    Control ioctls:
        fail: v4l2-test-controls.cpp(942):
	try_ext_ctrls returned an error (22)
      test VIDIOC_G/S/TRY_EXT_CTRLS: FAIL
    Buffer ioctls:
        fail: v4l2-test-buffers.cpp(3102): node->streamon(q.g_type())
        fail: v4l2-test-buffers.cpp(3157): testBlockingDQBuf(node, m2m_q)
      test blocking wait: FAIL

Provide a control default via p_def with chroma_format_idc = 1 (4:2:0),
which is the only value the VDPU38x SPS validation accepts.
This fixes both the Control ioctls and the Buffer ioctls failures.

Tested on Radxa Rock 5B (RK3588).

Fixes: c9a59dc2acc7 ("media: rkvdec: Add HEVC support for the VDPU381 variant")
Signed-off-by: Tharit Tangkijwanichakul <tharitt97@gmail.com>
---
 drivers/media/platform/rockchip/rkvdec/rkvdec.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index 1d1e9bfef8e9..37603f049788 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -236,6 +236,10 @@ static const struct rkvdec_ctrls rkvdec_hevc_ctrls = {
 	.num_ctrls = ARRAY_SIZE(rkvdec_hevc_ctrl_descs),
 };
 
+static struct v4l2_ctrl_hevc_sps vdpu38x_hevc_sps_default = {
+	.chroma_format_idc = 1,
+};
+
 static const struct rkvdec_ctrl_desc vdpu38x_hevc_ctrl_descs[] = {
 	{
 		.cfg.id = V4L2_CID_STATELESS_HEVC_DECODE_PARAMS,
@@ -243,6 +247,7 @@ static const struct rkvdec_ctrl_desc vdpu38x_hevc_ctrl_descs[] = {
 	{
 		.cfg.id = V4L2_CID_STATELESS_HEVC_SPS,
 		.cfg.ops = &rkvdec_ctrl_ops,
+		.cfg.p_def.p_hevc_sps = &vdpu38x_hevc_sps_default,
 	},
 	{
 		.cfg.id = V4L2_CID_STATELESS_HEVC_PPS,
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
