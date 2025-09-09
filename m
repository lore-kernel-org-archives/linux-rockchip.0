Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 188C8CAC583
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 17:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUWxnu1iGc7zhsPaQv2NlfNnLwcm72+QL8GOcYxCqxE=; b=GVoUSidhdZofmD
	EAzBcx+Qw9mctwClFfT++gGLtQOe0qQlrGJy5lW7XK2pOx6z9s79xzz+I8Toq/vy3EUeKEnscFiG4
	lAbgefNxM9qjpbnELcB4K5fnI9ZYh69r0Q1rfOdaN019GP7TrTezplY6ajaaduW67+CRxaFRx5F58
	afSk9vBUXT7pyVqQmNY3EVTeTKxYiLollK2DXsdEhi2XqzKEQ8Zw9OOyl35qSr8hUpjYZgwPgcm5J
	sNPz50DfqK/u6A4HhRXtk6GyGAtge27mNwvfYUyzGRcuhzBRs9KpEjAb5ZFcMLL1r20XwlZquFgSZ
	tw5DDkscxiiB8lytmXrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw22T-00000008yfI-09st;
	Tue, 09 Sep 2025 17:21:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvzhu-00000007sKm-1yz4
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Sep 2025 14:52:31 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LRjt029799
	for <linux-rockchip@lists.infradead.org>; Tue, 9 Sep 2025 14:52:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Rn4+Wi525+F0z3MVcWKrKeV/0wAxSecqgj2MgM3DOG8=; b=g7JfrdUkeQXpz3WB
	OyCGDQ9wCTBCRS5rGQFEfBzOPiI+/p79Q2bFuHoCn5lQFzB6i4qKOOgDo8O0HqF9
	XoQd/I3lBgRDrZgY5Z7WHV3lxMUZfEJA8rZlr4/DpAjL6Ab205xe7xOQdPI4MQpc
	6VkHDPT8TPU+VHe5J90awHK/zwUMKMuubVcjQtxieSdinEL10JSq0V6kVJmbySt+
	7vtXwdUZtUnI6iQN1BTe7sNWRYGKCTI6n2NKdv8e632lyzitClUIou7e29TEgQEH
	QjcG6raauWUzdsWDvMb1oj+sUUWu2ow2pbXrQXCW4x56/6OhLCoiZW/D5NTVoMuu
	F+GMHg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t37w212-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 14:52:30 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-722396b54a1so119499696d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 07:52:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757429548; x=1758034348;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rn4+Wi525+F0z3MVcWKrKeV/0wAxSecqgj2MgM3DOG8=;
        b=izlNQBJjkZgMp7H9cINbJd0qU0BXLqADdCkSw6X3LecaH+N3FIGUaGCiAShSe1VdGF
         o3XPN8+SZy2cfYuUA7G7da+99YyxG/ypbQ5BcYJXXUOixMs1fvu9YbrYyT28X5wEz2E8
         2H3gm6E1Fa0iAzk7rrhh82zpreTBD98nmzLlvMduB/LGA6MLnkfO8I57XMUvu3kcR2ls
         dRacTuviQGWsMahkd4vzALY55UGiapxEnwb8lklbLOweG2h9FO9gm1NGpeeq2oJGSSka
         5zZoyvkk55TLgPtmPPMX0vaXiiBUDL1DNo7i9ulZ78Kq9rKX1oQGUfOqrJ2QxhUtMwJJ
         VtKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBtW4gRA4GUmValDJaYa8MHhkdmTzMgp58hybTqgPDZHQ4K81kg9buWR9tbKmJwfKmd/rt9NBT6Xr4aUHAYw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwQPk23Pj8zQZqZrfhZ8UHU4MPtGWIptnCY7ZjBW3W8vvL+zKAx
	ON0ddwjw4g2PjN21Mvud964jPxoSY6eK4nSmGOVXaZvOv4S5+yvn6VYVsyl3j4m0BoBCvVEEABD
	/Z9dPB7Jaz3IGqND/L7/HEyYG0blvpDV4Eww1G3agd1UbVqkZOjK0Hr912NwUv+Oefzk9aOsHsZ
	8=
X-Gm-Gg: ASbGncvAwEHFA9rBgDIcwZf30JgH+0raqbdqeARRn1NgA0d632PJ0HIL3Tu/4bdkpNG
	npU9pP4cbZ0uEuxW7SQhgrTZVzfWj6cz40FP4iMRA7yUwrP4rs6o7f55Ax/erWBqmSpehg/4pV7
	tGoOVxscAD6qgdJV2T7ryhGaAmOzBLaT44N9Q5ROFFuq/agTa+GXRl4eh7pbDFwIS9oa2ETJVZ/
	vdx+Qn4FltwTZJ5Kk0MwoObJcX9X31rTvOrQup4QHwpzeYBee+w5ZhX0+vMwRIe7cLPAxwH6Thz
	1Taxs9umUEjRFYC7NipACJSGwdyYEtFH5BPM2RVmhDfB4PNi5rp2/jkMU3Ab90jfRUOk6bHy2Ms
	Uuf0JtMZbPAK6wpw4VWT5cjZdMnvrmhxnLZ/+x8ZB7kpZoWb2qJce
