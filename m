Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 243EACAC5BC
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Sep 2025 08:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=er2pJbz2uVko7moLE9DtAXzm5W9Ij65dVeuvyfr9zaM=; b=eiDr12FpyN6XtP
	5PH8gGeqgr7nFu3DFzmlxWX/WlrCzbkYvdVTXEeaFdfaHAoJD5QMP/rfQd4qdBBoGHCiMwvPtOXFz
	e6T2LGCPheN3mwHLnwV6ISYSW1VyxXUGdRLjnXp4nu2FfcDeRNG01FlmT/U7ItM/VhEfJ0pJWHFl0
	W8BmH6ogKg70dvh842pkJUnf203EsId4MTUYvDMrwe8GNPVJO+MNXphI/y7m02CKxHCg0Ee0KcNXJ
	OF6ejJqDcVE8e38QfN18BoKuMBEYW16sRKuOxo8lUSVxldecXrxbpk/xu23HvDfxmDeU14Fkgg7Kk
	Ag0pS4GHiIm0A84LYOYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2miv-0000000EJq0-3cDp;
	Sun, 28 Sep 2025 08:25:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2mig-0000000EJV8-3aoJ
	for linux-rockchip@lists.infradead.org;
	Sun, 28 Sep 2025 08:25:24 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58S4wYZs018292
	for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 08:25:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pDGCMgEwnjTnK4X9AKh+cUPiYlJXGC7VErq2j1leXiI=; b=CQwlpWSPQTUYPWV9
	T++W2n23NdFXAGo1Oz5z8OuzR4V3TeLUenpqXGIpk6WYUxPrjn49tZT0hSwqL55g
	J5Xt+JQu5RonBzt814SibeYMkhy+zbJZZjccY4PQJ594iadgVRvoihEd+7fZNr7r
	jaqGQqHzycvMp1fdvVD3NTjQXQHTPU7+KhjxYZSKu5yOctkUnqfRvpMI1gY9t3/I
	/kzRaY/Rr/vhFjLdw8XekRdt6WOqYUc0aV5TRNu5KmkaEF4+OFrUsAAYq02hvrKj
	Zrp/WG2XXIb8D5RIo9Mw0GlfIN0a/GOto/OqkHMWqsE9piZYG1kBl8Me8sGetgjn
	XX6KrA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e78ftfkx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 08:25:21 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d91b91b6f8so63254611cf.3
        for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 01:25:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759047921; x=1759652721;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pDGCMgEwnjTnK4X9AKh+cUPiYlJXGC7VErq2j1leXiI=;
        b=RixcHBkeTKsrU/yuFTy6j/6xEEGzx4W84uj3g8kKbtLDrpC6GwAjpfwPY4dYVXWYu2
         8hyjX4xm9zwJI1BD87z0iu34XxRNKLuxTPDGGfBB8IXUA9D0P1QqjBZ9h1Gl5eKj4DLN
         tM1QaPuOenDCnUMZr0ETY6FmZkpeqUcHXyZomGmsVXYYKyvU0PRHZfpHhcwvz2IiUtGT
         w5sNmRqvcGhAmu72xeUrrOkVyzzvaBppqSI+7Niu+7fXx7uZ/G3DvMNwjUMqy8PziLp2
         aHaZf8MyorgHCGr0Bmq/UG75bkG1z4ifQ4rb87lNL7qfPIlLIgRLSjCz0Wtcyp/zb8N3
         4FmA==
X-Forwarded-Encrypted: i=1; AJvYcCX6nIq9xDD+6PCArLuCLoxXgLFvkjLXA4yj9rF7HoJTdZL6mCONSo3dkQ7dm92XcyfMZ78KYWv+0jSb+a9FPg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1hLkpRO+SEdh+zUOg+gMU8Vku+t1x7dG5J4hzUlFDIqItqRJA
	3p3ILPHioWOCWm5tnTfnr0NCnlyGqjtzMBCSYoYaAfnlgyTNn+yUDTOXJRKIpkcE2lGp49RYL74
	RtoDXAIadAB+/IUXGw6sdRD+VYKhzR3gP8OWO55CTpG6cR6UcdJQBFG35WGpqo0tQDA2eutq3Oo
	U=
