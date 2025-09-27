Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F3FDCAC5BF
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Sep 2025 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wW0iBoXJ8dN1pkGg9G9bHgEypFfgI8Ur4sIz7dDlYbc=; b=XEg4svm0qtIB0J
	2Xsz41BR0wO3vh8zqwALYMaTK78nYFtncXpSx2iiGb0QITTY0jYWglBd1BpzvpujN/fIwq3ZabTVr
	eNU9xkOU64uMgyIWW+7QTzAjtGjVK2DHaca0OpB9Q9SQL2prmnkexRFxDe3Jmzdj8dYx7fMqfS0Y/
	iXdKZFfAr4BP8E7I0ZkspoHTtR6MEHuFd+1wffGwftVMl8Wq/eXSdQ8I3eWdVz6ltpFkwxVDFNYRC
	UlKNL6BQaaITzIcnkG6J6tJc1jzHTWKLWALL63h7fPPVunDwEwKzxPjfyYRsHmqLqhesAFrxlEhQc
	/gXDB3aEgK9r3P7w3G5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2JMk-00000005sSy-0SSs;
	Sat, 27 Sep 2025 01:04:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2JMh-00000005sQB-1vQ4
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Sep 2025 01:04:44 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58QEWpZ6010435
	for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 01:04:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tqL9/YMiIEc6tsQIKNZIjqHO6NoBtjrbfKTgbxxDbRo=; b=h2aCXGC4I/FFoMnp
	ArCQmvc7Xjl5wqsta2feYFgGDI2uIcwDXCd7J0Gmp2mkXhwM/90qPS3j99QD3eNn
	gu19rTNNMHJt7ZXdsPYO5qHfKW9KUaIGFwJlwA5VrvS8yr/bBE7QDMEitmdf1eZM
	k3bKPYzDMow0aPKNFhQvqlPgCShKom8IyZufpGAsNxFXU57aJFdCrvzRp7HkAwEB
	zV5AjopJDVGM1aGGaWsKrwJVMHBwNcQfhCBSQwYvpAJQuSQijHZ+ie/QXEHvJNrn
	X62z9DjXvsPxYiRBif5ns/q3sqsTLemg4FKeDe0ZM9s4ST3bZz8LvreCGTylgB8V
	MqJ+rA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db324g9k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 01:04:43 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4df10fb4a4cso7695701cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Sep 2025 18:04:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758935082; x=1759539882;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tqL9/YMiIEc6tsQIKNZIjqHO6NoBtjrbfKTgbxxDbRo=;
        b=qTDPVrG33VUWbin7mQjH+oHZSU2urJhN7tJSO4pYMQq1gIHAGcpUJhuWJeyRMnN/Aw
         O+oMXrnwuDJHOHnakhlF1dK0r+aN8odEUNEro6ipFijeYe6exEdpdrSVopIYBi5O4TzA
         QWyUjf4fzSskTEMSFnu76d3WEWBy1yb0l3V7NknAOWPCaCJRrMm1Kx/l4qipmb8kcF7h
         3pN61kqMmMEOw6QVEHYe8otm5waGyUNm9EgnxaVkCNI+CbRtBmTpP+yrbWIYngOQXFwG
         PvnnOuqkrmOiJ/i8Nm9O5vFo2IYLs+Jzfat7pPebak1d1j39OO7YuwFazq8GZkpctvZa
         nbEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcdiyCQiNbdk5EfCjF5X+WLQIaDeY/wdOuNsFPWJWprbkottpFbMWMsKNObsjosmmRbCxhTGSxLenLS/2H+g==@lists.infradead.org
X-Gm-Message-State: AOJu0YytFice4jvh/ib3lDsehpJ/oG6blRxX/trQkwxpQ1aPgbWT4q/I
	k1pdItyDGTmdf3XVAmXRdGhQJftwyAlIeMJJEB01nO0GwoJ0LfVs6hUC+c1s1jgF50arfdLwVYr
	X7i5KjZHJ4CFXEYsTe9r43pjFU6n6qit3/Us5bUrTMZHcQ09tIUVtoeIol249WU0Q/lhubnKhBN
	c=
X-Gm-Gg: ASbGnctE9/8iaxoSbzfDWg/4OKCA4lBOv5lujI00dIXZ83ra8pPmNE5MMX2K7LpAVLR
	U1ATzcstkecXVwiWETkYJYUPyD4FSgQMm0drEt2042N0L8qRf8MKR3FiPG9u8K6APMPZv3WXYnY
	E5gEuy6dOlVBP+Nw55Jevo2hFOzAZxbZhElD2t4MhsM0l0VGUqZJMcbBvNLaHL0Lq422mXtSN+M
	JN7NRlknJzOe5f6YXiQiyhE9LbMKQe/ARMPVSeTNu6k4PTXIzGULk6W8xuRQcGaBvjVs0lLwT+V
	MCr97yUy4iAGpBUv/BRtPAnhIsbVZlf7o8UOqcENfeuib29amWeRpxNVOrlxZQwXAKQwHJa1Mva
	qia8wOKahtdHnnpnrYg5ZdNdCPzwBaZv4vhTMMGnAr5xf8b77LzLH
