Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DF34CA0EEB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 20:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSwd8/G4ZCNmH0220QtZhMBcm8AQVQAb1DFfrcb6EhI=; b=wukpQgLgVeF3w9
	MCoXP79Y7LLhEE5QI515QcxOezmQLlIYOHAKO+sTGyINtwHXV73d0TZYPIYBjdUfvFXRBU8wc7JH6
	xc5vqLh0f8cyktLLwjNimZJaPhJne7gBtBELWrINiAsRS6eXEQ3jOUaWmwR4otTs7+HgTB/Rej4+3
	tM2BxuS7jNqhfwjPAX2yvvIOLlx95JXHGvSXk5FU1Ptf/Og0ERCgcHtVp988arAlAzSv0J6vDInxu
	xd49SsFNP97SBW2Gylv1NWtcG/C6varT5jDDK7jp/a22vX1WPcxork2NvucNCHq+rFGH3cClGLElj
	c3tGNT7QXYFuNIC3Hr5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoTKt-0000000Bb9I-0s4p;
	Tue, 19 Aug 2025 20:53:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoRWp-0000000BM8K-43pF
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Aug 2025 18:57:53 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57JH1hAe023335
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 18:57:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GwwcuTSdQf0vvJ25qV2FXPYXtLSGO4QcuUbd1Q+beKM=; b=cjfZLcpa8g0ZiqHC
	za6eFtectx3dKHteVvIWF8BgkDa79oOPaudQEWmqVCwkJGUEvUQNoPIPRmWTF6Fu
	bBQYe694VLPDEk57j30y9ygejpQHTYmeKORc/hHvmeeLaSKZdws+5SnJXJXTIg/T
	7eJZqrCGe/BaRVynTOMv3kTFuHC6aT+MGyH1L0Uf5GRn8Ky2W3TBnl4d8uxaD08R
	nFsSK23dqsamvItlmud5LPV/FrgWTSeLxTGHf5EMFpn7H3W75oIkXxFtxChEhpjo
	SN4JDvPaGuSEOWmDHAlycxa6De74o6ORg+BcdAdWmpsiEJaAiCnxEbiv2HQMT2q7
	iGu1cQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48m62vmmmq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 18:57:51 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70a9f57f950so121862516d6.3
        for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 11:57:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755629870; x=1756234670;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GwwcuTSdQf0vvJ25qV2FXPYXtLSGO4QcuUbd1Q+beKM=;
        b=SPsiAn62z2NAh8gQNDpDI5biPdCNMzUFuCf/Nxsmd9mjZR/NJvAK2GS68c7svzW9io
         gj77aLTdwCJp4WBTIZQ0Jt0/+xOTFTOwe471cpqUxXc8ZyV0I6yVe4E17XZBKqL8l9ul
         K+4Dm+bFx4X0QbmXhuO35AfvRZPsDDgYeHbuUuJoPwDjEeHgOdJ4Nr1hVFG638/cfSDt
         RLbNdAO7OFxq2s4CdopcEhuHccl3UsXYlqQUJKJBdUbEfKTbPYpJKwlmIOZK6m3OABsx
         1GhZtrsYYi+FFdBIy8264BKtOUH9aSJ4nftAYSDLIBI7PiwNMOYZj/u89ADUcR/ulsuI
         c/jg==
X-Forwarded-Encrypted: i=1; AJvYcCWls3/SevmmT6+PufL0JguHA10GVKSKs5gheelk2QBiv4V0AyGTKTSnOFjBoTB+ozYJ2kJK40P9MNdmyQHJ7A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzjGxbT/BuCAYjjNhRG4+2+A7K+A5HkWz1tunnHeN6N/RqnBs/2
	8sDXMrNe6xnSh9BvFTlQAeJYVyChHrsKh/dCvng/fJvx8vdW1N/zPBOxIs7YkUdesc+G38+0WhF
	tqmZoa4ymsUxK+Hk9qTBPdGhahTT8IBgRwnm0qPu3xtZaiaJOSMwcYveiTFGplGY5l+umUSDvKK
	M=
X-Gm-Gg: ASbGncswQbAoaJxuS5Cr0JDmC8VVbcwrb49nuXPPwdR7EN48JDU1jv/3rS3OkLcGPdL
	jC46Ok6NDgWJa+YrWNb7G68Hwhituu8ebn2+Z+KEdZDr3AUTswN7Wa4YUd0BZI5QL/UNtXvZ6/3
	TJF/OI4olBVxxpOb+HPxuggD78OPyLhvH9rwXptxDEtr/4oABgTUeg8N9fgAox9shKKkOfBwCR6
	7mj1GOvGRC+xo/zYQdqfwv1LGR8BoI+8xlwVZdsWxr1vXiKY8opJuVSAwxVovKLlsGe9bgR9hSf
	MYd5ttFyIe51DH2PJtBvTJr7T+D4SV+VtvGKjurKSMvpRjPTpvSyt+pI3qD0pZoNWqmddUV+OAq
	w0Aun//bniD33iPR4R+b3/taukBxcSEQRzaCrVbkk73vYe5mjVAqg
