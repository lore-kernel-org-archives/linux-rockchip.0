Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25230E74904
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 01:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B97qjs/nFcOA+kj1AQ7VEocIAiY4KPeCawFwKtyls6U=; b=JoKL9N3wr2FZE/
	/riPATM8pDm4wTdF2jJmJLApW1ch5ita8Pbyc8ysxY1QuPrvG/mqklBya1k1Bl2kGGZmaF9ptUJ4B
	th5V5dA/D1JfyzzAuH/G2jYymdKQsYJebqMnew5zCSIMeys51vmuneYH7piszPdoFmMFXr8oiVuho
	4kyFFNVZ91WyyjCL8ocb0TxEGSouHQ0/HXHclG30XQ/5/Obw0sW2PYoruDNnpB2uQSUKKLiz83AE5
	33FV7GAcmX7aUVXpeFbCzqjIYWb+Fe/07LBsXHwjHzxuGRJJKgoiWuRdBOdI11FJ/cyCftM/CvTA6
	0yletT3CqEOFbFfMlM8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYDIP-0000000GFVP-3CT4;
	Wed, 24 Dec 2025 01:04:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYDID-0000000GFER-0V2J
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 01:04:07 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNJrefh721901
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 01:03:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ecVHGdcKUGcf1BVa43vSmPZjJ3ubI7MYeuQBBNyE8CA=; b=XfH2Ljc+dZzYTrzi
	pD5ysYGQfEwkhPa6D1pi8C2qbcfBhGuJdEE5Tm7axPuo9cDSGursj22LOxEqHeP5
	R9uBpaJ+4/sOsdjt2aULzxdHjQc0CHLodncP7N+ebgW+QzIgym8Fu/RIkEVIq0Jj
	jRDxvdSZXrLN5ge3caHHbALSV00mhM5U92CRhkAtigwUmz2f0w29lkiq9FqPE05j
	iEFxVpGxxc9A96yD8kdKzBFG2/urw5k637d0CrkxbijK0WRFw1tIvf767zHurFAJ
	1U1WFXX9uBnoE3GI5zyeTch4vmOF0P//3srIopPnVaZrtxW8W5okZ4R2ipkZ+bcV
	//Fs7g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b81mt8nmp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 01:03:56 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88a2cc5b548so143847436d6.0
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Dec 2025 17:03:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766538235; x=1767143035; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ecVHGdcKUGcf1BVa43vSmPZjJ3ubI7MYeuQBBNyE8CA=;
        b=atwGRVL/FgFYoiIvfW79jqEhrBYhmkzY2sMq+o6vxWb9Frw6rnWFKPts4O0xWQV/nZ
         +akQl60uxQ5kfr4QuxOt+E7SFFXBNniVMZeJl2ccoSG92XenhleaCjvx5AJdTDTIlTGa
         VYYOLH+hMC1DmJ4aNp3M17d4xcUotnfg3DGebTjHuOxhe6hcOV6GGRmguX8maDcDPtHW
         yFvOQg1hpGfVegdgzns6UkPSgzYBnhV7NoyvxUf1rTN7sCcVZomg1LipcqUz3fpsQZMX
         +fBztzQ4cesYl1fw7nl7ZkeCq5Z2R1tFCB60lDkkfKYTA0VOd+ytwqS4824pvmpTClkl
         sGug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766538235; x=1767143035;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ecVHGdcKUGcf1BVa43vSmPZjJ3ubI7MYeuQBBNyE8CA=;
        b=uaUxpG+dRgMkYpcy/VbIZMJPQ5cwtKMumW/R0kQpw8ENWbWpf1WVeibg8/FfRyAvcc
         1Bf0rHf9lC++skXQa6hw/lJhFbFhQq+9EhjM2GWrMoYsOKAPOhBZMB8yTjs72wcTw3zX
         XX+kbZnnQiASpypUcdEBopJDznVPiFsgKciz8tzDrfxRfgcBdP8iNll+2bIkJ+E5W2uA
         yEYNs8l8pp+q19PRqQil/qolSLln0XimrYA0etNh7+RWGTrel+S8UAWPLnck6RJ5ViEH
         E029fXZnbekVaftZ22NnTOjdIXaxLyReBuhPPrasqC6fR7QXE6sValbch+V5B4jEgJx0
         uF5g==
