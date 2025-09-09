Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF5D1CAC582
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 17:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4BFdOxnn+h0DieFJtkPc5HQSw6essdoqG6eU20UVZ0A=; b=TDF8bjqgheN7yb
	I4SzuwqTBsA1NRLa+lA6Xvsubd72PuEr8SMiQ7wukyjWVHWp49pPZqGz5bXs35/Za0/98zVO832Zg
	SWsD8s2KD8lZZKdqvnptNK2ujtrdJicqgMU4exaQSANUnbcvqSxT+OonXREynBci2xeQM+t00nvR5
	vnzwRhwCJMVSfe/KTMAcV/El7ds4lhMGQ1lFK05SOmFO0YjeuFILLzk9QRNL1AMi7vjk3TN/cgey9
	pt7aBFhsmG7SmVN6NNMkUw55WObsCb7yB7RCFt5Y6qHuE7ELQpk7IGatKvNBBe8otuaNETdUxz1HF
	tRjD0NRgmRT7oa2GH9hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw22f-00000008yv4-3Lpv;
	Tue, 09 Sep 2025 17:22:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvzhz-00000007sOR-40sn
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Sep 2025 14:52:37 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LSrU009425
	for <linux-rockchip@lists.infradead.org>; Tue, 9 Sep 2025 14:52:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AqxjcA7v9kQUHsW1dWHX4LPd+nTqAg1ssnBO5hXevIc=; b=DlhjBKE6vXrJs7eF
	/Ui+StvzdUKZ5fYxSLyNpcJxGo+zkaXklrif3Nr7+EgoHdEfNgbCcj3VRKDSBngm
	NwGtpxq1eUc5oJyMJcVnhydxdcWM9UCv01QJWRMHrAJnWGYd+tQ3KTqQoZlCv1KO
	L3HlGgYLVuvx5i/B62w6ulRsPYaK/4BxjsXISYjXwg0T/wwdC96XrP3jptrwWy2M
	aIBLZGVh7YhQ4mQeenJdK661KOiQ4sToqjxDOZy48fj/i1bpTZ/Tb94+xt+Psdss
	oYgcc+CsvngX7nnMSzqby8cYWdZahm3SUZ/vAccW19867zrbmO9G6Xtr+IRV9tiS
	MOoJ0A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491qhdwcfv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 14:52:35 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b3aac677e1so52411101cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 07:52:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757429554; x=1758034354;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AqxjcA7v9kQUHsW1dWHX4LPd+nTqAg1ssnBO5hXevIc=;
        b=QcV+fL4qcVjZTS+9a2gAV6eWpe4HM52L02m5q29CO6YyrwfJ0M+w1fkQ6SRyYV168g
         AbhZrS0LdFe+J+K+ht4xuplK1RDkgFMFdzSR8+CYFvjpMmGQwYaydtPCGesGPZZKtY9N
         sg96RKxlA1OQIz80l8+WZmGljIlmliiAyDjZySA6na/YqHPA1b8WGLsUQN4k2AkDe14Z
         dd8mfJHz+O5aDz76G35ZtdxumidX49dN9CAe9jM3EBIJKveq7n5rIKKS7pDjVVG+GC4M
         sMqH5Md2EDbE2X/jT/q9Kb3VaarvN9o0NS1OPL682/w5g8ccRd3sslk3s69V6LKJpFFC
         UynQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKZ3QvFfb5QXutyQsdnn2AkufBBhNGE7NU0tZjgEfuAac2/yDXOyVIXaSpqUpQZRVwqjV2cQ2awAZAX/LU9A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4AYszWnahP6WwzzG+EzUWGNZuHG2LV3zpUEZLSdIxDlJeNFAK
	ouY67PpO6nGUnQ4bXgGr/b2nrX/rQ/1a96LCFO2YxhnrzWIu0B59bWtxqPZ+Qo+Y43vmAnJolly
	Zw+nv2oksHecC/C7BFrogFILcAwtWcGHSB1xwGeZCkMIwLfx7abNQZvUbWoTpvgDNLMpHRd/MkN
	c=
X-Gm-Gg: ASbGncszjyggiv3gQtbsy8Os3tKID1KpeudYX129/CtQcncuwu/thIl6LmrByhgJOtx
	CJUomWqHoiA81eqcMogNB8lMeDEECn256xkgqHNPjYfDD1EUbkANzm5YvlMVn3MePXtENwiQ3aQ
	pQVuGAlIq4X+FJehQ7Yr1q8u6urNVygBtHV9HQrpi7+zPcJP3y3ZtE9y4NonOB3+bTC0QxXOgwH
	vNp9dQfyURWnNDNI8Mo2dX5AMOKwlFoRX362k7+PfTC81rqS4mltrmW3gI1J83Ioq93cz/mZilJ
	qwCNoNXbpUu5wcPV39y5MNXG2rqkl92nWuVjHSpyLizRUvCqIv9bLu19eaLlinze39LNdZxn0Vy
	BUzn3iKoVoM7Hv8mLfkoUCKfIL+eNWoxa/SalfPhSTJWLzQAi41i9
