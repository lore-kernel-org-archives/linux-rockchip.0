Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A83D9CCA468
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Sep 2025 08:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgWbr/o5ldx9yilXbIq0hXCfq57qvnLZds/HRDZqSbk=; b=CHTWLjAnBxcB4f
	2ztafR9dFMIXoh6azw/Pc9d1l443wJFs+9I+/ZEDD+oMiTCxDBJ3DfNl644xFxvOZmgvB2ImiZf7f
	0o1A6f/XO9tj0UKieK1D7e4a4BFvCKf1nykCmSRr5aq2N4JNh/NiTLBQn7YiO80zBgRBmLQnnvBH0
	qh90V8XOp6vPlI/2BYMDbxunT3ebFhpiBFz4/7xoq/HZ/7kiqkvvFfwxlHt8cn0Wx69gyIt/EjzOH
	i3zazyEbQGxpIl0AEagtF/8iJ1xZSoecY8SEdi+9XZ4MWkqYlKYafiZFXjcuPotPGPmuPoVSMVjJe
	KEWaL3iZk40sTm928y8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2mif-0000000EJUL-2pEs;
	Sun, 28 Sep 2025 08:25:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2mic-0000000EJND-1LHn
	for linux-rockchip@lists.infradead.org;
	Sun, 28 Sep 2025 08:25:20 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58S5fvDd003878
	for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 08:25:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cNLPzEmk5Y/+u5lMsfcmn579j/z4LwU9YC3n7o4pksg=; b=bi83zbQB9R2tgYEF
	wirUexUwjhpFfFY0UQk2OKbg0pVMZFaIrb99grgYfcAzxPSvuS60r2S4jS79P6ew
	0R/VReOT7NbN0H3G1n3K7mpCYL+XKXrWwaN3rzMQOEU8IBcy8wn7MmFRFJX0prEd
	yS8hCBa6zwhUIsrUKBIL26uwcTuQNcTJPuPlXnjQUPd/nL12+gJjIvhchXBf4MfS
	qQ2r+8Pm/T+XAhF1qOHAjhPKHEz2xKzcVJ3sh1GJVFCkugr41iXG51LxFmyjQcOW
	lhG8pk855rGtpRkxEJgf7NhWlCLGoaMPr6nXyhD/uF/3yDLw725E7DkNHD0p5Ecu
	88fO4Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5jfre-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 08:25:16 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d6a41b5b66so86516401cf.1
        for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 01:25:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759047912; x=1759652712;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cNLPzEmk5Y/+u5lMsfcmn579j/z4LwU9YC3n7o4pksg=;
        b=uZDGvpz4EZDuoDAAfEOQwUbw/dRQTKuC/h0qXHfLV2lw9x9NhxS9YW4xvbmhTG78eq
         KJErTNDi4zh/FSVO9gQnT8VbdOn61veig7z/zIrNlrIygSUIQCyWjQz7wjR+IljvwhjP
         Kqa+Ecpf9/SAdtFMMNI+ROkZmFjlGfsv3/JLSLpwQjegKJe9ruw0oJ0gK1hHJI6y5NQ+
         IAwUYdxd6PJGD4jqNipgUpA5RTzuhVA66kpvNi780mOIXPtW8Z/uGMVWQejoQF5ue09o
         8vZTd5q4HPJhpLcIjsx48Ta6AgOkmvHxB9ikyAvaoScSRVIKnsDp9NNVmdqopAB2Ia3m
         QZFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjVm6E8FER6rfa7txu6PqTx+Ny0wZZAvQQtaNEOaM9izy8IMl3o1oeywYoRDKrKQNtzX+TMJLZnqBCi4HwKw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzFIYqyXIOq1udoGDKXXm3uCf/gbssRWFwLOG/1aYbw3WLQKfxL
	6YtBPFdU44h43O2zDQtJge+YeUWSUXn7ZIQ4sKzFPML5CNaQvD+96EvURBIrtMIiLdrn5IgqTEH
	BMYaKOq9IjF0mXXrE6qsZqybrRJsYXp8KmSJzn33tF+4/BuJOfUoqIeXujC4Qd01MwMoQblkafV
	k=
X-Gm-Gg: ASbGncshLN8AYGAVzAVSFmnWgNiZcSbeNDNFgUxeO63QDwXCD4OOxwNsXHJDOb4nZZ8
	JPocY31f5rixhIfGHCwsBfqqGqbTFnvc8i6MFEt5CpaVuP25Nqxz38J/IcKGFj1HqWQQFdycM2n
	Z51U5UM+yNLp+GNGJmD8Dzyila/H7tlXsCO8MydZrpUbL1Nd0tIM4ymKJW8x7INeXf4ZTW+gC3Z
	fF67hfrxdnKEbWdgam+V3mWRAZRIkEuB/8s0aA8dv30GS5BHEahy7++dQHbaEyIyCuRz3SNs5yf
	2E32K3iaa50XsFG9/8kg3GWn18GnlqWnndpSZc7nrjB9cC45CNEbh0FUrVU1j4zqX6k+RviFchW
	4xbnum1c6h99cM4tpVG5JZY/bpF41S7yobxx7Yd30pfscWRVC9dL6
