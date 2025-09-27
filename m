Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3390DCAC5B8
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Sep 2025 01:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EAFsP/KIlaHX88DVCpNS8vLvcL7pX0V/MmQoQgwVSUE=; b=2Dnv7RdNwppKgY
	55Xr2AIB3i066AG04ukSTdPNfcLD7aFcgUEH0/saBFihREefclj8ELjg1Gy1y7kUIfSpjPfUIQCNu
	xnKiHRBTM9ZtPF5afENeYuzVIQEs8iBYOGbEOyYGXWBQ6/GkwlH+r26XRKkxGOwmfSTKtAB2b4+XX
	FQwRrbrBHQOw9p+M8aeinW6L0/EwcV+xDWIylAxXVpQVkgkNje1slrL+mCgUxLzp/WINuWhkz0nTi
	VfTLzOgvpBPMl7IEzLdkM5XbmMBwTcUc18SXVJXdWuRMlwvWiAxl+3ZSSvOAvRiMH9s7sQWeWTmE1
	MhuDNqhgnt3uGGaH6f/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2JMt-00000005sem-3PYP;
	Sat, 27 Sep 2025 01:04:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2JMq-00000005sZE-1TOB
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Sep 2025 01:04:54 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58QEWrxK010869
	for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 01:04:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1h6uYkRU8WeCjA3UtG+kTiDMnhzyUWryuidxMFQmEgU=; b=OjikmTZinC1bxTvY
	kl/UT/wbjuAVdi1UqckCvylVhh1eIhxX9LQyV2OHpLr1m4A0O4gnrNjnJhuvmXOx
	gGE6PXW8sZD/CH65sLfsFKcOdWg4OIxU+IpiT8dsg1JTqBVuOOWIlq5ZX1ZZFuRI
	61N3Q/rnyPO4ty/GGw9ry+5mxU71+Qk2PKRWfsJuublN5++8LcrzzNCLD0b3CtI7
	hLyRF+9zyky8GHiMrrO8cOr2tkLqsO+S6jfcMWhQ8VqMSyM6/1kNsJS9zN4O5Owr
	HLHi7ob9piLSOOwlbOw3Pce/ixBHPDB1brV+Wx2PZ7hSP5dtibY3A+uLHvuS6tBz
	uVDguw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db324gaa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 01:04:51 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5f31ef7dfso71826661cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Sep 2025 18:04:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758935090; x=1759539890;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1h6uYkRU8WeCjA3UtG+kTiDMnhzyUWryuidxMFQmEgU=;
        b=bfTl/RR91f6rdB2EaOOavbn8Rl80SzbiAdH4QN/5Q9GfkFjj87osBn3CgPn2dKHS8D
         xm/BlVUWyyQvb2Ohwuxqwi4e89hrH//Nbc+Uml6bKOmqMa9Su67mElIoiX4fSWoJC3MT
         MzRqUOfUVUNbkTJU4XQlNFzeLWWBupfM8IHsZFcvLbsFmGPxsORpOQvMOHeEZ5+Kr/gX
         qcm5n3Bh50Fn1mfd8Kbp0sOIq4uKkWnDpE3NPfPZHn/xJfGnXMAiZPMXy+MStPtcdr2l
         qN5ZjAq99Pd1FhKkJEZ/q1niOJNlKYTYWTKo6hOj+LEEf7nllijvTtBbDBlqjrZcgl0p
         0zjw==
X-Forwarded-Encrypted: i=1; AJvYcCVJnCo4uN0GGkSR2YtDFjtIxOEPmLkgHGOx2VlFV0RC2WpqX5YE6pm7TzztZu1fp6UGOj69ryB73u9dXxgFkw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyLhlXYPpBw2OieTRfY4wRzjtYaLxqrDr/G8jKYGobSlhNgAlcj
	LPaXrVRWqf51oFe2aWOWsDPkAlduqL7BApAQ/IR8Fsfif4ShDBfJfkcAQi8aSvnrdo7WZOSTiJk
	X4uf9dWN1JI/ekEgzHAX/RPLe76s1tr2SDkMk8xAX9zm5vLJCZpISL3Tbqa6L1lTPIDDlGPKuNZ
	c=
X-Gm-Gg: ASbGncsVrr/qjJIVgiHJet6wf5WXYhgIePTGtB7DD6RU2G2v7PZ6qUTYnFpYvk31bbN
	ba4n8b+Nkfptx3sTu7aAHc/otwMdr3imppnP9PvayIV3biDfKroITDLPqTKaEoiIFJCmtcoVCj1
	PPyTlQSysa6RwPf34ki1AtNay4AolgztCRNnh3/fG81xhqSn080DT8IUvET3sflQHkQDJtTUF+N
	7qKfVlS+EDZjqTiu1MrIzKJyTvLHp0VNEjwGr2Rt67A8gkrAXNP+VNFf6AHg6LZ4ELTUb8qd5L2
	D7i1WpZnhTzIvpBdJ1YS48JwK2HyiivPa0g2dmnMEn5bzq46bAAev5rkjNC5ezPld2ins3Zp1f4
	fJn6MpMKxNFCX3KeISih6TbjtLTEcbCcVRs9sR/b8d8QhnMjyhv54
X-Received: by 2002:ac8:5902:0:b0:4d5:eedd:6882 with SMTP id d75a77b69052e-4ded345283amr20742131cf.12.1758935090472;
        Fri, 26 Sep 2025 18:04:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/5DU/0QdkNd+pBR0ra13vIQRrDSgTQ5XS1w2ffZ6W1gk3zIeIsUearoOIFjHzJrN0PYiLPQ==
