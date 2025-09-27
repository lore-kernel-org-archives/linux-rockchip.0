Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19DB5CAC5BB
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Sep 2025 01:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uf5EeUoLpZpvBGRX1MatnXhSCDd+GG0e01MfpqB/sVM=; b=criWj/YstvDYOX
	i4BvqscGMsucJhHmzBL0y0MYXGvaHB4EVE8Avlim1LL7x9YrKpFudtx9Ng5HS6u9y/N0z6at4EmyP
	h6ANQfw7Vw1lVM2Np7mG5QalNhrqQAcvRfOsTHwZIMrKJRbI9mvNyyWzz7OjxuxOqeD9RmSmHXEeP
	OImdJPtCQ17omej+L8pZhOHxpsQxFN39UbgsCISF/ueetmaFQBHwF8R8zwMQFGGankRo151RNzNOO
	Eic5W3mAz1MsFyUA40gvI49+GBZeNrcvKbvmWkVzMyXyEUOPs19RDK1GAQO+8RbS1dPVTgqv6u8Y5
	UROkIypvaLUE4T2R5ypw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2JNL-00000005tIl-0neh;
	Sat, 27 Sep 2025 01:05:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2JNB-00000005t5c-3vDz
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Sep 2025 01:05:16 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58QEXCe2012904
	for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 01:05:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l1ReRpPqrVzS8dYBiuFlXpsNAUSjSC7vdxG38yy4lOA=; b=QDi2iJBmOAe289bu
	ESavkYGg/aib9Lmi4hEjsKBuz55srjSA/nH+EQWD/o0RpTB4LmHnG+WlT2dECr2c
	7e3Q+8YlCBiZV8X8OFeXh9WeAB8nSENYypTIHGecs/5uNAYH+wJktkJuNz0cAiZ3
	uxtn8HfWJ4d13s8O/1/qw0X2IkKnFpu5ip0PgspkD8Q4wkAjrupE2l4jmk2QeAkE
	7xz3t4E8QQ+8nPaProcefTjG37VaYQSO1Yr4yoiytjvECdW7ztDMm/SO5IrAi74X
	JJbTzGOaBYsbyG7D0YuiqahtW3ZRIkwsyPJdTlQq1p0jUSVJcvIjQeX7HZXOi1Yv
	J6zJ5Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q4grd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 01:05:13 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5f6eeb20eso95626991cf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Sep 2025 18:05:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758935104; x=1759539904;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l1ReRpPqrVzS8dYBiuFlXpsNAUSjSC7vdxG38yy4lOA=;
        b=GI08Y0I8kKFOtemUmFtWpmUygDW47u3u0gFYoQ7MnBaU8ZPaSZ1/n5E4xjCuUp523z
         f0JwKlqbOTQNtTiZYKB3xG9bj23aTRSbxt4AoxktvZssw5eBtx6ZdAn6jORBEeofMPpf
         5inrfb3WZvN8kPt2oRM4ZOMOHxTvmtYRQv/aB5GNS0H86t55sCW6mYJtFM7if2Eai8Gn
         IaO2Gsi4hik2x4FeXaOBXBkjebSKsF76PEEeusc747BoM9CldG3ROrg5/cDY1Yqd40rR
         3ALlEa6sbe2w/bCbZjTZ3U5sC5pZHu8L6kiMyHnPLeAA4iB7R9ZUqD6hs9VqtYxnyU9P
         0lxA==
X-Forwarded-Encrypted: i=1; AJvYcCW4cDDJrUSc/KS6ckezCukw87Blv3Hwz/oOCUiAxh35yS9DqL8LZIPkrlvgYjuzM5vzM2QBiH4enPG7JD05eg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx28LmV/V9Dty+8UlaBKV0Mk7gLZfiJHe47ULizK82WCS4VbzIJ
	3o6aFqdnUxYUbIHjizSh+OVGka8TIqeXs/kdPVglGaUeWeCErlSem6vvl5XrqEkXsxCXicG/mYZ
	FvvYFMTX03HdCSLsrd+pCtr22flrUMFknG93rkn+YZwadjU0E7yRZOTEiG8QHVeeE4kO1p3Ssw5
	A=