X-Forwarded-Encrypted: i=1; AJvYcCWscVI/fRW9yjF1S1rxzLMA2AJYLUBMYTewCJDULpDvVJMcVTmdpbmSYojQi5lSVSgeLD0Kit/XmUV9K7N59g==@lists.infradead.org
X-Gm-Message-State: AOJu0YzP77jSTEQH2EhoWkFUBil7JAHC6jj+Za4UicFUqK7ZObnKOg7u
	6efjpbgbO02NHNmNWCNQrGbE87uDRFltaWXs/+zEje3Qk22+e2EBEQopDvtlUG8aWqJlIRh275i
	PXOEQtU7IVSqXoxQhRI53A1qxlwIG5UNfiZw3vl1i8roEbHT+TWbfS0/MijNgwik7vxdmFF96G5
	w=
X-Gm-Gg: AY/fxX7e2RGp2Ip7cZGQResqEEkM3c9eM6m1An/AyDvZxXPMfJNMyrVmztyvcdH77tz
	ldAi49k1hhDqnZmmdJRe7LWdCUMQk4DDbHcJ33s+UlBvwDBW5+A6ZPDhpWq7O+Su7ytYd7BFS5O
	s91soYIV+vezT4Q0NjT9ZgXskVhmiNzNZ76s/MBF60/v3eRh0CtSp0Rs5f5v6ztEda+KqQcNxZ8
	ToudMSCmw8he+8sbzyPky3qgyrce5vf6ADCuUJiLalWJqmQ//UqZ6Ykz2YDJ4ThjS4fwl/RSUEn
	AVktPaERR72F7SL5r+ZzySgtEWRJOO1AVOgblDWY5IOILLgNO3Ykwwk4l7aWg5tLxrOOHyYm/+l
	Xeiju7OxnMRzOwml6ZLvVxnHZA3XLXbHWroRstE4fSwDxpsq4j0uns9BT4CcT6qcXqgPiEsUdiv
	maikGXglfOYq75KJyA/w4Gurg=
X-Received: by 2002:a05:6214:4686:b0:880:4cfb:ab57 with SMTP id 6a1803df08f44-88d83c64e72mr214392626d6.25.1766538235599;
        Tue, 23 Dec 2025 17:03:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHaK542l9xmzYYsxqdNmih3a3J+cADi7DGuEWQ94lgYPMK9IxHSj3e3msfodcDCfxK5YjzPVA==
X-Received: by 2002:a05:6214:4686:b0:880:4cfb:ab57 with SMTP id 6a1803df08f44-88d83c64e72mr214392216d6.25.1766538235179;
        Tue, 23 Dec 2025 17:03:55 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18628284sm4545268e87.93.2025.12.23.17.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 17:03:53 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 03:02:56 +0200
Subject: [PATCH v3 07/10] drm/display: hdmi_state_helper: reject Audio IF
 updates if it's not supported
