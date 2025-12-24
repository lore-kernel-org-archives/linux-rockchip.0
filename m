Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9518CE74904
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 01:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qudL4z/Qg+Wy3yM48OGZlpoth1kv/0xwe74HrZkwol0=; b=q4gXA3A7E+QP5L
	Pmu74q0UmlAembMc/wJS5UDiRItFjD4WgGA2S9PknZFnn14WjXyVKz1Hnh29FBAoumW0gt2mo1U8i
	kZH6CZH6ldju59fbvbFvC6MswzWiVhdVYmaKxldjS6Fw6WANSXNFpWh2OBAC7hUyG0oR+eSw/7M0j
	TFce67GiYLKIScq3E0yFGBmzwulrbmiM8PuIXhWlFwy//fDQqcatTbeRKdI2KbWveYvgGEWhJU2mr
	xQEalPqsME9K2p/fT5gluE9md5RrPKyFya7TxWDx3Ty5wcjxesmg6H0NpnUsMyuZtLnqdsNcWAt3b
	+WtyjrYRWy0h/uugkVQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYDHy-0000000GExG-3wfG;
	Wed, 24 Dec 2025 01:03:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYDHs-0000000GEpt-3CZ6
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 01:03:38 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNCdWdP559899
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 01:03:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xhyidPKELK4mgPty7R89IfFpAnaFS+xQI4oanQexDkI=; b=hWR5OjqmTENGCgZk
	I4zXeoe0FG7+9/6SD3mCvvxs8H3pccL8dmb/4n93hTOrhvZH9t3GbcV7sRBlbwqh
	j3vMtO15GjZ43NDH5xDBw1xydalP3nQJoi/cquWmGbTFSO0HIAKy7YEvhLkXqIlb
	dQJ62hwBdIBtDRmwviqI78iNNVhEH7JVIqEWs3P+GhpXvYZbEb2mskJsWiOFpo+9
	0w9HVSCBA6DhMLa9kwIXPMA7/MAnPT6hxcp69upX2RXhvAhyWGDr02JZGhZE7hrC
	/ZRv6AGGoy+yRGIjDtc/ZYrlLleHwBbYd2TR/74vUAOumKhok4evGO2QVUh5wiVI
	wbOeAw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7u9csxmn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 01:03:35 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88888397482so167089406d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Dec 2025 17:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766538215; x=1767143015; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xhyidPKELK4mgPty7R89IfFpAnaFS+xQI4oanQexDkI=;
        b=GoPzomr5vDiCBxVOvZlGAyZQhOHf1Qm6T13zbsS0ITDhDnLJ3Y8L2CgIfuqkwwR4YS
         8cz/TfRZNEsxg0W/tlQk+0N5/gUm3lRGX2/AVzs57YBYXf661NvD4p8LHMrIKOBT5Ik6
         tzJrcJKwDAgrHmM8nq2em8opYOvlyJdd7eWAzdj2GQD/D1qea0UQ6O6WCMgN8vQjhpZd
         36FxkcYz25BaipQRPFpD+A6ihhVbewLhAm7yl398ryLzP5iAOfJVc/+O5jE538J+htiU
         XpugSId6QHs/309M46WH/xaIuzjP5JMAni92a6ptRha18LpTyL3c9BC1rlHwvGN+k7/V
         F6wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766538215; x=1767143015;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xhyidPKELK4mgPty7R89IfFpAnaFS+xQI4oanQexDkI=;
        b=r8gUcqPi7SyY9ZHbt5MKToVSZgGrGrBd+KJzFlJOxdxtsCLj2tqUeRkU4NQ0vKtKnX
         ecZ+jRsbY+pAAaC0sNjm3H8vg+xlRMyK9/qzYJSdadvVa0puoHL6oeipHSnIY3fgF5sN
         Krv/u2ox0GUZs6tBAFyVXSURuxQlwGr1mWfdJ9hnqHqbHcrHL+cqrklQU8+oQ4r+oFGB
         jBGiJv6fqDPx3qkLKFdiOglfZCeilxQd/dHHHik5DxSXpGGmL4e0YfyAwdClHv4m77Aq
         Mjn/9E/fzYarvstizbzYjmHvTdzb08NuzGGP5LK9w9xnlQJXde4NPNEO7NfRK+6U00TD
         XNcw==