X-Gm-Gg: ASbGnctv22BcIEbY3oK1G2TZS9dw4pFyXM2gBMmsSOlUWkNLkONPCbYciVF1CjWhy/F
	vIyA6BDC/FmyEHFJNDBW5UIpRn4aIBHNbfEsPJaC/8c8H+uWp7kLuEehOv/6zx0L9C7F7kezyzM
	L5TzhYEGIVNolNI/oZ78eGHWVtm2AZX/IpA/ORps3w1G0qu5vkVkNyh5Sy0hRCqvTFGq73YuQCq
	vEO54EfQvlkdYf2oP6EOgcQlMvdbBJ12DT20zJE0Ayzx6VNg65p+23kNm2jb3xf12cDWDwuR0ra
	NVTanXjJxy3b9kTQJG/akITOcODcFJXgZsV2OtdkDNmTAw1r9tRhx+yWORMkyZrJIJXYDDGoKVa
	wJSgY5x1vmGrkBSyj0UnGo+VLGOW2jRdEXjLWfSKG1D/rEYu07415
X-Received: by 2002:ac8:5852:0:b0:4b7:9743:6da6 with SMTP id d75a77b69052e-4da4d02b61bmr114903841cf.70.1758935104416;
        Fri, 26 Sep 2025 18:05:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwTmhqnyjZFBwp/HsFiMEBnuWPK9YLUS4DPznVcdyQv+I6YogfCDp6AQn+3SRx+7bfeXBXfA==
X-Received: by 2002:ac8:5852:0:b0:4b7:9743:6da6 with SMTP id d75a77b69052e-4da4d02b61bmr114903571cf.70.1758935103968;
        Fri, 26 Sep 2025 18:05:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139f99c1sm2156143e87.35.2025.09.26.18.05.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 18:05:01 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 27 Sep 2025 04:04:36 +0300
Subject: [PATCH 7/9] drm/rockchip: rk3066_hdmi: handle unsupported
 InfoFrames
MIME-Version: 1.0
Message-Id: <20250927-limit-infoframes-2-v1-7-697511bd050b@oss.qualcomm.com>
References: <20250927-limit-infoframes-2-v1-0-697511bd050b@oss.qualcomm.com>
In-Reply-To: <20250927-limit-infoframes-2-v1-0-697511bd050b@oss.qualcomm.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Liu Ying <victor.liu@nxp.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2953;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=SRdsHNR0LO/SljNP2tmHd0np6D3Jw2olFDYhbWhBuVw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBo1zgg5I6HgovfGNCnJrr9DZzOmlvr89IG2N7Im
 J1IzAHqkSqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaNc4IAAKCRCLPIo+Aiko
 1QseB/91TXFBZi0pEpfz77geu/ZrsROvcW7gOnMXI7ySzBuNlQ0kbfHKfrR1hUQKrPiz+7O3Jyt
 NG+3ogi0SSqQIhJWGu8FsrNLkhtixlNgVerOl1ZDM2aZ+xSH870nIvmmE1uPJey1/Za9yRjxka1
 kIELmhbciVh07+E4ejIJiDgMU/A1ybNMwnRww/7ZFXo5VNDJ4bE6RrOn9IdGr79W/444T+7Whog
 LSCWgGHlVq4g2bQ9RmPH0uGaOYeFpNQu57k5KoEvnqJv1jFMj7p/dAs8EyfS3UCh6z6w+UvR3Lc
 oq2InUo+uryQ5zZYarcxA8FBAO5BnW4QIvwhKBX0jSUfxpty
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXy1gfJ/jDf0zE
 iGk5BWaXFHoTp/Cp0zsI/TySP0F+EUqG80be3e6meWeLZNshr6d7DhqjyIxyY6aw+INwCXfdmO2
 rKKtLRD1m8E++LhizmXrqc1KT1d4bvTUoLd3536h7Uto9v6IwpyV5w/8W0uWriwEbPibHr6n9j9
 J0LFSIOPuZugHaTL/TLSIpUgyZvBfvrvsHlkXrR9gjVZRuPPRhCENdbu0AhUp4hyCWBVt69h9Hm
 XO8OoQyXcl1mVmFIcMh9cKsiHaRA55mtnurBTnQq0Y0EUSBfSbSceAC3g8AzWnE5sBQ1BnhWuh5
 Ql7GlBOTGltHgTtNb40iEGZwCKASYTokn5bbJjYPmpVLMJbUWYCX7s/mmzIuDQfLSKzivuHp/xd
 tpx4RMZ43HFWtzpIE4Nt4bFvd2S1xw==