X-Gm-Gg: ASbGncsKKue0/qqnRkn5ViR310OEgMwlixEAbja6ijjVN3qZbvcfQuQmc8GSHmbSrxy
	ZCfSYKsF4qr21OWNhZ1rNDeNk0GoxwZdjri/ZzSYeJVmwG0q82l2n8mOJScfMEdpI5SFTqaptXz
	wHL21mrBwnAmJ1GzC+Fx71vFpwij9dgwDYesxI5wGnC1g0rAhr0HV6WCAdFOgWOqachwid3zvQy
	a33gX5Xiou5DCMvuvbc4mKKIG0YucgMFT3ehoD5buVa3mJ5QBgbRtUjfJHecqOBQIUhrBPrtD8E
	vFzMb9O4wMrb437rFGNSOmVZ7Ge3l52nBPadr5yNG6BSpgVxsuALjoRxlpvN1GhBqWCnLvN8KLN
	DKMwILXuhZRAo7cNoBl7R7DyfDhEd9lEFlUJJ3r3luLfcTiB/JEKv
X-Received: by 2002:ac8:7d8e:0:b0:4cf:6b60:8814 with SMTP id d75a77b69052e-4da4c39d551mr157223521cf.70.1759047920635;
        Sun, 28 Sep 2025 01:25:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEs63wvjlOp3xMxlD61SlugRb128ix3vSdkzbHU2oqtBagfbingC8Ut4nFepJQEg0y1xF3nfQ==
X-Received: by 2002:ac8:7d8e:0:b0:4cf:6b60:8814 with SMTP id d75a77b69052e-4da4c39d551mr157223271cf.70.1759047920172;
        Sun, 28 Sep 2025 01:25:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583166561c0sm3244298e87.81.2025.09.28.01.25.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 01:25:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 28 Sep 2025 11:24:53 +0300
Subject: [PATCH v2 8/9] drm/rockchip: inno-hdmi: handle unsupported
 InfoFrames
MIME-Version: 1.0
Message-Id: <20250928-limit-infoframes-2-v2-8-6f8f5fd04214@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3208;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=L5F+9hmws1ws8sHBg3j3OZgk+hUi3reLwHH9RQ7UEnU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBo2PDU9uR0Y3DH7A3+x8geiLghZLN7tPC7B3SOj
 e6zCefBhf6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaNjw1AAKCRCLPIo+Aiko
 1Ru6B/9PE+eUbg3q9YXlFXZd6EPBBkP5lZgICQEKOE0FuYIcvp6aqj8KRAYaSBf3nOEsYkh6Cmv
 izDSG7gqnOYbJtZa1DBmYqSXwcIYU9x3PqJtOca9yASpRyYkvVH8b9c8vz/LfL2SFkM0iWK3/HE
 oPq0/r5tSjjrJ9u5/+s1evNujBe86ROuzIpMMbVVTj5U9sJ0LQhBHpdBVmwkbN9cfVxuaUmhUo4
 +hHRrX+QqJ0qvxolviQQVzyaLLE7VuP4ZbG/H5NauVJRDGd6YUABlNx7xw9adhsUxwugFv2UAs5
 CL2oRovfS/3sNkx1Xb25MSdesvX4wPFuG9Dy5chHmg0qOIxr
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=DZAaa/tW c=1 sm=1 tr=0 ts=68d8f0f1 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Uj443JZPoyhSIAxeSSAA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyMiBTYWx0ZWRfX2rfdiJmzKr+g
 HBcx9k4unoqkuCySYEV2Vqa/mM6/9kW5yRmLvTwP7Z+YPyvDk7L7rzgiSAZXDqs/MU+dTs3Y6+8
 WqiXHL1cBULAP//19UzacKtVB4NUsGd08wV87iHJIImh0KjcsbpWws+f+ToSdzSnz9aaO6oosVY
 GiIkE28fTruSANmrdr4PwtBL9kFkhB7GRfShVJMLmPHMXmHKs222G3IvMGc9Jtm7h2sTAN2Vn8u
 rHegNjYrSE5OrbWnyofvz2hNPSjEsSjB3CvqMu3zjU+0dfhd2JiL+1jjJ/dfhRu4+NqJVKHVPEp
 IIrw0zAMxNg0Plry2H6XUyIqcKu7OFZvOGqQmBb1nn0Hu8AxEfy7lHFR4/P79/cKYS9WN+6H/b6
 6ziu3krLFZ8GshiwZG37ixIje1CB4g==
