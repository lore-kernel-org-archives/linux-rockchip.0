Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B720E74904
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 01:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B81GU8vp5Xyo7i8jsFV64MCqNQ/m1WY61SyQ8+5lGps=; b=SPcL40oHoKbM3y
	bsoxPm0oDPEYiRUHh4FNfuOoemtKifNGfeeNVdEw6mX9aehNm8udaTYrpRUuvDtqlFyxLPz0Jnk66
	fbPnPqZtRcvNIQcfLI7BVaYXsjN/W/J24e2J8Dy6Llv85261l6ZzM2fTLYRQKfECwFVvD5DCnHkF0
	mPAY/cFgs8tz3H+OwY2nSrj/G/yZwXuQz88G72NFWqe1HQXcDGG1+eeV4VylV1ROLI5I8Zhc0F2vA
	DhBzhxHa0ZI+mcvcYan8zAFHC4k7Wullo4HuQDuXjK1RZR9Ze3wqqIlVmGu0+CynnZxI9LTawMsQj
	wXpoFbs9YziXnWj88m5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYDHn-0000000GEnJ-1zUc;
	Wed, 24 Dec 2025 01:03:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYDHk-0000000GEmN-36mv
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 01:03:30 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNKXkgb1206657
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 01:03:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Qy1p7dz4KTgtjDJxH7zF/s
	/gw1hKlABNOIK2uPdIh+s=; b=Qy1JAWIw5RxuLOv5JvoPQDQ3fp2u1Bt3JcmncW
	eKmUgS6Ym8+vieeKqVJzLTpZZSTHiDCrqEvyKQDTe1lZ6YKVl7Im6YwwtdaUHVuI
	vm5KPTtIZT9tBcv9JEaiAtWz37t7lchbtbti2t6D+xYTMPA6v/6W4QAKUHXQMuG8
	7NUFdw/gT45rzolt2V9zL7KnSFGWM7MwjyvYjLh/xseR1yTYTCCLhrPY2Re961RN
	+2DeqPhnzjcP6Mako0ao8Db3AJO5qxu9UsjuM1ICh7xNMIJHbRtAek5E43CbeYnY
	YpcwpAXRwKi5kKtEG2XRunwQSnQXi3OEnVOXNFWJnTmXyMPw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b827r0gp0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 01:03:27 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88a316ede50so107174146d6.0
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Dec 2025 17:03:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766538207; x=1767143007; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Qy1p7dz4KTgtjDJxH7zF/s/gw1hKlABNOIK2uPdIh+s=;
        b=bhNXytC02cWWxv3a1+51Mwx6RKwEk407fFh4IsqrV6DdX/DIQb6pblhdckv9b9prwz
         abKebN7xIlGD50VUsqCEiGcX9iAhxcniuoEdTFcr5JUGJkN/ypSvwXBm58N+7nNoHoez
         ZRNaAgSrWsYIPRtqavDmZ+cUFnXJyfb0uCfWgZdjKYD3pOExFCXXJP33/UGSgmsYpR/c
         0QEA8Usob+a37gAO+m+KYIf2fBEh+6sCkQpQVTYRiqTzzEBW/VJMTxJOQxvhSBPrlFqt
         3YOCuaP5umXlwpQnA+Kw7U+jP+55y8BoxVSB6uINV2HxTznhxUgRLeAlXzD3zc0dTFwD
         WNsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766538207; x=1767143007;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qy1p7dz4KTgtjDJxH7zF/s/gw1hKlABNOIK2uPdIh+s=;
        b=oROcHwgtUi/ISB430zrsB8GtsIzvGrzl6IjTEQvnHk7V6OSO9N7cNoGc4w8AiALhdT
         GW5yoVLckRZegLAi3DCXptZQfe0/ViJ0ZUJfNUl60DejCJRyvRTWlldpdZvCkzCpeSVl
         aPdh1qnExwiiOWBDowJf+vRjIwBSJifM5eccE7C24Zz9D6PwJLnGtGsQZiY6ILZJdfQh
         LMPj8w9YCEc4eYYL3+fDTToLjFs2ZVWX9UKv97IvZ6RESemqWwcG70/G4ej3gpw9eg3p
         u9Xk4y3tBrJuax2WFI4FocncAzbHOWX6Vz5tq/jFnAVK2alv64DhQt2tLqUFuBkZmDYE
         wBrg==
X-Forwarded-Encrypted: i=1; AJvYcCWxqzWM+wsIYcH0kyvfzv3o/XqjA49PlaFeEh8Mcpk0YF6WrnQzkLn+ikhkjoOi/tVAG66xiRkdrGv7RxL4zg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxz5ItmYb0OGZ7sB0vp9NcMP5KljZjrDxdLYF8AtSN8MZoKNB+E
	ENd3W1NG3frxfbfUQ90RUOjjeHzXHIqfJRjllewRBZxi4pxanFnIxEP9mSeIBdELp1JTf+lFm2V
	9rjCghp5aEV/WdQ3goHSJQFuxrXm5BQSLrcePK+5YCeocEijFTkXR8QcjVfSWiSbAU/ZAn8oscG
	E=
