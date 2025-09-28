Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 554A8CAC5BB
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Sep 2025 08:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5/wL/S+w6vXAHhJ0huRhgd08fsfaRFdERH4bQ7EXIE=; b=GamLUqLtd2E1Sv
	In/mLTXg23tvkil/zpeKzlau+oeHNLysNEdvPeInmVbks6mCKmNe1nzX19qV3TUfMh+v9G6j7jwDJ
	XxLQwfQ5FBOQyVNKURVYLVAVeXUrVPOm1z8KcTfhHnIHb3FCLb2abKV5hSCeYtl5jsTUc7LUd4ype
	DGMauKaud6HCQbu1nQ/TWW+n4JqromvWapGBWvo3KH7bdh7Kh8aOHWd+ogATbC2IfIwqHtQ97Ko6+
	2NVFKQnE+6mzdhyM4RXGnw/1CHB525KSYr44uqJrJJHeXR6+kShBeto96hp4+2HkkBt5FBambTmyg
	Hmx0ECis3DhFy0Il52nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2mif-0000000EJTk-1DDl;
	Sun, 28 Sep 2025 08:25:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2mia-0000000EJK7-0aCJ
	for linux-rockchip@lists.infradead.org;
	Sun, 28 Sep 2025 08:25:17 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58S30QU5012223
	for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 08:25:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MFhUEfSaFwySRMaGJYEpZSOFWlmnLOv+5YWLz9EcBTE=; b=Nyi1TU8AJHWkgYCm
	Mgv7R0ZVX0wOcPUovl7wG0Xnz37w+/sVSXo2xOnDA5fZLQfNP04uFmi3XqhnHER8
	V27tyCm1WzBckV7iYoSaOnrk/9YuFhzSuVVh9vBFpnPy2rDlKrJfAxar4Lmw+TxC
	hf30s2KhImMkUW6QTYYpMaE0tmdL2OqqzOGIEVw8wAeaczRpiDMg0RG3NLdhxtM6
	7zSIX4sVPABYEYHGD3xWrebTn236Du6TKM95MHV8ClPVw4dNHlIMU/HorlOlxhX9
	8gl+QObKHjE+BhIiMu44UtsDfk90OACEMIvL3uv7PAfya2vBjsGj+MPB9Dt+uJ57
	a0vPfw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8a5tcqx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 08:25:15 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4deb67c61caso39986841cf.2
        for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 01:25:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759047914; x=1759652714;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MFhUEfSaFwySRMaGJYEpZSOFWlmnLOv+5YWLz9EcBTE=;
        b=UBJJrDELsJlAJx1kZOhWG7/Z7t0naE2sCzR8uBfhpOPONOE9AH14Jcwk4GLLrarQNf
         7uAFTSGgeivzC/E5O5Wdy8eFU1tmJ/7AGpZAbO2++QUwZNf7rrgghipi93bpRZMiDVYn
         OXjWSBPl09sILOxvsYCe4/1TnyE9NFsLCVZ9sgaqQNXsJ1nbvM/XPMckEMiPH8CV2U9g
         Qz0fz6LQjhXAygfWiuNnTWAqZQ1Mp9d0vrG6xAaL+irgMNWOHW/sflaTzNxQ4aL23Apz
         O+4K8dZi1Smi1TnNK9e5rAjlW2tHr4XSDNVpFLVDlod8KkvOPeCoarNhG4iB+bgkfZuT
         TvcA==
X-Forwarded-Encrypted: i=1; AJvYcCWSsspsZdEAlmrSMSk2x6HxlL9hd2PJtMHHdxXoA+SxZ2KBMHUAZ4MFrNuvUvhFYKQfakrgsmigR4G7q913Yg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzhp95hzjTyDDSd+6pJRvoCyvG1TEHZgFWrMM7tlLjq8hQoMwvT
	4x0x/H0cgTz0nMUfJcyxxhUJ6glnyTtgTDv/eo4eFfIb3P8Ea2FcRDiArnbeNS4tv6bciXUH7an
	xko1V8TS57rxEX9y2tve1qeNnyobjGqWviX6QaUllhMgmRtNnqLCM4fpIZybDgwddAh6MyiGPh3
	4=
X-Gm-Gg: ASbGncuHQ/SDf60Yn6Azy3eGezvzh+OiGSK3O9SzwdsAgHWpIX+FGrVcWkCJ56NDe+0
	lYnlrTxp8ywAPBDKQihauvswluDSoY9qW7qECHvbu42f9ruKWEEuISdIJMYWss1iMkDVFcHwUqD
	LTcH4i7urAiUMoSuVF6A15C5YwWmOdICK/QdC9UBnZzLiVIENUqR7tjUKDtHe0CIUcTuEQfeEJ4
	+DtjAU0B5EggXpKh3MBQAlOSMPs1imOLrVOiF4ywFT8NprvtMYFHovapD17V+fWT4khktVQkgi7
	QxmDs/NPU4AxG8+or+vq1L9zjcG9eDTxb+tr9aokWHxcMMfvltM8lkIe/sPsoZLwHsfn31ioR4B
	tN2zav1ibmZazAIFZ5hLDxsD8WiS/rCNidxUFT+rm520Wbv+SEH7U
