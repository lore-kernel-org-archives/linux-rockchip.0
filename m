Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37104CA0EE4
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Aug 2025 12:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P3FBTRgwKtQtwRxf+f0jzJn7KvzF+GdGdh2H1PFfl0M=; b=UrXUQFTJVavYgr
	+l1xky4oNHAwejYjj7Dpz/BsdHDn80E+oRta39KIzb/axmUt6IAzyROkw2bQOUnO75WR90FtgFdpv
	b91QvjTNgj6rKxOaKPm/1oDZT5YjS1XhJt/2oeMbOzP0fjzM9B2aEI2bch43J+VqoyKi5cUvWSD+o
	IhZgl/9+FP7ie1Q/1xfkgRf2lBm28hSI4MYBpQyuXv+Bx4bdp7NLFw9nSIj5evcrHfRpN4zHVXnDd
	A7k/8EvWfWHa6UvmPyAI0Q/pJYvDrXsi4XIEC+OkhlBkmnbH1hB2R9F/SVpk7jExplFDILeeCJYfp
	l8CTpmBA0vBmorVSqB8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unGRT-00000004dzF-2uTd;
	Sat, 16 Aug 2025 12:55:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unGDl-00000004cjo-2t2f
	for linux-rockchip@lists.infradead.org;
	Sat, 16 Aug 2025 12:41:19 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57G3B8ZN032246
	for <linux-rockchip@lists.infradead.org>; Sat, 16 Aug 2025 12:41:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WheBIbMm8jmW4YxKN53JoUfaF7MiVG3M+ZhDR9++pK4=; b=ghy7ow3IhXPGTqxh
	rU4w33RBBu9X2DhL/a3zk5EKlCbeZqSqXPiDZgI+ZOqS+s/MpP9WCKD7YeKnB+N/
	NbgE/2btK/ESkOEbf+ABvy2OU8zm4qLvgDMwh2Up6tJpZlgZPcpnP1slSbCv4zTF
	IL6OiD80boGZjmdAZ51B+0tpfRVdyJNyvRuFQZHD/2EOyHaWlodp7Z69InLwRg0C
	+I2jjjAoauJeGmyy3hmJI8vJjoqWoCw9RQOxrToalLnQlO3R00jW1Bd4SBd1lY2N
	gxc6uYuBbls3UEoMtXdNXhBIDmfwpHCLedeIVi2hE+nO4WlpVwP+LOkoWoDnnGZE
	MEt89w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jgxt8qxu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 16 Aug 2025 12:41:17 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70baf7ecf04so19024706d6.2
        for <linux-rockchip@lists.infradead.org>; Sat, 16 Aug 2025 05:41:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755348076; x=1755952876;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WheBIbMm8jmW4YxKN53JoUfaF7MiVG3M+ZhDR9++pK4=;
        b=WeXTk2N37WXh4dAV7PyI1v3vhFqbA5AMLgXTruXBZR3abWMeJY+A4icvtiim3n4M5L
         iQB0FH3s6sktbxExmotSrKONb5GTVig2o79JpBzf72wy1kvea/D8rRVzbOOd0Wnl1R4z
         yh06xzk8Czqyt81ij/Su7KzZZE3OY400gM0CH+UPgq/Pfo2a6XLMIqwfoxB8/ryR678b
         LekbgxbdDmgMND5cxbvBPcADP7grBC9OhXf1Olt/V14cYD4nUi2EHASErqXCpUPob1Bk
         umtHyi7XimVwjITxEwLQd/i5g2Ww+lphkPGMk4e0cXlg8CpRN4CCX77JS7/PP950Rwtv
         XXGw==
X-Forwarded-Encrypted: i=1; AJvYcCVOm9mKcidKnbAbYBJTejSz95AHZd6ghmu60J3JDlW+AXtvxzVZWPy6PmINeWY91AlZx5LjdPIM0VlXW+gLcw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzH5Hua/Su37IWyVnjSzDMzQiCM2MX/d+JDjzQNhdayQW9+6bfM
	BvSozVs87hEcZczNLW2dQ/Aqh7pzXrKvxIOaSCWNA8XbA0ELnf62WXwuuAEB3qAhC0Gps5xg4Zk
	DbpYET+JfNILsE1CKibesPsPSUOcNRGRXyxa73xB7aJ/MvT5YQPxBAJqKdnnu+oW99eEXgkT698
	E=
X-Gm-Gg: ASbGncv0QwJeSWnPnw20Qet1o0cPm+mqPolIz2nEPjGwMPX2naAAA7MsiHLAyA/K26E
	ReXPkhyefAdq7eTtNaFa5imWCcJPh2tLeOiGBqWO5wYdcAb5uSJGL8Wvx15nMP+D5gwVus50tVI
	9QaS1A0pVD+8/5+ePC4XJZ8uIxdQ+TkWrmFXJHXX++8dHe/i0zSv0MIt+CSLjhw19t8FartBCnR
	4ypqKDhrOZZsHuCSkUOwGed/cWCISAuSOlYaCjZe1xYZ2GCr1L0sPnIZNpgXkFxR1SdPP5ckRVT
	E9ISc4heLrT5BgUlenAWUzWjn9Adhz6pgKfMtXAq032mCqVaPNFDA4nnZmLC7bZr5Ir055AiOmT
	J2QJfa18OGlhYVx0y/FlJgp6D8ld48npfxe5agdJb5VFchyQJ9YK8
