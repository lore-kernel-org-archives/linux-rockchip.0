Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD3FDFF8864
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 21:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGbuuOAjfM+eQcCJntTQetBQxhd9CChc7Ret63XM9Zo=; b=dCjceUWXrlPqqx
	1gvVGw8bisPUejKufRBOQgLx/l519tcwomEoNvMX0g9b0SWW558tyTcs1OkmiqlLi7CLqNVC8Cd+m
	tkISjOTCVX72I2VMuelmyXLZ5LIjYeSk3FjKAYh77oTSZvbdIgrZ1loBdmOEP6F0gDBO2d48LA94L
	YsKP9Z1Isy9K6urgPDH3ghkA/w6BRusRgcIgOvKeHQ3JqZBVO/pL3eMumbm5+KODwkApbo6la8AmK
	R9KeCbp0ciL5H3P3GqtWmyUYYy+9EpwS1KKFLvMVzmmJHI4GgZ2FGMCljcL0SnjrzmMoNOGwElfV5
	32fY5TlfRjVEb0rL0g6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTmo-00000000CCM-0xl8;
	Mon, 27 Apr 2026 21:46:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTmm-00000000CBe-12XU
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Apr 2026 21:46:37 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63RGbkxk3123625
	for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 21:46:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Qy9dkggDlG/oyWyAEZqLIpFq
	SrbxrGP9rj3trvdXwlE=; b=XuSY9Nfdj0TTkjZbxEx8vqiWo5cvm6+o9hv/2tXa
	tyBuHcn/g3m3I96iuXILrhhTHT0I+DHin6OIlEt2l1SU8Bk1WDWclSqLFrwimA3Q
	GBEYbGWrJ+xCGZ/p5lXAAQcCloVpbDay13+HIHV4tgk/qj2QiwGcyeCwOu1AOnYe
	TI9ol1ETGWYB8gotbUoCGrhpFx8EWunoUkOlUvgyAOigocMYrXp8rqDfbd+kdLh0
	CUwr+3eVXqieZIH7Unworskb4qnaEjcuCy5p9OWG8jIv9fzKabzDgipDeFzdtEkG
	lwCNyHSDwiMZtpYpJOaqeWj3PPt+s1Zrl8qRhIcnPq8KmQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dt5qgjgxs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 21:46:34 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50f13da9684so104026741cf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 14:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777326394; x=1777931194; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Qy9dkggDlG/oyWyAEZqLIpFqSrbxrGP9rj3trvdXwlE=;
        b=JedIBxUI47JMGxnqtPB3+XkLeNvoHm1wVTvEVof2SphsrZBKwAITd8FZNmU0x04YsX
         Xg/8VTyTmMaaeBqUhVFGM41lFF5QWRgO+A8IxVJoHiPLm0GVP/KypNBGYZgxTOcpkyaI
         Aq8YfGEJIghJrO7zqLgei7B2pHJteWQUMwKDSTiIOVTkDLUwXJqDFF/6RWdynfm6sFbq
         6sJ1Ct3YdJRdOPlNy11JR80ZV1bvham/RFdjq5rYC4fIiTe34jDYrJKe3U2nG7zlNdwd
         WHq5rgtemtfiPfjyecWaQ5JRZNwovgpU0OspQ281Y0C+MS/FIuS3Nym2VxTYmc7t+lmX
         isIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777326394; x=1777931194;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qy9dkggDlG/oyWyAEZqLIpFqSrbxrGP9rj3trvdXwlE=;
        b=KcqX8tJoAoLrTcaDawYftsrx6ZkPiRPYbywgXf2KL988ZMHypF1e5VY0chyeJN1Rk1
         EnFfEscbykDPxZw0VZjWWgMvsXlbipAab8FPKSrfilHl29ZQ1V7AjOwqPICdYu7R9m7Q
         mAWGSt1lQMx/cgQZ00bSw6EnT+vRIb3syY+tNRArMTgAaYCbA2tOssPT0HlkI0lhbKa2
         hBXynNng92FUO0GeuPqvxtcPsNXG0Q20Ngp18zO3OO/pv0DvMW1P843fvy9WN8f8O3g8
         Q2QRsFEiPhCdnIAFx6uUlWyDoBruOM/PyvGLsBATAZQeOrit8sw/XZLg6NKz461BBP2h
         WfZA==
X-Forwarded-Encrypted: i=1; AFNElJ/TxWHw8piFxnAtTJ8XJB4I4IFubBZCL2/S9zw8XFV2W4Rfhm3YlTR2k6o6f89d0Tgmv9Zzw3zwrSvl0/wDnQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9loIBZq+oEhk9905sQl9g6MG5RCvszhkrtbi/seGOzy78AF9s
	2Jwmm5lqNEuASfRkQGu4aQc0BYeL7Zf0MdA7GAs1+kgxYOK9hcx3EM00ViEV0eN3XM1SeCrPWD2
	l0ENe+K3ECIO5bF9GULwIKJCnWKV6a46nMLFDWn99+/Lf9EpeQLserCOAvTA8vb9Ztj1MqkeUUL
	4=
