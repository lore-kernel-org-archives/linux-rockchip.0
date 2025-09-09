Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 567A0CAC582
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 17:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hi1ZGRcilgnQAdr0ed2/5HyqA0VfwXlNnNE8NbHp9js=; b=CbckYYEqxgsawB
	GEJ8BKcYa/HyX4OcJMg6LQOwBa6HHDrBoUcX11Kyjj7JsoyIQAbDsy9kI3GXEoRlRYX9D/eCcNdFY
	SS9hdRwtA6Ow1bKyZTYE062z5iMYc/8hVR7ora6BZ4suolrN3H8L28ghJGwWCIxBoQEW+VJEj6OuB
	KBtXTzuXhjt5jz50b8N/ESkeK71gQZNM+mUgVOpEn0Jf2vAUYEwMQTo6/e0RNO7dP4hk8btugiHpS
	FbK2lJo+0jtfJBmpQt4o/OGmxH3vUuRFzJdpTTWn/kFDDMXamwqYnuMmRULpb9aoqDG3NdK5XE0Q4
	bNi6YDwd/HHiHPrRH3hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw22L-00000008yRi-0kok;
	Tue, 09 Sep 2025 17:21:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvzho-00000007sEp-0yqQ
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Sep 2025 14:52:25 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LcJ4031554
	for <linux-rockchip@lists.infradead.org>; Tue, 9 Sep 2025 14:52:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	34LbrOuc9PV8gpgeFWji3D+8fqmNkyUhv1A+EV+DDe0=; b=Gb8P3eE44KD5hhqK
	Pt7qz3acDht+w++2bwApYrOeR1zDzMzr4GbjemiUmx2GBg4v++SZ/m9IRzuWVOmv
	4Ru4VhP3y997kggPFSIEJn1ZYycaxRKce0Q+8EHh/POZSHSkCCzFdZo7gfD8KQxn
	KljKhF+sonsmGb0RCg/q56gfEOzetUb+Ao/KW2U0WU1mGewvL7Gc2TxF/nP4WW0W
	bVsz4NSkzexW5ncIgwUuAaXDTtLawaesIIIrk63fGhIOElMbKKosGAJ0neOEU8ih
	FBP2ZjzY4YzhrMFidHi1fUInXdEDmbS5DCf8xn6VZe5ypXhHNqLI2riT+ESkNX8f
	pWHu1Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bws8pt6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 14:52:23 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7296c012ec9so58966666d6.2
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 07:52:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757429542; x=1758034342;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=34LbrOuc9PV8gpgeFWji3D+8fqmNkyUhv1A+EV+DDe0=;
        b=QIPcOMnp/ArYyua2JzIpPdRR17c8aVHhtKwKApWVMyDtzPf1XxRw56OZKvzKAqADMz
         KsGaZxgoEe66us17NbRUaZYYNMzTqwxAWP2V2GF3yyxvch4xOzQnp0ujrXbLgYW8CtLb
         xjdOjM86+p9k7dEz65YQXNEyOaa+XJ4csK1BC6mJAr5EfWKKMuUtW2IDWXyZrVVEZVUQ
         oYOzqaS7f8vRmGMQXQOnSucodLAdzpv8EmSOM51qxnnqipIObWGu5v1JDdV0exeitcAI
         ZqvX9md1bWqJJdhFXnHfzfgt9cy1SGGUDXTV9Vr15tgj2eOco/BlSPWQOsV6LwW4kGiH
         J88w==
X-Forwarded-Encrypted: i=1; AJvYcCVhgTMXvyuFcJhG6ebQQTl1cDLsoXQ5h+cVEbtgiivZoNguG5j8qnbvmq3z7YYS0Q6DvvHvKwrT0oI9Di/XGQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwY9eRiCUtXk2PKaykCvp1GtIeiGlvPtYw6mWsOyGs3xQbezolJ
	PT3QsojZtT7U1KbdGtz70hp6saPdpj1laL9o45GYZRUUctiwsthf6g0uGu7uhGNbBnTRAjiJG7F
	gMNe7C0E3NNmkR0CdqWpoqgNxOrQ5TbesqAMiPnlPFDaqofPuI3aAJmxurudJIjERepRVP0/qZd
	I=
X-Gm-Gg: ASbGncsBEPEJBg4cSd781fFImo3sSbmcGFjqHuneeguSXZ0oWFshOS6PoGTuJxhZlJp
	wthyA4SEFS4qQds/VoVWncuLclajD8615RDKykDhW01xXdfxadaORtwtfTVSkZG55c86e1vJIzO
	fEuHD+r4TrDDbB+U6okuLjCNsn45Hc7YYQWTE/40KwptdMvxQRgOtf+NtfrqzymzPANZTNTSMzJ
	FqkohpuDbbKEiCXWRgb1b8Qb1WZilQ1FcMNNlb6L++g/pvRVCWQGSsjIiWTXazPpTK2NgKSW5Wo
	DQCZwZlxLSX+MMZOWwIdDhOFdfOpVOqAROuMZrMnAZqpr/snBk5cDqDEfSirAiVR7Yi6Hiy8CWg
	/c+db2juv8J1Sfkn9W34Fj1Ucm58UWb4a5aMoL3XTiurS/NJIxSHV