X-Forwarded-Encrypted: i=1; AJvYcCUJBO3+QXCWoeWlFAhSZt8GOlBcD09ljaB6j6rpEi5R1vyG0MiEDV2qp2t/31dUlQuOUfIwX5RmXTmxhSS25w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyNRJg1HoY8KSeU21VR5cxqgFQ45q98XRMzDBGsBBva7uO5JR1z
	W5CP1I1eZ3WFJ7xRKLa38zFXfUfs8swMrz13WZO4CLsw/TbQFvOOt3SB8v+Dj4peq4S0DquvnHZ
	3rrXETA24Q+r/yghnFH+0DQhPfdSzAi+wNjoYLhKdzVG+Zcu7YMI29SKZEl3qsEmtdX4d7rQDWa
	c=
X-Gm-Gg: AY/fxX5p8wdhY82v8VV+b/rhcHWxrBSsiPLfBc76WMRZqB2oqn+RTXOPhsqr70Fek+v
	Lo7uX8ME1e8Z9iwwbtZDqTDk23301R5eilAh9Bzf9kaMUXR9SJH6jTzSOKQNg1J6zHopq65wju7
	q8Ebpgvz5agRLA2GCbYvGHwhjaz3sIPeDKwiPCaFF1pSJWxcjr7WRC/W/tnszjHxtne0Vac8+vz
	39HS+zrXpIh6kyRyOCtzhwknATc6X9tKjC5ZUhhevdbFUd+9c9EfRZilgGOG3Dt5wllS1WbkXNI
	CrudVWpnnRzKKla+ypKnffr8pm0cKNnHtf6G6Bmqe2GZCRn7jTY1rdaTNiHT+6ghJveqRZGoygQ
	eMDjaexolqorB16FTZmrdemJRCEltCvpOGhCaRok41xzpIk0NB0eZVNfkiJ3ohObqMF+WgB87N8
	QBnFSLxlGl9V7K6aR90Th/kJw=
X-Received: by 2002:a05:6214:4e07:b0:888:6ea5:a8f2 with SMTP id 6a1803df08f44-88d82234a02mr251739096d6.29.1766538215200;
        Tue, 23 Dec 2025 17:03:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEpKbGgnmym2Mtt5yWxfAHv9iuZOADyKontrek89W07BD34phYJfGyZ7WWcGGMKQLxabxO7ZQ==
X-Received: by 2002:a05:6214:4e07:b0:888:6ea5:a8f2 with SMTP id 6a1803df08f44-88d82234a02mr251738596d6.29.1766538214801;
        Tue, 23 Dec 2025 17:03:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18628284sm4545268e87.93.2025.12.23.17.03.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 17:03:32 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 03:02:51 +0200
