Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC398CAC5B3
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 14:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ET4IRcOtdI1ZhVAiUEaREOpq3Nj9Wk9UC4lf/VKaXPA=; b=DD2x52aoY4izwZ
	EC8e7SbnXEfCtW0nHt1GKp/PWYpQFhCnkqDX2B4aiUVzNan6Xt3xhcobQxNYgOZnGxl0vJ5/HjbEl
	AbQ8U+YuynkgmxEkZlwjyZnNw4zealVQos0Ibv5PTtasEkQbuUeS1y0DuQwgN3pF6OziQQynwVTBL
	I8j+wOZxaCXeMhT9gtoVaKNvG1Q2A2NcIW82InEQ1Qhn/F6kiUaEiljwhGET8qIShM6nPmqhdienT
	xu7nY0TD5104Fn6Xbo58UelX0zaQWL/gcROPbjKnvXwTc4XF9U4vUUnlbzZP/1turR0igYIFJc1Eb
	Ey6JS2rxKJVQ+FN3KEhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1mlg-00000009uVf-3iIo;
	Thu, 25 Sep 2025 14:16:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1mlf-00000009uTN-2Gfj
	for linux-rockchip@bombadil.infradead.org;
	Thu, 25 Sep 2025 14:16:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=y9UqSzb0xURpGT05r1TOGZ4FxRHVors22wnbaDWXETY=; b=ATto1vN69gRWLxZBumUIUl/NZt
	fb4uAXa3peHtYJl6JZxxWuQetYa8x5yEM4v8qGLSMqPxve77VYlF4mrOo7m548/6qZakjBlpYnZIg
	P+bV4YE2mmmK9Ms8I3v32prSvAfMTDXE4VCOsPfnyKgvY/eo9XXlDi3Q2G+Uw/nn6bZYLOcQyc8U5
	/EuZRC8gzyBfAL2aDZKicjROt66Nz4+ZzTn43Nm/acWYfn9enlXEsogxXgNQ3hExdxYqOlmf5VRZX
	/TmOGce4y4LHZbf/OHIEjL/PKlapaxwBj7SRrkRYbUyBhkojWDgMeBdqAOFRnfGDLWUQbP/wAzSJf
	OTCoy+tw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1mlb-00000009ENT-2LDd
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Sep 2025 14:16:18 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9D543021670
	for <linux-rockchip@lists.infradead.org>; Thu, 25 Sep 2025 14:16:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=y9UqSzb0xURpGT05r1TOGZ4F
	xRHVors22wnbaDWXETY=; b=FLSMYQeyc8FnVe+iMCfm8+APBwzMSDQYHRnwAcwx
	L6erQPUpVR3YVxUVdrsS2eq17jgHLNsa4veIc++hPKg3v6+kvhtl8Tw3K5AIDPYM
	8Tf6DPCtAkXGhFYN4y8BfWLbG0+wGfHUjxRxDiCZLVzvkbjjj6CNdA3ZrY0oUuZ5
	BEKxd1x+GjV9rp0ehkhDjdmg/dcLNWUs/ILFyPKatUKCcpw8IqCGNSJ4z9Xm8b3v
	FU26cJrktOngq4cQSOSsVRm97/e7BD3L0POVqviTb5y6KhkYtFM2uNyTaL5ccW4P
	S19iMzPzviftMBXZjXFsJXy8we6HOJWgCRh8lKnHLMLKcQ==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budafy2n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 25 Sep 2025 14:16:13 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7a25c0307f1so777059a34.2
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Sep 2025 07:16:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758809773; x=1759414573;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y9UqSzb0xURpGT05r1TOGZ4FxRHVors22wnbaDWXETY=;
        b=W4ZXEs8VN8ChPqnj9ySOaPYIoT8J1USidKvoGSElsWrZ+Wc01rCyLc5xn+c/SxwVNI
         rXZ/qpXQukM+jDDiM0S5i0jgYkWs5LZCJMfNqY+TTVh5orN6KgMTRaTMbNC2QSCwTEto
         EAAsXOwVZBCYtLSYtvS4NGn5flSk9zjtA3arFxoov3UtbHIiUGH0YvoN3A8l0iuI/blS
         rmCH+NBPmvcXv1NfGINxgjzDtpcBxBukM4Oe2VMGetyvZYjzFzCHugDcXHVC4bj39raR
         Or3ZrMogbnnyTojbNfzLGAr5sneNdojXzUva6chTb1YNI93RgXCaIeUaLVGZbLxwGqWh
         qnUA==