X-Received: by 2002:ac8:5902:0:b0:4d5:eedd:6882 with SMTP id d75a77b69052e-4ded345283amr20741511cf.12.1758935089690;
        Fri, 26 Sep 2025 18:04:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139f99c1sm2156143e87.35.2025.09.26.18.04.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 18:04:46 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 27 Sep 2025 04:04:32 +0300
Subject: [PATCH 3/9] drm/bridge: ite-it6263: handle unsupported InfoFrames
MIME-Version: 1.0
Message-Id: <20250927-limit-infoframes-2-v1-3-697511bd050b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2493;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=6wZNLqO8X0rRBnfpuMFvBzesvvV8mTr5AH0r8q+zW0A=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBo1zgg6ekeEVANunszOEPzosgM9q41mN5rMAyiM
 sKuwjfeMyWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaNc4IAAKCRCLPIo+Aiko
 1RYrB/9NvDpIpnndk8/iwFBBsLioH37Zr2qZpkOdcBqGQFXpakstTEHsDq9kYmk1BhFrWzvOnSt
 Wz95HZugwxczRUr2xpV+CYq9mMKnRX5c/BTfHXqp1MXYSIz4V9nqS/u9/DY93Nw29BTgRsl/ADz
 k7ZQVsQthFAglDBsyn/v4QadarI4Zi04elOdMOkvemdmyPqiRWzjJK0RjhJ35Nuyd60XrC3wG+Q
 m1fG2fh1RbsPsFOJCMSg6OwochNbOsE6aVz66Ddn7z0SpGH4m99bXpVZiaTNTCUUdr2Auw7kA6P
 6lNNyC1Ru+1fsOHa7S4qi4AD2uvRRGtjsI8LYco9Ol/RYvUm
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=ao6/yCZV c=1 sm=1 tr=0 ts=68d73834 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=yMgUBx0mNp5KM1AuerMA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: D_O4zvLBPoONpMtkAQsQZSjWnUS7dtX_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MiBTYWx0ZWRfX24uWIHdmAKp2
 2q8PERfM7tmbnoXSpx1T1QZNWPy/fRjPJglNO+HS6RCSGaAd4rXObnZ8POI98/hLndmL5H9mGnO
 8Si1cNEFhNk3ij2u+bfp2R8F+Y5MuHxndFntSWX2zA/T0DZPden/kHaHds0q4UqUpt3NWiIk9RU
 Cu/nQKtjvApkJHbqKMkgyKcCLTwTtkGuPfJf3LD9BISHYWdw/qlAGDVzNDtd80m/G/Yk+s9XH7S
 1CTrQYuK0mKUbZeeF/qDiUeQ9W7icbDjtGRcbe3BzA6FWYuJ7RAzP0vfwOsH48TFdgAqZZMVueB
 7ETx1nCV6Z+67E0A82IpDQo6bA8AbsdjBY2McFTXZDkH8AdnFb1F6tCAKhBGVbUSEnMG9IkynLT
 h5uuEmmGsAGQl+CyLXFdqERGDOxxfA==
X-Proofpoint-GUID: D_O4zvLBPoONpMtkAQsQZSjWnUS7dtX_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_08,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_180452_413111_571A2EEF 
X-CRM114-Status: GOOD (  15.79  )
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
 drivers/gpu/drm/bridge/ite-it6263.c | 27 +++++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/ite-it6263.c b/drivers/gpu/drm/bridge/ite-it6263.c
index 2eb8fba7016cbf0dcb19aec4ca8849f1fffaa64c..ad331e8dd4e815fe51235e672798bb2732d5c7e0 100644
--- a/drivers/gpu/drm/bridge/ite-it6263.c
+++ b/drivers/gpu/drm/bridge/ite-it6263.c
@@ -26,6 +26,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_of.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
 /* -----------------------------------------------------------------------------
@@ -772,7 +773,7 @@ static int it6263_hdmi_clear_infoframe(struct drm_bridge *bridge,
 		regmap_write(it->hdmi_regmap, HDMI_REG_PKT_NULL_CTRL, 0);
 		break;
 	default:
-		dev_dbg(it->dev, "unsupported HDMI infoframe 0x%x\n", type);
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
@@ -812,13 +813,35 @@ static int it6263_hdmi_write_infoframe(struct drm_bridge *bridge,
 			     ENABLE_PKT | REPEAT_PKT);
 		break;
 	default:
-		dev_dbg(it->dev, "unsupported HDMI infoframe 0x%x\n", type);
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
 }
 
+static int it6263_bridge_atomic_check(struct drm_bridge *bridge,
+				      struct drm_bridge_state *bridge_state,
+				      struct drm_crtc_state *crtc_state,
+				      struct drm_connector_state *conn_state)
+{
+	/* not supported by the driver */
+	conn_state->hdmi.infoframes.spd.set = false;
+
+	/* should not happen, HDR support not enabled */
+	if (drm_WARN_ON_ONCE(bridge->encoder->dev,
+			     conn_state->connector->hdmi.infoframes.audio.set))
+		return -EOPNOTSUPP;
+
+	/* should not happen, audio support not enabled */
+	if (drm_WARN_ON_ONCE(bridge->encoder->dev,
+			     conn_state->hdmi.infoframes.hdr_drm.set))
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
 static const struct drm_bridge_funcs it6263_bridge_funcs = {
+	.atomic_check = it6263_bridge_atomic_check,
 	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
 	.atomic_reset = drm_atomic_helper_bridge_reset,

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
