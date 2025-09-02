Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77BFECA100B
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Sep 2025 03:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3+K0K3KkLecBdfy9J+M8c3UBSSvS7Iu5o5LxCzqsDM=; b=ws8hX/qlGcn4qb
	9FpNtKdDXrtn1QkPGZYqBqmdID0MwfHMzeWnEGsHFwz3yTR7ZID8w4jE+4x5Q2GpulCIJS++34y9n
	D+/EF7DV+DAhAl9MyTwpbVef7lA09ItY79CcYkdcAN3gtXST3WGygoHB8hBQt4uih6HpJuRe5Unmy
	vSXgzlqPlCv2WtmiyYPTOObfC0qfgcy6rRNH+YbaBl6iiyc3WFZIxI559YQNX79oX8l4gGbpjOAhA
	132Pwwwm2JO6kAV2FSPbCoBWo+otn85nl51NCUQJXCrOzJ/pV4VSh0xkrZKrd1vNTCsw4DQMk/gFY
	vnK/LX7nkeB1pGEDOyBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utHXM-0000000F0NH-3Kho;
	Tue, 02 Sep 2025 03:18:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utHSb-0000000EzWf-1LcO
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Sep 2025 03:13:30 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822Rnso029949
	for <linux-rockchip@lists.infradead.org>; Tue, 2 Sep 2025 03:13:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mFT7TaYN9yFmUBnkUS/DV54B
	AuRMajtXQdEYrtXcv6Q=; b=JWMSW4mD3PTluOAloZo2v2G5SpKLxOuXPtreb91I
	HO2B7mjqxjJB6HZTSE/JG8bM86XKEfm1+HRcRAGizJR1zv+x7kKsmGSkJCgDWBQQ
	hZuZfoYQgstxYme1EFXQuvAlb6T5459ib/NfGUUB/xYAxoO2tNqCndbAgmPKxE3d
	1oTL95XM0ElVnBpABJAOBFwYgig4M1fYxaSZKiEpR+lBWRrl8wbh9obSoNA22z1x
	XMM61AB5Lb+y2lYPLcYLOmBHqTufDM659xl+4Le2NcwcroQNpuDsU1XN0SCBNq6n
	l6IauTpkF2si4mrFHIiiGj1Vyh2HUa5m8BQ41a4jq74tZw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush2x8cp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 02 Sep 2025 03:13:28 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70dd6d255c4so124366896d6.0
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Sep 2025 20:13:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756782807; x=1757387607;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mFT7TaYN9yFmUBnkUS/DV54BAuRMajtXQdEYrtXcv6Q=;
        b=YOT/lNk7I5gxkTSLUnLpNYODs4ETfw5Kj3YTyt9dnnjBGkXR5BUUZtcOpPlboaGYEo
         eQl/jkJX5WO9iIOjmRh9H6kTG2cTM08Zr2kGb+3SNn9GqTJTwk8MqFZyH6/po5ZKjDYL
         zGiaj+OBm4Npc3rFNq/Dwk815CZZNjz67sgGZiR7f1UADNJ8obQUwdpFSQqcNUFECAIH
         T3P1cp3MaKHTD+bcdXcymw6TgcJg5wfbdZgVTgbSY4HVVZQBzg0TCh0B0U8X7ib3/F8C
         bet54J/Q5n468yiJubFBzrsjdxdzYPi9Oj2UJ/6zp67g90slza5OKctNz3W/t09e7c98
         47rA==
X-Forwarded-Encrypted: i=1; AJvYcCVPnxRe7DwxdrH5uDEBy1rVAJ1yA63Mp+rPMJOLf23kVQGcGCNtnFON/PPGd0toHYw7rqQmU2HYKe8f2M0u3g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5j5Tc3Bw5fSIqgvpMoksNOEYoZAgse1eO7IF1ZltSQbuIYv6w
	KqqDJdjEqPLyEDm3O390TS6qv7MmbTlRe8nm1m+AoGBMqrou2ejp29Dwew9v03BaTiCQrBxrH/W
	Fi55RI3bGzo8nIjWEHX2IY4xxMw3pRo85ueI72ZlfEF/AWoE2v2F/TthfKPgOqSn5IoMDR2OjDv
	o=
X-Gm-Gg: ASbGnctL4QmJZzkt5puQ9Z9lSKd2oaSqroaJUmLWeECspqm8OK7btc0kBe9IDo7Y1Ge
	vYKq9rKuEoRUlQoxmenYKWo88Qh5rJY8HmXWhdQt9YVjbbrOry1cGvLN9GVKSLWjrYdctkN9Bzc
	5OEElZnFZXHLlrjayeB81KnpZVncYcYGF4Tmm15rQ4j+uiU7ePre+gLcFDoXf6vljGvuOyQhSKk
	lFsfghlhLEA+dp1M18JucDutZS/S4qunZJ1+tjSP/4WEp31fRc+8UEdTDWkiA274nYV3wdb+qCd
	7bA277GqDKChHe1idjPdF7rBm98OODtUCKbZajwKLnngzQK54Bj3WIOyRoL78/b0KajV0D9vy1Q
	N0Mo59KPBfP+4CZMzyl3JeOctg6v+6xZ5DdqNKNHt4+nmX91s4+9J
