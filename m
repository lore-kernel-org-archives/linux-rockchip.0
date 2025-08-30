Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66C64CA0FF0
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 00:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9dsXXlAOny/ddxmf0POMwJOy8cdjabJfwwhKSg2BQ4=; b=EOKZ/OR/951BB8
	DfDTuLQhq01NcJGo42mWzmMlM9Lkd0RxZ0MEMmeShtdntGl2zx28ugVSIx4ObFWvimKDtLcXbqQ3f
	cDeIT1m83leVmMkBng40J185IqxKHWNTHOdFbivNJg4/OnL0W6g+6yyQwu+U1qUYR4BFXtW8Zf8TG
	4WLgWyTC6UWT12lRBI9Di/OnofFNWYw38oUArAxG7Z7W+ssvnmruJGwn0GwdtzMhzGLjSQErzCm/i
	JCvLRdahClNJUXLPESse9T5F+Hu0d3+0loRly+znJTupX/a8bNjNMY7RWRQrMLNb9M8zYuXyj5vTz
	sNVO6OPf46EF4g+l0ZAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us9qB-00000007EY1-3A86;
	Sat, 30 Aug 2025 00:53:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us9NA-000000074Wg-073R
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Aug 2025 00:23:13 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57TFaaXR031551
	for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 00:23:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yR8ojpGZaE3dckXhUPm62p+tv8/S+wacYcr4NjEKkXY=; b=UClwzVJgdHkDXZo7
	w3HM0F5aHQ2GZ+oRT5p8dn1CO2MLAhjgATxyxp+iakcyr9esh6YHe4ZUpZpeBRjj
	Ik2Gx3v21Yc/5quAu0rD8AjaWkB7FynQ2yGPMT2sdTyQ3p5dLi+8ZWH62WowuuuQ
	lg7kaEmnDKL6WOmc/CutjHol/YWAAKRaPGcX0+g4IoSL8xB/2y4pXhsf9pkzoN3k
	uaoECza7pCvR2bLDT7xtmVAzjw8p+bqzfThSU38R4ssxQrWFLJBYrG4U01wOm8HT
	w6VFuVebCKhIDl8dtJ1o4oJwxidP72REwLXT55tq1sT8XlSEQmJWC1hfwv92yHFu
	UtD4/w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48tbpgpvjk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 00:23:11 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b2dab82f70so75533911cf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 17:23:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756513390; x=1757118190;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yR8ojpGZaE3dckXhUPm62p+tv8/S+wacYcr4NjEKkXY=;
        b=Xa0otq7RV2wgrflcJ0zKhC58dnGKPqP72WYepTmp+qzcWRNP8eNnvja9TvFKvs6ikU
         cZh26tk3FxJsJ3b49/r/rp41La1C8unE07wEg6k78ctLsTNYDlNqCrbAOqbzrDOZlALJ
         VuV0nGVORRdtPDm9WqZZgl+ZCjjL8Q/NOC1OEnIFGNXP9MY2wgJ3/fam+ZVmL8LGgvmv
         n/SB2Ti1gelzIcIY6313xsGl+ZzAgSc/EobYHvBGGhOOo4rMC/5ZhZwvN1AFkZ4QtoXZ
         nv1ATTLgJ7bpum7ntjq/GTapfg4m776xM7tq33bvgNSWHAjvM/dB9RjQPDa/Fm1vxNn3
         l0vQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDTypSRBoDBQ5z+kbVbXMMop8c0Nkswab0yTBz8kUhAos9pmvB6t8i8XKjlQR4l4df4icwzyHKvObTC5ZG4A==@lists.infradead.org
X-Gm-Message-State: AOJu0YylvsYs5HCvIo+tz5ufn7H8/Yne8Yn1KlsNIXY17eQavBNeh5RR
	4eP5gSm525JoVAGHfRLXwKYNAA5FprO8G2zgUWbtVIi5yVBWm5YXiGUQRIJMqYOQ3ZV8eLMlWqa
	S4e60m2rYPpJzw7MStyJRZNr0L3CyzFEEvIHljeVAJ6QbY3XGdkCH7m+eLfhjsCwboUlKKL5tBc
	4=
X-Gm-Gg: ASbGncuIHWeJhWFZmBJnoc4Bak15VU+JHe6Ioursa4MMeJ96oH5Yi9S9cjQdGxalFI1
	c20efFAU82PN788vUUEYvexWCD/gn81rOQvg0EmA9ZgbTzi90lNtjGf/OlnFKSsJWLn92Tbg11n
	+qGSnzWTnR7nSwy02aO/a9gMPRoGl6YpX7hJXBpMV8PTIfpExEkp9k0O4Z4IZwVeh7s32HMGHXV
	nVxvCIIkno+krzCy5x5+Xk6/0V1mzbINA3Ly1BWcm0JmBU5BBJMEBFjGWDF9MQDI/EZQO+Y/sJ/
	Lx2EutNXp07ESF5E4G2pmHxevDNlySnFt8YcBe1mggHgBgccqrb5KJ5ut/2nv6biRKu+1t9z/pk
	s1teOGpHZ9zMFA2TWB1+6042JqOrAAF2y1WPJita1ZisNSr3Gvzfg
X-Received: by 2002:a05:622a:1806:b0:4b2:f786:92dd with SMTP id d75a77b69052e-4b31da700f5mr6049011cf.57.1756513390023;
        Fri, 29 Aug 2025 17:23:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7MI5AgeDyZIhBXp4nqzUlr+O9xa2caPrlb9g34SvQBLOsNrDgnfALkKyRc05CDcviHb65Vw==
