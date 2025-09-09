Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD085CAC582
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 17:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=op7e93yD7L13fCf44Kqy9K5xA/n6T/ItN63yYOODw7A=; b=D1AHCp5K5ZgiWI
	K8RwyfPYy3abDfiYYOGrBKXPywfjGR8kivvbm65f5C9mU9v/O9RtkzD5Z28Vvcu87TCy9mVEol4OM
	6TSHMChoXETVq9yjnU6+OYEf8Cdega0cLHsnQlx6ec539XVE857HEV3CJaB7W7FkaPZXcLigkbXA+
	j1OOuqaoF0y6OnKPF/8PgeIJ6wWY2yclbFKuvjiKj65n2S5zbU7KrxvMPBtAmd0X1dv71UbZSfWBp
	3Rxgnuq1wToU7Ly092ue/5mjZZmCYPRtZGDDEdksNUGixGpY/Joo+MrOd3MtQXT92ROml4ZNetKJM
	+f+zrlToFms/UsWx5bPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw22G-00000008yJh-3DVb;
	Tue, 09 Sep 2025 17:21:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvzhl-00000007sBy-3dhP
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Sep 2025 14:52:24 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LQmT029773
	for <linux-rockchip@lists.infradead.org>; Tue, 9 Sep 2025 14:52:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PE+T/FZyuTmpvyf7ua/nvmZNTNQAEt/0dfhmApWw+vg=; b=dE3M6rSJ5PgGEMhe
	RuFknfV1pMtgdva4C58/L5YBG0c/3x1O0gTcymygz9Jrj6ey0eX5G83og2CHnJA4
	zeqFReSVAgfm/ag1z76O9HZpIZgnLeoWsQ8cGKRRL8XnCDD2QZUPJ4Y8e2ekBcc4
	/4qdHhS39lfzHGuzirN4eUjrGBw8Yy/sceJw6boWKYFag0J4JwCzvQzXMpsOVrgf
	sNh36Gt6G3GjIBrqIaImqtkvdodoVnulx2qQdECLQmo40A/WFFVw7tByGfykIU0P
	ge0BzjmRriKxxYlX93ia/IEylKEnaLUv8Z2Fg0XxF5IEQGLAS0OQZPf2AQT3FSe8
	xiNMnQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t37w1ye-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 14:52:21 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7224cb09e84so124175756d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 07:52:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757429537; x=1758034337;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PE+T/FZyuTmpvyf7ua/nvmZNTNQAEt/0dfhmApWw+vg=;
        b=PdaYFoETnRYXNJIWFyZufBAyAAS3M9OcAUeHD+EzJlnH59QMNDyTVM9CzjOV4518cd
         /aMrN2322LAjRZuQp0dyKjKhOIUx03bY7+Q0kT4oSeavE5ubs93WhKiHjbnaDWeBT+/A
         M+qoB5LXB+w4AoV9Sd6tfQgVigNF5dgWstRNETg0uRyxNnohUtbgBqEZSWYt584Pafbc
         udPKFT/WvczuI+v5yT/uCi1HsmCg4AVS8JU+tbgnC8hqnivvQrQjOy7q6m9zyY8nJjoB
         ssELFXCJNS3sZRVH5W2SDfQ8GDKcVZcamoybkG00GbLHlUDH3AxDy1Xea+y4u/rb9cDV
         Mj9g==
X-Forwarded-Encrypted: i=1; AJvYcCVJCcSkjvUcqllPfugrjfZ3/NvxHH+4aF9tLDNHTQCyYNt4EWqgMP1O4fHwGOhUyQVkA6KPYYhRLWvvlbPylA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyP0LojDCRLDi2t6uTc6nK+hnLLbCx84RyzqrWLh5y02B4fLhag
	J6G26nDggvH9BI82Oyum8OTKGGfjy96AdxemlTDWfD2y9QvuvHwUcancUrA4n/8q0AR22f5L9zy
	NmPT4Xsogdbx/Cbvj/BjGkpAWJfsJ/p22LVWNuYlrY5lv2U90h4bPgE+NkR1kvskKtyUJ3YnA6k
	Y=
X-Gm-Gg: ASbGncsdvnPqSLDqqO9fV4ylnpw5h6VQ+FWvUBQaalBt5gXwzeQRxRfm8c7C27kg6H8
	Ijqpw863orVEe1yLv/fNH2qpcaPy1IEuni4HEbr2zI9aJqL/FTXN4aOb1c8jyUlE1PWu+rVcBFS
	uy8sjjb4CJwFUlLxl3ORFFpvgbgpisyVzK03iWlii6c5Ce1LAcCfM30SFigHPKDpop04QS5OPO/
	UrKsI0LvoLWJfZeJQiramWKUmOcFsdrrk92anjZ/bV0S9uTvuNtNtFmDYYW3vRomrgihkXMvW30
	tv1tfifyO8cdogDDX8W6+/j9ILktqU37KbMu1GsbzTqFmllb4L8WIczy4DWBWX+2WEdo9ujdGMI
	CSKkNhVIzl2A7cE/7yRlYOR/X7uYrDlzhH1ByX6dQyPj4Weo8DtBt
