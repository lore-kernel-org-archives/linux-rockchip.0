Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32D0CC87FC9
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Aug 2025 09:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDXvm99A/7F9mWcgUmP/+zlhx3iMLcKT4PV34vByWpg=; b=Evo/IcmGSloYcg
	WkEhbJfwIcx4X5xZUz1vz2mOb2QOubpNihgb994C8SUM3tnS3JdS7H+xR5t+SDKwFIZgFO0GCRXec
	7M3L6+4FZ4YTcopyp1tRTlKgnCrEK/EiqMeho6ic4QzYC/XCvA0X6UQmEZ2QjjbSgWIrniW4X8oj0
	az0VF6+lMN+c8p++oMY/QjhWt9yIKIvaHAHLT6WIKbD1GVuDbOlFGdKwa/wFdeEqs13Qsaga39iNj
	dOY3+1Mojj+0KbeSh0tgVS0NOQ5K1ZoZwiBx238n8+QWqdWgo3/yC5QN/EJ6nLlBeb5KQjCFw6cd6
	hYZ6456H5WKnk1GkldOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ui90u-00000007WFi-0noI;
	Sat, 02 Aug 2025 09:58:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ui8yG-00000007W3A-0w9o
	for linux-rockchip@lists.infradead.org;
	Sat, 02 Aug 2025 09:56:13 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5725fdLQ026102
	for <linux-rockchip@lists.infradead.org>; Sat, 2 Aug 2025 09:56:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Asqzu24OO8UYIDi9bC459VXzWsN/7IVQ4DWi2UawXoM=; b=RrMHPVM73DxKGGJg
	qqsIWm2Q/ZTftd8Fup41iicv4JvJklA/4eAeX7aUHbhLxKYR8ZmnvoSWb1utRHaa
	gj8mIJXbltj2Qkz7gEnelSrogPSjtGN6M+uXFhKRM1oaxxxKMCLYCnaVAL01LFhk
	YgK4QaldVVykklAyWbWn+2u9imuUvi4/ZooQeCHIbN/1AdnkMgXEX2bWgu0ts4Q1
	hf+mEcYNDhM5BWjVCLDRFiYxVCuxJGMOrpkU2GAums6U8H0OFxriXG5/2W9oTjuI
	x5OlK/Tf2KXh4u/eXDYp6X8OF/fCQrLcvyI0JZuQxznMb3WYdTAUTACFlOcannvI
	HQ79zg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4898cjgt76-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 02 Aug 2025 09:56:05 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7074bad051fso43002396d6.1
        for <linux-rockchip@lists.infradead.org>; Sat, 02 Aug 2025 02:56:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754128564; x=1754733364;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Asqzu24OO8UYIDi9bC459VXzWsN/7IVQ4DWi2UawXoM=;
        b=Ewv8eTOGW9nRC+0WgNgcHpQKgGiTv2shqneNFLq9XyXI2wuz6DjL5L9/pb+OPfo+2v
         QaUl7ariS595NeVSIL1t06CB/M803w1a+mUO9LZ4MZioK7JPGPgiJ2hxM4IM7IcR5mqx
         jSLprcd7H1xRSQQW5LkQmHWzZJYGXMGKfy1ymL6hhy828TeDIUhb//a/bUkEFz/Bdx/R
         qbCmH8v9DM9RPg3k5594P5a967o6QG93Afvx3Hmm0hUQyGFXlbFhJrjlua61tbU/+oVb
         LU0zQsuzFhKqd4nEdIThiYe7XP7xuDAOb9041gEqOaCzM7l/jRKs4NrSCcicelVgi0/Y
         PKLw==
X-Forwarded-Encrypted: i=1; AJvYcCVDVd8WJvtldT9235TAu1YsApTtafjzq2+XfvTsYZvCJu2fVvHsTliatqHdARvYOa+wH/2F/cA2Y8Kx3ifv/w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwjwfUIdP1jBHLHWsDfY3hwehZVpQmg4mCWk10fEYQTR/EYCIci
	PiTxzCiUl5S6ud0pFEs7Y4NYPy5k7tVPvAzrZzllcRqLZALD3BOpjjLWTQYPImocFW5YN8HDv6O
	/OsVRvxWyBJ+43wvRrJT+pktHDcH/UdnZzfW27dXcJh3onF8nmAPW/F3G52O0ndo8JjUPR2InWs
	w=
