Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BC72CFD62A
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 13:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6VW8cyQ7CKF0r7fLNACbcvZ14YKG4NZ2SJtTEV2J7YI=; b=I6WFop54Ap1Ts5
	D44zGtbETFKW+H58aH8UtRbhYLOe+0ByAQ1Mo2hfzHS/VEyQ42uh91tvxKZRJilGgQ1LFrUEl3ShK
	uR3dHFC3Lb9e8EC8qCpn4FdliUJ+jmet7LFPGOZuumGOtl+QbJR3PdlMWXtL4ShdT68ZaEeRwtPGL
	fdmMRQkcH7xEJGUe/5WQ/ZdbV2i4FAZQP6oqNCZMJbPAGY1l2ckKOMfWABzI9SZfWR8UA1tiQ5G9t
	KXmnZ1tD1mKo/rxfLU3b8KZCUgoEWkg01BDlYugWWt5ZOwgG5GsEHuz6FfEA6v3dssBlNtZLn4Lmn
	oe5K++yQ5wB8DPomwbLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdTTx-0000000EzsC-3Xcy;
	Wed, 07 Jan 2026 13:21:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdTTv-0000000EzrK-36NH
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jan 2026 13:21:48 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6079CHba2453884
	for <linux-rockchip@lists.infradead.org>; Wed, 7 Jan 2026 13:21:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=js9vOdGwDOtrz/HNGFuhKMtQ
	9O5QjU14j2FRmChcdtk=; b=kG3/1cJ1P7ELpcYi4U9ELqLxZVjt72LrO+o8b368
	fi93VpPDiEfi+45Q2CtKwzWuPFKqWY+Mh2EiPw5vd8Vpm2XRAuWkxK31fv+YNbrk
	OSJ4rpTVpu9hHJ7SkXwiYFRpfkTeY9luQTuQ2KYP2RGa+UHizmcikgcC/Zs/WuwF
	kfShAdfmGYD4ImRzKeBScibWpKKQLsGDz07GG52n2IAAbm5UrKb3Ois9v/A5PYBF
	mcHPsICzCwQTnNNr+3AxzepT3h5cb29NlRt3Z5jjNDBDNULEmobYyiKrsOtWKWt+
	IOpcqT84fcn771H2LtNgspTmUV0Pw4g90RXS66kMNU24Dg==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhmnbgpdy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 13:21:47 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-93f648b3f60so2767167241.0
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 05:21:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767792106; x=1768396906; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=js9vOdGwDOtrz/HNGFuhKMtQ9O5QjU14j2FRmChcdtk=;
        b=Mw/9wQztdhpnv2N7+mz/JFs/M/i963v84TY/ASZMZlHkoI3rR0b3dljwegpsN+eKWB
         RBgItYzxOSv8KFPP3DaoQjLvZIax2TaqoumBkXjuui6eElJB7q7nfd9X0Pb6Rv+6VDSB
         18D/SFZg6Ejxsi6+2+ps9xMU+JKLSbcZ+etrIa88IuM3MhCOon1mVyTEhl8vcCr96eiU
         phibJlAV29lANZ0AGFvh1vq1gklIZZlmoa0Pbi6FpvJI6k0zeZ4yI48EaONReXYcTBeV
         GS7nXDut07qnl+Jh4DO6DHrGfSyFpoU6+wjGtJt5nEIyEi8yFwW/gzDFwu6Dxlf9qr8w
         aIGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767792106; x=1768396906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=js9vOdGwDOtrz/HNGFuhKMtQ9O5QjU14j2FRmChcdtk=;
        b=uGvTcFoun4kyKqbv6isyt1rCi+GG91fTx/yfhUE/jRiioe2WljnfiINXSlzcibvTNW
         e9dMhawB6fXQO+WUlXAjgd5h4802agmtVSFjM9ajRM7NaU1iRw1bP4zQsNEpJZCzUUMN
         n9n3J7ajk/MAx9veisU4EfBRCUmRgahOqvatQewj6jwjGEAMCAPLSW5kLWs/EoMfheZb
         0IogeumOJFvnAmiTJj3Jw9FAn5BvaAZUnJSs6HAlplEljbo14tgnuUDivf7OJtfE4zd3
         LF6Zweidcb+SYz2VgtjtpjZc8dR37oF2pAHxafDjdmPCJacl9Q/pK8g1s/12JwBCdaNL
         +DNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwRvalPjYAgv0BXcSPMe4DiTB43ut/ptBKovXfJ/qpK2qlE9czQ6UCQqMHSupBGPflzV8Um1tGWYOtA2VzMw==@lists.infradead.org
X-Gm-Message-State: AOJu0YymFPbTttJmZQDGWO/LAtN+m0tZZlYgamzDr0aYEr7vz5x1ZN3W
	sHA8DDK4g+07PCPBdCqyUHC/36HkqepIKZ8vVUuGlrA8kwm1mQHvEOWOc1azKB07JJz070k3KAs
	v1adjGpg/JOGRGqF7y5aSsxigVIsCjlYGjc0P52skemT4HwBoId9OQATcGPvJzivw0bPO4fzBeF
	E=