X-Received: by 2002:a05:6214:f2d:b0:72a:f29e:72c5 with SMTP id 6a1803df08f44-739323029c7mr114734876d6.24.1757429542276;
        Tue, 09 Sep 2025 07:52:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGh1k0uLi0ygOtqikFQVXs3ESyNR9ERK9bgM+N6UK8XiQgh0Uz27Q0AH3gIz+YQMk0Qw5PEvw==
X-Received: by 2002:a05:6214:f2d:b0:72a:f29e:72c5 with SMTP id 6a1803df08f44-739323029c7mr114734356d6.24.1757429541712;
        Tue, 09 Sep 2025 07:52:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f4c90eb9sm38735781fa.22.2025.09.09.07.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 07:52:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 09 Sep 2025 17:52:01 +0300
Subject: [PATCH v4 03/10] drm/bridge: ite-it6263: declare supported
 infoframes
MIME-Version: 1.0
Message-Id: <20250909-drm-limit-infoframes-v4-3-53fd0a65a4a2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1496;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=9B1/2qTsNC+xeCfao5KJMWH14J8iOYC+FCFWS/909HA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBowD8a1S6w7PQRTBrbr0WKlt4RdgZG4QLR3D3nd
 Pc2+wIxe1qJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaMA/GgAKCRCLPIo+Aiko
 1RFiB/9vPGLX4rCRjQOkWG3XFoRoxXAoe3goznIq2CFGqeijv1lUkS8knQervgfz0Mm0YJcdgjo
 B6079q8L+kL3ElAXr6Ik9sBD55c49g8MYAmAwSNSmXgmicEpVRkpmJm3YoQFopBBpGwtHMcQsz6
 awXfwfZAXcZy/DsHrOA8ScQ2OCT6UQazu3yZQxVKVAR6PQ6ca2XywVk6BgueG/RiNPX/ViYky2g
 VY5mlJSG20WmymvEwJLnpRUZUvAVhq7KdAfh0a6TCCwbD2fitVEjQmI2Yuez8ejW4e0Zx785+Zu
 2xEllX2NqZQx3EPNdpgno27vdf896pObSZfS/G2i9P9qiROT
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: duKV4M432Qy48LE6abpBdMalYQJYEz8i
X-Proofpoint-GUID: duKV4M432Qy48LE6abpBdMalYQJYEz8i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX63s2a0YTVxaQ
 SkIlF5A8x12kczIyql72Z2/l4EJ5br7GqKh5yQh7e7kgSM+6js+lZe/jyf0UiWPJ8GgJhZMJ7JM
 f3fcDg9Yf9tn6OmfVentgpxvqLwxxTFCgOYyG6ZFu1lq0uo1wLBBRENNuzqSKB+K639qi0SjFhG
 NupxoueeFCDOqU+dsNudg7jnlzeExLQG+s7+eRS2mJIaA7ACiILC6/3dhXd3h6Y6RPjfSDmcq+W
 fZRM0cHSLAH7L0PUwOS5BzRm9jC5OYXxbId1GCVUufzX16b1QyJje9iJ1OpFIWq8w6Ug3I3wH2C
 ocj4iuxAcJ2BDb6i2qAkoH98ets9KwOYQpYLoxxJKzH91Je1xGYGGzh1DQnLVmxBKknEW2hDM1p
 brq8YbWO
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68c03f27 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=8AirrxEcAAAA:8 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8
 a=LFZCy68fuonoWmFi_RYA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=ST-jHhOKWsTCqRlWije3:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_02,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_075224_364191_403FBC49 
X-CRM114-Status: GOOD (  13.17  )
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
 drivers/gpu/drm/bridge/ite-it6263.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/bridge/ite-it6263.c b/drivers/gpu/drm/bridge/ite-it6263.c
index 2eb8fba7016cbf0dcb19aec4ca8849f1fffaa64c..691e2d8a721bdbf99ca2dd49a45ce508ee7d9591 100644
--- a/drivers/gpu/drm/bridge/ite-it6263.c
+++ b/drivers/gpu/drm/bridge/ite-it6263.c
@@ -773,6 +773,7 @@ static int it6263_hdmi_clear_infoframe(struct drm_bridge *bridge,
 		break;
 	default:
 		dev_dbg(it->dev, "unsupported HDMI infoframe 0x%x\n", type);
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
@@ -813,6 +814,7 @@ static int it6263_hdmi_write_infoframe(struct drm_bridge *bridge,
 		break;
 	default:
 		dev_dbg(it->dev, "unsupported HDMI infoframe 0x%x\n", type);
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
@@ -899,6 +901,9 @@ static int it6263_probe(struct i2c_client *client)
 	it->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
 	it->bridge.vendor = "ITE";
 	it->bridge.product = "IT6263";
+	it->bridge.supported_infoframes =
+		DRM_CONNECTOR_INFOFRAME_AVI |
+		DRM_CONNECTOR_INFOFRAME_VENDOR;
 
 	return devm_drm_bridge_add(dev, &it->bridge);
 }

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