Subject: [PATCH v3 02/10] drm/vc4: hdmi: implement clear_infoframe
MIME-Version: 1.0
Message-Id: <20251224-limit-infoframes-2-v3-2-7fd3cacfefed@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1703;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=mr8qXjnvYFOwO7KQ17AFNeqHgYNZnWBLYdH41Q2tDUw=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ6a39fX0APvL2yu8D9Rc3hNQrCmR/DDaffohjZWMNm3TW
 qUDX0zvZDRmYWDkYpAVU2TxKWiZGrMpOezDjqn1MINYmUCmMHBxCsBEyqI4GNYH291ht/25OWpN
 +Vnmr+nWTHOc+k9sTsiarlmVcz3+bZnyG76iwxndrZ6Wj9f3RuYEOJzb6B3/blvX/q0ezEeTEnX
 Dnpb5/F56eOYGp4ml9wQ/ivtYRbm8EOP/EM/JY+69MHef7kne9Z5Zt1QKdvxjyT8+5acQa+C//A
 uiTqvfV1f8C7nQJzN7xfT91yIKVmyPb1rrFqV84Zy75YP+wD/rjPT4rZawrlHT9uq6uOhGaxCje
 WWdfpCJ7w9Z9vbZN8tfzJffEHu3lltStTXUXUTlbfaz0MQpGWsbFNULpWVswpb3nP91WtD11Kq4
 VOMQR0brUk6/yjc2PJFtDgf1l07Zor3rOPuy2bdnid8FAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: ZXfl1RTv3OGdacvcTL_Di04EplBagUYQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAwNyBTYWx0ZWRfX1RTsUFuX+GXC
 yCw0hvuBmXLBHIqR36rd5OVCyE3Z+dRjjxSEKnsnKmosOIUr3M5/DcHNpe7YSEewi0OsC/4Z7GR
 pq3SU8VG/hp9nPPUlwa5DC0FcyxIJjDNy9YWa712DIN+8qmgwOug3rQXodD2/gMFYP67WTyYo0l
 Z5K5sKXLM1K8TV3evxjlsWL3SyM8v6R2BfI6zwhAk9i8UWv8/AJ1Uo2iK2dXH2CzU/pj1/h4dB9
 b0YJx5jKVdqRC8ubXXLn1C4jhuoe81rJTPcq0/pT9Zq3f9993ObHbdKRSS84PouLxT9jfBf+5Lv
 LTTotrr0pcm9SExLGh75+JLw9SDaAhOc5qfRwWxV+p55yA9fv54sXysx/jMa4Ji3CkidQ6QnAyo
 t7Wrzxtqm17DAzOtJMggwmQy36yHkOaPOq44FtsVizHUAY3D0T7ZOnp2dPSMUB29Et5xr6iq5i9
 jsfvDgYHvBlXQc8M3xA==
X-Authority-Analysis: v=2.4 cv=HsN72kTS c=1 sm=1 tr=0 ts=694b3be7 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=gsP-wGJUQ9tQerkYUh8A:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: ZXfl1RTv3OGdacvcTL_Di04EplBagUYQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_170336_944047_6502CC5E 
X-CRM114-Status: GOOD (  14.70  )
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

Implement the clear_infoframe callback, disabling corresponding
InfoFrame type.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 1798d1156d10..4cfb7ebc0c81 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -624,6 +624,30 @@ static int vc4_hdmi_stop_packet(struct vc4_hdmi *vc4_hdmi,
 	return ret;
 }
 
+static int vc4_hdmi_clear_infoframe(struct drm_connector *connector,
+				    enum hdmi_infoframe_type type)
+{
+	struct vc4_hdmi *vc4_hdmi = connector_to_vc4_hdmi(connector);
+	struct drm_device *drm = connector->dev;
+	int ret;
+	int idx;
+
+	if (!drm_dev_enter(drm, &idx))
+		return 0;
+
+	WARN_ONCE(!(HDMI_READ(HDMI_RAM_PACKET_CONFIG) &
+		    VC4_HDMI_RAM_PACKET_ENABLE),
+		  "Packet RAM has to be on to store the packet.");
+
+	ret = vc4_hdmi_stop_packet(vc4_hdmi, type, true);
+	if (ret)
+		drm_err(drm, "Failed to wait for infoframe to go idle: %d\n", ret);
+
+	drm_dev_exit(idx);
+
+	return ret;
+}
+
 static int vc4_hdmi_write_infoframe(struct drm_connector *connector,
 				    enum hdmi_infoframe_type type,
 				    const u8 *infoframe, size_t len)
@@ -1660,6 +1684,7 @@ vc4_hdmi_connector_clock_valid(const struct drm_connector *connector,
 
 static const struct drm_connector_hdmi_funcs vc4_hdmi_hdmi_connector_funcs = {
 	.tmds_char_rate_valid	= vc4_hdmi_connector_clock_valid,
+	.clear_infoframe	= vc4_hdmi_clear_infoframe,
 	.write_infoframe	= vc4_hdmi_write_infoframe,
 };
 

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
