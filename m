Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82680CA0FF0
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 00:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/uHXQw8/A1Gj9DmpZIoPbsDHb8a79pKgvuM7WB+yk8k=; b=cDe3hAc+f+ntsy
	uEtoX3WvYVTqGJxdISF+89Kq0wc16xh4VTuzMBY3RgpsoRq6dvdu6KfmFlQWNznB3Jnw6vm8Aj443
	Mh9fy55ZiuVgydNYhsVNzCvB5ZUkrvp44paXLbKmVsgD2hIix6nN6eA9diWP1GY2q4gv7FKU/RDKO
	BSHT+B+KQ0Fd3qd2z8ZTjmjOlJrdj87T4VMr1BDQ+c4W0L6mnBBe8DRk+hopcB2SykoaESbNzHltB
	f0iV/J0pRZaBFKo7cmEPG4F+WXVjCZhzl9AE5xCNvM04LNCOIRUo1gEeSeKB9qAfdKF5cmvkFMJDE
	cknXMRMaw2eU5THkVmDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us9qj-00000007FAA-2ji0;
	Sat, 30 Aug 2025 00:53:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us9NI-000000074d2-2nLm
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Aug 2025 00:23:21 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57TFaTcV011706
	for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 00:23:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1AqNK0JvpkzUHYLdcGKR1RHF7N4CzTcthmQAulAujD0=; b=IXnoLFe3Mnw7FJ/3
	m28CaZTdvpwEbp6SY8hiWZu3PDM2KVfemXtqbZ9pWZ0QONyNOwQP7Pq8C9wXiQZ8
	9KIhHSY8UONnU8T2SV4IkXofTvDtgFwha/05lBNGensz56A4oTPBbThlXO61ZH36
	zQmiYcnMRsY6j2IdQPwmkTkiL8r6bV8SxKvm3ekrYrf/ic+4iIC/CSx4EzraZnq2
	oKpthEJcp8PA96vmPm4bg6c7H0nhhXoU08WUzfoFmzJOPDRlc4FFHhCcN5Iz8X55
	wpXXNiNNnB4P6lR8vn+bFUWx/k06lQaC7KuFDqtCT8Gtza4GSlMDew2tXRjX2R3t
	FkB7Ew==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48rtpf7e77-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 00:23:19 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b31ba138f7so5397441cf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 17:23:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756513399; x=1757118199;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1AqNK0JvpkzUHYLdcGKR1RHF7N4CzTcthmQAulAujD0=;
        b=LTBus0BfC4ry6siKv3JmO9PvL/Wy4lIHcFPu+eg1DZVYtHBDt4O/9CC3Ssc22eEl+s
         s5LckSqTEOwr9jaaUn3ddtWYXbrMTtH3KgUzkqV6pCvBv4/xko55ihgDL/vyKyonQISX
         wcA0fOCYCSUtSu+ZsbC73LJ3efMMm6I0Xowo09VM3Tk5fzTKXVX6xuHHeMhuKJU9/Me1
         Cd8vCNeJPxUHNiClG4SRa0sUAF1nxm9jFIV3S5vXL7baPgvjw0Ccr7tf3wz6IXw3R8A6
         F+SfzLYmIlw5GhuyyTqSJCnHH+zd3vQ4H38+x1l+3y/LJ/QFTCF536dE7OYYJ0jQc+A4
         P4uA==
X-Forwarded-Encrypted: i=1; AJvYcCUDviAWuKHT5g/YXUjgegslpR1VAg090iRR0wyfdnCqgvofAlTVDRKRhPHKwfMcJbSfim8KYM/dUi/QzPGkSw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxTDCXyVuzRPd2lzArMZqZNRtb0VTbwV2NO0ZXXrBZICzfHm/QV
	JCEXo+0fCXs/oAuH/zE34776BeJXYtXZVZaFlQ+tD96dtgaRTbeoKa/qvYlHII/nQn9e4X7nvgK
	q1GS+jlGR/B9ZJWdvK73YlkoB5AMxEQa+qOZM0ucYV0q/33tCJJSAfNB9Ze+r8CdXKwpBMYuIj9
	A=
X-Gm-Gg: ASbGnctlqZQ5sxN4UUTv5DbcmQFDCfxtbFLTrV9ayGUjuopz+sMV/hz/k1fmT/IqlxQ
	c8G69Aok935BYsJVJPXKFGuH1Uy34oceG+iCF231i8rOxQklqNLDSQ3FvoHIlZaf4isR7kxkZi4
	bW8IQRfPyT7eUMHWgJZLUWbQG3quAjkjEEhOXjxTYVOWIyx24OatzyAPum0pxJ+TihaKOQqFwN8
	MoAWASyFHWFfYYbbPqIhy1P/VCN1bRzQamDkISNfyG4ypF8vjBkjENVQwCfxzMDyccJDDMtalTh
	dyXjXLnoimt1WL5p4YN6KO+Q3oUD1MtfBEcs68iLNPifuIiYfFcQtdXvr+/KErbAPhVz8lZh0s5
	M99mapvzv2V3BltzF6A+R0BRTpaOGnvU3WmLiyO8hMnDkBuFxxVhN
