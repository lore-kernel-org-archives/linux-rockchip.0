Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9650BCA0FF9
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 17:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWv+j8o4MeXhwCQFF08RjbFDlg7AvaZRgHmJC37mGc0=; b=lOuuPKSj6e3Lxj
	eTrdHS0fPSY2rpmxotEjq/UfL53h+i1AdSJi8ot1BI5QtZXPtvdsgeUDNp9aAyU06w1+42Dw2r2Pa
	sovMYK9urUXNz22QVLHM2hm3LYPxwkHkTKNTtudNbsMZLpqO7BGV7kbj9HWUQYEyW+4xC3f+wnEgr
	e7nU3LY3eNx0LNxZQl10o2srxpZNzMSl+zODyP7WF6Fsh7ELxbZAGoR2gJ9FLaI3E/7HCHboxZifi
	soHF55v3KKKYsXfUHck7s7J/OJhqeoHSVxF8B42gCHgaqkCJ3gXtR/noTWRHMj2k0RZmlbgO9DJ7G
	x7psEUdmg5rblZN8a9MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgNx-00000002Snu-1Zb7;
	Thu, 28 Aug 2025 17:26:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urcB1-00000001dVk-0qHC
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Aug 2025 12:56:28 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S64OeW029243
	for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 12:56:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OdpmDsm62brobuQjUJYWRZMW
	8nEvkBWHHBR4Kl+p9ck=; b=MLOYBOfxkPhySalZJmsNJxpH0XwqD7DR0CWEmIoE
	JcPIo7+2i1H5T7AE7EZJvX2EoZ1HvOEe4bujMxMHnLO9cqpP/aZmCZHE/lpJ+Wad
	nMiRoSOAR26w87HyvVJfyK/ejhQvXNM0emS38P/Rf1sYjSeHE0YCCSpwHi9Lxcp4
	MkebjToxa5ES3MNmif0KwSWIsbMkp89IlMlhiIesEXfMn1PDKu1F7BkO/qZklzH2
	vV4iyTrApTG6NX7w2N+PJE3ecxd8zDeKaPqoFcgDle2jgmFUCBnTNDwYgZTLo9qj
	IaKTyP53y+09zoON9kvUXf311lp91+oLlw6RN1jywHAlUw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5w30emc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 12:56:26 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b109bccebaso22806861cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 05:56:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756385785; x=1756990585;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OdpmDsm62brobuQjUJYWRZMW8nEvkBWHHBR4Kl+p9ck=;
        b=tJuuv8X7OB6I4Rv5yYBfLhABLud3LEbJUIfMaJZJTLl1kjy4cyNnasgChawxot9fv/
         lAaGUjamYTLL4ErLE9Ogsbdys+zkBavu2bMigJRNww4pHD1GdazPNENjSVD+M5ahtGlH
         zu/fyJvI8vIJZ0moxfDARpSdRd3IyBgFuGDKRSdOuSE5h6hczDTrCsRS0tAUD6b+8PDK
         KEoEWbSPtEV1H+ssq0t9XEs1CfnKhm6XcnRoaB/PR/58VdC0YRuCDYwBQdAGnE3+PAln
         vO/mGEgltKnAtzO4o05jtoeY0zZB9lnu4k5VoZhyUhNT3dL2WE336Kcp5F05YvIHkDQg
         rv/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVlQiZI6JD0OLKxr44lucwEC+SvCqusaWukdl3rjepmhfq/0uwoH43yOfT0rHXJUWo/f/rtqESyCtOxQInCrA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxnejyzqrsYm3A4XLSBLvqUOljDWc2nz6bWYoI55eCR3qsc1qYx
	777QdiWlzKMl92zhwM06i2sy8emfY3aiJNqSh/J05slhr0SVP/hN0QdIMyB9r8Oq17OwANHmmLM
	Ft2tgp8L5ojLrtDDP8GmKMd+q41rX98tixoqdZhEorkcH5E1MybFwOjrxvPsWTgRH6SZeYXehCc
	M=
