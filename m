Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59D3DE74906
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 01:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+uqp1G/J2q+MF7WC5SEwohGx4ulC3QXi9kH3cfLbDk=; b=djp7G2e0ZcwniO
	/1CbnksNf7lj7F4MYqb+BWZczWJGoAXcoO2/RaQ3atk6lMDbo6pGUDWbkkVTJMCNisPSVsGO3Vb6J
	34jdOSsbhnZJTDMewVjsY1zdkMErLG7UMB6hWIAKNl59Mny9Md61rCBrKmOn+ra2MPXc6ORu+e0eM
	zopzx0nZLaTpbrlNr6i5eYZm1d+ypLroyrjXR2E1V7JZ60w91CN4g9MPsU8h7+5/sgLEzU1ZJovQ9
	ssHpcX/CMsrZE2jvwRVr1A6US4Yd3A2n6S4PQaaRxHwHVQwDy8rRRG6fbeZzqyrd9KuSqWnIE7W8j
	f/RHS85AViMAR7Idj7Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYDIa-0000000GFgm-0SsZ;
	Wed, 24 Dec 2025 01:04:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYDIH-0000000GFJA-0raO
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 01:04:11 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNMhuoQ1801684
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 01:04:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O0WcJstQEewLBWylyM1yaF1uo6Aq9IevUZuM4w9v8/c=; b=B5FzLQH/4hdXvpfe
	zRFH90K8m6qtrg/XEWhQfEiFLYj2sJlborOxSU6Ve5K1V7hKJG6ddM5f5hLHr9O4
	G5FXrg+x2+sZ9U/OXiaNp/wHJ9rRB0Js17h6g8QCgkkdYEEOM682EJmWdkRJSwhK
	kQePbxHNlL6j+a/BpNbMONLysUtobbr5nGvrJmzoA9yB0sF9cVMuIU6eE0kaGPiH
	9zYXOPs5JQjKabNmUxd4fZ+aeTJlgQvTv72a/GeIgJrwdHaN0Dd/bJzy1t13hpI4
	C6ekVf2ER33wY8q3E2wG5W5TveJk+urBH5JoBUQQ2/ZGy/5+7CIj2iJgKbR7pbjn
	GsKuwg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7xjs9ak7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 01:04:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee09693109so105450921cf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Dec 2025 17:03:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766538239; x=1767143039; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O0WcJstQEewLBWylyM1yaF1uo6Aq9IevUZuM4w9v8/c=;
        b=M7ag1W9vhex6H/tjIdWaCXcNOtjxgYNJvNR/VnKe8DrWAK3ocCJeY/RZTviEe+jEeU
         HHmO/HfzOz0pQJ6EoT4rZZn6ceY2V2pI3DOg5+lNePIzBtzQpcbEO53JTFS9/VuW4ilN
         8bQ16XmcKjg/V77jsF6Vvtl7zXdDALPzBVd9+XylUHpoua5bqNQObC7ubz/VOK29uRhs
         74CJ4Zq6RuApVtIg+abCwmFLkxzRld0ggFVoA3tVWuZVW3nVpTj1PzgVe/Bgxrwv5rw8
         D3k5U2Sa+YmcqvxdtwCVZ61zXIJaDIuEaUMXn98CuEydwXn+fXzvNlecdDwcpPWRhHtk
         c5NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766538239; x=1767143039;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=O0WcJstQEewLBWylyM1yaF1uo6Aq9IevUZuM4w9v8/c=;
        b=KoDWJ4TlJ387AOM5Epc1E+7f5jMWcVcsCkxp/qVdbuv+yxrzDcugpsOW+U5mDrrYlN
         ITWCP5KYYGVVlkP4r8pHhSmm3T9cTvy9oRVqjdB392gdHVqBYEZOyhjNCDocrjPnGSWs
         PQztXo3OAmxzjSIjjF94FUbo/GtPY36INjnSGPFD3Nz411QCKNB0efH2YpGaG53j0d5r
         hxxJFWYWuK5pmpV4IxDKh/jRzQgCgKwNE67ozycq5n1dmnW5vB/C/lXLAG14S6c3DTfD
         igIvTwQTjk4GOuj03YZOOEfPk75w1MKFtBumvVgciuovtu9Z7w0MuDnm74rBEOJQpz3y
         wqgw==