X-Received: by 2002:a05:622a:1a98:b0:4a3:fcc7:c72e with SMTP id d75a77b69052e-4b31d80cadbmr5813791cf.9.1756513398636;
        Fri, 29 Aug 2025 17:23:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVN1muIBwmw4hoq9Rahodlm2w2ewntFQnkQICLUImr1NmaPx8XUeu2IF08fUmhex3lGfMyjg==
X-Received: by 2002:a05:622a:1a98:b0:4a3:fcc7:c72e with SMTP id d75a77b69052e-4b31d80cadbmr5813271cf.9.1756513398051;
        Fri, 29 Aug 2025 17:23:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f676dc52esm1019907e87.8.2025.08.29.17.23.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 17:23:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 30 Aug 2025 03:23:04 +0300
Subject: [PATCH v3 08/11] drm/display: bridge_connector: drop default list
 for HDMI Infoframes
MIME-Version: 1.0
Message-Id: <20250830-drm-limit-infoframes-v3-8-32fcbec4634e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1359;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=cd27TNKmPZcfQJ3UKiBSlNuQpycc1+LIV7BQ0LEWwY0=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ8Yml5RgLv0905LPmzQqxvhe2nOH5VfAIu5qjh8VjHPOT
 zjoMtOpk9GYhYGRi0FWTJHFp6Blasym5LAPO6bWwwxiZQKZwsDFKQATyTvD/lf0vs0N2VdxoewZ
 BlvKi1+Fpdx4oJ01g7fslfG8TE6f+kcbLJ81nku69W/mZz1rOe1Hpwyr3iWdED7Lo78x4ljX77t
 qdrbvpkZMmsBfof+pWKdBPm7n7qfFRk/ecfzsPf3tsOo3OxedX/aPmqNLTSbJlj7IE68q0jj3wj
 CxzjXZIePtS/dDOY+LF+rKV67NWGG73faf3I+mMv2ltctNV7jYC6ycModrTdPtj7IiBXlf9bZML
 bESv/3wA3NU0/3L6SLFdhPMn0xT8dBpkez0WVe51T+FcaO+g/iaSP24B4/aBMzOPihT/Sq7u8nv
 zDELdVPFCbyigqIpb1OvcIQxGLRbanuGOlkaZtyUK8oHAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: 5mNCY_nrM2gKaJPQrUYUC9LrekdeoAg8
X-Proofpoint-ORIG-GUID: 5mNCY_nrM2gKaJPQrUYUC9LrekdeoAg8
X-Authority-Analysis: v=2.4 cv=Hd8UTjE8 c=1 sm=1 tr=0 ts=68b24477 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8 a=-zYrYaJvJPDGblfDOm8A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI1MDE0MiBTYWx0ZWRfX2BOSppyitUI+
 Duc9EGS8Ab9osh4T7I2kH3UtuXpdQgbAaY49yfCCLSCLSiHA7faBRXVJn8Y9bPLQxoYypFtb1tE
 VK8pM4SqyFXY5xvmbxET9kCmk5SEPr8gpcz+TiYgP/RlR+wvYvwYffVZn99vN9pTRnI2C/cXPFy
 rXGHgPQjJY8EiqG/H+BDqAkrbY8cUj0LRxMsRlQs4/z0W85xq+piA1H4NoL1SuJsEBwO/cGu3aQ
 93aWwOZsc/y5VCWfE12GmcbvmfUrYm5zNxB7CQmhyxxwTwQk3J1NqTjwSHBhI5sSCl9aqkXUIyE
 relj+ZUY6PWieVfJ+oWUdGIiQu8D9qNFf+sXfZB+DOXvD0AVjldCcg+U8wfEy/3cqRVlcYYrGl9
 Ij4w0HHT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-29_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508250142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_172320_830046_B1C15C08 
X-CRM114-Status: GOOD (  11.91  )
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

Reviewed-by: Liu Ying <victor.liu@nxp.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/display/drm_bridge_connector.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index 944fb497ca339ddd63c132c2df0888011cc0487f..2eb7ab033cc84f8bf5816b5a608b2583226336c5 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -786,12 +786,7 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
 					       &drm_bridge_connector_hdmi_funcs,
 					       connector_type, ddc,
 					       supported_formats,
-					       bridge->software_infoframes ? :
-					       DRM_CONNECTOR_INFOFRAME_AUDIO |
-					       DRM_CONNECTOR_INFOFRAME_AVI |
-					       DRM_CONNECTOR_INFOFRAME_DRM |
-					       DRM_CONNECTOR_INFOFRAME_SPD |
-					       DRM_CONNECTOR_INFOFRAME_VENDOR,
+					       bridge->software_infoframes,
 					       bridge->autogenerated_infoframes,
 					       max_bpc);
 		if (ret)

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