X-Forwarded-Encrypted: i=1; AJvYcCUpa+oa+j+WIHzw+CzgghVzzHXrTEbXtCqOkuqqNpDUbNeoVAIeGCc55/rn/GB1r7pj5wvizTIOJ8cnLXzFIg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxJ0bc06xa8hSYX37AfSdP1iU7NVh1NgQb/ENNoE7gE/PnF2cPs
	uErUw9U6SqVHFPRYUlnqYtJGkEZcxiJ5QbYTpXUb0AkyjFG+wVPIOn2gnn77kFEkltiiMJDaHFv
	I1ZPwr2k8zbke+LgJA4sHd2E3tXDnvf+QpIu27Y/EoNWc6+/VCnQyuk7TN+qB3bnWxxdd02n7HN
	E=
X-Gm-Gg: ASbGncsiSApXJ2oQocLx/RcktIfOmeFvSpFzkm5qGac4BaTYJpoz1rp7ueWYr518Z3N
	ituJdji5/OnEzmgM0bqw40px1l1X35n9m8m8Cg9EiZm2B+sCOWPQrVX9Ijesy1yQyNSZgu53MwD
	6b0GIrPi0s4xBbVyj2mBJgRLRL4TFT5KJz4kN+gd/DhE5fiCbbc5uw3iHK7yUqnII5bOIImCyB/
	Lcjc1TBmEBkWDz5aAXgKEdi0lLvQ3+fyebsVmKOiaoLK1K282qqJmxxlbdbGroKsMm41l+7jyg/
	QL03RL5iKB7YdSCetjYbQmjoT481nEs9RexVbhA7MkZ/AV8CuO0PKL3c3ouH5j5i6AziOcI4egT
	+zGEGkDmps2QTbf2XEalg20O3E65OqkQWdG9TROXnGaAm/iPQUM0c
X-Received: by 2002:a05:6830:dc2:b0:799:de78:29d1 with SMTP id 46e09a7af769-7a03fd2b04emr1719751a34.15.1758809771124;
        Thu, 25 Sep 2025 07:16:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFeNPSDhwRpXMQNaKnw8/Q6GL5LzIt78ciEADRkYhiEtdUWxoTxhSJbN8mrOYRE9g11dRPZUQ==
X-Received: by 2002:a05:6830:dc2:b0:799:de78:29d1 with SMTP id 46e09a7af769-7a03fd2b04emr1719670a34.15.1758809770374;
        Thu, 25 Sep 2025 07:16:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313dd679csm816415e87.56.2025.09.25.07.16.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 07:16:09 -0700 (PDT)
Date: Thu, 25 Sep 2025 17:16:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Daniel Stone <daniel@fooishbar.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
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
Subject: Re: [PATCH v3 00/11] drm/connector: hdmi: limit infoframes per
 driver capabilities
Message-ID: <qx5ashx62pufott6hnsfna3qntnoyvxwxze4rihhuxcsdxi37s@bbdvc3sfsgne>
References: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com>
 <CAPj87rNDtfEYV88Ue0bFXJwQop-zy++Ty7uQ9XfrQ2TbAijeRg@mail.gmail.com>
 <57ekub6uba7iee34sviadareqxv234zbmkr7avqofxes4mqnru@vgkppexnj6cb>
 <20250901-voracious-classy-hedgehog-ee28ef@houat>
 <voknqdv3zte2jzue5yxmysdiixxkogvpblvrccp5gu55x5ycca@srrcscly4ch4>
 <st6wob5hden6ypxt2emzokfhl3ezpbuypv2kdtf5zdrdhlyjfw@l2neflb4uupo>
 <pe6g2fanw65p67kfy5blbtiytngxmr6nkbazymojs4a66yvpl3@7j4ccnsvc6az>
 <20250910-didactic-honored-chachalaca-f233b2@houat>
 <x562ueky2z5deqqmhl222moyrbylfwi35u4hb34dpl3z52ra4c@dyw4iayrewnz>
 <20250925-fervent-merry-beagle-2baba3@penduick>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250925-fervent-merry-beagle-2baba3@penduick>
