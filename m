Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E828CAC5BB
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Sep 2025 01:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZVo0/fGZAvK6hAfkgDJU3ie6hT15b8uMFzP5TldMycE=; b=KIf2yP7Eh+Zstl
	issLdsTwfeq9b46JfoLmSBUqUtKcQLUr1Ur1Of5DItQrC6ACKo/5667XlbsrDAl5qV1CG4rL0xqII
	cmuh/z81I0pYpJ5DESZYENPqNPRD4STp0Jjqogsj1ygQ7fIpoXRyPr+DVj0z3NZHllBXip/P+XdrK
	LQLE+0eA0OIIX/bpiSW8fED+2d/AQ5CzkhLjKcfIrTYYl4ERzpORUanK6ygcR9rJZ7dslCGCdOBsL
	lwelSkURMMUcFxBJ1TnIhLxtu3A0sP2Jl9wVITZjj6nDyzr/EVY4SLm70jl/WU6HySC0YE1P7RnVj
	Kzc85eZThKDpp0uZswHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2JMt-00000005sdE-082B;
	Sat, 27 Sep 2025 01:04:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2JMo-00000005sX3-11EX
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Sep 2025 01:04:51 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58QEX4Ev006917
	for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 01:04:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KHBvbs6wVCtvxZAx2wHIzn0cwgfPtQSReWo4Noc9O+4=; b=iB0NPyKzQp9RO4/b
	NiUXUNjL95SnD6VCYC2k7DHEXwm+tErDbCYYEpxZk1PGBnrfOt59d7H6g7nRmYoL
	BmNhvjHiVdK5EQ7VMkDkLu1MFx3iMTtnUVcyOjXHy1S1KceI/8/zJim9fzkkXSxz
	9Heb2J2vhyGp3HaFE35jg+nhzBles9TZ809gOX4xZ62XfO5nweoxK6mZfHlQTqiS
	/8Lk0vJn/Ovja2ENhnXLkTeWkzfbe1jQpc93dZ4Q9ZYgM5WfpYG2XXPGl8/pHH7Q
	Lf/dfoi9jcixGh95tqcKkkTLSvfxoF/n/ARMhqiz3JCqI2kGNEAlPKuBWewgPWAf
	miLiaA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0qvh3m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 01:04:49 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d8b8c3591fso75794241cf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Sep 2025 18:04:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758935085; x=1759539885;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KHBvbs6wVCtvxZAx2wHIzn0cwgfPtQSReWo4Noc9O+4=;
        b=QEHX56MsTP5FbxvzWj4tmUXYhrCRAYciTVfvrhvCwtalUsz1FfqnVKcZR+KOoX0yte
         Nj9ZIrexZHQVjMGIbNwEPad3jCknlQTLm/1vUnVNkEMdfOJAdnrjh4eK2ifnV3WK+mTL
         99qKyZ9PrPu9LnS3nMLUp6YF+dnFkh+3JJ+IBpE+9MXHFSm5PG0JT2yU60/j01XoV3uO
         IXKfQ+etiZOYkmV3R2Thnsa0HI7dGjpHv+lWSyl+fu/lQLN4nCLxKJ0AV8DASQl0v8oZ
         fwg7ZE4rR5tzxjzBCiCm0axv2dHjOrLM0Xx5Ya93Wad08/rymWdmMlDQkc+kaqdJlEVB
         ucGg==
X-Forwarded-Encrypted: i=1; AJvYcCXtDtAOcR8AxxNPhKUoIAIYYqyG2nGH5ciDRk0CIUsPZUxO5dIX721izgQto/KN2TJowFeBhhV+Q48m9VQKwQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw09L2sVBvXL0n7jZZSZHI0Tb7MA21IgKIoe3tT6E+sOuFN7fMV
	yTU0+yyx2nkhsgt2sCq4bwxs5d95tz0/ndhwEIPqzZFuBSv3wyDoWbFjo3B6juibRaVWKGw+UAR
	l1siGI64lLJot7shKWJmai5P0C5s7SOWdQFy7L6fLiPxwDop28E60nc3w+ISiPcRop2yTEzk0dp
	E=
X-Gm-Gg: ASbGncuSK/Na7jvjyMzIlY8eS/S22Xcs4hzT2DObYT32hCbEKayKAFLrRy8FB9XbLQA
	zZjxuC/JWQjE8uk02ElVCwum12+I4rTP8Ekcd58Zr0lxzw1v05zQuI4H9Ui9nnJ8yTuRA1D/QEF
	4SNpWy9Mc7c5UD3gADxKGaTXNDJ6FOkIlWBbGhE6GmsDtIGv6HrHtf+NqvkmAU3oS04wet9u6fK
	KbRGa6uBBQOmVtqsu9vU+toysJqxkXmg46N7dq/QUu2hgu8ax19jf3ivDQc6uT5MPQAEB2FAaWl
	hd/xathFBQW37AWFCvEWJmMFgTH/0AaR+d053qw5NGkO/zkbI8HzRm5qZPB+ccxQ+K2uEHoSai1
	FeRJhbn/ROQ7jn0dUdQyT7VVjx6MKwkgql0zqEEy1UmMq315bF8mf
X-Received: by 2002:a05:622a:1f09:b0:4b7:9f68:52cb with SMTP id d75a77b69052e-4da4bbe54e6mr141708381cf.54.1758935085193;
        Fri, 26 Sep 2025 18:04:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDgxekAFYTmTTqmCZefeEPl+nSUzBiwY3LbANe6dbEILxpaj8AQRwYb+0/9qkitC+FpZtBTQ==