X-Gm-Gg: ASbGnct8mKCwR5hiu5dMIamgR7MvatTH5Oj2mSr7kUCCwO3vr90Hsj4/oQpF0wp6xYc
	wVbvRxq/T5UpH4p3cJrZ02fhCaAa2JRXXPfobn9dvW2OskWisAye7mI6Pr02Ulm+AeUnXUJeNCB
	5I9wano/eO6KUeLan8ZdHj1Xy1dQROQVJaAa3VBPdrzVsOZLAF9BDsLn8F9rdPQt4GLnuhsl2zY
	OjfEIgA3n9CV0SIZoKKV5EcjvYjjtnT51wAPMPUYjR7SQLF98lA7ZApu0d120qPtGFYBW32FCoz
	lkwjyU5JBcsibupiglGLGxceoawld2SZ+PXUUHoaqrOJYZtuj63NC11fKZl8HmrH579fAsmepRk
	eO+4p2QX4qIGp4zZA5qiCZNolXPUhnAFaH/xsrS3iLAysQQmKhgi0
X-Received: by 2002:a05:6214:400b:b0:705:8d7:a0c3 with SMTP id 6a1803df08f44-7093630075cmr37002456d6.34.1754128564359;
        Sat, 02 Aug 2025 02:56:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOTdM2Iczyvgl46yWDi8GTyzV7HP8tA/9iXZHl881FgxKm6LV0IC4YJNQAmmZo1HrO7zCu2w==
X-Received: by 2002:a05:6214:400b:b0:705:8d7:a0c3 with SMTP id 6a1803df08f44-7093630075cmr37002056d6.34.1754128563864;
        Sat, 02 Aug 2025 02:56:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-332388d8ca4sm10105271fa.45.2025.08.02.02.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Aug 2025 02:56:01 -0700 (PDT)
Date: Sat, 2 Aug 2025 12:55:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 0/5] Add Type-C DP support for RK3399 EVB IND board
Message-ID: <pk5wecbbpxn7v4bdwtghhdnm76fmrmglelytljwfb4cgvpu2i6@rk5turgyt5xq>
References: <20250729090032.97-1-kernel@airkyi.com>
 <3kefqzjewmsyzfvyi33kvlgjd6jphjg3fsnixb3of7yb3xkgs2@hgi6xfkgd653>
 <63ec11cf-7927-431a-995e-a5fc35ef1ba7@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63ec11cf-7927-431a-995e-a5fc35ef1ba7@rock-chips.com>
X-Authority-Analysis: v=2.4 cv=MNBgmNZl c=1 sm=1 tr=0 ts=688de0b5 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=2OwXVqhp2XgA:10 a=JfrnYn6hAAAA:8 a=s8YR1HE3AAAA:8 a=GTOoGQlhK9DRF86BnBwA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: rkSqTS6rquWFfncoPWwhgMY1jDWenxBD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAyMDA3NCBTYWx0ZWRfXyfYBoxpS38YO
 nE7vBgsnBzM9WY7zr1pyuhpMFjZr8tK3OGnxJMkVCRpnbmekwUwGCuHvuxh8bgmHi0xv+TB8grA
 7Ozb51msZtu6eGWBKE/dvVjHDWXxA7qqyxYI1elfs/haV/HnetyK6Fm6OLG42cnIHnaWmWIBXcP
 puiu5pAyjAovufsEIqZyDKxqUVC+BgU9KGRDDXKcu/nvp4lJsF6QZTchvpL4OzLirtuEJAlOi6y
 oEGDx+gSnbqlmEd9oPA1E8iVGRFwkx17blEt5BgwnjFPgh3zsHUyZJ8mthS1cWRQiWppvYjLnMo
 yY7/cu19fzl9QtHVGIO9twRlaQLIhZd/m1w7aTwNxFb1Koq2pMzTzAQDTLSJtUCdI3cX6WKQxC8
 Wq7jqMGHwMekMl+lAwKlRNoLJc1PcoTUz0yhuIPrl+Rc9pFxCkQ52DQ0Bx/iHC3XOPU1ZvEj
X-Proofpoint-GUID: rkSqTS6rquWFfncoPWwhgMY1jDWenxBD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_08,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 phishscore=0 mlxlogscore=999 suspectscore=0
 spamscore=0 mlxscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508020074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250802_025608_283454_1CF5D48B 