X-Received: by 2002:a05:6214:2425:b0:70d:bee7:22a6 with SMTP id 6a1803df08f44-70fac90b081mr99124036d6.57.1756782807478;
        Mon, 01 Sep 2025 20:13:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGx3s/TeSWd/gD8+0Pzv1Eys9blTUBbEzGio/Yd+gCc0H1VU32BQyJUk3uEjCaZ6DP8MJyUzQ==
X-Received: by 2002:a05:6214:2425:b0:70d:bee7:22a6 with SMTP id 6a1803df08f44-70fac90b081mr99123866d6.57.1756782807080;
        Mon, 01 Sep 2025 20:13:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-560827a53bbsm309669e87.124.2025.09.01.20.13.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 20:13:26 -0700 (PDT)
Date: Tue, 2 Sep 2025 06:13:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Liu Ying <victor.liu@nxp.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH v3 02/11] drm/bridge: adv7511: declare supported
 infoframes
Message-ID: <4rzkxynpbe7j5uyfiqscjt6l2yr4teothqcga3js7fn6e4tap2@s6npztjtbjbq>
References: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com>
 <20250830-drm-limit-infoframes-v3-2-32fcbec4634e@oss.qualcomm.com>
 <20250901-tidy-auburn-tarsier-e7b1e7@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250901-tidy-auburn-tarsier-e7b1e7@houat>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX32LWXwrQ3ZlD
 81wxOX7cxMCRm7hoH/GFAKJ8dZkEAg/6BIJQToQmCPebkHdKN21h6igJE9ErWPz/jrijYM9oJsE
 WRwLyr7LnxR9re/bM480GcdnR7C6j7Pj02pXmvby0xzBTTMHh/hXRP827gxMAZLiR1gS/HORHAH
 fy0Ic5VsMZfy3IKdzN4HWKkJm1N/eeTImP4WpVSBf7Z0ZXuyiEL79eZwlsJB/PE/cxW173jaWjq
 WqSgggLSvX9USlZtRgPN0/LHkYkRO2U0KlgsgPL+DKH/oT1JgdRfeEKyLPFB4EC6vyGj6PdOqby
 iVMJ2wNnoZsjh11n1Cv00nPISV/fuwezJtUVdJP687KY0+cC1HL09KX7fvAQeBdJCJmiPXxzC7e
 el2eVYu+
X-Proofpoint-ORIG-GUID: cTuISi9YVZCPeg6HMCDOtad7Ebuo1Y4I
X-Proofpoint-GUID: cTuISi9YVZCPeg6HMCDOtad7Ebuo1Y4I
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b660d8 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8 a=u7Ex-Lb6nDjXBYZR8i8A:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_201329_372439_16BFADAE 
X-CRM114-Status: GOOD (  22.31  )
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

On Mon, Sep 01, 2025 at 09:12:45AM +0200, Maxime Ripard wrote:
> On Sat, Aug 30, 2025 at 03:22:58AM +0300, Dmitry Baryshkov wrote:
> > Declare which infoframes are supported via the .hdmi_write_infoframe()
> > interface. Audio infoframe is handled separately.
> > 
> > Reviewed-by: Liu Ying <victor.liu@nxp.com>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >  drivers/gpu/drm/bridge/adv7511/adv7511_drv.c | 10 ++++++++--
> >  1 file changed, 8 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c b/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
> > index 26f8ef4824235a9a85b57a9a3a816fe26a59e45c..fe30567b56b4f600683f0545ed270665e692b12c 100644
> > --- a/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
> > +++ b/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
> > @@ -904,7 +904,7 @@ static int adv7511_bridge_hdmi_clear_infoframe(struct drm_bridge *bridge,
> >  		break;
> >  	default:
> >  		drm_dbg_driver(adv7511->bridge.dev, "Unsupported HDMI InfoFrame %x\n", type);
> > -		break;
> > +		return -EOPNOTSUPP;
> >  	}
> >  
> >  	return 0;
> > @@ -938,7 +938,7 @@ static int adv7511_bridge_hdmi_write_infoframe(struct drm_bridge *bridge,
> >  		break;
> >  	default:
> >  		drm_dbg_driver(adv7511->bridge.dev, "Unsupported HDMI InfoFrame %x\n", type);
> > -		break;
> > +		return -EOPNOTSUPP;
> 
> We do need to document that it's what drivers must return though.

Ack


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