X-Proofpoint-GUID: VbawO_bczsY5luGwO3AaHn1-DJqUMQIX
X-Proofpoint-ORIG-GUID: VbawO_bczsY5luGwO3AaHn1-DJqUMQIX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-28_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_012523_076763_B3802225 
X-CRM114-Status: GOOD (  17.14  )
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

Make write_hdmi_infoframe() and clear_infoframe() callbacks
return -EOPNOTSUPP for unsupported InfoFrames and make sure that
atomic_check() callback doesn't allow unsupported InfoFrames to be
enabled.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 47 +++++++++++++++++++++++++++---------
 1 file changed, 36 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index f24827dc1421cf5e0c1be63a80da23d645cf3f24..733294c6807da4663285ebd482181589c37f960a 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -641,13 +641,11 @@ static int inno_hdmi_disable_frame(struct drm_connector *connector,
 {
 	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
 
-	if (type != HDMI_INFOFRAME_TYPE_AVI) {
-		drm_err(connector->dev,
-			"Unsupported infoframe type: %u\n", type);
-		return 0;
-	}
+	if (type != HDMI_INFOFRAME_TYPE_AVI)
+		return -EOPNOTSUPP;
 
 	hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_BUF_INDEX, INFOFRAME_AVI);
+	// XXX: this doesn't seem to actually disable the infoframe.
 
 	return 0;
 }
@@ -659,11 +657,8 @@ static int inno_hdmi_upload_frame(struct drm_connector *connector,
 	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
 	ssize_t i;
 
-	if (type != HDMI_INFOFRAME_TYPE_AVI) {
-		drm_err(connector->dev,
-			"Unsupported infoframe type: %u\n", type);
-		return 0;
-	}
+	if (type != HDMI_INFOFRAME_TYPE_AVI)
+		return -EOPNOTSUPP;
 
 	inno_hdmi_disable_frame(connector, type);
 
@@ -673,6 +668,36 @@ static int inno_hdmi_upload_frame(struct drm_connector *connector,
 	return 0;
 }
 
+static int inno_hdmi_connector_atomic_check(struct drm_connector *connector,
+					    struct drm_atomic_state *state)
+{
+	struct drm_connector_state *conn_state =
+		drm_atomic_get_new_connector_state(state, connector);
+	int ret;
+
+	ret = drm_atomic_helper_connector_hdmi_check(connector, state);
+	if (ret)
+		return ret;
+
+	/* not supported by the driver */
+	conn_state->hdmi.infoframes.spd.set = false;
+
+	/* FIXME: not supported by the driver */
+	conn_state->hdmi.infoframes.hdmi.set = false;
+
+	/* should not happen, audio support not enabled */
+	if (drm_WARN_ON_ONCE(connector->dev,
+			     connector->hdmi.infoframes.audio.set))
+		return -EOPNOTSUPP;
+
+	/* should not happen, HDR support not enabled */
+	if (drm_WARN_ON_ONCE(connector->dev,
+			     conn_state->hdmi.infoframes.hdr_drm.set))
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
 static const struct drm_connector_hdmi_funcs inno_hdmi_hdmi_connector_funcs = {
 	.clear_infoframe	= inno_hdmi_disable_frame,
 	.write_infoframe	= inno_hdmi_upload_frame,
@@ -1029,7 +1054,7 @@ static const struct drm_connector_funcs inno_hdmi_connector_funcs = {
 };
 
 static struct drm_connector_helper_funcs inno_hdmi_connector_helper_funcs = {
-	.atomic_check = drm_atomic_helper_connector_hdmi_check,
+	.atomic_check = inno_hdmi_connector_atomic_check,
 	.get_modes = inno_hdmi_connector_get_modes,
 	.mode_valid = inno_hdmi_connector_mode_valid,
 };

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
