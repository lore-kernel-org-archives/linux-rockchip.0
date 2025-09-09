Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4373CAC583
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 17:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3z+Ps/wEjzyAZlx/GfteMOZmwMuzMT2w/x2e1S1c9YE=; b=xQYw9+uujzBV4h
	qHmTbqwjwJMIsvLGsbz4m5QD1kpJh+bakFR4ssKhefSflWAgMxd2Nfgs0ephFC9cBB20MPa8l8Flp
	mlqMfbZylrEVzkOHYnkZcsX1kHuPdPrR794PSZODsUsBoBrM+F7o5G9678rJWpyjlLuAlTGtl4pOk
	TBNwIasxgJJEmus77htRlDqG6TMFCGIiace7xUrad1ip38ZFWV0cCjTqMYDyohe8Mx7Th0elQd858
	HshTKUJnNzMqp+fW4ET+6ZWEhpEC8mCaRL0nFApg//cUiS4XYZewHC941N++1VuX/aASJCwpzvpp4
	veFsp5EViK8ZDEGuBgNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw22n-00000008z5j-1yW9;
	Tue, 09 Sep 2025 17:22:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvzi2-00000007sRH-31cQ
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Sep 2025 14:52:39 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LmA4032449
	for <linux-rockchip@lists.infradead.org>; Tue, 9 Sep 2025 14:52:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l9Z5uObkfX17ytwtS/hkOYbgTcwQucmA5+CIhqYDVSI=; b=SZw9Owat7M+hPDde
	VLW9jWV25LxsHJnfoY0WWEIgpl/+7gBglGj6T5phhPYTcfVZwEPc/IiBBzNeVnx8
	csnr5Bb18zMPGvmsnGRvV1vnFb49dzTsm04WcUvDxnDmHwoUB8OEdWLNqL19hvtf
	6MXOzwVHtnlyniNHCJWc6gNHXlnYtF1gbMXb8IsaZ2J4lwHDMdti12ekoSkw2DJI
	gVF82yZFmarm4vR5Y6iHgbikS3sNa17WPnLnsk8B3odF09EDzEjWXjfHNxNrQnSn
	O6X5x6KJOV/PIJHC80pZOfwoe6EFvufRqQktUI1DRaFDHmmqsFkqukgYLQ83ocib
	Ab2elA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bws8pva-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 14:52:38 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-71fe8dd89c6so133514616d6.2
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 07:52:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757429557; x=1758034357;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l9Z5uObkfX17ytwtS/hkOYbgTcwQucmA5+CIhqYDVSI=;
        b=UY/ME3ftJhfzjG97OzKSSwsuqzdFzXVF6soHBI3FiLVxZj8v9uZTnZETwtM2ZsVV+I
         DPYIn8xHWW0Cize9ZaXEA603205onYWlSj31mchB4tlWEHSjPolqZa4tQCc5X4gXtBtJ
         l2eJ9D48eSmKLXR7njR0NeAiTv2VXJPNkhLY1/ik/8cTjOPzoFCLT4lr13uEZnB/yk6+
         k6wKoXwc2F2R3hOsze5+M78GttWcRWhwT572WbU/0li9dpz6iJS8c6f7/V9OZ0a34mPL
         tTkpRLQ+cyG2kuN2Muxa70VJG5kCyBCC2OW+XVCYyDyQLsvuiBPLHEg3Hyo9sfW23/H1
         /8IA==
X-Forwarded-Encrypted: i=1; AJvYcCVbwYcXBvML6Z9fBS50e7YCmVtpLQ5MpN7wzGsYMfTCjFwqsJplrPECKpwjlokAS9nVSYqDvOnIqMP3/qb8ug==@lists.infradead.org
X-Gm-Message-State: AOJu0YwYDZw4o2oaBlUnQqH9Zaq0+aqg1WWvFqDtduXmSCrduSRGB+T+
	iv7GcekOMO84yrmPS+L2BEiPj0k4SPjA3dnDRx1UUScsqLBB9pSZc6bxs91PFH/4iYSBvwnfm7G
	PTesWG2fRmUoNjujsu4w6t6WnNFE3qc8s+qQNq1lY+PQsEnb2uanIsLLZ1mrlL/YZcucul+8BN+
	0=
X-Gm-Gg: ASbGnctp/H7LrWlS2ZSv8IHQTqI2j9LX+rv0X699NxL1fxMpWpur437JcwizBCADSAJ
	p1e1/iCv4MKgfad98eKimVXn8t2PFm5Ye6JTvM2SvRAPknIxgolZGPsgWst/QV40RchcXwHjh5F
	1s0EMawUwfBpXbbehI+M4OjUKilSseb2mU9WQHSrDWDbXvC3DWNVnDRT1RT7ZG2PbCwa8AXvrWq
	Da0jBEwzptTQ3onXBYKdA5ZHgInm0l3zoetY8uhQ0HsQCjyO5gsR97TQ3fWuyOAsixjJ8JMfC6I
	vp2oxAVUO6Xwxw78hhJicVLFGXRbZMDlZfXhMyT/PDEuOpACXlYdKC56TUIQHixqlX2J16PB9Dz
	C9Hf7FS/AH4zJYy+bnKprL3IDCCvyes4UhiMSEub0Y/38d8EKRvcZ