X-Received: by 2002:a05:6214:1d06:b0:704:7df6:44b4 with SMTP id 6a1803df08f44-70d76ff7ea4mr1292936d6.23.1755629870262;
        Tue, 19 Aug 2025 11:57:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgeB6BspkJmBzVZghKuKkvMQsrc7yh47pgRmrociqcAQYwZxD4o4UnSWHYlSHwPmGuWLNsBA==
X-Received: by 2002:a05:6214:1d06:b0:704:7df6:44b4 with SMTP id 6a1803df08f44-70d76ff7ea4mr1292266d6.23.1755629869609;
        Tue, 19 Aug 2025 11:57:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef35f11csm2207314e87.51.2025.08.19.11.57.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 11:57:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 21:57:37 +0300
Subject: [PATCH v2 8/8] drm/display: bridge_connector: drop default list
 for HDMI Infoframes
MIME-Version: 1.0
Message-Id: <20250819-drm-limit-infoframes-v2-8-7595dda24fbd@oss.qualcomm.com>
References: <20250819-drm-limit-infoframes-v2-0-7595dda24fbd@oss.qualcomm.com>
In-Reply-To: <20250819-drm-limit-infoframes-v2-0-7595dda24fbd@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1295;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=7deMFPHaCP1tEuAyd0wqGDyMbbgXRm8M3x+yrKhIoqg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBopMkcfIiZrdP6T1yKBcFmYUYjGemOpooWhlAir
 XvwHx5bmkCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaKTJHAAKCRCLPIo+Aiko
 1dK0CACnaQ5P4qzpStTan2KFXA/Co+l8yegd9ipo+oTCj+eykTovOi7mhcG8CZnOFPUnsGb7kQd
 LyZnJQugFjc10kh2vK9lA1XdM4Cf6YI4WK8B7Ve12p3KmEVjnHSYroGza8IHcOF4nVIIrZnfxuo
 weLeMloZjk4ugu8fgJcuYuxcnIpUN8PfaK2EcNwyeJoxv66YrA1H3fQ8A7mfgvlIQDpmbyAhrs4
 3kxvNmJBPnkUKfk2FK+O4X90ktA0eTQdqVfe3mRMeW+YOTxjWtqa0eLtVMjV5QTjc1Dwo9CK2XG
 PqllamKjHCM5PHS0RBut4Mcu0qyvmLtxANCYLQWkCP0lKqND
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDEzOSBTYWx0ZWRfXwYeP9C5QzvFl
 1aVDgkiu9i67Rv6pqOkIgwtdqnMrCOU71srcWAlLIL1HJfynkMrwbpYQU8ExDyhzhLj1t5bCWoa
 O+HfktrPaSjCxvOKNC0umpGGDZMt9gjb37s6hywSEiNVPuAE4CraWqqeQE9Blt+5fy1ZZ3cJJIo
 yIQQ9B2iOFZf380lI3xe+TaGspWFwsRRe/nN2wx5Ni3AYuAbR9b8/vX61rIqJ86lDBBTm6kNSTR
 no+AHKDJGoBIh37/cfWU0tR1XBPcdcAGjqKtlfpX849WaJRkpgrkCGfcqJ+AbbPctxHhQ2eUtnu
 bTWKyyYc//MGmQw2BVeOX8CtZuNnh8o+9kWQEYq2V1Z2E8YhNrsgi1YiPVN4Dw8dhNVi5KcNJtH
 UCqIqfU4
X-Proofpoint-GUID: vPXzxMFTNDLBCtVcPmvEY0t5x32XGKgA
X-Authority-Analysis: v=2.4 cv=A4tsP7WG c=1 sm=1 tr=0 ts=68a4c92f cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=98uy0pNEvqNMg_-Oa9cA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: vPXzxMFTNDLBCtVcPmvEY0t5x32XGKgA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 spamscore=0 impostorscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508180139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_115752_137896_611D3DB8 
X-CRM114-Status: GOOD (  12.79  )
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

Now as all bridges are updated to list supported HDMI InfoFrames, drop
the default value from drm_bridge_connector_init(). All HDMI bridges now
have to declare all supported InfoFrames.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/display/drm_bridge_connector.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index b94458d5faa9ae283889fc79496ae323bb4dc88c..047fb6276e9d84de39718cb65de72ba782bfb3a7 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -781,12 +781,7 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
 					       &drm_bridge_connector_hdmi_funcs,
 					       connector_type, ddc,
 					       supported_formats,
-					       bridge->supported_infoframes ? :
-					       DRM_CONNECTOR_INFOFRAME_AUDIO |
-					       DRM_CONNECTOR_INFOFRAME_AVI |
-					       DRM_CONNECTOR_INFOFRAME_DRM |
-					       DRM_CONNECTOR_INFOFRAME_SPD |
-					       DRM_CONNECTOR_INFOFRAME_VENDOR,
+					       bridge->supported_infoframes,
 					       max_bpc);
 		if (ret)
 			return ERR_PTR(ret);

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