X-Gm-Gg: ASbGnctXotiB7bV5F2cFPgoTpdwP4HF4ohBm25pOU1OpGTyj5Pj5kv6s3r9qs6mYWp6
	pCEjHeKAEL8tLw8Gp3aFNgjnM59cYtIimqe4S7SyxpfQ1g5eBbbfiD/fum2/PNcdmFUXuq3bTjE
	xpOWoLHXMQ4P88hgoOlpNXVDj6reVd1/5YM/y2I+0t1QDC05cMJ34STnjjN39F1wuX4GivInPHx
	TMn38DGmNLfGIUIwaWySAxckaC21GzLqp9foJNPTGWCYuIazem76PFEyyem48awDVddpfONnw8S
	Z7K+LHbPDLTqEp/HI+O932yn2V2N8D2qLIl0dlc9fzEZ6TmcCZ/PDE7V0/vX4N2EQQOgrWrK+rd
	y7LG2eBeAXTxrielWywkha2SB0Jun16KOAc6jEE5/OOlTEqz5vs9r
X-Received: by 2002:a05:6214:27c2:b0:70d:843f:6b8c with SMTP id 6a1803df08f44-70d971e4c73mr254210326d6.37.1756385785151;
        Thu, 28 Aug 2025 05:56:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERQ3f0eiZP6GMEYC5Py0gqB9whnbXB6IFHUtmBsYwWEJ7LR2k+sbTMwXECFTAuvR2F5ILzjw==
X-Received: by 2002:a05:6214:27c2:b0:70d:843f:6b8c with SMTP id 6a1803df08f44-70d971e4c73mr254209926d6.37.1756385784519;
        Thu, 28 Aug 2025 05:56:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35c8bc94sm3337416e87.84.2025.08.28.05.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 05:56:23 -0700 (PDT)
Date: Thu, 28 Aug 2025 15:56:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v7 00/10] Add support for RK3588 DisplayPort Controller
Message-ID: <n3scvjsx2aec2ijnr5wwevkmhtegkts5nb43yti7dkjujqaezq@shbcy7ftibzo>
References: <20250822063959.692098-1-andyshrk@163.com>
 <bochli5u37mhc6eup7h2oz3yeignofbbj4k5nrvm2k7zf6f4ov@t2sje4gmveqa>
 <d040da3e-501f-45d8-bcbb-95fa77e94a59@suse.de>
 <20250828-tangible-wakeful-coati-ec27d1@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250828-tangible-wakeful-coati-ec27d1@houat>
X-Authority-Analysis: v=2.4 cv=Z/vsHGRA c=1 sm=1 tr=0 ts=68b051fa cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=s8YR1HE3AAAA:8 a=tUpP_D99XMz3yPDlsHkA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX3hQoKOMbuymu
 PLXYLK1woJGJz/LyNhAFBAxMpRI+CiHy0HqYAw+oopHh2+nU4vOfjDOujLOcV7tgVNtaKtIAYX5
 zovV8gag7grS3MrLK4g8gdEfdxKVxz/QiVevZedPM3o63LBFtjM/CTrwugX8tZtrqeezs83CulF
 6Kw075tWqZLZU/xhchdupM7XJTM47DFfx3iOVzTDnAuJHjwPjhHo/BHF2Oh9vk6nJTrEnYhaS79
 RLwBymLRpOI3gqvNwrMWjUIBZ7pryjtC+mdmV2sDJQiUgSMsQ5B+ZsYq43bi0/Gs35828t05owe
 fY277MDkHiDFkecDWhYrVklqcdDT48pXHSCtmZdLG8TdYzg1cflVgs/SzHplxWADWxmXgFbQkaP
 Ek8b1pZR
