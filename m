Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38E3ACAC5B8
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Sep 2025 01:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5/wL/S+w6vXAHhJ0huRhgd08fsfaRFdERH4bQ7EXIE=; b=b2cQoMpMUkHsaC
	aYVT75Gon9y8V7jYYZ+1+a4gimUdIdj+80FEg/m1YAXTMEJY+vdnTGxEfjITHlEWQVTGdJBQBFPKq
	CXcgBV8/fM7HE3pxeGKL4KVeTAcB2QxY7wTdKQ6mdpWUNXufSZgrRB0k2CWEUd5ktApsypKMmTcNt
	El68/MJVuMIIJ2Bcjx2T4XAklgc98pm4a69RfARQBJdNr+vsVbnbLycaUgECU/XUapEm0GU3XRnDj
	ly3OfIowySdLrENSpGgwiSrhPkoK/jsXQ1OEci6gb2CN58XfxilJgcVgoK+qmDp8nkTPlz8R6OeYc
	T1bJ+viprS5J7i307nSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2JNK-00000005tI4-2u0H;
	Sat, 27 Sep 2025 01:05:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2JN0-00000005spg-1y6v
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Sep 2025 01:05:04 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58QEXCdx012904
	for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 01:05:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MFhUEfSaFwySRMaGJYEpZSOFWlmnLOv+5YWLz9EcBTE=; b=LdIx6sZj+ysPxWs+
	aN8ZqXfUmgPGSOE6GN5IzW+BuvaToG7k1rUG1kxVNaxMSak90s8eOIeyZRGALhtg
	NrXV44rRYOIrzabDeXmEOOplrponsj+F3ZOUZ/TYElX4db5Wv6PYlQbHpi/AuLXA
	wsXfGaIyOhwXJsJnazyCBiqHsIji3scs06UJlu1Pz1ahLz06N2EGBe17F7hf2HW0
	INHvVdGIi7/GolvWKG/FWC4QIFrR5TYDkt36LVIffpTPO4GHBJd6lDZT5xFyMF1R
	mR+E+DsZBd0DCZEL/1FcMlfOhiUHnzOJptbV7xVmO7rRnazUnBteLsSVhcJzEyI2
	C9hfdQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q4gqv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 01:05:01 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4de23c3b40aso26433231cf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Sep 2025 18:05:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758935101; x=1759539901;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MFhUEfSaFwySRMaGJYEpZSOFWlmnLOv+5YWLz9EcBTE=;
        b=xF44/ZAUU3IY5jwwWG6sHG1Yg0J4QGF7wIBfRaUjHYriiJvnJb27anxnw+QcxOLqi6
         OS4FUQrLXik92ucIDn/lsqGfHyJ2NzUHzfufqESBjCFWT3AF8uuqbeVCVwGJz3WJcOe0
         L/YjYKlUbz1Wg0chF8qZaPHpG4G8LgXvFjRxX1T2a0l4IK62PgNe3MQswxOs7thsnsR2
         RzmKOnpNXI/fh4mk40Pv2tB6RaNFPX2eW1JlKibkb2QzRUBDVTnYk7vrywuKuOtE41gG
         82YVcp0l1uXWyya6zMGy+iTU3yVse3sFCoYFauKyzqIvGP4uIIVBjn/cdGgOjGO2ulkh
         AO+A==
X-Forwarded-Encrypted: i=1; AJvYcCWw1rVa4PY2zLvFTnQsnVU0eteHZ8ywm+b3ugOlIIuMyBl0WgHo6CT6skJj0ysyRPeFuT/6HmlW6GCP0gflNA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzOR4dpXjYMcSfDxmN0de/DaedSSFX8pE23UsyCwcXKp/a54vvH
	opEzK8zwTL54ydRAx27ZMfJGs99c/MDDQnfiaU24Nv90z3ZiPREP0FRrE4tZaY2gBOgXzFtJuPg
	p69QcpQXIBOVdNoMpjYzXeZPDfW0BDKTC7DbYHpSf3XCyLW/JwCyRP8QBn9Dhrq+55VOjT2Wduh
	0=
X-Gm-Gg: ASbGncvk3WXhir/HxJtpL+/EQC7RC4n1uwI3e+NAb/xZ0TcfLfFEok2qgkVJ+PPuaGK
	DWin2h+G9Q21NK8BMiSpcmf77zl3LYE6N6llsazPPWMzM2rSLTBf80uGPsqILcT9TE6F2lv9bBN
	fwqHwVt7x1nve3r5XYchjtqNNPpR5bMKxxEVb9iyC3URVT3RbPKniQepx7We9gd6okPgwAX3wlR
	Y2ty/jcwgTr47Khfnf93mVb0ZMuSCNMPMUp06VXh1h3AA2dhPpzit3nFODOo3bHBrK4MlnXA1Wp
	06QXz4SfYHXSwVx2di4I2m8vzULlbnKwMVh2lixSy8TnngXdsrw1nLzXZNbdUGZQAyJAvg7hfwz
	PRzbgL0R5/FocReC5ltcw5u89EP5KFGt6e5pLShslG2wtPCWtAcGT
X-Received: by 2002:a05:622a:4b05:b0:4c7:35cb:4b8c with SMTP id d75a77b69052e-4da4c39b711mr133233121cf.65.1758935100536;
        Fri, 26 Sep 2025 18:05:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGLqabjcVMfWczs/hM1RvjoXYZ24c8DWutZ4s//N20by1dgwDTIo6bz/phU73Cx2EjElCUJg==