X-Gm-Gg: AeBDiesNak1NR+9nr1wRUeLkULU5cUykKpry3iJBAo5jqR/U7uY/lUOmG8nYiCUFvDt
	tZZ75mrE00dNgx/tcrExjBN6ZUvh+dousLZfj+cizMNWqMmy5XzjK97k5Eg/DxPk9AmhbU7L/3o
	xbInX0qaM2OL9XMAZ6vvP6ZNyBdB8Xye1yDg906fNOBTzJqcWj4W24CgpNCnDc6Efuaf8H0Ntb5
	k8OPJtgIc6g+AVD/laflN/4h2dYlX+IgJl1Cpw3mEqGuzLzOgrGF67uf4SDx/4ELDBsRD172r95
	gzEj4U0gyYyY/TTlt2rRaBfjK22egGpSHcbBigqjtetINH0nvlgFwE4JQoQdNI4Mq1ysaaZ4yxc
	NzPNWRz3ziEPbvsb//OF8UjYWliyvR/VE4lzNzOCUGDK81QylTyVKMpzVv4cXW8FZHNhD/UOMCC
	wENl5U+Xk3uguF71JTflYII51knhW5bj30HK0jqUZd17uFaQ==
X-Received: by 2002:a05:622a:1c0a:b0:50d:9931:7054 with SMTP id d75a77b69052e-5100e121b23mr4483451cf.15.1777326393801;
        Mon, 27 Apr 2026 14:46:33 -0700 (PDT)
X-Received: by 2002:a05:622a:1c0a:b0:50d:9931:7054 with SMTP id d75a77b69052e-5100e121b23mr4482921cf.15.1777326393213;
        Mon, 27 Apr 2026 14:46:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a7463fcf6asm96326e87.61.2026.04.27.14.46.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 14:46:32 -0700 (PDT)
Date: Tue, 28 Apr 2026 00:46:30 +0300
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
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 01/10] drm/bridge: Remove redundant error check in
 drm_bridge_helper_reset_crtc()
Message-ID: <bovprpd2qb65rggguc3etwxbhzfve2krvmrg2gkfmt7rohvk4t@a2olw6ph4bzs>
References: <20260426-dw-hdmi-qp-scramb-v5-0-d778e70c317b@collabora.com>
 <20260426-dw-hdmi-qp-scramb-v5-1-d778e70c317b@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260426-dw-hdmi-qp-scramb-v5-1-d778e70c317b@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDIzMSBTYWx0ZWRfX0vt+r/rb6mgd
 5218mpNUC8t+SLODGKiVgPCCAHPmT5Svby3PV0kwWV74+hdpcgqrOXeDsBWB64ErDFue7bwMsuA
 RNQbE2dgTQdqPri4qWRj3IT4ASlDxmvX/pwu1BmmoONOHgBfE1AgzBL+UHmU8XDVGylswvqsKkJ
 0PVkNvwrGCNUbscbhlJnumidN06wr5ueMrX7U3nQUsKwFTDslpL9l230UV+aEaOJ1W30oz+OF2o
 2f/u4bFAeJgTMgN5e/Imf6zozAmK2l9XYMknX/ueGGAacsYtvBxt4MHJEhMcmfGpIHBHrzg7PDG
 QaZ69NJ+V2pjqYLyFz6FYUSs29hDpOkwipcLotc4qyzTsz+nKDxOTSdlbEytmw4kOxwDK3tal1v
 xnyRAQ/MEdyV+ZTwJ785nOSi1fZzZJ+JYvK9eGh5DsLMtL5Z2OPME8kbrjUsOFSrKi8tC3hMz29
 tf/s/K+HIgUIomcsl3w==
X-Authority-Analysis: v=2.4 cv=V69NF+ni c=1 sm=1 tr=0 ts=69efd93a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=-_LoNN0qLOdyQgNrNWwA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: ya_Jjdx1COdlPnXeYZDPXJPMOgyfBYVp
X-Proofpoint-ORIG-GUID: ya_Jjdx1COdlPnXeYZDPXJPMOgyfBYVp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604270231
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_144636_292015_3E2A6C49 
X-CRM114-Status: GOOD (  15.23  )
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

On Sun, Apr 26, 2026 at 03:20:13AM +0300, Cristian Ciocaltea wrote:
> Remove the no-op error check after drm_atomic_helper_reset_crtc() since
> the goto target is the immediately following label and the return value
> is already propagated correctly without it.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/drm_bridge_helper.c | 2 --
>  1 file changed, 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
