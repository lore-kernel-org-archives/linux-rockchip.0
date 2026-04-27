Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD37DFF8867
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 21:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xBVR0BFbiX/LDAkOaZJzjobGIaecnY7odFwJgzLkM0A=; b=ZSWupPdbk0twgL
	96nzKJmKzqZ1ipkvsY1N3RJ1hFohDvYRPIx5Q6/4NOg5cmrSEsl6+YVzBf93M8jjZ74ax4B+JZ+vJ
	FXAEgcEPZ2Y5RhbPVqyJXBr0KZzDsf1FOn7MzgCALnDfk2VR17uyPVizrTbK3/khYbkYEPoRKmvNn
	Svc+N+JKT3ssbtYFLSWSW93QEP7mhsjU5Zk+882Em1R3GBbnNvFVKmzAoAPeZg9xNlAKAALMYhHsk
	W6+ukcW9a7709mvJ9fVfFudI3DaT/Eb6IrQsGuRScazkLWLkTmppnLgJvVK0OzzsT38rZT06owsgP
	pfjbzsDME34j+DhHN0CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTuG-00000000D2u-1N8E;
	Mon, 27 Apr 2026 21:54:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTuE-00000000D2D-0rU0
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Apr 2026 21:54:19 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63RJ3ik12006219
	for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 21:54:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SX13csyuB/QEm6z97KDEVCbw
	9bOnr8oHQXxFaeduZ78=; b=H+CIdJUBMILCMgyJ144jJwXAlvJV5yyaVBS5bJjy
	GLd96Tpw25a1OY3u/a9vsnIY4fbi8YxinUX3lFNLIIW4R78bA4hrgGi/5Q23OwKq
	Ti8TKZOnc30BwNixB5AYfNJJQHGCgddB9MNAExtOqk3276v5ESpiJ4LVz4ZRWaqj
	CGJoAU5S785kRqJXd3qu8RFpADqji41R4+pkQz1hhrY4hBXbX2jX8LyzTV8jXa6u
	61HItosx+npqHvAyu4KogzTV5dkH8TikuDmNE8869YT+95phmdzB1K3cVdVJ6uas
	82+9QSqxHtzNjsUH9jKxdnMzv0iCG660R6DR237VFdVKUg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dt7gkj4gd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 21:54:17 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50e5a336b44so141381111cf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 14:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777326856; x=1777931656; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SX13csyuB/QEm6z97KDEVCbw9bOnr8oHQXxFaeduZ78=;
        b=iwUgQ7NutiBQmaBaHyiiyL4q8/yJKNQ62JpVhsUjIDhQ/sPAF2WVYLIuulq/vZ9Vfj
         GwonLK8VzwihxvhkMtb+hu+XVR5TNvAk6cZ+iFJ6jUf2PqbqXZQsdW2OKrlg/iD/R381
         Mh/PlNqEx2aI1SQyKH90wZG61mODEl9EyjQankM1aLmdhnEEktb8utxlUYgWt9kUdL2c
         x2gpZq04Ajgdi7zuWty/s3sly5+WF4V1NXGwCbdcn04CCBmSaHG6dV/xsubo7nFywXxn
         DULhk1e83ClzZnuNe7HO1PU1zDXCg1Eo9Y1paTa05B0+43U7P5qxGKaoT0HI4tme4h+F
         4YSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777326856; x=1777931656;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SX13csyuB/QEm6z97KDEVCbw9bOnr8oHQXxFaeduZ78=;
        b=VFmifiYdUENWC7IFnjBFU8hA/vkVkTIZUT85eoNyTTM9//q8L42JuDE30FcJQv2x4D
         sIqsR+/NCtqwLyxIDaM4+St207mGYqA8zvdod+OOEYi3kbApV/a0KGqPq5oNYMoICHsF
         qNNXoS+97A0dosX+s2AhN4wPbSpkoUy9WqFQHcG3roWXIspqqXxA3z2Erpqcv42dmxLv
         W9gV2b154hFldb+m7f3f1UIOiK/Zi7qmecsuTsei8VJDn2wIVsK5MSHzAfcSy0ye/qYd
         w9+9eLZCLXOaY9qhPfQODyzSFuAK+OsArqL5vG/iR7Mh1qD7V2lAe2hH7Dcw14Wqrbz7
         z74g==
X-Forwarded-Encrypted: i=1; AFNElJ9IkC0Un1iPjYueyF3r6CH39RrzvPqCkKAga6pLRPd752F6SJAo7Jhv4uliaIrmKUCuFwCkRwscl4wbvvXCmw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwMKE+iISo6AMZ7TlUZLkDW+6hFwpNihR4h118Xh2ykuDV5tlyQ
	heEYgFSlifTh6xEaO0IWb9l/ySkABU7BxnLhzqAE+m1rQNTATE4fGid50zWQUdbqrxcUCa7wiIa
	9v3jthPQf5ZY8eB5AGWm08X3wWd0H3HJCy/mXj+Z4APbcg3vIA1XyuKWwWYeDcDPaG47s2tBEbv
	0=
