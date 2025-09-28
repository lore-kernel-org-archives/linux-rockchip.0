Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 721A5CAC5BC
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Sep 2025 08:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAVuPOzMk81w0yUfbQcwL9n2Tht3BsEh1knfq4xb9sY=; b=PpeIsrO2vtE0ET
	xZbJt+/GFtkZz5fbSLhHIQTqkntYszkBfW+D+WRKHdn24nUQaYlsC6cFsoCcnla2heZKwcRWErd1S
	9deeq4O5eq/MpnstqEKzmnc57digQjwEvGhMedhJtkWODs9D5YuRw9kq7cOAauXGX+KqcsMoQ1mEe
	6eK7JIyxyQ6xPpBy1L1nUI1CzjFzfSITE1eUYlqOP+ocyJ6iJhr8jbaMstpXNb3mabc3XNXIaN6Ls
	HBGxD5+S/tMvwGJtsZ1INXn3/GmKW5z+no7XfJyk4Dua+uzjx4sFUyXMLssQrtX/tw4iSrDfFRRNP
	cuDG34aepTtmsy4iQG0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2mj1-0000000EJxQ-3xHw;
	Sun, 28 Sep 2025 08:25:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2min-0000000EJez-1TW4
	for linux-rockchip@bombadil.infradead.org;
	Sun, 28 Sep 2025 08:25:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=NW6O36yvGMaCMJruxLgmHiMoRnZgXb8542oDwX0AOxE=; b=Sxt8PpDJUzBIufgqgBPexGpHFS
	sZvGWCjqQ/+gQQCuY0SP1Zwsd/yKL2GXaqeaX5hmNPQv9Oz0lFWs/b5vCx9nOUKAm/qetJ0hWpQ3c
	x/1mmlzKGafF8nC6XC6qGW1wNWAZBjBMmVYBhPY3GvWOwv0MO0Mfy12Z5whSXj2uDu82FcU6xCFAt
	FJ/YRYuON+HQlhMgjomFRPSY/hbfFm7NJvpZ/r4hCZ0XYdCXkl5jw/bNSw7LaJOJAPdwsvjqWGFIa
	uimlpyFoJsYNwoOVKCCu7N0Lr5GH1t6WL69cPyotHhBSklAH8DFN7tQZcqwyFodDnvDqZgevmaQSQ
	m0fV1MbQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2mig-0000000BAIc-2kEC
	for linux-rockchip@lists.infradead.org;
	Sun, 28 Sep 2025 08:25:28 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58S4GYM6012125
	for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 08:25:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NW6O36yvGMaCMJruxLgmHiMoRnZgXb8542oDwX0AOxE=; b=buCADdXklBonbx88
	yQXEnIVHCKmKKGaKlUd2DEna9Y8RP367YFy0zH5bX4/6GvXxeYZuDCOZ9cQvyZTG
	UPbG6PNp5jQB4ujsyn+/N+H04591MRydIEPB31U+6DGjQM0v31voqfaNdNW2qvpP
	ofWJZ79wt4+O46Zhbp8Gb/D/k38j5ECCMEProZH+zpFbVee99t3ephpV2+QfaWRH
	MUZ5IQfW0rP3W8KoYStNEqFK0G+/Usk9lfMk7zxGbR3THjLjJyAFrVaSEQeeb0fV
	NuCHxn0IWJLfaljOMJvo2jDq8ZYcUSwnyJXS3MeogmTYECHk1TpGaJXEZBVrne8S
	jppKtA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e80tjcvp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 08:25:19 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4de2c597a6eso68691201cf.1
        for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 01:25:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759047918; x=1759652718;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NW6O36yvGMaCMJruxLgmHiMoRnZgXb8542oDwX0AOxE=;
        b=WhEp4RDuIDq5J0Jme9RSqFij8nvuMXKAKpIhZm8rSo2oB7QDgUh8mS5YoA7iy+IUB9
         eLg5f6gBWmLECqskAAUb52L3NdZCe88k5PW/PzZldRip34DZoCrCyKCzExg++oY2118f
         gueXskT4fzR3NwrErXJ/qBt45C6emF3jBNPhwfJOAIxDsPsux/YsveegPGXHN2wuY4qq
         ILsb7CeudmgkyiW89kzvlAoNnrPF3rw1ayg4Af6coHRbh7ilOoos2AJuW142Q5stYK3O
         6JHarWs4CdpekCiGth+SzIqxDVrbJPpHjjsY5zGo7QqfI4zJD3+0FaEjIM4wosomWZA7
         7XUg==