X-Received: by 2002:a05:622a:258c:b0:4b5:f7d4:39fa with SMTP id d75a77b69052e-4da4735507fmr196313821cf.12.1759047912051;
        Sun, 28 Sep 2025 01:25:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEXsNIqfoWB2H+g3E1uE7PflKn+OGU11bpC3EG4TSX+tOi58fQrR/+PvIxxQkzsDoINK0iC3A==
X-Received: by 2002:a05:622a:258c:b0:4b5:f7d4:39fa with SMTP id d75a77b69052e-4da4735507fmr196313521cf.12.1759047911446;
        Sun, 28 Sep 2025 01:25:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583166561c0sm3244298e87.81.2025.09.28.01.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 01:25:09 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 28 Sep 2025 11:24:50 +0300
Subject: [PATCH v2 5/9] drm/bridge: synopsys/dw-hdmi-qp: handle unsupported
 InfoFrames
MIME-Version: 1.0
Message-Id: <20250928-limit-infoframes-2-v2-5-6f8f5fd04214@oss.qualcomm.com>
References: <20250928-limit-infoframes-2-v2-0-6f8f5fd04214@oss.qualcomm.com>
In-Reply-To: <20250928-limit-infoframes-2-v2-0-6f8f5fd04214@oss.qualcomm.com>
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
        Andy Yan <andy.yan@rock-chips.com>,
        Samuel Holland <samuel@sholland.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2012;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=iR5U12JmTHXUQwMeh7Ktc2ZVP6MtOB7VE/y4QxY7Pgo=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBo2PDUEX9koGGtFlB4dr8wsaZ3M2TeNtH/F0ivG
 Ao7oOkToBCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaNjw1AAKCRCLPIo+Aiko
 1TBzB/9xRTCFLc/ONNr3oj8OOXRouw+QTYNOU5f3JvtCOChceyttupikcLtdeTwZUNnQ+LumCqT
 ile+f40xQ5vMYzvLlUmK/fUbPKvvn1ia9+k2z7R68rQDaok1yArO5t2M2U/Uf8yPEAqoHzA8EUz
 6YqzPUCnwBfY9zmldmLJfigddiCMVTu62ZV8uV2xtDXmlrDncAvjqgJb0swzc0biTVWhFqJVjmu
 oxMVUv5+94HI2TQnr6d/PdGBO0hh13mD/NANYX6ZDy6I0Mj3/W2mz2godBTL/jMTCBGzKQUI/62
 fzmbq0BI1/SRZVAezrileWo2gMjGLedsHYZbKl8m09Hph8sE
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: OzOfsA9OtoOzNfm1HiiA95ETfQHBLlwr
X-Proofpoint-ORIG-GUID: OzOfsA9OtoOzNfm1HiiA95ETfQHBLlwr
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68d8f0ed cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=w15x51AS-uJJn6dZ_iAA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfX5WfL9CogBiTe
 /7lzDZsJqK4UsG2tduNa8E+Z6e/kIKG3P9s1EIKdnvtXjzc3BVGInWUOVWF8XlwSF3axNQP0e3i
 nIaiw/YiM+4KB8BykSB+V5Njddx01zn7+T6izuCz9g91c4uBX/4BmEeMuKftmN51NKPcmXgM5Ff
 8PIkwbiJiO0QzfPxkW2pqR44ejo0xLup/9ASdjarYOy128bDCnpZ1xJgbpYbJA2bXQN0z0O5Ozw
 +yChfPJEMr+wfoW8i4UTV5XzpyfK0aQ+nLaVJZV2YFekbJS9AKJbo6Ptlv7Sen3EjZAKJrNCxdq
 oldBErl84bif6Hu72kDzzTY86UQ4YR/yze051ObFYL5WzxisbALcTsjdnFG4ItZzBw536SOGKhq
 6jEOW8XOdpoHy5LUfZXN0wql+P2xHA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-28_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_012518_588117_B5A9B985 
X-CRM114-Status: GOOD (  13.68  )
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
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index 39332c57f2c54296f39e27612544f4fbf923863f..9a77e880b7f58403691338ee8c22d24af570acbf 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -935,7 +935,7 @@ static int dw_hdmi_qp_bridge_clear_infoframe(struct drm_bridge *bridge,
 			       PKTSCHED_PKT_EN);
 		break;
 	default:
-		dev_dbg(hdmi->dev, "Unsupported infoframe type %x\n", type);
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
@@ -960,12 +960,26 @@ static int dw_hdmi_qp_bridge_write_infoframe(struct drm_bridge *bridge,
 		return dw_hdmi_qp_config_audio_infoframe(hdmi, buffer, len);
 
 	default:
-		dev_dbg(hdmi->dev, "Unsupported infoframe type %x\n", type);
-		return 0;
+		return -EOPNOTSUPP;
 	}
 }
 
+static int dw_hdmi_qp_bridge_atomic_check(struct drm_bridge *bridge,
+					  struct drm_bridge_state *bridge_state,
+					  struct drm_crtc_state *crtc_state,
+					  struct drm_connector_state *conn_state)
+{
+	/* not supported by the driver */
+	conn_state->hdmi.infoframes.spd.set = false;
+
+	/* FIXME: not supported by the driver */
+	conn_state->hdmi.infoframes.hdmi.set = false;
+
+	return 0;
+}
+
 static const struct drm_bridge_funcs dw_hdmi_qp_bridge_funcs = {
+	.atomic_check = dw_hdmi_qp_bridge_atomic_check,
 	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
 	.atomic_reset = drm_atomic_helper_bridge_reset,

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