X-Gm-Gg: AeBDietm/XjH0SVaT9UAjTEbr9BzYGIzraeYR6fIsDwDHpPx7RuqrMZiQOYKRYstjxe
	e7ocHsDbu/CAQ/jtjxv10iZQmm07ADDViczNjCSgUgIeYj0HyDW1iTllZMn89EUL7jptLciI8lX
	eX12akl7vQPsQEQ9GpV+VW16pnykFeuRqaw/TBDYzgpGDLwjJnpMxWkVFw9IdlQN/1T/Y0TSq2a
	lhOwGVCpx/LNFSf8WdaiwQgGwr+GSkRKtFlH/ihFStQmEIdkjOQgNkczETnDSNphQ2RXjx+CU20
	g9sGlV+Rzy/Wd0SE81nG+D0JYaXfBjecTFCNX1NTm14ZMe60zcMUoi5PJ0+zsPq7lj6IrKK67Zc
	4/xIvc6Q5ZBe+Rc47v90n3+dZidK9IrEsmt8sLkTk/rG70IgqN89Reon1UP5QS440RCDO8Sv2Tb
	LBtyTlhw9kzNEFPFANrnGoiDBp5rlxhPtdrl1kjrChphXF9A==
X-Received: by 2002:ac8:5f12:0:b0:50f:b427:7525 with SMTP id d75a77b69052e-5100da98d86mr8185881cf.42.1777326856491;
        Mon, 27 Apr 2026 14:54:16 -0700 (PDT)
X-Received: by 2002:ac8:5f12:0:b0:50f:b427:7525 with SMTP id d75a77b69052e-5100da98d86mr8185521cf.42.1777326856041;
        Mon, 27 Apr 2026 14:54:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a7462d588asm105499e87.34.2026.04.27.14.54.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 14:54:14 -0700 (PDT)
Date: Tue, 28 Apr 2026 00:54:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
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
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, kernel@collabora.com,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Diederik de Haas <diederik@cknow-tech.com>,
        Maud Spierings <maud_spierings@hotmail.com>
Subject: Re: [PATCH v5 04/10] drm/bridge-connector: Switch to .detect_ctx()
 for connector detection
Message-ID: <znjgxzoyavxctvmec4j376a5cjg4s2oqhn3s3ubkbkuiluguao@pve7siqulhxp>
References: <20260426-dw-hdmi-qp-scramb-v5-0-d778e70c317b@collabora.com>
 <20260426-dw-hdmi-qp-scramb-v5-4-d778e70c317b@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260426-dw-hdmi-qp-scramb-v5-4-d778e70c317b@collabora.com>
X-Proofpoint-GUID: dR52Z3RjUNpCiO0-uTdmiSqVfUE6CNnC
X-Proofpoint-ORIG-GUID: dR52Z3RjUNpCiO0-uTdmiSqVfUE6CNnC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDIzMSBTYWx0ZWRfX4Hl9FOHz2xNY
 VTn62eFcBeddLvYFzEGfXIZ0TwF4Fo+cY3WVrFS820tWdS7fk9/23BWdMIE1hGlCVJjpl2/MI5Z
 S9evL56dDvN90H1pKWc7IF8T4ITjTQLK58eyVqYjsdISekRUztYi5tjGEXHTRSOVQIUGOrSqmsJ
 Eiikv2Roca880HNuptty14Eevjf9d6gDy/Qs75aTFfaWDz5SlXqhtx+LrL/M07Au9rinnnbWxQQ
 oWFMGZYw0AvnPlRXsiu8625jB5WCU8Lt/+cAYx/RapFg/OnNDHIfZhCd7QM4da689Q79yjQJ0ZM
 Z9GJZx2HyytxDjsqElWIl5fkwuYpQsMlW7YtGKU1b2SXoXWHcMYu6btWh4fZnheWK2cIxoXJHKf
 Cr8bAWD45mzeGjrN3NBfiZtQVg7xO8R3JL1aj+MPuDjfJxpScYjXMDOmyWBRlfo3qEKpU7AadRh
 8gYU2BTytc8oxjcjSXw==
X-Authority-Analysis: v=2.4 cv=bJsm5v+Z c=1 sm=1 tr=0 ts=69efdb09 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=MTERcTr8AAAA:8
 a=69EAbJreAAAA:8 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=5Ozh1E2pZYoiRNblH9EA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=1w2Y23rLpnaGpkO2nlKf:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 suspectscore=0 malwarescore=0
 spamscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604270231
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_145418_383207_2B5AB1BF 
X-CRM114-Status: GOOD (  14.25  )
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

On Sun, Apr 26, 2026 at 03:20:16AM +0300, Cristian Ciocaltea wrote:
> Use the atomic .detect_ctx() connector helper hook and invoke
> drm_bridge_detect_ctx() to propagate the modeset acquire context to
> bridge drivers.
> 
> This enables bridge drivers to perform modeset operations during
> detection, which is needed for managing SCDC state lost on sink
> disconnects in HDMI 2.0 scenarios.
> 
> Tested-by: Diederik de Haas <diederik@cknow-tech.com>
> Tested-by: Maud Spierings <maud_spierings@hotmail.com>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/display/drm_bridge_connector.c | 71 ++++++++++++++------------
>  1 file changed, 37 insertions(+), 34 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