X-Received: by 2002:ad4:5fce:0:b0:702:b805:276b with SMTP id 6a1803df08f44-70ba7b0fb72mr68628056d6.20.1755348075972;
        Sat, 16 Aug 2025 05:41:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG3UdiNBmKcbNBSZ74rRqQydXtIbuAXtAkdOOj4dUPQcZFQgwFXOOSXEuXuI37B1EPLUu9GHg==
X-Received: by 2002:ad4:5fce:0:b0:702:b805:276b with SMTP id 6a1803df08f44-70ba7b0fb72mr68627786d6.20.1755348075573;
        Sat, 16 Aug 2025 05:41:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3cca21sm856554e87.104.2025.08.16.05.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Aug 2025 05:41:14 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 16 Aug 2025 15:41:05 +0300
Subject: [PATCH 5/7] drm/bridge: synopsys/dw-hdmi-qp: declare supported
 infoframes
MIME-Version: 1.0
Message-Id: <20250816-drm-limit-infoframes-v1-5-6dc17d5f07e9@oss.qualcomm.com>
References: <20250816-drm-limit-infoframes-v1-0-6dc17d5f07e9@oss.qualcomm.com>
In-Reply-To: <20250816-drm-limit-infoframes-v1-0-6dc17d5f07e9@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1016;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=+Dfr1zh3DlBnrvVAtXMJg6eNn5T47Wh0MW2ToSAF+Qw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBooHxfF817cuWm0x9Ld7mSI9y3aEDv6yVOAaz6B
 PUV1yKfX8eJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaKB8XwAKCRCLPIo+Aiko
 1YeJCACinc5gTz7egfGIB6yk437KFDLl0hTcWhDnfZD9zWOokKCZsuwjgqgvP++oHdIB/be2QcT
 Zp52KAZ10Legd6GZihS8hapT4SrGoW7JbJeeaLydKZcWSQiqGGw8cj0ORAXsTvnFGhql41oNCAu
 AyHGwl+aAB38jVvd75yA/n7qZRM6iKDKeQMJbQm8Xo4EEXg0Vu66iCDPWSojU6TBTNeJPB8qk6+
 SUZJhUXTFUN48tRXFM7oHP/Rp/1AvxRedsNDY/trIp57DbbpxwgD7NVyWe+Y1LmlDm91m+TTX0/
 158PCZIFuFMCsoNY810tLXPPkT1IJScS1Xraf8Nuc82coAtx
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: EdF-PcqN5F07IejgrqsCrsuwqIe-TvnA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyMCBTYWx0ZWRfX6HZIa/QO8u85
 ozRDR3BTPO4/0m2ub6RJZmDHFhKF/ortACfmawbZ3Giz9RNenwfU5zH5exYAVD9xEY4wGJRS+OO
 rU2HaIuVW3nkbwUptUlXz0oYfxdgy+KocftaaF1I/mRhC4hFdBltx7SdMfqfqCFPR/7cx+Wnu0b
 crJ2L1eW7qTbldC7jZaNlOy0OZoS7TajqH127rI3x4CkUjJvLzXgxj6hCsRpA2OqIGYwgcowBO6
 JCcfEBjLJkSRJxKPQD2H3ty2BAiySYPeWMAJBLcFaUtdq5L2Af9KmnYSKFBD+aSe81/A74jhMeL
 X3d3bTi49Xwk8oivOw2t16mTs+YgZZgqhJQ0gRDXK+gd69CzInKIAFBE03f4c6fyUYxyxm6vOH5
 CqOSmph9
X-Proofpoint-GUID: EdF-PcqN5F07IejgrqsCrsuwqIe-TvnA
X-Authority-Analysis: v=2.4 cv=V7B90fni c=1 sm=1 tr=0 ts=68a07c6d cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=oy62-DSxHemnvxnUzX8A:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-16_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 adultscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250816_054117_768024_0FD0AE4E 
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

Declare which infoframes are supported via the .hdmi_write_infoframe()
interface.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index 39332c57f2c54296f39e27612544f4fbf923863f..b982c2504a3112a77fbc8df9a39236cb8e625ea4 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -1084,6 +1084,9 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
 	hdmi->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
 	hdmi->bridge.vendor = "Synopsys";
 	hdmi->bridge.product = "DW HDMI QP TX";
+	hdmi->bridge.supported_infoframes = DRM_CONNECTOR_INFOFRAME_AUDIO |
+		DRM_CONNECTOR_INFOFRAME_AVI |
+		DRM_CONNECTOR_INFOFRAME_DRM,
 
 	hdmi->bridge.ddc = dw_hdmi_qp_i2c_adapter(hdmi);
 	if (IS_ERR(hdmi->bridge.ddc))

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