X-Gm-Gg: AY/fxX609btm8tgJoPWt449GGwLjGAAzp4SW8y5QlZKgaieNS1RBs4RGS3Pvl8frcTN
	qx1/gDAWZg+44qZaCueW3/NkH+44qC2TNi2hHl3+D2ReVOEGJk5qcZVzkjy3tNcrSQR43aJPDUk
	lDDPNUEmRlS4kJ/B/dZFeEfjvXffxXGGwuFFf3dvDcI1FMpUK2c74x+qrOfqVjc0WE5WViCG18+
	RP8f7EltNCScu1e+8qvaaD3raWxXfA2T/DTPLtuMDKNzwCMmpMu5TZCqRC6MBnz813NWUEu8H/R
	NEdkMvNv2U8nLln4E6RBCRPXAMRC+2R3I/HR3+JWTTl1+E0fctNa6VusC/mEbOERXcPPL6865Sg
	yQdOu81e41E8n+9MB0bYts314BhgdYpr5v6m8sF/b46fRgn8RfPuIy92aEkrMkZeMAaHogtt0af
	GrZVxp4n9J+Z8EhDdLdvQdHPA=
X-Received: by 2002:a05:6102:32d3:b0:5de:a2d2:8076 with SMTP id ada2fe7eead31-5ec752dbfd5mr2097419137.0.1767792104875;
        Wed, 07 Jan 2026 05:21:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF2NXBDg7wVXP/zTsrowEn5NsyiVqeMK7cDHudpgAqGMWRN5e4UR1GPSBvYkE7wBgLCTq0Y4g==
X-Received: by 2002:a05:6102:32d3:b0:5de:a2d2:8076 with SMTP id ada2fe7eead31-5ec752dbfd5mr2097376137.0.1767792102812;
        Wed, 07 Jan 2026 05:21:42 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb8dadd1sm10295211fa.34.2026.01.07.05.21.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 05:21:40 -0800 (PST)
Date: Wed, 7 Jan 2026 15:21:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
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
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-mediatek@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 07/10] drm/display: hdmi_state_helper: reject Audio IF
 updates if it's not supported
Message-ID: <mccxwmemwxp4fcyjiu3zofuydk5ahmhnluqucwau5a6aiw67xr@52gynmrblml3>
References: <20251224-limit-infoframes-2-v3-0-7fd3cacfefed@oss.qualcomm.com>
 <20251224-limit-infoframes-2-v3-7-7fd3cacfefed@oss.qualcomm.com>
 <20260107-fascinating-boa-of-fertility-1886a0@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260107-fascinating-boa-of-fertility-1886a0@houat>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDEwMiBTYWx0ZWRfXxNQxVVI9QcEe
 DFp9uDDfCQD00nVZASauZDo2WMBHI7JlFUXOcK1MMg40q+c7keKj98htPBTNWw0GO5i9OydTGMN
 Mx4BSp89aAUnKsxhoRVQ8UoA571SK+kUjGrJhP9PMogQBpVOMBWGjGFVAzlBuI7FTxXi428fpHI
 tVaVh+1U6yjNZSPUny+rgBDwv3Wm9z11BHyQy2HTrQNuOJpnZVrV4wlwPkN6ofY+uolehafhEdX
 GHs8OcWk04+Me0PSwTtTVw+WgkHJTg1l9pKZNvW+rfCEetQc7C/d8XrpxfU70oIGNIFno00hkhf
 dxtdhfVnfJezuVaaXg4iujC2m/i1kqUEemmzPC2x8DP8Sb4ACLwKW4UxcK2G0qE2+kng1QHmnea
 CK6df2QxmvvIIjL23gOG0o+oituMvDdWic84Jd7z40nN1vLw9qDosbTiwQdnaOMeG9zbx1ElU3B
 RrSlzB58hT6UI4eWD0A==
X-Proofpoint-GUID: ZjhoyPuu_C-m2P83It6yCisVNGnY3efC
X-Authority-Analysis: v=2.4 cv=eIkeTXp1 c=1 sm=1 tr=0 ts=695e5deb cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=3wq6KaL0rsEoTcXXugkA:9 a=CjuIK1q_8ugA:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-ORIG-GUID: ZjhoyPuu_C-m2P83It6yCisVNGnY3efC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 malwarescore=0 suspectscore=0 phishscore=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_052147_797340_09D810F0 
X-CRM114-Status: GOOD (  19.00  )
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

On Wed, Jan 07, 2026 at 01:50:51PM +0100, Maxime Ripard wrote:
> Hi,
> 
> On Wed, Dec 24, 2025 at 03:02:56AM +0200, Dmitry Baryshkov wrote:
> > Updating the InfoFrame if it can not be sent over the wire makes no
> > sense. Change drm_atomic_helper_connector_hdmi_update_audio_infoframe()
> > and drm_atomic_helper_connector_hdmi_clear_audio_infoframe() to return
> > an error if Audio InfoFrame callbacks are not implemented.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> IIRC, audio infoframes are mandatory if you send audio over the cable,
> so maybe we should do like you did for drmm_connector_hdmi_init and
> error in drm_connector_hdmi_audio_init if we don't have the proper
> write_infoframe hook set?

HDMI hosts can be sending Audio InfoFrames in some other way (think
about LT9611UXC, which manages infoframes on its own).

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
