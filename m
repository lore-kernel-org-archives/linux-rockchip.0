Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B50FACA0FF0
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 00:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cs1jLJGf8cpsFZb/RaAFekwtNvFD6NuQLp9/JSAnVe4=; b=XwZusoN29MSOaY
	NOF4P71GWRIAK8h5EQhzdlM9zZelCkBfKRvQyJuDWA+DtOoqZCMIj0krSLFbVVt0rqA87NoD2HKxs
	+ub8ZPTfKxnZ8SMTj3ndawHLToJ25BuOBrlnyQ1XtSrIkn2NKejCleN3W+yA/1Ho+S0FS88AmnBxl
	h3BuUw/yZckmUXYCDXBuK3FQqSSutnAlbuer7qO4pUtzLE0treKaB1ewptd5UJVM6LSy0M/ofakc+
	Dt43GGwKQn/5wnVpk1T8wM5aSWT6SGGV7+4zbbw3TMTLUVM/qiVSLo5tVp4NOhxlOAVIImKDv2gaS
	y4yIzCbS9sCEezpmPkNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us9qR-00000007Epd-0mxk;
	Sat, 30 Aug 2025 00:53:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us9NF-000000074aK-08zK
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Aug 2025 00:23:18 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57TNaWat003589
	for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 00:23:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7nf0+abWmGCJST77+Ob/lOwCJuYhA6HECShYvSo7oZM=; b=D7uh6kBbblxZW9vJ
	AQO8arjsTAUfNxLenI3aVXaXtb+11BbgrmB1CsxpHrPwQdS43XAwfzIrKq+kezth
	j0GQ7nGhM7SpUqwR2cPX+XWfVbC24Ib5B7YwoYmATkzJY4gh8J1rwzi3aFyH9Ix+
	tAJCELg4AuWIOal/7AXKBIFsw1i4bmBWQMFMxyji7h6Ae+XVjBEjjf29BpO64YmQ
	6Wxm2TSFNric0wtJAfepyQebNkRovHAZTKwmgsL8J3FPhz7g9m5WwjFRN1Y+peAo
	YCMJZg046hFPxkrKymnymtVULik4qmEuSipYKoKOjpZlJYnHLEzCUmqqjwjldwBz
	WVeqDA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48tp5k546f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 00:23:16 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b2f9e8dca6so57549391cf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 17:23:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756513395; x=1757118195;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7nf0+abWmGCJST77+Ob/lOwCJuYhA6HECShYvSo7oZM=;
        b=avFTKz8fdD+/45UF2j0Wb0oPW5a39GXHjBEbTGZuKZRVvn22dZ6ewXZ8xSLEHBmNER
         bkrZ1vtPtTCHYdyRs1jr8yhPHMR9H9o3ky4bigT8udHLmMMAq+ErMpolTfoJNwsUFKN9
         JJH3a04qiaHb5Hn6jvjVAxV+Ss7NMyeK0aSVtxR9KbT5RzWyCu6zwYc5taoFrfybygm8
         tZFEeFnLu95WEKupDB0M7Elj4qiqBzlTRdE1GYBPsKaylqt6/tvyTHaZyk/VqInVkdwf
         t5qb99WVMC5rpGdF5NA086m9B9uJ3v5AmT0LFRosevPNPwqEZG7Q3zwJ/9mkZJOdGn6A
         73IA==
X-Forwarded-Encrypted: i=1; AJvYcCWTV4lToCFUxsQkTbkqNcPB1AAgwRWu3PLz32JkH0fhb9+qHCcVetQcxOvtzcAJUqB7e+ub8kiiQ5/D4Ie4tQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzS9Xv9DrXWiqeM7ggsbvKzfCizbq/eTrcKiIt/BHrrMiJPftmj
	7lKDDSd0k5hgmDn/pMBjPz9TYIOrXefbe0RORhRW6cwiY7RW5STSppFYaPSWFA4zoHUEKf3vFnR
	0G5H+SaOqbVY9yxmQk87cApcYXAVW73udQAyj0kicO8yuu8aQUzxSouDYlIJ/Xq9rtoYbxhRQ1l
	s=
X-Gm-Gg: ASbGnctvwpfT+6YFLMDvNa5C57IXxN7G6seEaNKDO7sMAhNEMaqBKeCqTTKgZD0iVRL
	NOLItlNvr1XSqqrAGTfoFzUva71jjiKDvt+X2R2RGtDGv2qVFrLyw6wwoez1ImM5k4YlodNf6Hf
	2oENnvg2O/0/Pk7BM0sLwvIhGJfmrjQI2d5kICsaOx0ZltHnoXRjs7McJbfDf+ogh1jtGG2FFwF
	i9k0J7za+IfcLNe99A3H/7uQZJ/zTrt8p3Wv6ZKfgwQzwU2fuQ1a9w9yhRPm5se16B42bP/ic+F
	ACQ9K+cMF9EqyG0R73VVR4KVUkt5FveAoXF9BP5Hzw4Kj+PaldKpRJdVOECfGhhAdhK0O5yregD
	PuqqN0kpH+D1/aWMLQwgr00bE5csTPWoE8y4JufA/TbLnZs+xxHkH