X-Forwarded-Encrypted: i=1; AJvYcCUUZv1rdAQ9Rkc9ueEbH476xq0RBXDElHKp3uIBuWF2iA2ISEGczvWmOEUiiy12DC7sI9kEO2kkjftUfiMaoA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwEPJGZOyinkuWAXP8m3idurfug++a0n7d/S3ljTyw0kxbP0e+x
	UeWOTg0DdLjAtj1T9bTx5T0DoLw7DslTqGu7v52wd2xYo1/Z0sdSBiQGsC+xtOvJl2wp2Oz4ATJ
	A9JVNVQ4aU1EKh09Y3wix8EFiSdJKu+5vhDmHXsV+dEKYclblC/gj8dxjIBJmnSVQvcxek1MWRl
	U=
X-Gm-Gg: ASbGncuGjiFqJWAYbNP0W2/9gTmBDTwaCPRWl3fj9U0F3gZckeJBBokuNyeMqti/jAe
	+qbFm23mT27gZsYep5SZHkXbCAFXiViuBS2EfscaQeddPmjfisOA0fs4J6BJlHdiTYVi8sTPkEP
	Ses9UO/YyorJTuVfP/k84nFMESPdsi/RxDCOx/7MwmyIENR5ZqdYENYIbZXJukjZtmaDoMcEret
	8MpykJzwXEW8JIFojAvsXD9bd47eiDFKO9ekzo4z0NpRe93oDxFbbivHMsym5xzPAi21FDlpis/
	/+T4jcMjZTne9B1US7j0Iua6hm6WjZl5udYfXt6Pp/jaU2XbRy7MbEHXnfBh9Qa/EPXLLPw9XZn
	Tz/UlFPG3GKFOClcNst9Kk5MpJZD/NE/1Nm3UOS34kwNda3OTUnGj
X-Received: by 2002:a05:622a:28b:b0:4dd:2d5a:4c81 with SMTP id d75a77b69052e-4dd2d5a5227mr115444481cf.80.1759047918160;
        Sun, 28 Sep 2025 01:25:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF27D25nggKmxCQPuY2QEZ5kb5OMkUcGWSWenXBk1jMFSmot08OrVTyFKGy9g6C2KuS41KORQ==
X-Received: by 2002:a05:622a:28b:b0:4dd:2d5a:4c81 with SMTP id d75a77b69052e-4dd2d5a5227mr115444191cf.80.1759047917658;
        Sun, 28 Sep 2025 01:25:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583166561c0sm3244298e87.81.2025.09.28.01.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 01:25:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 28 Sep 2025 11:24:52 +0300
Subject: [PATCH v2 7/9] drm/rockchip: rk3066_hdmi: handle unsupported
 InfoFrames