X-Forwarded-Encrypted: i=1; AJvYcCX8E5dFWcQMjHb+VfdrX7R4PU33Ejxq5oDVNt6DLdHcKXCJDCosLHxWkjIqiL8iJX/a7GmFHsncUUhauKnvMw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+rXMksQtaGKXhJ8VK+eIfI6SPwMst4mqPP96c0Z7CQHW5l+JQ
	DXVDicCgRzYQSoEDREDZOEYg8S5p+QEEF7EyuYpO/+JosqIpiT0rVp0n3/B5cpiScD/1U9dTjS4
	KsvltOWZfcac2u0mk9+qYCyt4V4EY4V+0TZt/DQDPG4R6xZVuv3K97ATtbDit5LL60A7jU6U+4i
	c=
X-Gm-Gg: AY/fxX7uWC4dQw+3M7tsxCURinbnAYckcvIG8YGU9Vc4ill/PPwOPuRRa+ya7A9H2OH
	zxyxGMJX1ro87dZK0k01xv3VKbLvlztyJzEUOPjjyu7LDqVBmcGSzlEbMwsxikMPxJimgHYncU2
	1yM6gjC/K2GvCDjBkDjYVk1iG3P3TxmjhAnWwddAm3a1xj7VPcXUlIJ9iA9odC31g/7BikdkgtF
	klzQeNusWbP/17FgrTrVOy9kBxK6bZN4he45ubqte5YMBpQ8mtGF+V9hX6EnY4YXyC7v8T3ZfZW
	KFVVqHxDKrD9bOhj/fRF/ccblm6X6lwAP5NYgKgeEU+1JOdvVBNOz58HxhTY00KtiyLeQ4IDRJE
	Evuu8f+2CgOY+BMQ2TMqGOdJfuOPQs7vZ2ViHXoylTSrj8/cf1enNgUvj6KK8KeU0K08YQxFGdK
	IxCvf8i1xL6pdllSvQP0zKBzU=
X-Received: by 2002:a05:622a:4d0f:b0:4f1:cd72:f22b with SMTP id d75a77b69052e-4f4abd98192mr256225851cf.52.1766538239465;
        Tue, 23 Dec 2025 17:03:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEQGuGT0UI/67dXu411P/e6eStajQsFB8+nCzwFqQBAvO4esgI+rdZ+y7jVSLNcipwTefBy2w==
X-Received: by 2002:a05:622a:4d0f:b0:4f1:cd72:f22b with SMTP id d75a77b69052e-4f4abd98192mr256225241cf.52.1766538238937;
        Tue, 23 Dec 2025 17:03:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18628284sm4545268e87.93.2025.12.23.17.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 17:03:57 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 03:02:57 +0200
Subject: [PATCH v3 08/10] drm/display: hdmi_state_helper: don't generate
 unsupported InfoFrames