X-Received: by 2002:a05:6214:21e9:b0:709:cf54:2cb6 with SMTP id 6a1803df08f44-73924e24079mr131513956d6.16.1757429554137;
        Tue, 09 Sep 2025 07:52:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELvHh+YLlPgh4Yd5dwaizGOKRDtwIRu4dOckQfLSj453ZKMPo3ZARJmUDs6l5WC0UTNyT2YA==
X-Received: by 2002:a05:6214:21e9:b0:709:cf54:2cb6 with SMTP id 6a1803df08f44-73924e24079mr131513396d6.16.1757429553493;
        Tue, 09 Sep 2025 07:52:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f4c90eb9sm38735781fa.22.2025.09.09.07.52.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 07:52:32 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 09 Sep 2025 17:52:06 +0300
Subject: [PATCH v4 08/10] drm/display: bridge_connector: drop default list
 for HDMI Infoframes
MIME-Version: 1.0
Message-Id: <20250909-drm-limit-infoframes-v4-8-53fd0a65a4a2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1387;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=SH5p1NXLdtPpRbZHLxmXRUJRNEhWUgJZ/FZhGKys6U8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBowD8blvrwI5L8dQHSUz/xZ6GHVeuDdbZGULZMV
 WuEhl8+3y6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaMA/GwAKCRCLPIo+Aiko
 1TrPB/4iqW/Wm2SYljGHlxILyUx1w3ArHNHCeDStNLT25ZG6XUwvH3rLYMRzQQCcX3XYeP9w7/n
 br7LaRGkE7OOakFZ28SR+/IG8O9407EpzXyWAjNajt3AwRuXMI1ceXUB70WoQYyiQ2p86sx2sD8
 rk96tIGNTj+Qk3LLtNOfFhhU2mKk8vZ+7IJmun34/LLVdMgr6WGEYUI0HHvcXsWauvVUd9QcMXW
 48EwXLxeCxs4iM+SI02SHlOAp3svBZc/AL4f0u89V/Pxi6cQuvVzavQ1SrBcuQHP8kYGG5WVMlS
 yLTVNPBw8cDByk+YH6FlumiErNCqzW648OHti/7E+XtKyrw6
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: yihrW_8lKR_kg33ZU3vQc1-BU0z5YznV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDAzNCBTYWx0ZWRfXyxnmCNq+9yts
 eP9IU0GFGjzee6gtpfGdYLxw481lxrQs05SA16jHZJQ5lSHdEi6ytH88d2BzAQa60Akr5UCjlh+
 2difGCGDWvIxNWsOp1M2Cs4TKPWZpAq3agIB9NQuzJAlkiFPPt6govvIfyiRIh2vhgqk37AWa4o
 HHzKtnnZxxPv88kTTD42QmI6w1sANcJQcBaVAjbbGg9xzRYaA9LQ9sij4YkpvacskfbAUhpIi7g
 LeiLzgP/uOolDVMixDb4hdPJDi11htSes38rZXAYOG7Z8HVzZIban+/9I4ruOKWcYnH+73XX4+J
 rpA+DX2qSJPBwEHdJJ59Sp53vXvbjSqhScRpMZ204N0VdEXjHdUqo0/IN+WEM2QpjZWeVHjKBxF
 Vmi0TiD5
X-Authority-Analysis: v=2.4 cv=YOCfyQGx c=1 sm=1 tr=0 ts=68c03f33 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=8AirrxEcAAAA:8 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8
 a=uJ1-o3tuYwvhD5ZCdfEA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=ST-jHhOKWsTCqRlWije3:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: yihrW_8lKR_kg33ZU3vQc1-BU0z5YznV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_02,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_075236_045473_E6D9F38D 
X-CRM114-Status: GOOD (  12.63  )
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
Acked-by: Daniel Stone <daniels@collabora.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/display/drm_bridge_connector.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index 55bf5ac53739fda098be69a5c61e4934704ce046..05dc2b61643af5316df431a3cbf53b86139a63e9 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -783,12 +783,7 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
 					       &drm_bridge_connector_hdmi_funcs,
 					       connector_type, ddc,
 					       supported_formats,
-					       bridge->supported_infoframes ? |
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
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