X-Received: by 2002:ad4:5de2:0:b0:722:2301:315 with SMTP id 6a1803df08f44-72bc4f93957mr184628086d6.29.1757429537143;
        Tue, 09 Sep 2025 07:52:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6VRM/IqVRJKXO81d0zT+XPixBAwFdKLiapVJ34MeMBozB2in+dHoYjUEUQ6Ok2p00fI7S1A==
X-Received: by 2002:ad4:5de2:0:b0:722:2301:315 with SMTP id 6a1803df08f44-72bc4f93957mr184627466d6.29.1757429536407;
        Tue, 09 Sep 2025 07:52:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f4c90eb9sm38735781fa.22.2025.09.09.07.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 07:52:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 09 Sep 2025 17:52:00 +0300
Subject: [PATCH v4 02/10] drm/bridge: adv7511: declare supported infoframes
MIME-Version: 1.0
Message-Id: <20250909-drm-limit-infoframes-v4-2-53fd0a65a4a2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1726;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=HknzX0xAST5U5QLgNvfO11z5aVo3wOUQOzJF7QU1MaI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBowD8aH5xYcnrhsuEgstp3NDxwVu4bKX6MZD2EA
 4Yu1jcDcBGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaMA/GgAKCRCLPIo+Aiko
 1TL+B/9MGL4mOR5FQjVfkhA/rQpcknnZoUMUAO2Gqv9h5Cz3u4e16jwPuv5boINoPhZebsK2s+y
 BrjiL1vqNJBOSO/UTkOjx/0fS8qhkk3L5Yv+bNbRqKEfdkUhtA25C8oq5pcAK3F8syC7y4p7S54
 /gF1zO66ME26uY668yT5CVicNHoQ+CGhnN51eeDSMSu69RotLmN7ZhVaUrnI+eeCkKs5zbqyZKN
 NIip2uT0ZPB0mWKx9MTQae77WC4y68wdJUpmh7jQklseJFf8M2MUTedWFV6PvWAs1vBjl3henPA
 rHDVrA+r1ygL8hZqca9H5UpXs3QjLHc65unr3Y/miZKmpJ0n
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: EUFI9COYelYvEKyCKjT1tTwIK8voAQTA
X-Proofpoint-GUID: EUFI9COYelYvEKyCKjT1tTwIK8voAQTA
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68c03f25 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=8AirrxEcAAAA:8 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8
 a=2sjEEKaKrRP40jhUrFQA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=ST-jHhOKWsTCqRlWije3:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX4+1PtwvK0BYV
 2DoI4q/+r/zWf/RmckoNsEC7ziH0Vxih0bz5OL5jvV+uNq0tOQ8sgBzeZ+ECZWJ+HluTGWnwvrQ
 qI7f6mJsn95UEsGw5ync5ec+WPYSauCKU29X/xIWKvSaqQVdw3QfnPelxP/hHelXiTEUs2xOdwM
 LimU23v79FBjhgm4pI0gPO0kpC+Dph5tdSBqCeRHD8QJgWrOprkmB6X6jpmgRvcXAuFF0xtFyL+
 tXsTYpuvi5Fq535itbBJXw0HFTGozww3evAUNgiCNLvaiMYzmKXSQeoha8IU7dKzO1e010HlQ6b
 VjH+xZuP4Thu4ghgUVR2cmlmQE+chPC9KIV0ihX5lX/Xx081zoInCNKn7r81zq1hieWC8llGt7b
 7zRYCCyD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_02,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_075221_919374_A0D66181 
X-CRM114-Status: GOOD (  13.29  )
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
 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c b/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
index b9be8654130758e69ac7ccbc73a82cc25d731a5c..280a5f82ebb0c792a0667e9f55af103f29ff2948 100644
--- a/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
+++ b/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
@@ -907,7 +907,7 @@ static int adv7511_bridge_hdmi_clear_infoframe(struct drm_bridge *bridge,
 		break;
 	default:
 		drm_dbg_driver(adv7511->bridge.dev, "Unsupported HDMI InfoFrame %x\n", type);
-		break;
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
@@ -967,7 +967,7 @@ static int adv7511_bridge_hdmi_write_infoframe(struct drm_bridge *bridge,
 		break;
 	default:
 		drm_dbg_driver(adv7511->bridge.dev, "Unsupported HDMI InfoFrame %x\n", type);
-		break;
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
@@ -1328,6 +1328,11 @@ static int adv7511_probe(struct i2c_client *i2c)
 
 	adv7511->bridge.vendor = "Analog";
 	adv7511->bridge.product = adv7511->info->name;
+	adv7511->bridge.supported_infoframes =
+		DRM_CONNECTOR_INFOFRAME_AUDIO |
+		DRM_CONNECTOR_INFOFRAME_AVI |
+		DRM_CONNECTOR_INFOFRAME_SPD |
+		DRM_CONNECTOR_INFOFRAME_VENDOR;
 
 #ifdef CONFIG_DRM_I2C_ADV7511_AUDIO
 	adv7511->bridge.ops |= DRM_BRIDGE_OP_HDMI_AUDIO;

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
