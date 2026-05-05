Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74F47FF885A
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 00:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mX+/9GNBXN8RXMYbiM8OtTQ6Z4dLcZ9usheMwMSkd3I=; b=VlxV2pq1OM1Vya
	tuc0AF4V/c4LlyCRphdbAGKw28x2Cr9h0i4w1h/UUc1J4A+Fs99HOJ1FbpLepsWWlVevmq6TtwPA+
	e7Z/LYyMNJqJ3AiQMYtIQ1P+USIjfORWrrx6/6eXTQ3pCXPW2x9k4v8if9mbV8Z/3/fJH6rILlFP4
	bAU+A72QTnLZ/txc5xKHBKDwa9VRdxGtwR9WtwANliMWt1aS9S/g5w29W6hdAo8rJRswjKoxPWOqR
	zEmZPtKzwLaDZj/Wj1C2LxrJy1Y7EcOmRRpsmXcFe3+tLscY8ydWepz7g8ouNL5XFukgOIfD0/4gj
	CiSbNSMyWwfIkCltvPqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wK3uS-0000000EkJh-0cRV;
	Tue, 05 May 2026 00:45:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wK3uQ-0000000EkIt-1wku
	for linux-rockchip@lists.infradead.org;
	Tue, 05 May 2026 00:45:11 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 644NULiw1346173
	for <linux-rockchip@lists.infradead.org>; Tue, 5 May 2026 00:45:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eignGx7fjusmcXSJihfEr7oP
	7drwG9sN6dcSfX4AaRM=; b=oxhvehG6tytp3ZNyHh/gRhnPbZw+SQZnQLCMlx/K
	oCNkZ1kd5jHpoqEi2sYGsZBovFKweRs6TabXCamJ3SvMzj+SOI0TrxeYtH+ITokf
	AI3qOhOi2z6kbsg0R+Lj40uIzjCLhVPUKh39UjdAqcId6rRWgotq381p0YiTdlWa
	aYfgABgUxNQM+R3LXCFSXmAiM57LF/iFurQ2ruCW0K+mU9HLjwNPGku2Qij5NELs
	/pPCzz8RKiQ7a1EtB4UWeyVAt50IdY8k5HxaV5uZzPFQ5IpbOkPdYayqoJP3Q11T
	a8X1tlyVnbY8RJJkLKPH47UGlHwObP5wGIuPEPf4VRBT2g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxx2x9sfp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2026 00:45:08 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51306c1076dso10104391cf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 04 May 2026 17:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777941908; x=1778546708; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eignGx7fjusmcXSJihfEr7oP7drwG9sN6dcSfX4AaRM=;
        b=gkV+7s/zQ1wCByBLfkuoryoLS0h9fEHhgrppkucncgr1z48MO/R/RN70K2NtMc8fNm
         5U20HSm83q9nBjJCUQuQGflotcsZiNd2AUIhziYvF95F70dmxUJpVxh3rq1Y5tbW60EZ
         E1WqlvN9evHaAPXoQyngLfdyk8A/Lu/XJZx3G6HC2QvoOSJ9NasATbX4BdydAe7euj3A
         ziDAvHlynI6GY6cYajMEbMCt7vcb9pAbYkdRDo/0fbEzFDpNgm29NIX62N1pNvHiCQ8g
         XDcPm31YBijJ9RJnwhM/2cOWT7Ziy1yh538Ne9dGlfScTnwNsNNgoMVOZZMtP+IwkD86
         Garg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777941908; x=1778546708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eignGx7fjusmcXSJihfEr7oP7drwG9sN6dcSfX4AaRM=;
        b=CCJEB1BZ5FW3PT7TSUZ9/CfCMtI3dRgnmUBDhro+sR89c1dfzTf5e1J/hSSXIfGpAA
         Lu2d7arh80rkpGRBPRZN5yDobF/R+ejb9wNjAAo1IBd40vNvzFif8JSpjr1/c1muGHkj
         V0NzFApHLOyF6Mk3wkyQQ5PkDCY8EDeiCiCJJWE/iFEEnbiWXyohCYOrmRXczyFDEhB6
         sN05yzpYaxhbKXP8ZZPEOKHANr71+5+4zJBwdPOfKDAsLRjFQsvEUwZTAK3wDrJWSSQj
         8xLy8L3kqhUeRYGndVGFZMEhoRrDQczwiGa3Lv1o6ogHfBk+OWqC2PQcZ5qb8hN6sMAv
         N/+w==