X-Proofpoint-GUID: YIE6pzKcQPdOdV-yOtU0--Sf-fZLFnF1
X-Proofpoint-ORIG-GUID: YIE6pzKcQPdOdV-yOtU0--Sf-fZLFnF1
X-Authority-Analysis: v=2.4 cv=JsX8bc4C c=1 sm=1 tr=0 ts=68d73849 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=XNEcMcDYeHr5uxMbIEwA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_08,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_180514_097147_6DD9045E 
X-CRM114-Status: GOOD (  15.98  )
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

Make hdmi_write_hdmi_infoframe() and hdmi_clear_infoframe() callbacks
return -EOPNOTSUPP for unsupported InfoFrames and make sure that
atomic_check() callback doesn't allow unsupported InfoFrames to be
enabled.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 38 +++++++++++++++++++++++++++-------
 1 file changed, 30 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index ae4a5ac2299a93a49f87df7604752f6b651c839c..cbae27e2443798d62bd83acc8b979cfc34df3544 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -162,10 +162,8 @@ static int rk3066_hdmi_bridge_clear_infoframe(struct drm_bridge *bridge,
 {
 	struct rk3066_hdmi *hdmi = bridge_to_rk3066_hdmi(bridge);
 
-	if (type != HDMI_INFOFRAME_TYPE_AVI) {
-		drm_err(bridge->dev, "Unsupported infoframe type: %u\n", type);
-		return 0;
-	}
+	if (type != HDMI_INFOFRAME_TYPE_AVI)
+		return -EOPNOTSUPP;
 
 	hdmi_writeb(hdmi, HDMI_CP_BUF_INDEX, HDMI_INFOFRAME_AVI);
 
@@ -180,10 +178,8 @@ rk3066_hdmi_bridge_write_infoframe(struct drm_bridge *bridge,
 	struct rk3066_hdmi *hdmi = bridge_to_rk3066_hdmi(bridge);
 	ssize_t i;
 
-	if (type != HDMI_INFOFRAME_TYPE_AVI) {
-		drm_err(bridge->dev, "Unsupported infoframe type: %u\n", type);
-		return 0;
-	}
+	if (type != HDMI_INFOFRAME_TYPE_AVI)
+		return -EOPNOTSUPP;
 
 	rk3066_hdmi_bridge_clear_infoframe(bridge, type);
 
@@ -193,6 +189,31 @@ rk3066_hdmi_bridge_write_infoframe(struct drm_bridge *bridge,
 	return 0;
 }
 
+static int
+rk3066_hdmi_bridge_atomic_check(struct drm_bridge *bridge,
+				struct drm_bridge_state *bridge_state,
+				struct drm_crtc_state *crtc_state,
+				struct drm_connector_state *conn_state)
+{
+	/* not supported by the driver */
+	conn_state->hdmi.infoframes.spd.set = false;
+
+	/* FIXME: not supported by the driver */
+	conn_state->hdmi.infoframes.hdmi.set = false;
+
+	/* should not happen, HDR support not enabled */
+	if (drm_WARN_ON_ONCE(bridge->encoder->dev,
+			     conn_state->connector->hdmi.infoframes.audio.set))
+		return -EOPNOTSUPP;
+
+	/* should not happen, audio support not enabled */
+	if (drm_WARN_ON_ONCE(bridge->encoder->dev,
+			     conn_state->hdmi.infoframes.hdr_drm.set))
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
 static int rk3066_hdmi_config_video_timing(struct rk3066_hdmi *hdmi,
 					   struct drm_display_mode *mode)
 {
@@ -485,6 +506,7 @@ rk3066_hdmi_bridge_mode_valid(struct drm_bridge *bridge,
 }
 
 static const struct drm_bridge_funcs rk3066_hdmi_bridge_funcs = {
+	.atomic_check = rk3066_hdmi_bridge_atomic_check,
 	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
 	.atomic_reset = drm_atomic_helper_bridge_reset,

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