X-Received: by 2002:a05:622a:4b05:b0:4c7:35cb:4b8c with SMTP id d75a77b69052e-4da4c39b711mr133232651cf.65.1758935100057;
        Fri, 26 Sep 2025 18:05:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139f99c1sm2156143e87.35.2025.09.26.18.04.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 18:04:57 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 27 Sep 2025 04:04:35 +0300
Subject: [PATCH 6/9] drm/msm: hdmi: handle unsupported InfoFrames
MIME-Version: 1.0
Message-Id: <20250927-limit-infoframes-2-v1-6-697511bd050b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2210;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=vJ6MP4HtyLt5a75BuYCv3CbEFdh6+KuelPeaDQZ+OQQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBo1zggmZpcbiYkQjpVkexHgZEXDSvw0DXxRboAe
 D0A9gHSrqSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaNc4IAAKCRCLPIo+Aiko
 1feTB/0YC+4rnr/Hho6lqvJBXm+BTduk/QVw+LVH6sijEBUHa8/pAnfAaeAOONR4ag7YUWkgqQX
 sgYuRV8cKAwLMlemd/JbVaBZrG/o9/asI/Htr0NYQ7+4VOs05tz6Dsn8KdQyvOYmQAkgK8Iqd4D
 ZcHUMCLjgTxgzcqwaBQ3dPdBKq9WyqgKY0F98RDFCXyVyrihsR8FbdCEv179gCtv1TrW+cUkfaj
 NtZdhMr+XUBpzAWVE7lE+r04YwywRVSUR8Kqq1/TkiOL8Ywc9Er7RyXwyYmKZiLzjDuNA7m6mfK
 lvktPPCBln5IT5K/Oqv+Aj1Qi29ArDZfpGZ0XxlheSJCAr5R
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX5NxqJ5295p3Q
 JIVl8iPEnYduQ6FfWLRfLs/7F15gaTxB0vGWv9ZWceck6t5sN2Utg2nlxiwYe5eRlXmdGIHCpkb
 luMJZe9nGc5W9NsZ5H7yGgxgPhVCFS1JR7R4N2LvjrnuMOdp9REIkBZnbC91C2IMqPtQz8n+FqU
 QvWFNqgN77p3J5WbH6lonPNiCgUcSRObmCq5d6ZauQlttnjZvfBDdD36O3eq8x4hKujFdEjfCgn
 kOS5tITgIhNdoYMdidOv6wfX1tFStH3HzaUXBz1tr9o87zn98pSLWjn7y2Y/lPOo1vgKw/389Wg
 4o76IKeupyc6641AWDK2tAnoT/D5+TsgbSWrgsiI5EBKwfGawp0RFn3Izj0uxCZ8cageUl8vzg/
 Q3GamS2Cdmwp2aiWfc8Ew0bgpkmPVg==
X-Proofpoint-GUID: mKUBLheFp4XGoOwgb1G80J8D5tI4BDOd
X-Proofpoint-ORIG-GUID: mKUBLheFp4XGoOwgb1G80J8D5tI4BDOd
X-Authority-Analysis: v=2.4 cv=JsX8bc4C c=1 sm=1 tr=0 ts=68d7383e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=B-oVSsyST8MYkDpc_wEA:9 a=QEXdDO2ut3YA:10
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
X-CRM114-CacheID: sfid-20250926_180502_552461_CC9D278A 
X-CRM114-Status: GOOD (  14.26  )
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
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index 46fd58646d32fd0611192595826a3aa680bd0d02..121239a01cea334c3e7c789ebfb54df71515db28 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
@@ -248,7 +248,7 @@ static int msm_hdmi_bridge_clear_infoframe(struct drm_bridge *bridge,
 		break;
 
 	default:
-		drm_dbg_driver(hdmi_bridge->base.dev, "Unsupported infoframe type %x\n", type);
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
@@ -273,11 +273,23 @@ static int msm_hdmi_bridge_write_infoframe(struct drm_bridge *bridge,
 	case HDMI_INFOFRAME_TYPE_VENDOR:
 		return msm_hdmi_config_hdmi_infoframe(hdmi, buffer, len);
 	default:
-		drm_dbg_driver(hdmi_bridge->base.dev, "Unsupported infoframe type %x\n", type);
-		return 0;
+		return -EOPNOTSUPP;
 	}
 }
 
+static int msm_hdmi_bridge_atomic_check(struct drm_bridge *bridge,
+					struct drm_bridge_state *bridge_state,
+					struct drm_crtc_state *crtc_state,
+					struct drm_connector_state *conn_state)
+{
+	/* should not happen, HDR support not enabled */
+	if (drm_WARN_ON_ONCE(bridge->encoder->dev,
+			     conn_state->hdmi.infoframes.hdr_drm.set))
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
 static void msm_hdmi_set_timings(struct hdmi *hdmi,
 				 const struct drm_display_mode *mode);
 
@@ -452,6 +464,7 @@ static enum drm_mode_status msm_hdmi_bridge_tmds_char_rate_valid(const struct dr
 }
 
 static const struct drm_bridge_funcs msm_hdmi_bridge_funcs = {
+	.atomic_check = msm_hdmi_bridge_atomic_check,
 	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
 	.atomic_reset = drm_atomic_helper_bridge_reset,

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