X-Received: by 2002:a05:622a:47c5:b0:4dd:584:1429 with SMTP id d75a77b69052e-4dd05841fd0mr134553311cf.81.1759047914429;
        Sun, 28 Sep 2025 01:25:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwfsS0Q7LOoaRPfQeD9zvDgobB31SXOr4kE+JJnvQnCOXD4rZ+uP+6M8YxXGzoygRLIGjIwA==
X-Received: by 2002:a05:622a:47c5:b0:4dd:584:1429 with SMTP id d75a77b69052e-4dd05841fd0mr134553161cf.81.1759047914018;
        Sun, 28 Sep 2025 01:25:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583166561c0sm3244298e87.81.2025.09.28.01.25.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 01:25:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 28 Sep 2025 11:24:51 +0300
Subject: [PATCH v2 6/9] drm/msm: hdmi: handle unsupported InfoFrames
MIME-Version: 1.0
Message-Id: <20250928-limit-infoframes-2-v2-6-6f8f5fd04214@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2210;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=vJ6MP4HtyLt5a75BuYCv3CbEFdh6+KuelPeaDQZ+OQQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBo2PDUyU7rCSa5YzapriRO9eRiYkhaqCHGmx40e
 u2QgQMrjL+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaNjw1AAKCRCLPIo+Aiko
 1c1+B/48g8XIA1mGiOfBerCYJp2Fs5T0zJCKW9Jx4v3PO9b+8QxLYHib6tzym0IumYyly/k7z4p
 aUIpTczb+3zc4DGKfWFnoVBBcTbT+7bBq4805NeNbG7sEYGN5sH64Dx1u+jhfGRODdGJ/E+hDt3
 JpTbshDXWQN/kpzysIXBESgmxv1QN9TZLzCY36KK8KZcY2UZJZ3BuJ+BsHvTwvqrBLm+DD9MXZw
 vI3gknUTNjHrk5YskzwrvFAzYF9tGB9mA9SHw9SegZAAmf7YWzW8SJldbp4vPyMDTLmT6TOGA4F
 JXeghLBFIPITZh4fDuHuLiz5X/nbdlBhKMJwMBQJqDnFjqqw
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=RZKdyltv c=1 sm=1 tr=0 ts=68d8f0eb cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=B-oVSsyST8MYkDpc_wEA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: ExV1DhobwiCWTWvw_koZXrDoqYNI5_Ec
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMyBTYWx0ZWRfX3v2bvEVUIv41
 Nu0Ysn14RlD04URXCTXph95q0dwsS1gFuZcqzFoj+7um99KfgxY5QGDFb+LaNIa9yweu1NKY1VI
 /sFD0qdyfM96pkzbxM0RiLMNoEBJzU9GYOMp0EUjC3+OHTlkNQ5TIRPF7DMNGx9OSkA+Zqz+NEp
 emm1F5cesHZOZYARe/0EA9A3PG0bwcACW4+CTpRzStSfpLvDRZMjgsEMGL3Q1Yolzn9TNdPxbLR
 FZulGK37zNTD1FZei57uRsTHsgCJBxQLrbm4Ri1rWHOkZplu9XR0FBymTNjt9mkGlCMKhM+6HaR
 xK/C3QhdakBHFuSIkr3XvG+aucO4G8UgyW2nZBUn5bmdIZ1/yhh4ZAGBHCJY0XaRO0v8rQga1P/
 3u9uuozqLYfLYM8RCL6kMylkDXX+FA==
X-Proofpoint-ORIG-GUID: ExV1DhobwiCWTWvw_koZXrDoqYNI5_Ec
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-28_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_012516_333534_B13A4496 
X-CRM114-Status: GOOD (  14.40  )
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
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index 46fd58646d32fd0611192595826a3aa680bd0d02..121239a01cea334c3e7c789ebfb54df71515db28 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
@@ -248,7 +248,7 @@ static int msm_hdmi_bridge_clear_infoframe(struct drm_bridge *bridge,
 		break;
 
 	default:
-		drm_dbg_driver(hdmi_bridge->base.dev, "Unsupported infoframe type %x\n", type);
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
@@ -273,11 +273,23 @@ static int msm_hdmi_bridge_write_infoframe(struct drm_bridge *bridge,
 	case HDMI_INFOFRAME_TYPE_VENDOR:
 		return msm_hdmi_config_hdmi_infoframe(hdmi, buffer, len);
 	default:
-		drm_dbg_driver(hdmi_bridge->base.dev, "Unsupported infoframe type %x\n", type);
-		return 0;
+		return -EOPNOTSUPP;
 	}
 }
 
+static int msm_hdmi_bridge_atomic_check(struct drm_bridge *bridge,
+					struct drm_bridge_state *bridge_state,
+					struct drm_crtc_state *crtc_state,
+					struct drm_connector_state *conn_state)
+{
+	/* should not happen, HDR support not enabled */
+	if (drm_WARN_ON_ONCE(bridge->encoder->dev,
+			     conn_state->hdmi.infoframes.hdr_drm.set))
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
 static void msm_hdmi_set_timings(struct hdmi *hdmi,
 				 const struct drm_display_mode *mode);
 
@@ -452,6 +464,7 @@ static enum drm_mode_status msm_hdmi_bridge_tmds_char_rate_valid(const struct dr
 }
 
 static const struct drm_bridge_funcs msm_hdmi_bridge_funcs = {
+	.atomic_check = msm_hdmi_bridge_atomic_check,
 	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
 	.atomic_reset = drm_atomic_helper_bridge_reset,

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