X-Received: by 2002:ac8:5f53:0:b0:4b6:38f8:4edf with SMTP id d75a77b69052e-4da48c83a55mr117773261cf.29.1758935081593;
        Fri, 26 Sep 2025 18:04:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF75VibNMp5O2UtPKi1lry6nSqkB5lKg4XgBP9p5gbrQo+2jtHOvdb5uGII3iLSHRo8cejMHA==
X-Received: by 2002:ac8:5f53:0:b0:4b6:38f8:4edf with SMTP id d75a77b69052e-4da48c83a55mr117773001cf.29.1758935081126;
        Fri, 26 Sep 2025 18:04:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139f99c1sm2156143e87.35.2025.09.26.18.04.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 18:04:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 27 Sep 2025 04:04:30 +0300
Subject: [PATCH 1/9] drm/display: hdmi-state-helpers: warn on unsupported
 InfoFrame types
MIME-Version: 1.0
Message-Id: <20250927-limit-infoframes-2-v1-1-697511bd050b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1357;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=3Kap+upNT87sFn+7RYq1dDaa62IPE0BRWOyWIEU3S6I=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBo1zgfX/GIreKBwo6aCquZZY/wID5t6jipXzkNi
 wTF056wjFeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaNc4HwAKCRCLPIo+Aiko
 1f55B/9KVdsAJOIT3RmBfdpKQySqJj7khLyWlEyFtjy3loB2+1eEOtJi2XVpH99c6q6m5nmgika
 FDWK4UD2Q/faYp488okDacpcRd7LG2k1I/KXafk68W0yMIvO5PU37KKyl7UkZWxNov7p7+aHt5R
 Wwp8mCubhX8mMCmlOVFpNKA5ARDnIbuY5e3+fAnV7hsW1ppyyJaXajCEmTQZvwpQoU0oH5PmzTa
 OwUPXQEUskF5wjmeV0dhV8YVx7YAksWi40g7yInbW6g+Q9eVi2VGdPoFWcdBj1TOGc2d7/j1rgU
 PZOjdrVKqzO/S8m9Bgk8t7Er/wOQS12w80Pibwbavv/Oj8jS
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=ao6/yCZV c=1 sm=1 tr=0 ts=68d7382b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=9qaGXxVFTICEpRVd4z0A:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: L2YpAyvUPUWMVBOuNM8colyTmD7ln7-9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MiBTYWx0ZWRfXxbNREm8MCfm3
 SdL5mPwOjw27mfyMk+H8tqOmIwcO04bFcI3FjrnORyM8UDP1UEG2cc+mW7lp1uA7r0X6RM/iffV
 TzekKrb5pNoY799EmoTPdCKswikw2wQFCuz6RlElMleJDXn0v/QLQXmQ9FOhncBJ4irWBi5iuDd
 oHFPmJZHbn+BTnTBjXmgu/4Hi5qui/sOcEJRxMe8ZLNfvJ/QgyP68bI6bV9ochdJc9YS9A7CVfa
 oIYs6Dg0BHXVj/AU0CvZa5VEXEtV2IWKZNZhxSUxcUvY6ZfDSY18wIsuQ7QvRG22aANXJau1W29
 pq1YQMWIZhPjqieuGk2HOf8AcJY9Qa17bSmPIym52iN/ICOD/MyegppvRuecWLxvhUWjKKurYi+
 ah3BdaOlaJoykJfC8uln3IX52w4rKg==
X-Proofpoint-GUID: L2YpAyvUPUWMVBOuNM8colyTmD7ln7-9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_08,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_180443_526020_99719B9F 
X-CRM114-Status: GOOD (  12.75  )
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

In preparation to tightening driver control over generated InfoFrames,
make sure to warn the user if the driver rejects the InfoFrames on the
grounds of it being unsupported.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/display/drm_hdmi_state_helper.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
index a561f124be99a0cd4259dbacf5f5f6651ff8a0ea..361912de2741939cfb5ec350c08d738a92e2ad37 100644
--- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
@@ -920,6 +920,8 @@ static int clear_infoframe(struct drm_connector *connector,
 	int ret;
 
 	ret = clear_device_infoframe(connector, old_frame->data.any.type);
+	if (ret == -EOPNOTSUPP)
+		dev_warn_once(it->dev, "unsupported HDMI infoframe 0x%x\n", frame->any.type);
 	if (ret)
 		return ret;
 
@@ -947,6 +949,8 @@ static int write_device_infoframe(struct drm_connector *connector,
 		return len;
 
 	ret = funcs->write_infoframe(connector, frame->any.type, buffer, len);
+	if (ret == -EOPNOTSUPP)
+		dev_warn_once(it->dev, "unsupported HDMI infoframe 0x%x\n", frame->any.type);
 	if (ret) {
 		drm_dbg_kms(dev, "Call failed: %d\n", ret);
 		return ret;

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