X-Received: by 2002:ac8:5893:0:b0:4b2:967f:cb4b with SMTP id d75a77b69052e-4b31dcce3aemr6287681cf.63.1756513395172;
        Fri, 29 Aug 2025 17:23:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOls7IHK5n71gLOims9R5oXNm30OZQlHiNW3nK6iLa1qZum2ksrrXODlblb3ZuRNvP5SOgkg==
X-Received: by 2002:ac8:5893:0:b0:4b2:967f:cb4b with SMTP id d75a77b69052e-4b31dcce3aemr6287201cf.63.1756513394655;
        Fri, 29 Aug 2025 17:23:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f676dc52esm1019907e87.8.2025.08.29.17.23.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 17:23:13 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 30 Aug 2025 03:23:02 +0300
Subject: [PATCH v3 06/11] drm/msm: hdmi: declare supported infoframes
MIME-Version: 1.0
Message-Id: <20250830-drm-limit-infoframes-v3-6-32fcbec4634e@oss.qualcomm.com>
References: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com>
In-Reply-To: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Liu Ying <victor.liu@nxp.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1580;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ECUd39xCRDayMF07yZPid7frZVCtdwJ1DNCpnou818A=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoskRkadcPsIT5VtZsPUIxt4c7DuFRHVG0R9qPC
 e+hnmDKZ1qJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaLJEZAAKCRCLPIo+Aiko
 1XJoB/9uSIvkAkBHEdynP5Np4TmqF25QxdIHnyZDZRd2oMA6beg+0p2vmu4j8T7iBPLH6wuOfv6
 yuy3KGzqXY92I/wemcHThKBJhM3F9irEXV+pLwba1BFZ1tX4k9erRi846J49Ao7zWeEP/xfmaPz
 81ispd03TPnsUvWwua6/x85ON05f4ECTHRc4+QUmjqTUB5Do+4aS6kfHip8DmrVdpbiYpQEZcDY
 dyZgO9lEnPsSGc+YkPsQmyKeuNdrMSHxmoExrCm2VBYq9CaceiwABEYUbvXFk4YlFDv3aa3E0R6
 LB4x461C04PK5YUvWfKCdrT6vT5Mwb5jFjWe5xU7iIbWVh5W
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=V9F90fni c=1 sm=1 tr=0 ts=68b24474 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8 a=QemjF6U71Mh5n78GOpwA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI4MDA5NSBTYWx0ZWRfX6NAbVFCh3VrN
 DPw6AQ6u8DePsbBZcLvJV0UObkG7BFJbnd89+n19ZxRqixoTiU+EyTHCdim6mNIgn7nAFycaUPC
 ms1xkWGZc3dh2BqQmC4i6di+oiBUtfccLwZycznrXXc2A8pccQXm9lv7Rb16v5iSduZ1qDOzNV0
 XbkSfOJPyCOou+VzqvhCkVHYsCfCQCbG/2O5oedzuKC5KiXGW9hw4RoFPOJnlZUXw7+mbqSuZow
 7YjWp02ZcG9hM3+iYzpi9uFcry1WhMGYVF0BRxXuLgPORGkT1FfcNSCJcz31zY+6JdazYs7q5TO
 aBtvvA337QTooY+w9F/osxtxOubRZmi533gH/UognFZWb9Wc9Yga33upHcz9eeuzi4u7E8hAUSo
 C9Z0sqFz
X-Proofpoint-ORIG-GUID: xlelHTkDhPfgq6dK2oGqkh9y2iIhH8Ao
X-Proofpoint-GUID: xlelHTkDhPfgq6dK2oGqkh9y2iIhH8Ao
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-29_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015 suspectscore=0
 phishscore=0 malwarescore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508280095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_172317_097431_47C1F94D 
X-CRM114-Status: GOOD (  13.22  )
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

Declare which infoframes are supported via the .hdmi_write_infoframe()
interface.

Reviewed-by: Liu Ying <victor.liu@nxp.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index 46fd58646d32fd0611192595826a3aa680bd0d02..9dddc0e47de462212d42f3ff1012a073b98e3a96 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
@@ -249,6 +249,7 @@ static int msm_hdmi_bridge_clear_infoframe(struct drm_bridge *bridge,
 
 	default:
 		drm_dbg_driver(hdmi_bridge->base.dev, "Unsupported infoframe type %x\n", type);
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
@@ -274,7 +275,7 @@ static int msm_hdmi_bridge_write_infoframe(struct drm_bridge *bridge,
 		return msm_hdmi_config_hdmi_infoframe(hdmi, buffer, len);
 	default:
 		drm_dbg_driver(hdmi_bridge->base.dev, "Unsupported infoframe type %x\n", type);
-		return 0;
+		return -EOPNOTSUPP;
 	}
 }
 
@@ -498,6 +499,11 @@ int msm_hdmi_bridge_init(struct hdmi *hdmi)
 	bridge->type = DRM_MODE_CONNECTOR_HDMIA;
 	bridge->vendor = "Qualcomm";
 	bridge->product = "Snapdragon";
+	bridge->software_infoframes =
+		DRM_CONNECTOR_INFOFRAME_AVI |
+		DRM_CONNECTOR_INFOFRAME_AUDIO |
+		DRM_CONNECTOR_INFOFRAME_SPD |
+		DRM_CONNECTOR_INFOFRAME_VENDOR;
 	bridge->ops = DRM_BRIDGE_OP_HPD |
 		DRM_BRIDGE_OP_DETECT |
 		DRM_BRIDGE_OP_HDMI |

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