X-Received: by 2002:a05:6214:20aa:b0:732:10ae:d55d with SMTP id 6a1803df08f44-73919c9e239mr146164476d6.4.1757429548182;
        Tue, 09 Sep 2025 07:52:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEkZ1SyNAZOKwaZjgWGgZYNxsRKTBuelhQ+O6Fw6gKcHDoTAWyspctjVqKaotztS7CYCn5cWA==
X-Received: by 2002:a05:6214:20aa:b0:732:10ae:d55d with SMTP id 6a1803df08f44-73919c9e239mr146164046d6.4.1757429547463;
        Tue, 09 Sep 2025 07:52:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f4c90eb9sm38735781fa.22.2025.09.09.07.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 07:52:25 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 09 Sep 2025 17:52:04 +0300
Subject: [PATCH v4 06/10] drm/msm: hdmi: declare supported infoframes
MIME-Version: 1.0
Message-Id: <20250909-drm-limit-infoframes-v4-6-53fd0a65a4a2@oss.qualcomm.com>
References: <20250909-drm-limit-infoframes-v4-0-53fd0a65a4a2@oss.qualcomm.com>
In-Reply-To: <20250909-drm-limit-infoframes-v4-0-53fd0a65a4a2@oss.qualcomm.com>
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
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        Daniel Stone <daniels@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1717;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=IJZghCboJx+n0r036AP0jF7y3adcwBpcry6IF9spRKw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBowD8b8ieAgxj637Sq4ws+QM7LjLkOdE7Yn4gby
 LcXsEN9pQGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaMA/GwAKCRCLPIo+Aiko
 1SNdB/4rCLhDfybuoskGcE1VGyhQHDNRop907iuQ/KfMohI82tNkUxmqn3fcViK1Dvdys80Wyfp
 VAFYFQHBID4DL59qRb5c/LSwkwDodGdGXF6y07zpgxsnTUegD7KDvUX0gzJjwgj9tZzVv/UQOm6
 hFYKV1nXm6oA8QLpbayUSXqTlXnckkVr0Ihc4Za41VQ1aLTz8F/M2jqh+pmgwN9myyOiAZfrt8x
 2+zvee2f6gaeDcRIlcvUKZ1zM/HLgIxJ91eERe2/sZ/wV6xMCw5TMRlCArGjeIHU+4Ha9MmneeG
 bl7XeBkt3LIIaXdjnUXmsUCAPLNsip2K9VKmZWaOQh8k09Hj
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: Kt329SfE6G5NAVuBRLpSACtWrEzws38n
X-Proofpoint-GUID: Kt329SfE6G5NAVuBRLpSACtWrEzws38n
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68c03f2e cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=8AirrxEcAAAA:8 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8
 a=HI3Jv4oHZFu9xgwai2MA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=ST-jHhOKWsTCqRlWije3:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX04RfMgge1dIa
 YGDY7/F+jpnBscSPnB2PkUV04MsUbgC8ovuFnHGEsf5jc1F4zp73azwQOWi/1R+hTdmC3uVtNQe
 hNDYD+LBTiIUA0DpXe87xaL5hEQ34JXzli72pVhm9x65jyjd6gTsmv2ot1yTq5iYMBQ1HsTYkU0
 9IsqsLaKZ6uERVK3OCrTH642F9lSYzTydtvkgY8PU0LzsVpb456i34u+SzXwJXHNyuwR5wbV+Ex
 8M1cVEotPv7WSEWX1PTapGZwfWixMyUvfXfpEx1rd1gdDHBOAiNSjfdceBKDUR8ZTRVCe+0Y9T/
 LtkOGyd1HkeM5Y2UyIcKwzLxV55+qJHkc0njcUvz55+LXj1dP+r54bHa/8ZYg2k036lJxheqg2j
 qgnoEQyE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_02,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_075230_520994_361DEED5 
X-CRM114-Status: GOOD (  14.07  )
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
interface. Return -EOPNOTSUPP if the driver is asked to write or clear
the unsupported InfoFrame.

Reviewed-by: Liu Ying <victor.liu@nxp.com>
Acked-by: Daniel Stone <daniels@collabora.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index 46fd58646d32fd0611192595826a3aa680bd0d02..f6ba8032904187a2f169456052b0e4cbd60ab919 100644
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
+	bridge->supported_infoframes =
+		DRM_CONNECTOR_INFOFRAME_AVI |
+		DRM_CONNECTOR_INFOFRAME_AUDIO |
+		DRM_CONNECTOR_INFOFRAME_SPD |
+		DRM_CONNECTOR_INFOFRAME_VENDOR;
 	bridge->ops = DRM_BRIDGE_OP_HPD |
 		DRM_BRIDGE_OP_DETECT |
 		DRM_BRIDGE_OP_HDMI |

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