X-CRM114-Status: GOOD (  42.36  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jul 31, 2025 at 10:19:49AM +0800, Chaoyi Chen wrote:
> Hi Dmitry,
> =

> On 7/31/2025 3:13 AM, Dmitry Baryshkov wrote:
> > On Tue, Jul 29, 2025 at 05:00:27PM +0800, Chaoyi Chen wrote:
> > > From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > =

> > > This series focuses on adding Type-C DP support for USBDP PHY and DP
> > > driver. The USBDP PHY and DP will perceive the changes in cable status
> > > based on the USB PD and Type-C state machines provided by TCPM. Before
> > > this, the USBDP PHY and DP controller of RK3399 sensed cable state
> > > changes through extcon, and devices such as the RK3399 Gru-Chromebook
> > > rely on them. This series should not break them.
> > > =

> > [....]
> > =

> > > =3D=3D=3D=3D
> > > 2. DP HPD event notify
> > > =

> > > The RK3399 has two USB/DP combo PHY and one CDN-DP controller. And
> > > the CDN-DP can be switched to output to one of the PHYs.
> > > =

> > > USB/DP PHY0 ---+
> > >                 | <----> CDN-DP controller
> > > USB/DP PHY1 ---+
> > Could you please clarify this, can you switch DP stream between two
> > USB-C outputs? What happens if user plugs in DP dongles in both USB-C
> > ports?
> =

> Currently, the software simply selects the first available port. So if us=
er
> plugs in DP dongles in both USB-C ports, the DP driver will select the fi=
rst
> port. This process is implemented in cdn_dp_connected_port() .
> =


I think Stephen Boyd has been looking on similar issues for Chromebooks,
which were sharing DP controller between several USB-C ports. I don't
remember what was his last status. I think there it was easier since the
bifurcation point was the EC.

I think, CDN-DP needs to register up to two encoders and up to two
connectors, having a separate drm_bridge chain for each of the DP
signals paths (in the end, you can not guarantee that both branches will
have the same simple CDN-DP -> PHY -> USB-C configuration: there can be
different retimers, etc).

Both encoders should list the same CRTC in possible_crtcs, etc. Of
course, it should not be possible to enable both of them.

This way if the user plugs in two DP dongles, it would be possible to
select, which output actually gets a signal.

> =

> =

> > =

> > > BTW, one of the important things to do is to implement extcon-like
> > > notifications. I found include/drm/bridge/aux-bridge.h , but if the
> > > aux-bridge is used, the bridge chain would look like this:
> > > =

> > > PHY0 aux-bridge ---+
> > >                     | ----> CDN-DP bridge
> > > PHY1 aux-bridge ---+
> > > =

> > > Oh, CDN-DP bridge has two previous aux-bridge!
> > > =

> > > Now, I try to use drm_connector_oob_hotplug_event() to notify HPD
> > > state between PHY and CDN-DP controller.
> > Does it actually work? The OOB HPD event will be repoted for the usb-c
> > connector's fwnode, but the DP controller isn't connected to that node
> > anyhow. If I'm not mistaken, the HPD signal will not reach DP driver in
> > this case.
> =

> Yes.=A0 What you mentioned is the case in
> drivers/usb/typec/altmodes/displayport.c . I have also added a new OOB ev=
ent
> notify in the PHY driver in Patch 3, where the expected fwnode is used in
> the PHY. So now we have two OOB HPD events, one from altmodes/displayport=
.c
> and the other from PHY. Only the HPD from PHY is eventually passed to the=
 DP
> driver.

This way you will loose IRQ_HPD pulse events from the DP. They are used
by DPRX (aka DP Sink) to signal to DPTX (DP Source) that there was a
change on the DPRX side and the DPTX should reread link params and maybe
retrain the link.

> > > Patch1 add new Type-C mode switch for RK3399 USBDP phy binding.
> > > Patch2 add typec_mux and typec_switch for RK3399 USBDP PHY.
> > > Patch3 drops CDN-DP's extcon dependency when Type-C is present.
> > > Patch4 add missing dp_out port for RK3399 CDN-DP.
> > > Patch5 add Type-C DP support for RK3399 EVB IND board.
> > > =

> =

> -- =

> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
