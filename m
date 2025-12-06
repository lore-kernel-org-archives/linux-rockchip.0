Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CA05D3B7D2
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Dec 2025 11:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybrXcCOABwXU0KlIkSHGpCAL1i+HyqT/fwVxc1geJB0=; b=Wr5lRJk/cxZcJS
	WDefWyTfRnSQyPK2bVc0GCx77KwxWax/ylAK48RO0bhy4oH9ozjSwKJ+iMRXCmX6YVOKw253Z17GF
	1TT3gorikl6GuZZ8EGLzPeIdRtQXlBUYXjmCcQ5pJNeq8aYAxe9faau9AWJ9pTO5DAvoBomARZ9uq
	0eEUtS9drQCDX9x5Fg2SR9IK6/75xB9TMU07GbLwNDMFHgmxFKH9/EluS5tIu9bW0loAjIlOwf90R
	2HmSVWy5HtVYjXRq2tnX/r+4SiDTLETFmQPssZSFkYcmoi1KRGISRVtUsw+9CRwh5DsGg2GC6b4m2
	gDPnIzf03+jQ7fST3ovw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRqSe-0000000ArzR-1Y6y;
	Sat, 06 Dec 2025 11:28:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRqSb-0000000Ary5-1kEC
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Dec 2025 11:28:22 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B65Yetq3012524
	for <linux-rockchip@lists.infradead.org>; Sat, 6 Dec 2025 11:28:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eftNH50iSq+b1pQ7t2A41tuU
	7np/m1Ety8HH1ooE1SM=; b=fRAMgs9mCxazzXMzvY/ljPhA+e7OThl3YLhsj8ag
	E0+PTIudFHWg6pcpyS5dVUKEgLQEZjFp+y6zKUBesZtRUICX+Rn6X4SUtEH4SREF
	0FsGlxPwLVw3mjj7/nScJ1gkLbuxG0waYVBscNDBnvK2xuhSbNJTI0dP3WYXL9+a
	s8CX6KXW6q5TDl2KvW0GrNYKNkdLRUql9XF6eLXmTo4BZ0O2DgtYsXUEwaZI3naq
	7W/jEEsk1epwTBdXUFtdTQd0dXYTtx3yiUwzixFB/3p+Nf2ljpaMz9rvnnj1vZi8
	Ay9uoZglavJpHuWbrN3KSqMbokUI5/kFcN3+xnKj11Psrg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4avc2wgp00-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 06 Dec 2025 11:28:20 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2e2342803so658231285a.3
        for <linux-rockchip@lists.infradead.org>; Sat, 06 Dec 2025 03:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765020499; x=1765625299; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eftNH50iSq+b1pQ7t2A41tuU7np/m1Ety8HH1ooE1SM=;
        b=JVC6vP7cEZ9jkr8j3Bw5CK8UnwnlihCk+YqUGLyvvxyPlTC6Mx5ZPIM/QKLpA5Q9Td
         vajdQN+soslPk+ZzYLl1vOsyDff8jEtLulMQXtvumEw4Ly03xi9j0bnV2PavXuNtgUbR
         R4R8Y6QTr2tC/Z+NtvftkKAB8dnHw+W/nQYhBMGauHIkuyDOzSOvSGbjTiFAhdG8qTRM
         GxC6L+VRRVysOsVDVnHEHeKhkZRCn7X42OOn6zJnLekpzlasmeN9MBs28Jno2Z+83wPL
         TEsr3Xjx57GAuofccwzRN7XG17j3qaqG5iM3+3Bu6YZkhtHImULLRHr8qXEfyjwRP0wd
         QsJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765020499; x=1765625299;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eftNH50iSq+b1pQ7t2A41tuU7np/m1Ety8HH1ooE1SM=;
        b=eXicTZooXo3sfR/CRvHa75tmcUMeB8E/msmf+HyvNQ9E7u7iof3YTyclPnLAwCPYFi
         cFkXftfbUtkyb9q80UstVZftUaPqTsB1Vvks4tvRbfEJGfoh7Ri7jyvTJAiiXO7XJXwF
         3DFxFuaMAOuLbhNVqdvQJASQ41G52ZI4mL8+LyWiGoFjjFbwps2OHGYkctI2uLoq6U65
         cY/HK2OV9aRbQgOAht9nxLO/ZbkculoO9RrPN731kG0yZx6mHxiKAMMyEo/aB4xyG0GG
         8kJnk9qDlNFFM4Ltsz8DVnD2/IEKwr76rjdRj2pYLbuKj3HoSHNDYjrSm9z4600uH8JK
         JWJA==