MIME-Version: 1.0
Message-Id: <20251224-limit-infoframes-2-v3-8-7fd3cacfefed@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2020;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=sxrbcfgP+1lHt6WjBr3iluImnNCx0aJDmiljrTHbhwQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpSzvZLWWWNHwhc00YhsGGHeZN4blSTiSB4fsQ2
 dICD4LJEyWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaUs72QAKCRCLPIo+Aiko
 1TXpB/9MY/IAmp3a91kMBGdYigbcoUHZMxaQmuYtcY1pIt9hLZ/xDG0HyDeKfdb4ZXPmrbxM+Lr
 sZHIZRai5kkZBYBHRbs1UvhqFPaEKWCBVQ2Okq4Z1fFonAOh7dEtqQxrre3ELHCo/ljQz4N4wif
 r83ry1FetVmArWVlTeM2HjwKHkCtccISoiLzXtBF/vjY/mM4/GPwg3Vgf2yuvlfOviragLloVE3
 bKNPzT63BmazQ/jQ/THvNVxTXxfLg7YxC6jPXiOFdD16vj7gkXrw6SeuFK7IBzesw8H/JFK5eGM
 6letmWY47KyLynSka/FTDRJs5TQaxz+pxi/8ZGoJLndSd0+D
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAwNyBTYWx0ZWRfXx/+0E4z+ablr
 qzVX5tZKdueqV9FPUqMPERBlfEsqCtCAlde3IzUnjt3VQk962cR75e4gAs+wsnHQEvvDkYtQ/tF
 CTCs6Apk2wSs5OKJOlcpL/Uv/UZI0juGgvo+Uyo0KxtwoU0xJz5JLE9zdYYNHEVoLGRDv870Gjv
 hyG6bDdAA7aHqjhVdnTIOuYy7jVBN0BKj8267lmCqL0PrmRRBFW/CTVAWweT7J9JlGCjoaEx8Tv
 iw7S396P1c/XpvkeEQV2yliJb4LCLEIGCC5BvTja2oBjnh8JIpke5MXDPw96PL+aTZwVi0kUA9G
 5VxMq01Q3S+F7gn/FZbzrmfyUBAoD9pibBNEDBK4JqppXqIcsixTDcRT8h5E6EYbBO5T50DLCpD
 74RMvmAh1tvOenBZIQg/0e+kP6jPlL84ijGTIV7dQGBt5jqPJMLKwo0sXm2Akwjai3DECDAcOsY
 BYoBLMRAig+Fv+U6nAA==
X-Proofpoint-ORIG-GUID: -uVcg_Fk9js0XI48JPAYVqFoJXUO6wno
X-Authority-Analysis: v=2.4 cv=YcqwJgRf c=1 sm=1 tr=0 ts=694b3c00 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dmsjDmb_ix4f0IDqKoUA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: -uVcg_Fk9js0XI48JPAYVqFoJXUO6wno
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1015 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_170401_434858_D565721A 
X-CRM114-Status: GOOD (  17.83  )
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

There is little point in generating InfoFrames which are not supported
by the driver. Skip generating the unsupported InfoFrames, making sure
that the kernel never tries to write the unsupported frame. As there are
no remaining usecases, change write_infoframe / clear_infoframe helpers
return an error if the corresponding callback is NULL.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/display/drm_hdmi_state_helper.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
index e8556bf9e1da..a1d16762ac7a 100644
--- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
@@ -718,6 +718,9 @@ static int hdmi_generate_spd_infoframe(const struct drm_connector *connector,
 
 	infoframe->set = false;
 
+	if (!connector->hdmi.funcs->spd.write_infoframe)
+		return 0;
+
 	ret = hdmi_spd_infoframe_init(frame,
 				      connector->hdmi.vendor,
 				      connector->hdmi.product);
@@ -742,6 +745,9 @@ static int hdmi_generate_hdr_infoframe(const struct drm_connector *connector,
 
 	infoframe->set = false;
 
+	if (!connector->hdmi.funcs->hdr_drm.write_infoframe)
+		return 0;
+
 	if (connector->max_bpc < 10)
 		return 0;
 
@@ -902,7 +908,7 @@ static int clear_infoframe(struct drm_connector *connector,
 
 	if (!funcs->clear_infoframe) {
 		drm_dbg_kms(dev, "Function not implemented, bailing.\n");
-		return 0;
+		return -EOPNOTSUPP;
 	}
 
 	ret = funcs->clear_infoframe(connector);
@@ -928,7 +934,7 @@ static int write_infoframe(struct drm_connector *connector,
 
 	if (!funcs->write_infoframe) {
 		drm_dbg_kms(dev, "Function not implemented, bailing.\n");
-		return 0; /* XXX: temporal until we stop generating unsupported frames */
+		return -EOPNOTSUPP;
 	}
 
 	len = hdmi_infoframe_pack(&new_frame->data, buffer, sizeof(buffer));

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