X-Proofpoint-GUID: -N2PoHG-3kOhPjowi4El1OflP92P7P22
X-Proofpoint-ORIG-GUID: -N2PoHG-3kOhPjowi4El1OflP92P7P22
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d54ead cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=iknQBEtk-GVG8r3p8isA:9
 a=CjuIK1q_8ugA:10 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX81lvLqjACydS
 nZJeaGy2cY95RPap7UI/HUMvqgwrpvCOWyIddV+Nf1CFrbbft/oLyAUo2HWrnqgMsizhtdu20BZ
 R9CS/IW08/LammLGVVnpWq2HSbPO42HeNrm5gPj3I7eHscWIYtHZbJOUDmDAbHiRYu9yt9J4i00
 7EYU3I9fNh7cXGSsHSsUwmjuM9PuasiUHg17odhvBp01rZLJAe4spvajAwqZp4j1Ts/upzjI+Hr
 vZQqMSpmyrKuU83cp2+nqQdrtYMSyqA+EC1MpLikiInbI0Sx1X0hS7TRsZF2S8kE9CRrz8dS+5q
 kO6nx2u9m/kVbGYflLlXxGi49DI2bGrFmrjXmV/mdGXVAbsEGEqJSGtjg3lKL59prYxqFPKFB45
 H8mF+GfM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_151615_943495_A45579E3 
X-CRM114-Status: GOOD (  75.31  )
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