X-Gm-Gg: AY/fxX7eR2B/RUtVLMNHhy5ENX9Seev9vMqv4MEjD0nundZEQbZoj+rWlDAag9EshUV
	67e1+S0eq2wZKh9ts6jyATQmCcuLiToNCC0j56uFEl7rjkCuOrx5Lux1O2r4aJVhF37JZVK+ykz
	DPiN84LZ71zInatntSP+tq2EuZUZGemLIBudEZz/uED8Vph5cH7QdluYE1PDVipe92d8Quy0njM
	y1b0S3yVyS514TPZ8srO6b4AOLLMkb5+/6NKKcSYxk1LHAlprqaBgoZ24qZ2OQpycZgcPtJ111W
	KQwCaESwdaNxE/7XjfVRqGOL2+nztCZk0sfd52O5QHEonPsf7DcORls3iEly47gM7O5ZaqIMR5j
	673G87L+SWpNZvRRFE5pRSL5J0CkfkJgqWgO88LHRmqozh5AEk1hXUoaDY0wYKqfJIA+DUzWO7J
	sOsorVEbNbn5VSxdSNFJYCzGI=
X-Received: by 2002:a05:6214:f0c:b0:882:762c:6b84 with SMTP id 6a1803df08f44-88d833b5f7bmr300845936d6.35.1766538206530;
        Tue, 23 Dec 2025 17:03:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFpimNXfH3oYorddWUqgTrbXV1EPp13vtXQqLBq5K7iNXJf5pz619uZUKkotZ/5noUnChRCWA==
X-Received: by 2002:a05:6214:f0c:b0:882:762c:6b84 with SMTP id 6a1803df08f44-88d833b5f7bmr300844926d6.35.1766538205726;
        Tue, 23 Dec 2025 17:03:25 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18628284sm4545268e87.93.2025.12.23.17.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 17:03:23 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v3 00/10] drm/connector: hdmi: limit infoframes per driver
 capabilities, second approach
Date: Wed, 24 Dec 2025 03:02:49 +0200
Message-Id: <20251224-limit-infoframes-2-v3-0-7fd3cacfefed@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALk7S2kC/33NwQ6DIAyA4VcxnIcBFJWd9h7LDqhlNhHZwJEtx
 ncfetrB7NLkb9KvCwngEQI5ZwvxEDGgm1IUp4x0g57uQLFPTQQTkilR0xEtzhQn44zXFgIVtGp
 VAVIpqJUm6fDhweB7R6+31AOG2fnP/iPybfuXi5wyWqlact72TLL24kLIny89ds7aPA2yqVH8S
 s2hJDbJNEaanpWClwfSuq5fUggn7AUBAAA=
X-Change-ID: 20250927-limit-infoframes-2-6b93e599e79a
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3625;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=8Tzjobm822RrqnHK47PTxRb1kubRyL6ECDVZddDDmG0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpSzvXIbwsPmKZGaTML8UxKouye9UbF18LUF9dB
 OPRCcT9gdmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaUs71wAKCRCLPIo+Aiko
 1TjRB/46NUvByKDGyDwWo/bdFXCvMaCYCrhtMnS2CnzdVUkBWOQJlGAUXoB3wgO8QCfRpICSP2W
 INpd5UxrZkAO42oYeNdfDx9bRfJlcwUtxLc7db6mthobHJmKl+I5N0AfogED8Hvx74hjRSCWqMq
 0grAUH6HRdRV8dnY514V1FOVRkeFgLB3TZG9iUGZb1sBJL0psbTYtrX5Bm08kmyA233ESSy+Yx/
 5TfM2F5sL/SA+jPiyyJQvV2vEMXoBYQGoTe6Lf+FK4s6VRPPxlEqKzNwHl7dibcDXxpHkQxTISf
 uj/97ZaUsT+ooSkpOia7cPAXHcz4hjmR1XSw4mh/qatb3yss
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: A7bfoVNQJqHsFhAB2eNoPHlk2a3yamC9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAwNyBTYWx0ZWRfXx26bnB5Xz4mT
 +6hcS2/CL3W+EpNUYHn/vI2j5FOud0p5696ng+aWBxHce9UHKG8/TDErciG3LKAuTh2rT5upeWs
 ISCEQJtporCWabSVq1Ib1fp5v6HC1JJNIFaXsrH6jU+emdcgIz9pc4UAp6NfumO/UTxMzEr0qiB
 muPJxdLZCsHcavhqp8o0f7wVlnwEfuF0y1hrL5uRkHJaLXO/Q2Nfvzn/id+6PyHYoUJAE/imTVv
 RWEvxAMqz05w/Vzalr711iO1+1ha2qpvgcKmQ1RGu197+iR6MuDWBwhK/6ctUe5WV9B0IGnU8ds
 YzjyX5ssRJ1900xV9SPZYrdxpCpXQLVUwTcZX3Asqc5ZQvdbmmnD0kvOPCirb0RNPVzwnlTJeiu
 JGUb2TNIwZYuH4V6IakxaDddZ+YjUCMuVrxLlURLeE9opcRqUx5Pe/h4YBnVJrGvWJmKR9PHTzd
 JS4dZZRMuM30fsoZY7A==