X-Proofpoint-GUID: slGfmlGFoA5IqThLFyCLdRwsy2-8anRi
X-Proofpoint-ORIG-GUID: slGfmlGFoA5IqThLFyCLdRwsy2-8anRi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 phishscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_055627_247355_A7C50FAD 
X-CRM114-Status: GOOD (  38.94  )
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, heiko@sntech.de, stephen@radxa.com, linux-kernel@vger.kernel.org, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, Andy Yan <andyshrk@163.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Aug 28, 2025 at 10:05:28AM +0200, Maxime Ripard wrote:
> On Thu, Aug 28, 2025 at 09:50:34AM +0200, Thomas Zimmermann wrote:
> > Hi
> > 
> > Am 28.08.25 um 00:24 schrieb Dmitry Baryshkov:
> > > On Fri, Aug 22, 2025 at 02:39:44PM +0800, Andy Yan wrote:
> > > > From: Andy Yan <andy.yan@rock-chips.com>
> > > > 
> > > > 
> > > > There are two DW DPTX based DisplayPort Controller on rk3588 which
> > > > are compliant with the DisplayPort Specification Version 1.4 with
> > > > the following features:
> > > > 
> > > > * DisplayPort 1.4a
> > > > * Main Link: 1/2/4 lanes
> > > > * Main Link Support 1.62Gbps, 2.7Gbps, 5.4Gbps and 8.1Gbps
> > > > * AUX channel 1Mbps
> > > > * Single Stream Transport(SST)
> > > > * Multistream Transport (MST)
> > > > * Type-C support (alternate mode)
> > > > * HDCP 2.2, HDCP 1.3
> > > > * Supports up to 8/10 bits per color component
> > > > * Supports RBG, YCbCr4:4:4, YCbCr4:2:2, YCbCr4:2:0
> > > > * Pixel clock up to 594MHz
> > > > * I2S, SPDIF audio interface
> > > > 
> > > > The current version of this patch series only supports basic display outputs.
> > > > I conducted tests with DP0 in 1080p and 4K@60 YCbCr4:2:0 modes; the ALT/Type-C
> > > > mode was tested on Rock 5B, DP1 was tested on Rock 5 ITX by Stephen and Piotr.
> > > > HDCP and audio features remain unimplemented.
> > > > For RK3588, it's only support SST, while in the upcoming RK3576, it can support
> > > > MST output.
> > > > 
> > > [skipped changelog]
> > > 
> > > > Andy Yan (10):
> > > >    dt-bindings: display: rockchip: Add schema for RK3588 DPTX Controller
> > > >    drm/bridge: synopsys: Add DW DPTX Controller support library
> > > >    drm/rockchip: Add RK3588 DPTX output support
> > > >    MAINTAINERS: Add entry for DW DPTX Controller bridge
> > > I tried pushing patches 1-4, but got the following error:
> > > 
> > > dim: ERROR: 5a68dcf5837a ("MAINTAINERS: Add entry for DW DPTX Controller bridge"): Mandatory Maintainer Acked-by missing., aborting
> > > 
> > > I'm not sure how to handle MAINTAINERS changes (or whether it's fine for
> > > me or not), so I will probably push patches 1-3 in a few days, if nobody
> > > beats me (or unless somebody points out a correct process for
> > > MAINTAINERS changes).
> > 
> > That warning has been added recently to make sure that patches do not get in
> > without sufficient review. It's overly pedantic, though.
> 
> It's not "overly pedantic", it follows the contribution rules. I'd argue
> that, if anything, we've been overly tolerant with that kind of
> practices.
> 
> We do have a bug with handling MAINTAINERS changes at the moment. But
> everything else shouldn't be ignored: either patch MAINTAINERS to
> reflect the actual contribution path, or get the maintainers Ack.

For me that points out that MAINTAINERS changes should be integrated
into the corresponding driver patch rather than being a separate patch.

> 
> > If you're confident that you have R-bs from enough relevant people,
> > push the patches with 'dim -f' to ignore the warning.
> 
> And let's not just advise that either.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
