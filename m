Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CD1FCA0EEB
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Aug 2025 12:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7VRN8c+0bXtsQjro+HkwPkAZDujVrXQ7MRp+2laV9I=; b=O+7FmpRRi9hyoG
	Z2GO8lv6xj0hQDv6UtRlMgoJY4UWmuB1mp3lMzn90xK4eajIrqQMvYM3UEA5qh9uMZUWV6iYZla0a
	dGkrRX0EeifGRG383no73wwl6FsxGE6oY8J8tE/FxD5bmszK6kH0z/4KqivF2Qm9Dk9MfOzrpfdmr
	Vq/B2ODyCEMueUsFQf0I8M3nRAnlOjY/YUFgk33uN2ntOV9905wgzL3fyWRbq2LrCm4+F6zFRXJPP
	sa0Uw4AfCVQb7WiNNqHD9tcQYZGBg7S5h7cQRgbUqbnosfAPAjUIH3ZPnFOOkaqVtu4NH2myocR3O
	xbad/iaNIZqVbJPJ6S4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unGGP-00000004d4i-2Nb7;
	Sat, 16 Aug 2025 12:44:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unGDf-00000004cgS-0d4w
	for linux-rockchip@lists.infradead.org;
	Sat, 16 Aug 2025 12:41:13 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57G3Z2PR005834
	for <linux-rockchip@lists.infradead.org>; Sat, 16 Aug 2025 12:41:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TBBRBvbZmhS5MEDtIi65bqiX0+TlTd1eeG9t75hRPEA=; b=BzF61BOfHC/Wx1vM
	JMbO+2U9ceQC6hSZZqpe2WMC+JYUUEUgHqmV2su1bxNxoKe47vYUAbfiWfx2acoN
	pZAWVO9TtuTS5hcedjk4ESPa3OPqJqQsWJLC9CKb64lNo8sW2j3qSTCpYDoAInI5
	RTkRAaciWPSackxvFAjSLUACz2fLhcGxoiAcZeGcZuWAxtMtFWl1sTkFIKsdOYEl
	RK2k5a5C4CtUoWYrVc7IoM3RjdE1l9eYP/qtg74Gm6wSsOQ2KV4Qd0nRVL3iUlA+
	iF60U68OWNMLyzMDGvzaU9hJdL7OlT8WU5Tx4BrDyVrdzitRaI6hYqEOs+dAlcu3
	/2476g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jj740m9p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 16 Aug 2025 12:41:10 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b109acac47so76958951cf.1
        for <linux-rockchip@lists.infradead.org>; Sat, 16 Aug 2025 05:41:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755348069; x=1755952869;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TBBRBvbZmhS5MEDtIi65bqiX0+TlTd1eeG9t75hRPEA=;
        b=WkVEyViaY9PxR+IpZPQ9DjTuOG+gyCBDk0T9NGetFoipW1VRWWQmor1vSIOijo9lnK
         B+c8HUqtnj3NoYYNYIZl1whjK8xmXzTTkBJWk5BJN4bkX9seKe2TYnqWwiuKCRDWE6zC
         wFAB9ndqexHlN2Im5y+T2i6bwJzw8XBUFJir/V7mAQbESvCoQbw0bFzN1adUpQXKQkjf
         iDrKP7ztNeYQyFoPR9co/t3hOzx+JJVdDA0vIc6xPAALW/o3r/3kNjDf4u5pzaTutxjC
         PJZqDxi+G409SkeIWbvEFqWLRPLw3NOMjD5jTDPLZw9yNXN8EKLTBGlVmzffEV42nKnE
         /TNQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4BYfYcP1sqteX5nyiip8WicTJ2Y04lpsJ+NUf4PBKJBOmLIjfkiKbjzg38f6nZlOtfHich4zVZjiBXF/TBg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2GriYJmsY69Slsk8LLhhbz0bmapYXngEVLlKiZ83Rob1W8CPz
	t19gBs2cbPCCgQwxYbd543FXrtvMASMsDLuPDUtBlsijEYJxcw4xUizggyK3D9Z7DWosV2dG5tv
	mCpq+RvBJg250LUaFCx1KkH+ByZb49X5h2mV2Ei0zCllsDdlf6EIT9B7YgrADz44FlXeWZKmYlR
	4=
X-Gm-Gg: ASbGncvYU/5E4rgK7QuIjSHruMAoHUQkGR+GdEWOj0Vv7CdcI7bknnp7iibla3BG8P2
	K3EeYz+PUAQI5qez8qcd8E4MYwQv+hwN4xfGdNRE2xsQmI7gElSxDIJHBoFi95RKM2H2mWccavk
	LZaaDOUncshzG4qP2VRcflUzTZlvGaQMn6oORQpyrPN47ItwOcSAj8ZHaQl7YiK3EAFReQ4E6sm
	wDVG1QpQpvQ4wbiOo65nybSpGR+0K9wnfyqNx8c+6YDwUvuBHDjifNJ3Dz5SKWGSRFoIHKOzuFV
	cnm7VwRwokaPLLY1mEc3TEiAENdwwpAY0yyeV0kdZ0NqfT5Ye+Nql+uFyVg6nmmC3plKlegD/Kv
	hoC7Q/Z8+vGz4OdV0dXqhOICqibRDCM8z3/CHaJt/5SYhKq0V2zM4