X-Forwarded-Encrypted: i=1; AFNElJ8DeaUMjMWoA7FL7RbfO3EXZNc15ra7CXF5UaoJg5kUqn2/2qv7qA4Lhrpx68tn1MhjRghWLS1K1qmvk+6Sjg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+1oHs3N6TgL/48wz7ucePllWEs9pL2EOIOTzawjUCZqQYpOSc
	qnEGzBstkP8YoKEeOQCP/kbwVwqfHfJ+3mqGz7DhGMCkwfAeoO3x2agtDypCFx9xcvvpss4UzLC
	Uz0i7zXTZF/9lMTDdJ8T/P3WelSL+iS8sgQX0fA8wNsr2l6srnh4DipihZAPYIi52tVxYq8Tn2u
	8=
X-Gm-Gg: AeBDieuQYzt/Vu24ludBxPKXiTXMl8Mo+ItSvDoDNQVlcFLMzWiZweMaioN4VRkHkMj
	IfWNheQfWjwES4gmRjQNY/yqPSeNVQdgqtDj14oaQbftfWo+PQM6hnVWFWSH3TQWFQu3FgTYEB9
	HF58f67yCD7o2AkPXDhg/vUp9/KH0zuYQ+LZmcMJ7HcuBa7wOOMg7tfdbCZvP4b/dX4cTeY5U5p
	Hy6NZwmxxvtn4Zka+CsAuxr4Xy/8UbCvRz2aSyR5g2aBKBlDUcxxyof4IRKSaD93+vP2ix4+u3K
	x9bFMUf93Hb6D4ULk12PqYzBSIdpBDtiCg3iMsgcQsJQsdF0BE+UL76RdnTxbLyuuUDy96KT3OY
	oMY+i2fPJl36lB3QSIvYXVyjLbrQ+MVKbIqDG3+CLHl/xB6fSl9T8DgP12aqYB+4z7uEB2n9agU
	nPIBaZ0g2+MyIKuSig0+dKXVd7k/qB93KsnbwCkRO7dGAObA==
X-Received: by 2002:a05:622a:244e:b0:50d:6baa:9e8c with SMTP id d75a77b69052e-5130695b1cemr15250011cf.12.1777941907643;
        Mon, 04 May 2026 17:45:07 -0700 (PDT)
X-Received: by 2002:a05:622a:244e:b0:50d:6baa:9e8c with SMTP id d75a77b69052e-5130695b1cemr15249611cf.12.1777941907177;
        Mon, 04 May 2026 17:45:07 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a85c230e16sm3444610e87.30.2026.05.04.17.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2026 17:45:04 -0700 (PDT)
Date: Tue, 5 May 2026 03:45:01 +0300
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
Subject: Re: [PATCH v5 05/10] drm/bridge: dw-hdmi-qp: Add HDMI 2.0 SCDC
 scrambling and high TMDS clock ratio support
Message-ID: <b25unnbxzzpmi3sr4dwpmq2tofriczjshmq2o67xwqsfuh3elr@gdtornkrplol>
References: <20260426-dw-hdmi-qp-scramb-v5-0-d778e70c317b@collabora.com>
 <20260426-dw-hdmi-qp-scramb-v5-5-d778e70c317b@collabora.com>
 <m5fxlfktxtvki5yaxhkx4h3hsjj5266stwvfdykhqkgcjbz5bk@s5gggcd45abm>
 <539f1bb9-6509-40c7-8692-bb3cdee33f91@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <539f1bb9-6509-40c7-8692-bb3cdee33f91@collabora.com>
X-Authority-Analysis: v=2.4 cv=U9eiy+ru c=1 sm=1 tr=0 ts=69f93d94 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=MTERcTr8AAAA:8
 a=69EAbJreAAAA:8 a=QX4gbG5DAAAA:8 a=v_zPfFD72SJ5nyloC-oA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=1w2Y23rLpnaGpkO2nlKf:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: 0bmc_--NIW82w4yeE5iA39mU9Mv_sfiw