On Thu, Sep 25, 2025 at 03:13:47PM +0200, Maxime Ripard wrote:
> On Wed, Sep 10, 2025 at 06:26:56PM +0300, Dmitry Baryshkov wrote:
> > On Wed, Sep 10, 2025 at 09:30:19AM +0200, Maxime Ripard wrote:
> > > On Wed, Sep 03, 2025 at 03:03:43AM +0300, Dmitry Baryshkov wrote:
> > > > On Tue, Sep 02, 2025 at 08:06:54PM +0200, Maxime Ripard wrote:
> > > > > On Tue, Sep 02, 2025 at 06:45:44AM +0300, Dmitry Baryshkov wrote:
> > > > > > On Mon, Sep 01, 2025 at 09:07:02AM +0200, Maxime Ripard wrote:
> > > > > > > On Sun, Aug 31, 2025 at 01:29:13AM +0300, Dmitry Baryshkov wrote:
> > > > > > > > On Sat, Aug 30, 2025 at 09:30:01AM +0200, Daniel Stone wrote:
> > > > > > > > > Hi Dmitry,
> > > > > > > > > 
> > > > > > > > > On Sat, 30 Aug 2025 at 02:23, Dmitry Baryshkov
> > > > > > > > > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > > > > > > > > > It's not uncommon for the particular device to support only a subset of
> > > > > > > > > > HDMI InfoFrames. It's not a big problem for the kernel, since we adopted
> > > > > > > > > > a model of ignoring the unsupported Infoframes, but it's a bigger
> > > > > > > > > > problem for the userspace: we end up having files in debugfs which do
> > > > > > > > > > mot match what is being sent on the wire.
> > > > > > > > > >
> > > > > > > > > > Sort that out, making sure that all interfaces are consistent.
> > > > > > > > > 
> > > > > > > > > Thanks for the series, it's a really good cleanup.
> > > > > > > > > 
> > > > > > > > > I know that dw-hdmi-qp can support _any_ infoframe, by manually
> > > > > > > > > packing it into the two GHDMI banks. So the supported set there is
> > > > > > > > > 'all of the currently well-known ones, plus any two others, but only
> > > > > > > > > two and not more'. I wonder if that has any effect on the interface
> > > > > > > > > you were thinking about for userspace?
> > > > > > > > 
> > > > > > > > I was mostly concerned with the existing debugfs interface (as it is
> > > > > > > > also used e.g. for edid-decode, etc).
> > > > > > > > 
> > > > > > > > It seems "everything + 2 spare" is more or less common (ADV7511, MSM
> > > > > > > > HDMI also have those. I don't have at hand the proper datasheet for
> > > > > > > > LT9611 (non-UXC one), but I think its InfoFrames are also more or less
> > > > > > > > generic).  Maybe we should change debugfs integration to register the
> > > > > > > > file when the frame is being enabled and removing it when it gets unset.
> > > > > > > 
> > > > > > > But, like, for what benefit?
> > > > > > > 
> > > > > > > It's a debugfs interface for userspace to consume. The current setup
> > > > > > > works fine with edid-decode already. Why should we complicate the design
> > > > > > > that much and create fun races like "I'm running edid-decode in parallel
> > > > > > > to a modeset that would remove the file I just opened, what is the file
> > > > > > > now?".
> > > > > > 
> > > > > > Aren't we trading that with the 'I'm running edid-decode in paralle with
> > > > > > to a modeset and the file suddenly becomes empty'?
> > > > > 
> > > > > In that case, you know what the file is going to be: empty. And you went
> > > > > from a racy, straightforward, design to a racy, complicated, design.
> > > > > 
> > > > > It was my question before, but I still don't really see what benefits it
> > > > > would have, and why we need to care about it in the core, when it could
> > > > > be dealt with in the drivers just fine on a case by case basis.
> > > > 
> > > > Actually it can not: debugfs files are registered from the core, not
> > > > from the drivers. That's why I needed all the supported_infoframes
> > > > (which later became software_infoframes).
> > > 
> > > That's one thing we can change then.
> > > 
> > > > Anyway, I'm fine with having empty files there.
> > > > 
> > > > > > > > Then in the long run we can add 'slots' and allocate some of the frames
> > > > > > > > to the slots. E.g. ADV7511 would get 'software AVI', 'software SPD',
> > > > > > > > 'auto AUDIO' + 2 generic slots (and MPEG InfoFrame which can probably be
> > > > > > > > salvaged as another generic one)). MSM HDMI would get 'software AVI',
> > > > > > > > 'software AUDIO' + 2 generic slots (+MPEG + obsucre HDMI which I don't
> > > > > > > > want to use). Then the framework might be able to prioritize whether to
> > > > > > > > use generic slots for important data (as DRM HDR, HDMI) or less important
> > > > > > > > (SPD).
> > > > > > > 
> > > > > > > Why is it something for the framework to deal with? If you want to have
> > > > > > > extra infoframes in there, just go ahead and create additional debugfs
> > > > > > > files in your driver.
> > > > > > > 
> > > > > > > If you want to have the slot mechanism, check in your atomic_check that
> > > > > > > only $NUM_SLOT at most infoframes are set.
> > > > > > 
> > > > > > The driver can only decide that 'we have VSI, SPD and DRM InfoFrames
> > > > > > which is -ETOOMUCH for 2 generic slots'. The framework should be able to
> > > > > > decide 'the device has 2 generic slots, we have HDR data, use VSI and
> > > > > > DRM InfoFrames and disable SPD for now'.
> > > > > 
> > > > > I mean... the spec does? The spec says when a particular feature
> > > > > requires to send a particular infoframe. If your device cannot support
> > > > > to have more than two "features" enabled at the same time, so be it. It
> > > > > something that should be checked in that driver atomic_check.
> > > > 
> > > > Sounds good to me. Let's have those checks in the drivers until we
> > > > actually have seveal drivers performing generic frame allocation.
> > > > 
> > > > > Or just don't register the SPD debugfs file, ignore it, put a comment
> > > > > there, and we're done too.
> > > > 
> > > > It's generic code.
> > > > 
> > > > > > But... We are not there yet and I don't have clear usecase (we support
> > > > > > HDR neither on ADV7511 nor on MSM HDMI, after carefully reading the
> > > > > > guide I realised that ADV7511 has normal audio infoframes). Maybe I
> > > > > > should drop all the 'auto' features, simplifying this series and land
> > > > > > [1] for LT9611UXC as I wanted origianlly.
> > > > > > 
> > > > > > [1] https://lore.kernel.org/dri-devel/20250803-lt9611uxc-hdmi-v1-2-cb9ce1793acf@oss.qualcomm.com/
> > > > > 
> > > > > Looking back at that series, I think it still has value to rely on the
> > > > > HDMI infrastructure at the very least for the atomic_check sanitization.
> > > > > 
> > > > > But since you wouldn't use the generated infoframes, just skip the
> > > > > debugfs files registration. You're not lying to userspace anymore, and
> > > > > you get the benefits of the HDMI framework.
> > > > 
> > > > We create all infoframe files for all HDMI connectors.
> > > 
> > > Then we can provide a debugfs_init helper to register all of them, or
> > > only some of them, and let the drivers figure it out.
> > > 
> > > Worst case scenario, debugfs files will not get created, which is a much
> > > better outcome than having to put boilerplate in every driver that will
> > > get inconsistent over time.
> > 
> > debugfs_init() for each infoframe or taking some kind of bitmask?
> 
> I meant turning hdmi_debugfs_add and create_hdmi_*_infoframe_file into
> public helpers. That way, drivers that don't care can use the (renamed)
> hdmi_debugfs_add, and drivers with different constraints can register
> the relevant infoframes directly.

Doesn't that mean more boilerplate? In the end, LT9611UXC is a special
case, for which I'm totally fine not to use HDMI helpers at this point:
we don't control infoframes (hopefully that can change), we don't care
about the TMDS clock, no CEC, etc.

For all other usecases I'm fine with having atomic_check() unset all
unsupported infoframes and having empty files in debugfs. Then we can
evolve over the time, once we see a pattern. We had several drivers
which had very limited infoframes support, but I think this now gets
sorted over the time.


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