X-Received: by 2002:a05:622a:1806:b0:4b2:f786:92dd with SMTP id d75a77b69052e-4b31da700f5mr6048661cf.57.1756513389582;
        Fri, 29 Aug 2025 17:23:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f676dc52esm1019907e87.8.2025.08.29.17.23.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 17:23:06 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 30 Aug 2025 03:22:59 +0300
Subject: [PATCH v3 03/11] drm/bridge: ite-it6263: declare supported
 infoframes
MIME-Version: 1.0
Message-Id: <20250830-drm-limit-infoframes-v3-3-32fcbec4634e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1689;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Ehca0mnSJRD6ppoLiHXuwtaX4XwYLAYeehZSVf/evtI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoskRj11vVN09hllSph2xCMLc0Do8yrAjG7XStQ
 fWhXkyDAaaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaLJEYwAKCRCLPIo+Aiko
 1TWWB/4rD0vAi94fpXgnZ/MAOGSejRTzdVcbXAhKRnofFOaPhsGaS/JXnirro1+t0KnU3RTBpDT
 qUILqYS/Jzl/1JMqs/TPPLURpwv0RrtFpmc/HAZYEcLS2ptOq9zgkpx6EKA3Vu0Q5UjMKra/mNg
 TILceD4EvuFfESWUcc2cjZJtjIIwayFwgP+f0GbyaYK7Tg9o6vR7kh37CYQiAVa8c1Gm1YcK3b1
 C/0Mhu0uJEkwcXFROdPZmEItNVR7kZMZOmfUjYFmjVBcYIwIDe69U7eLVRhFCPqPYKs/1Fb2kPY
 E8QdgsNmJMHRw8efstr7kx/kBQWYWUxXpKZuhf6DFZnhA5B+
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: h2RqxNQTDQJc7jaRScFbp-tHGctp0tbe
X-Proofpoint-ORIG-GUID: h2RqxNQTDQJc7jaRScFbp-tHGctp0tbe
X-Authority-Analysis: v=2.4 cv=G7gcE8k5 c=1 sm=1 tr=0 ts=68b2446f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8 a=HkIXcrnrDl8JFVr2q_4A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI3MDE5OSBTYWx0ZWRfX5jnoWmRuWkPe
 rziv6Xrl2O6Wqg+8qJ+XcDNZtLOyEQKWZnZdfYcDf0D2bnkGP4xR/qPlFKGeOx46wsx2UYKUNyC
 wwi7m4WlP7ETwssiMZNRgUvzLPKQywZ1r/PYn7vcqRaQ/fb118EcqjagyNQBRy53FTHbd50oPI4
 taIocCw22lrckfMCoPQwwhbw4ru/fk33mdUBnF4Vg0M+/l7wBl8bVswz2xKes1wfn4FZM5T7P68
 7nm373GR4fX6wT2NcmTeBpV+DfxmWev7GKmkboivvUU5ZRiW1pcHf1jMVFmWzg23V2m+JN1/XGt
 k+wQKwhv8IOuR4ZPZEU4Vs3C19hG0xFS3OD/Y2gBnrbP5G9d93oF+YugXPjjVnphB7jdf2euym0
 IEwrXU0T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-29_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508270199
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_172312_184131_97D671C7 
X-CRM114-Status: GOOD (  14.27  )
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
 drivers/gpu/drm/bridge/ite-it6263.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/ite-it6263.c b/drivers/gpu/drm/bridge/ite-it6263.c
index cf813672b4ffb8ab5c524c6414ee7b414cebc018..f2d54ad8fb64254747f2e8e301f19accf337128f 100644
--- a/drivers/gpu/drm/bridge/ite-it6263.c
+++ b/drivers/gpu/drm/bridge/ite-it6263.c
@@ -755,10 +755,12 @@ static int it6263_hdmi_clear_infoframe(struct drm_bridge *bridge,
 {
 	struct it6263 *it = bridge_to_it6263(bridge);
 
-	if (type == HDMI_INFOFRAME_TYPE_AVI)
-		regmap_write(it->hdmi_regmap, HDMI_REG_AVI_INFOFRM_CTRL, 0);
-	else
+	if (type != HDMI_INFOFRAME_TYPE_AVI) {
 		dev_dbg(it->dev, "unsupported HDMI infoframe 0x%x\n", type);
+		return -EOPNOTSUPP;
+	}
+
+	regmap_write(it->hdmi_regmap, HDMI_REG_AVI_INFOFRM_CTRL, 0);
 
 	return 0;
 }
@@ -772,7 +774,7 @@ static int it6263_hdmi_write_infoframe(struct drm_bridge *bridge,
 
 	if (type != HDMI_INFOFRAME_TYPE_AVI) {
 		dev_dbg(it->dev, "unsupported HDMI infoframe 0x%x\n", type);
-		return 0;
+		return -EOPNOTSUPP;
 	}
 
 	/* write the first AVI infoframe data byte chunk(DB1-DB5) */
@@ -875,6 +877,7 @@ static int it6263_probe(struct i2c_client *client)
 	it->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
 	it->bridge.vendor = "ITE";
 	it->bridge.product = "IT6263";
+	it->bridge.software_infoframes = DRM_CONNECTOR_INFOFRAME_AVI;
 
 	return devm_drm_bridge_add(dev, &it->bridge);
 }

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