X-Received: by 2002:a05:622a:1108:b0:4b0:ec28:6fee with SMTP id d75a77b69052e-4b11e23aceemr77142771cf.38.1755348069173;
        Sat, 16 Aug 2025 05:41:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEujKVPrwnqPmVwBrT/6yKZDdIPm7Rj84fddbqZ46SbGO9mqJHM95gjJV/0J1FbKa4y9npTlw==
X-Received: by 2002:a05:622a:1108:b0:4b0:ec28:6fee with SMTP id d75a77b69052e-4b11e23aceemr77142321cf.38.1755348068724;
        Sat, 16 Aug 2025 05:41:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3cca21sm856554e87.104.2025.08.16.05.41.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Aug 2025 05:41:07 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 16 Aug 2025 15:41:02 +0300
Subject: [PATCH 2/7] drm/bridge: adv7511: declare supported infoframes
MIME-Version: 1.0
Message-Id: <20250816-drm-limit-infoframes-v1-2-6dc17d5f07e9@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=936;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ics5UJu435PTkR3N2XAnDPkmPWB0LL/sCgBg7ErLZlw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBooHxfM4SU8e3MmGmakUS5mUvOK2lRk5Rg6pgaF
 Culi/ZbaOyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaKB8XwAKCRCLPIo+Aiko
 1WmoB/0R5TBxmhvS4QiRmSEhjsQzSxvsfU1laRFx1oRGjZ1ar4jAOFsu3PQIsiMObIXEZWQYtlt
 Dj93ckAo+pDbud90Fki0EYit+uS7JUpd9EiQbxx96Jg0AkYoYu4KGHxOOUbVAXzULWQ5nEQv1A9
 tUjphXky2tRQvOSKl1/pTUPmRBKOOsESu7sQ6Ies/giG2MuIzwKB5Rx1FdxnfB0kNoxYZG7x/R2
 ETKyAzxVXIvMtGQky1Q8JGRdf90hMN4xz2OPiK4qyyJoz0++r6wWjj1TNzeHLacbKh5IIRzQkje
 GKf1BwdeSqphn8lh67+Vx9V3VP7Kb7S7DfYbHr9aVVy1SIa/
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: BubHw1t-3Tr0o86dTu9HsdvYuXgG_-TW
X-Proofpoint-ORIG-GUID: BubHw1t-3Tr0o86dTu9HsdvYuXgG_-TW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAzMyBTYWx0ZWRfXwrMg1uXYqgqS
 Xop/DooKd2E4Wes05hIOeJ3X549nBBou1nZthJ9kuQGJ8+Q/VxEHhq+7FqntRZFAjGiH6lW+N2S
 aVRP8IW30w8L5BTCg8oGjjIzcwE5T5BDoo2FnuOQIbs4NBBUUruf03yilzzQ6csLOUqBJOGzHfc
 Np8rcuNGwCAsuKBZwM43nP39BXMH96XjpyyKHzBbis2gaqWe3/GvwILxcF4Cqp1Xg8OD0rWI39p
 5iXbxYlDPHmyJELXKVSPocl3GdbR4f1CRXFypSHxMUrKZP/NvG47cxzC7hOHdD/FKuq323c4h7M
 KnVJMumnFz+yjEzKE4VN76m84bZZC1Ahb2sn/DtGtdl7OqMFM+RDblvPP78hK1pTEGp2YxI+zbE
 KLgq8k3Y
X-Authority-Analysis: v=2.4 cv=MJtgmNZl c=1 sm=1 tr=0 ts=68a07c66 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=BPUVXzEUzielt3HhGKsA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-16_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250816_054111_204098_0C4B3053 
X-CRM114-Status: GOOD (  10.91  )
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
interface. Audio infoframe is handled separately.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c b/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
index 00d6417c177b430cb1a81118800588b90c692018..a9b2757d7a2cda1064cbc564cdded429056dde0a 100644
--- a/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
+++ b/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
@@ -1269,6 +1269,7 @@ static int adv7511_probe(struct i2c_client *i2c)
 
 	adv7511->bridge.vendor = "Analog";
 	adv7511->bridge.product = adv7511->info->name;
+	adv7511->bridge.supported_infoframes = DRM_CONNECTOR_INFOFRAME_AVI;
 
 #ifdef CONFIG_DRM_I2C_ADV7511_AUDIO
 	adv7511->bridge.ops |= DRM_BRIDGE_OP_HDMI_AUDIO;

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