X-Received: by 2002:a05:6214:4009:b0:720:4a66:d3ca with SMTP id 6a1803df08f44-73933639a08mr113606556d6.24.1757429556919;
        Tue, 09 Sep 2025 07:52:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGPHL4NfJJ/zE5chnvOJ1HeidR9Kl8e6gYNpoM3SLwwaEavBYImkLXu+5zH8Ed3CkO98L4A0w==
X-Received: by 2002:a05:6214:4009:b0:720:4a66:d3ca with SMTP id 6a1803df08f44-73933639a08mr113606016d6.24.1757429556265;
        Tue, 09 Sep 2025 07:52:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f4c90eb9sm38735781fa.22.2025.09.09.07.52.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 07:52:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 09 Sep 2025 17:52:08 +0300
Subject: [PATCH v4 10/10] drm/display: hdmi-audio: warn if HDMI connector
 doesn't support Audio IF
MIME-Version: 1.0
Message-Id: <20250909-drm-limit-infoframes-v4-10-53fd0a65a4a2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1648;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=WvduT1qbRYo9sMATdr0cfogagyWfZym9JAGpyIFdd7M=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBowD8b4ByVcFhNzN6vL9g+i6Xr5Ru20ekBbEAdJ
 +90fSIYze6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaMA/GwAKCRCLPIo+Aiko
 1WdkB/42MgipULdDGBHhJLj9Rn2m9Z+xg8n2+dwVvzMmGYgpA+PltLj7B5uOaXeKjVbIhMn7eYy
 Tzms6FQKTMnjfCE/3nJUZbGUl9kN8NBaJn9uXq14HKdFTcm7/m9nN2XW/f50ds9jrb83lrS+WzG
 1d9IvcNI2kh9ls+VF2uX750NKeykqE9uqnwxU88frDB1V/0wW632N6YQOrfX47F59xl3Xx5H9Mn
 nLXDnZAAIRGfTxDehtuvZo4ncNgOzGciZR6MuZQi0E/gquRXdMuCez2EHR03zdWeJWONeOAx8KL
 XZfA2cwtxgOTNy+164ThuwnMGvRhfMoUF7t/uJwK4H8+Gh+O
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: 5CXURRdT-iP-1ujtdUg0fwf2F1Dul2QP
X-Proofpoint-GUID: 5CXURRdT-iP-1ujtdUg0fwf2F1Dul2QP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX14wwyrIIyC0E
 UFBfcadZj9ZRJSGizE3265WXlqhDlCXjH7lrsH99u+IN31EPQ2d9JXwwNnvWJFIPyOlaDqnbdfG
 K7DW+lHjSa3wc5t45FDfyi5WFyP8sja7kheXVu4YijfvmB7Qn3i0Phbs4Xz23tpLz71pZXbz5sW
 6IBwV7eHmpKT/JbqG6QEvkedt9durpxkmE5jB9KZrO3MlaXDfZMd7h6UgLTy6+XqAl4XCp0iK5f
 rNzoIlJOYLA8rk/tQ46ZCmqfbMnkA3wJinh2XMJ16r+j298E7PImMTSMLBuSEBHmhtirBFha4vW
 H9OzlYz2RZYHzuZab8njUlkh++j/7SiyrfEUNwGajiA+U+oo208tqksXu3jbuCRzRcK64UCs1kG
 iPrjlWS2
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68c03f36 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8
 a=Yc4j0DFJudTMt519TXkA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_02,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_075238_771421_3DA83687 
X-CRM114-Status: GOOD (  14.91  )
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

Sending Audio InfoFrames is mandatory for getting audio to work over the
HDMI link. Warn if the driver requests HDMI audio support for the HDMI
connector, but there is no support for Audio InfoFrames.

Suggested-by: Maxime Ripard <mripard@kernel.org>
Acked-by: Daniel Stone <daniels@collabora.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/display/drm_hdmi_audio_helper.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_hdmi_audio_helper.c b/drivers/gpu/drm/display/drm_hdmi_audio_helper.c
index 7d78b02c144621de528b40b1425f25e465edd1ae..35e0e79cb683a68af813344aa86c154c3a5531fe 100644
--- a/drivers/gpu/drm/display/drm_hdmi_audio_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_audio_helper.c
@@ -10,6 +10,7 @@
 
 #include <drm/drm_connector.h>
 #include <drm/drm_device.h>
+#include <drm/drm_print.h>
 #include <drm/display/drm_hdmi_audio_helper.h>
 
 #include <sound/hdmi-codec.h>
@@ -178,6 +179,17 @@ int drm_connector_hdmi_audio_init(struct drm_connector *connector,
 	    !funcs->shutdown)
 		return -EINVAL;
 
+	if (connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
+	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
+		unsigned long supported_infoframes =
+			connector->hdmi.supported_infoframes;
+
+		if (supported_infoframes &&
+		    !(supported_infoframes & DRM_CONNECTOR_INFOFRAME_AUDIO))
+			drm_warn(connector->dev, "HDMI Audio with no support for Audio InfoFrames\n");
+	}
+
+
 	connector->hdmi_audio.funcs = funcs;
 	connector->hdmi_audio.dai_port = dai_port;
 

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