X-Proofpoint-GUID: A7bfoVNQJqHsFhAB2eNoPHlk2a3yamC9
X-Authority-Analysis: v=2.4 cv=RbSdyltv c=1 sm=1 tr=0 ts=694b3bdf cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=cAKecciHRQCNmb6kppMA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_170328_933196_E7B0CB88 
X-CRM114-Status: GOOD (  15.69  )
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

It's not uncommon for the particular device to support only a subset of
HDMI InfoFrames. Currently it's mostly ignored by the framework: it
calls write_infoframe() / clear_infoframe() callbacks for all frames and
expects them to return success even if the InfoFrame is not supported.

Sort that out, making sure that all interfaces are consistent:
- split function interfaces, having a pair of callbacks per each
  InfoFrame type.
- write_infoframe() / clear_infoframe() functions return -EOPNOTSUPP
  for unsupported InfoFrames.
- don't create and enable unsupported InfoFrames.
- limit debugfs to provide supported InfoFrames only.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v3:
- Added DRM KUnit tests verifying InfoFrames behaviour (Maxime)
- Reworked the patchset, having per-infoframe callbacks rather than
  extra flags (Maxime)
- Link to v2: https://lore.kernel.org/r/20250928-limit-infoframes-2-v2-0-6f8f5fd04214@oss.qualcomm.com

Changes in v2:
- Fixed build issue in common code
- Fixed comments regarding HDR / audio frames (Diedrik)
- In adv7511 actually check for the HDR frame (the comment was correct)
  rather than the audio infoframe (c&p error).
- Link to v1: https://lore.kernel.org/r/20250927-limit-infoframes-2-v1-0-697511bd050b@oss.qualcomm.com

---
Dmitry Baryshkov (10):
      drm/tests: hdmi: check the infoframes behaviour
      drm/vc4: hdmi: implement clear_infoframe
      drm/sun4i: hdmi_enc: implement clear_infoframe stub
      drm/connector: make clear_infoframe callback mandatory for HDMI connectors
      drm/bridge: refactor HDMI InfoFrame callbacks
      drm/display: hdmi_state_helper: split InfoFrame functions per type
      drm/display: hdmi_state_helper: reject Audio IF updates if it's not supported
      drm/display: hdmi_state_helper: don't generate unsupported InfoFrames
      drm/display: bridge_connector: dynamically generate HDMI callbacks
      drm/debug: don't register files for unsupported HDMI InfoFrames

 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c       | 180 ++++---
 drivers/gpu/drm/bridge/ite-it6263.c                |  95 ++--
 drivers/gpu/drm/bridge/lontium-lt9611.c            | 143 +++---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       | 110 +++--
 drivers/gpu/drm/display/drm_bridge_connector.c     | 190 +++++++-
 drivers/gpu/drm/display/drm_hdmi_state_helper.c    |  94 ++--
 drivers/gpu/drm/drm_connector.c                    |   6 +
 drivers/gpu/drm/drm_debugfs.c                      |   7 +
 drivers/gpu/drm/mediatek/mtk_hdmi_common.c         |   8 +-
 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c             | 110 +++--
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c             | 195 ++++----
 drivers/gpu/drm/rockchip/inno_hdmi.c               |  47 +-
 drivers/gpu/drm/rockchip/rk3066_hdmi.c             |  47 +-
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |  42 +-
 drivers/gpu/drm/tests/drm_client_modeset_test.c    |   3 +
 drivers/gpu/drm/tests/drm_connector_test.c         |  19 +
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 525 +++++++++++++++++++++
 drivers/gpu/drm/tests/drm_kunit_edid.h             | 119 +++++
 drivers/gpu/drm/vc4/vc4_hdmi.c                     | 105 ++++-
 include/drm/drm_bridge.h                           | 127 ++++-
 include/drm/drm_connector.h                        | 105 +++--
 21 files changed, 1762 insertions(+), 515 deletions(-)
---
base-commit: e05b08d7d0162cf77fff119367fb1a2d5ab3e669
change-id: 20250927-limit-infoframes-2-6b93e599e79a

Best regards,
-- 
With best wishes
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