X-Forwarded-Encrypted: i=1; AJvYcCWArKaROzqnVXGyoZDfvuEq1iLWhBd4iLbknuCkaiYcDgim4KrYzXpf2XorNGzNMCBX+81l62meJPuE/8N+eQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyFSqN0NxSTJNAF0RAGS+FZaLnPnco51XnDp7OwSD1Ko/6gm/FE
	PRKmY1s6t6iUHoJxg4r/xBqOrkJU4QbWf83AfPAXPNdKa3KJ0JFKsW31UfTozNkeQqz+n7/4PQi
	86gHK6o3gKZNlIqCs2NEkCbDuXNKozEpewH5X7UIzG4R+vKRKFOWdywao+xLXk+6Zl1FHHYGUKa
	k=
X-Gm-Gg: ASbGncvLTyi1HLMqBcf9sPP5Zzd2k9WPGgQ1A/wY3zJgcsmvAFejZ/gWPUIuDSyQIa4
	1toAvhx3sP9jpFdevi9DWyz47lavh3kinfVGQhdP6cTX8EhdX7H7kwfqdMdPAFfHKrKsBc0hqa6
	+VS91jXXEnbrsUuw3EW+kh6mEVD4Y2/aqBBkzEsg93zyvugei7Zckc2C/hbhvqq9Q4Q7vo4ezXE
	jGcz0FLQk6H8lSbc+qtxepr8GxgCbdl5iE9ZJlAkz9LcI8XwEaEX/reQHubJwSRteQc9B4UDGou
	mf87NAzbsPvN1D5rCk3cC/NoDThcw/gjO1LsCiF/U6x6IAP1hIQqn42A/2gVeAXixtUuB6bSAXS
	I9SLkPtucI0E3PFzNwgxuycl2+1GoRXrbFg3QuasUMvpiS4QihxTIXGVfs60jVeM/P5GJ3L2kWL
	p20wG5tszAirJKM3/ZjbS0Jak=
X-Received: by 2002:a05:620a:6cca:b0:8b2:e0ad:eb97 with SMTP id af79cd13be357-8b6a23f9f27mr297020485a.83.1765020499548;
        Sat, 06 Dec 2025 03:28:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHJHWqoex+xRiDmmBbNdl3f9VzwXv1wYvWtOWvVciq53luinVftKkSOrV0+ulKIRpu8jICgkw==
X-Received: by 2002:a05:620a:6cca:b0:8b2:e0ad:eb97 with SMTP id af79cd13be357-8b6a23f9f27mr297010485a.83.1765020497870;
        Sat, 06 Dec 2025 03:28:17 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b1a5d7sm2399030e87.15.2025.12.06.03.28.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 03:28:16 -0800 (PST)
Date: Sat, 6 Dec 2025 13:28:14 +0200
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
Message-ID: <5dyhjur3hkhvtlwrl4h2m342byor7f3ssvkunj4cggnhbhlmnb@l2mfz7ypjj37>
References: <qx5ashx62pufott6hnsfna3qntnoyvxwxze4rihhuxcsdxi37s@bbdvc3sfsgne>
 <20250929-gregarious-worm-of-memory-c5354d@houat>
 <itgffxygopi7etkt7xhvmyuvyl5ad3k43nsxvjzw3ubtwiikn7@ocugfdaigtu7>
 <20251003-uptight-echidna-of-stamina-815305@houat>
 <zpygq4kapil3swsmhhqkdwny4ry2dznnzixsw5rkza5p2kqnvp@abvf2vxlbwif>
 <2a5fitdzr2bz235fj6rvqzxr6ckszkjbazjfszlvnizdh2cvbt@w3ypjo7vahhs>
 <pibxhl5hlcpuk3zsgyienfdlda5cwuxrnofwlw356scuzzplqy@zw3ofelgvwik>
 <bsoqyzxi45i67jpzhwr2d4illufa5ghqf25z6flbp67lsbvh22@rrlcihp2oxea>
 <cgzclxjubj5oca3rdnv44qwrkmpddxve4tlz76cc6p3b4hz3oc@3l7mt5ha7do6>
 <20251201-enlightened-zebu-from-asgard-5a20be@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251201-enlightened-zebu-from-asgard-5a20be@houat>