MIME-Version: 1.0
Message-Id: <20251224-limit-infoframes-2-v3-7-7fd3cacfefed@oss.qualcomm.com>
References: <20251224-limit-infoframes-2-v3-0-7fd3cacfefed@oss.qualcomm.com>
In-Reply-To: <20251224-limit-infoframes-2-v3-0-7fd3cacfefed@oss.qualcomm.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>, Liu Ying <victor.liu@nxp.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1357;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=oV58YVZ6PqGUocr9XjdKTVXla4jnp1WcJhUj/fGMzJo=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpSzvZGVPsohAMKCXOdz12kIPkrJMlkOnHo6hb3
 HWobYyhg7WJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaUs72QAKCRCLPIo+Aiko
 1QKNCACqcQqgJBRBcg7CRb0dfX/GGsMyAFAip0dgaqJtDLf7ApFonc0Vo0fA+NhcV5j0Nx8Ti9U
 I3ZV4TYzf23eOcnZCdm7rXhqmyxWKpftkt+8hIkJizIcSP+w7WDLeC2a6QEPQiGVuMei4kWHGnm
 o85bmygfh11FQZkX2pCCQNJlyfTByGtP4Y8JpLUrRBIvBMTYNUGhePLY9wL2DAFLPPW6ccgE1wi
 X82GoCEVaLpslRdu4Y6qY0DXtzUr9H7AOhKf8Hucv3GM83Xm/DL5TfDXh/a3uK8yiLTMpc8RB1r
 OJlOJIJ4Pu0i+HpaBnRzjUWikC+VvVcYf/m/QP/ndRhcoX39
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=e/ILiKp/ c=1 sm=1 tr=0 ts=694b3bfc cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=FWtRXCEnrA9oX9MUO7wA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: DbhgDRoPbdCRw84ewlNsUbqeKEpwu54V
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAwNyBTYWx0ZWRfX46/uklVZ/3x7
 WRGGaG73R5zZJDZ+OEHkVU0dAPQKqPE13WxVvl6XPygqwYIQ0TjV9FYZl9YMm+IZT69bSO2Nu1v
 WFWOBXN7IXJWxa/NxZF7kjv5tkEC0OQeQPtWhuHV9KcPiT4tq/eXWia/VKR7enaGSr+5RZ4XKD7
 TRTPP9qOmutm7qfbGCM7QBaxQ1CWsGgw9rqzSMlHuLWXNPuT1fTbkIFQaz3FwYKrm83RxvJ7AsP
 IHDhJEonvJ2KXo4egWjFbJ/ajaqAOSXRLjRGX+bekB4q7uf4CtcKgggJZflXh/wnZYkh/Q0iZkk
 Zg+rer3Jj8MJKoMkxAYVi3qAwE5qGh0YKCulsWeIGehwLOwMubZn9YQ+OgeX9HzrNNzKXDPkbN2
 f5LlXMForOKjqpad7IBCRK1hmOgTNVttbsNglw9OPP3UwOlOG1uiZYLYWf9gLwudu4ZtaD7U+qG
 GWPT8C1q66cINT0OtrA==
X-Proofpoint-ORIG-GUID: DbhgDRoPbdCRw84ewlNsUbqeKEpwu54V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_170357_328473_E4568F16 
X-CRM114-Status: GOOD (  15.49  )
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

Updating the InfoFrame if it can not be sent over the wire makes no
sense. Change drm_atomic_helper_connector_hdmi_update_audio_infoframe()
and drm_atomic_helper_connector_hdmi_clear_audio_infoframe() to return
an error if Audio InfoFrame callbacks are not implemented.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/display/drm_hdmi_state_helper.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
index 5a3817271d91..e8556bf9e1da 100644
--- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
@@ -1061,7 +1061,7 @@ drm_atomic_helper_connector_hdmi_update_audio_infoframe(struct drm_connector *co
 	if (!info->is_hdmi)
 		return 0;
 
-	if (!funcs) {
+	if (!funcs || !funcs->audio.write_infoframe) {
 		drm_dbg_kms(connector->dev, "Function not implemented, bailing.\n");
 		return -EINVAL;
 	}
@@ -1102,7 +1102,7 @@ drm_atomic_helper_connector_hdmi_clear_audio_infoframe(struct drm_connector *con
 	if (!info->is_hdmi)
 		return 0;
 
-	if (!funcs) {
+	if (!funcs || !funcs->audio.write_infoframe) {
 		drm_dbg_kms(connector->dev, "Function not implemented, bailing.\n");
 		return -EINVAL;
 	}

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