X-Received: by 2002:a05:622a:1f09:b0:4b7:9f68:52cb with SMTP id d75a77b69052e-4da4bbe54e6mr141708011cf.54.1758935084695;
        Fri, 26 Sep 2025 18:04:44 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139f99c1sm2156143e87.35.2025.09.26.18.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 18:04:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 27 Sep 2025 04:04:31 +0300
Subject: [PATCH 2/9] drm/bridge: adv7511: handle unsupported InfoFrames
MIME-Version: 1.0
Message-Id: <20250927-limit-infoframes-2-v1-2-697511bd050b@oss.qualcomm.com>
References: <20250927-limit-infoframes-2-v1-0-697511bd050b@oss.qualcomm.com>
In-Reply-To: <20250927-limit-infoframes-2-v1-0-697511bd050b@oss.qualcomm.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Liu Ying <victor.liu@nxp.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2270;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=GDJs9stizfNvb2WVbvQCEr8SONIYHFgwY7yHLMQGSzY=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ8Z1C4WwP9P/BahfUM7J/q38y+eoSdQLBoWi9c1+S95+v
 sn2RUOjk9GYhYGRi0FWTJHFp6Blasym5LAPO6bWwwxiZQKZwsDFKQAT4f3B/k9v8b97bhIf9U8U
 rWn0L+vfdMc+z9ONLZFtWkd73NlfAtP52OZ9fr5zUayhl/rpazf/lhyvCPNVZLlvN2eaaEvRF7t
 M/RtdPk8PKW1gqT8RmhWS+fDiynlZNom/N/mnfeTKCb/hO+Ovzualbg1512M7InnKQ/p+9Qde6G
 vR8O0/s95ngpGb24U5mc0Vz67N2jhbrCcgpqDGsn7ZwbCKYleeUzyFj/lDhBTmSYZ5q75Wjt3Kf
 Vk1o2NBbWNF/IerWYqvNVZvzdWLWtXKv+is/+R5LVFN5o8X7kjexSmg+/brZ5PqSs5HffbavMEZ
 q1zs5186cY/dRH661Msb39SCc6bVOgZ0nkowVN1rOv0iAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: qKRpI4-W-167_fuTmzk88SILvlZ1aCwA
X-Proofpoint-ORIG-GUID: qKRpI4-W-167_fuTmzk88SILvlZ1aCwA
X-Authority-Analysis: v=2.4 cv=api/yCZV c=1 sm=1 tr=0 ts=68d73831 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=XNEcMcDYeHr5uxMbIEwA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXyLM9TLDhxbsU
 4d4wzEYDCJw+jqXZYr/xZAZjYLr2NrEyluS19VfYqGhjLZ3hLpCJIAxcecslryVYLl4ue4QcVlt
 APB4z70piskjulycFE90SKUWCCqWZnRjyxYokN0Hg0w1I4C/uO+N9M/D7iEw0WlT58/8Qx6RIEQ
 zm9Jx+tpYFXRgmptq1G+zgt1Jn699EIE6hsYVtICPLv6hhVzAF387i1HnJ6t+NyG/wq6V/Iwa2j
 LbSovS9jxcY83MMHlW7wr8ENoEdJ5lKNy2JwMnDvgus/Ax9r8YZjuX8JwYPO5IvHYSsDhf7YjBQ
 S2PmRm4eSlAOWvKhVe3FJpSr/H2BtupD7BUQXEOnTOd3/Q/ap0h7+kWO2mCW+jfnmtYgNA3jeHy
 sJ9t9P605GoLeIPaCGdJLQZ8ROsxTQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_08,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 adultscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_180450_284512_749438F5 
X-CRM114-Status: GOOD (  13.61  )
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

Make hdmi_write_hdmi_infoframe() and hdmi_clear_infoframe() callbacks
return -EOPNOTSUPP for unsupported InfoFrames and make sure that
atomic_check() callback doesn't allow unsupported InfoFrames to be
enabled.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c b/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
index b9be8654130758e69ac7ccbc73a82cc25d731a5c..452265c2d81269e158c83850279a3a58302faf03 100644
--- a/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
+++ b/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
@@ -906,8 +906,7 @@ static int adv7511_bridge_hdmi_clear_infoframe(struct drm_bridge *bridge,
 		adv7511_packet_disable(adv7511, ADV7511_PACKET_ENABLE_SPARE1);
 		break;
 	default:
-		drm_dbg_driver(adv7511->bridge.dev, "Unsupported HDMI InfoFrame %x\n", type);
-		break;
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
@@ -966,19 +965,32 @@ static int adv7511_bridge_hdmi_write_infoframe(struct drm_bridge *bridge,
 		adv7511_packet_enable(adv7511, ADV7511_PACKET_ENABLE_SPARE1);
 		break;
 	default:
-		drm_dbg_driver(adv7511->bridge.dev, "Unsupported HDMI InfoFrame %x\n", type);
-		break;
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
 }
 
+static int adv7511_bridge_atomic_check(struct drm_bridge *bridge,
+				       struct drm_bridge_state *bridge_state,
+				       struct drm_crtc_state *crtc_state,
+				       struct drm_connector_state *conn_state)
+{
+	/* should not happen, HDR support not enabled */
+	if (drm_WARN_ON_ONCE(bridge->encoder->dev,
+			     conn_state->connector->hdmi.infoframes.audio.set))
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
 static const struct drm_bridge_funcs adv7511_bridge_funcs = {
 	.mode_valid = adv7511_bridge_mode_valid,
 	.attach = adv7511_bridge_attach,
 	.detect = adv7511_bridge_detect,
 	.edid_read = adv7511_bridge_edid_read,
 
+	.atomic_check = adv7511_bridge_atomic_check,
 	.atomic_enable = adv7511_bridge_atomic_enable,
 	.atomic_disable = adv7511_bridge_atomic_disable,
 	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