X-Proofpoint-GUID: 0bmc_--NIW82w4yeE5iA39mU9Mv_sfiw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDAwNCBTYWx0ZWRfX5Jv3uwbz0mD4
 WKo2921AfpXsFXY/+4f90M3ErxBhcvg97F9jHNeRN6SwlFjcVTg63CjEyALgqGz1Q0esl4eva8s
 a/PUPL6ufjiooibndDj9BW/325psYkB3AW9usS9OH/PjhCWffUF1As3Oxe3I1rTD/yDUVL8FdJ4
 NCja1FPLtBDPAWPSKtimsQBfqZ0PQySZ666y0a9gRZFF9j491OSWc2Tfx88L4wCs+762higHRHE
 zerQEPCQkXbzbNVGjnIEgik2WvSHM/ca3l8C8gC2wrodWDAfyZzQkiHKv7oYvX//IISLxQLqnuW
 06F7kuprA2pbXW6ns/ZuKZcZkOo0d2dU6zSns0naO0vlz+DpM3nFXVP9J+wHB+dr0+/bAc+6qk3
 AJLXwMgi8J7NNGDD5d5/rfGHughlw4llssoM4bIFN+v28D9gep8T+MvUZk0slq3OAcBWIzFIFyH
 9bTn+oo61YpBSQPzN6A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_06,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 phishscore=0 spamscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605050004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_174510_512271_6C6DBE37 
X-CRM114-Status: GOOD (  28.12  )
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

On Tue, Apr 28, 2026 at 04:51:46PM +0300, Cristian Ciocaltea wrote:
> Hi Dmitry,
> 
> Thanks for taking the time to review the series!
> 
> On 4/28/26 4:38 AM, Dmitry Baryshkov wrote:
> > On Sun, Apr 26, 2026 at 03:20:17AM +0300, Cristian Ciocaltea wrote:
> >> Enable HDMI 2.0 display modes (e.g. 4K@60Hz) by adding SCDC management
> >> for the high TMDS clock ratio and scrambling, required when the TMDS
> >> character rate exceeds the 340 MHz HDMI 1.4b limit.
> >>
> >> A periodic work item monitors the sink's scrambling status to recover
> >> from sink-side resets.  On hotplug detect, if SCDC scrambling state is
> >> out of sync with the driver, trigger a CRTC reset to re-establish the
> >> link.
> >>
> >> Reject modes requiring TMDS rates above 600 MHz, as those fall in the
> >> HDMI 2.1 FRL domain which is not supported. In no_hpd configurations,
> >> further restrict to 340 MHz since SCDC requires a connected sink.
> >>
> >> Tested-by: Diederik de Haas <diederik@cknow-tech.com>
> >> Tested-by: Maud Spierings <maud_spierings@hotmail.com>
> >> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >> ---
> >>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 188 ++++++++++++++++++++++++---
> >>  1 file changed, 172 insertions(+), 16 deletions(-)
> > 
> > My main issue with this patch (sorry) is that this adds yet another copy
> > of SCDC-related helpers into the driver which already OP_HDMI and other
> > helpers.
> > 

> 
> >> +
> >> +	drm_atomic_helper_connector_hdmi_hotplug(connector,
> >> +						 connector_status_connected);
> > 
> > I don't see a forced hotplug event in the existing drivers. Why is it
> > necessary? This function is being called from the detect() path.
> 
> For some reason, without it, the connector seems to lose its state after reset:
> 
> [ 2142.982967] dwhdmiqp-rockchip fde80000.hdmi: resetting crtc
> [ 2142.994132] rockchip-drm display-subsystem: [drm] HDMI Sink doesn't support RGB, something's wrong.
> [ 2143.140827] dwhdmiqp-rockchip fde80000.hdmi: dw_hdmi_qp_bridge_atomic_enable mode=DVI
> 
> Will recheck if that's still the case after the HPD handling rework.

I think so. If it doesn't help, please check that
drm_bridge_connector_detect() is called for each hotplug event from the
hardware. It should take care of parsing EDID (and thus updating HDMI
Sink properties).

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