X-Proofpoint-GUID: zjIBmwIVL4Twb8LzDSKKlrCKVzadQYNe
X-Proofpoint-ORIG-GUID: zjIBmwIVL4Twb8LzDSKKlrCKVzadQYNe
X-Authority-Analysis: v=2.4 cv=d774CBjE c=1 sm=1 tr=0 ts=69341354 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=dcO_3dQx6njePB8vrlkA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDA5MiBTYWx0ZWRfX1ZPOYaNxeGSD
 0J9OWp/MqcZvtYiI8apSb/05uT1MnxUJRT0GUsbddDhtvccC+5Esfyzh7cXhCvT9ZH/+hpxe5kx
 ZZYK/YTZsk3QQsuZYYRbJWrgAFpaXKlyHoDexblUvIPupF4F/hpX7aNlEQiwMKbNB22+i/nfFxq
 owPUJKqCK20kmu4fT2PeDTfvjlZqhamg07WiqP1NpOXtriJZ+EXbhz5FU0061f34vOzm69VcCJP
 KABu3P+lhR/eeKe3GkeA/A01jMhpKiYPugbasviFxip8vwe1zc1qP/9PK4afb0F9Z46lhP5b9NY
 WDIj9oz/2l8ShDmUcCNl3aMeSD+8kP9OC9IXSeLJrmqL06kZb6lyJywKUMq1jKLkNPhlnUHt0Uf
 gFPtbOt5PFVnbOKeEBqMjOfyWXL8xQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 clxscore=1015 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512060092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_032821_569976_AB5B2711 
X-CRM114-Status: GOOD (  37.27  )
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

On Mon, Dec 01, 2025 at 06:01:56PM +0100, Maxime Ripard wrote:
> On Fri, Nov 21, 2025 at 07:09:01PM +0200, Dmitry Baryshkov wrote:
> > > So it's not really impossible, you just need some hardware and a day's
> > > worth of work.
> > > 
> > > There's no reason these should get a pass, it's breaking the spec for no
> > > reason.
> > > 
> > > > > For SPD, It's really not clear to me why atomic_check should do that in
> > > > > the first place. Your initial concern was about exposing infoframes in
> > > > > debugfs that wouldn't be used by the driver.
> > > > > 
> > > > > If the driver doesn't register a debugfs file for SPD, and ignores
> > > > > whatever is in the atomic state, what's should we force drivers to do
> > > > > that?
> > > > 
> > > > I really don't think that drivers should mess up with debugfs on their
> > > > own. Making atomic_check() disable the unsupported InfoFrames makes the
> > > > picture perfect: the DRM no longer tries to program them to the
> > > > hardware, DebugFS files stay empty, so the whole state becomes
> > > > consistent.
> > > 
> > > In the "bridge has no access to infoframes" case, there's really no
> > > infoframe. An empty file is "the infoframe can be there but isn't used",
> > > not "we don't have access to it and can't report them". Only drivers
> > > have those infos.
> > > 
> > > If we do split up write_infoframe into multiple functions though, I
> > > guess we could create the debugfs file only if the function pointer is
> > > set, which removes drivers' involvement if you don't like that.
> > 
> > I'm fine with not using HDMI connector framework for lt9611uxc.
> > Likewise, I think, it's fine to have empty files for the infoframes
> > which are not being sent over the wire for any reason (hw not supporting
> > it is one of the reasons).
> 
> I can't think of any other example in the kernel where an empty file
> means that the driver doesn't support something.

Okay. So we need to sort out implementing the split write_infoframes in
drm_bridge_connector. Any suggestions there? I'm asking, because I don't
want to end up exploding it.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