MIME-Version: 1.0
Message-Id: <20250928-limit-infoframes-2-v2-7-6f8f5fd04214@oss.qualcomm.com>
References: <20250928-limit-infoframes-2-v2-0-6f8f5fd04214@oss.qualcomm.com>
In-Reply-To: <20250928-limit-infoframes-2-v2-0-6f8f5fd04214@oss.qualcomm.com>
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
        Andy Yan <andy.yan@rock-chips.com>,
        Samuel Holland <samuel@sholland.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3035;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=W9b6XDfq52rGNwLc4zsgRSvpebnOTLw260yRhrb4Lug=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBo2PDU6HTPvF+Y88cTCEIA/XqAYSXsI17MJ/Kuo
 GBYAduGAauJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaNjw1AAKCRCLPIo+Aiko
 1cq6CACwsfecD4+Y57wsVqifG4KmJ1uLXo3XecBdE9p/0GhGRaWV3arhyRyfKp0tlB35c8MzljK
 fDtPzmsDvrhP2urxzq1TpspnVu9IXcEypIW0sF87iXw+iFME67+Gyn9a9OkTsH2PnQMOFRkixVX
 mH/gIAf3P2S40lcubBSetxPYyllypeNFWjqzzKMd0KvjErmpePUInZnPTLBd8/Xh4pW3QuIhgrU
 Sm7Z56KIe4dVsOT6HH+7Kq4tyjrHZUh3tKF7qaQ9i4K1hx3kgg/RMruPZmNz9kpUP1zJyzFKYCZ
 ++CnvNdxchJd5yd4WAK1Hb1e0RR5mdzcMjyyN22Bu74kcYoN
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyOSBTYWx0ZWRfX2c7BNgBmfE7L
 FocE3TQZYRl0dDiTV0Qu/J7R031+Mf5BtH4v4Mzzj2NTzSV9REhEsp43jR/rO5UzPZhYf306GWe
 WmW6VNiForxqZWNiwsfkhU6VBg7f2pVNPwKxbt/1AHrFVEipxyStpMF0bqrNwv8klV/hdTUpwuH
 3VFuq1rSLAntG4Ok+z5deV0HDDZDuJE1hNXOfqhPyRZYCDmX88Rkizw79+sKRof8k4C59/9Uqmk
 GTYuB0l+HnaoTR6JJYkBVYFZdeXrrWWabLMMnRl27N80/j/kPLrzHWQajbr/oB5/X1g1LnPpmn3
 3zqFNVWxeYGLZRnz3C1TDfRngdWLFCESY2bg8WOs6UPOJ9Y7VuuJf+wndxsksx7oaZuSCWPIw4y
 Uvaw4tpcUPf0c6p62PRHU5dN5zGFew==
X-Proofpoint-GUID: W1tUl7l1BGUndcvgpSlS2d0ZXl58OqUJ
X-Authority-Analysis: v=2.4 cv=OMkqHCaB c=1 sm=1 tr=0 ts=68d8f0ef cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=LTYPIh7T-TEeLale1FMA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: W1tUl7l1BGUndcvgpSlS2d0ZXl58OqUJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-28_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_092525_071438_714DDC12 
X-CRM114-Status: GOOD (  16.69  )
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
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 39 +++++++++++++++++++++++++++-------
 1 file changed, 31 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index ae4a5ac2299a93a49f87df7604752f6b651c839c..33f52a83ca4597193de8c012b4cc598e82c3f09b 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -162,12 +162,11 @@ static int rk3066_hdmi_bridge_clear_infoframe(struct drm_bridge *bridge,
 {
 	struct rk3066_hdmi *hdmi = bridge_to_rk3066_hdmi(bridge);
 
-	if (type != HDMI_INFOFRAME_TYPE_AVI) {
-		drm_err(bridge->dev, "Unsupported infoframe type: %u\n", type);
-		return 0;
-	}
+	if (type != HDMI_INFOFRAME_TYPE_AVI)
+		return -EOPNOTSUPP;
 
 	hdmi_writeb(hdmi, HDMI_CP_BUF_INDEX, HDMI_INFOFRAME_AVI);
+	// XXX: this doesn't seem to actually disable the infoframe.
 
 	return 0;
 }
@@ -180,10 +179,8 @@ rk3066_hdmi_bridge_write_infoframe(struct drm_bridge *bridge,
 	struct rk3066_hdmi *hdmi = bridge_to_rk3066_hdmi(bridge);
 	ssize_t i;
 
-	if (type != HDMI_INFOFRAME_TYPE_AVI) {
-		drm_err(bridge->dev, "Unsupported infoframe type: %u\n", type);
-		return 0;
-	}
+	if (type != HDMI_INFOFRAME_TYPE_AVI)
+		return -EOPNOTSUPP;
 
 	rk3066_hdmi_bridge_clear_infoframe(bridge, type);
 
@@ -193,6 +190,31 @@ rk3066_hdmi_bridge_write_infoframe(struct drm_bridge *bridge,
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
+	/* should not happen, audio support not enabled */
+	if (drm_WARN_ON_ONCE(bridge->encoder->dev,
+			     conn_state->connector->hdmi.infoframes.audio.set))
+		return -EOPNOTSUPP;
+
+	/* should not happen, HDR support not enabled */
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
@@ -485,6 +507,7 @@ rk3066_hdmi_bridge_mode_valid(struct drm_bridge *bridge,
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
