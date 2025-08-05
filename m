Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4920C87FD2
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Aug 2025 11:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LD+zvMoq3iiK4nFX5tZ98evmzbGrT1xp+L61oG3/BR4=; b=i8w0pIOrdGgkDZ
	6Utlq3AuO9wAfVr3eueCtwgVqbbzdHdMMhxLKrPDMhf72jspkHm4LrwCtPiOL6LJZy7o7MIRz+jf7
	JDOfT/imMdfSw84cVxwMXIIb9bMRWBBEIVsBRtqf/VspgMvVEJ7CSL+398LvWD6vJXILDb4sNFhy4
	jzzoOBVkhBM+jPwoz9BH1hiNdTE95fG/A8ZCh+1zuhgwXAWDb5DQP6U8ZnTP00fky2Dl5KqoMULQx
	fPuBPY9NMfSPUDKh8Q+LTvsv652e3z3Ws4XG2xjXJV+HVpbYLuFj/1m/7I5yF/3Pozt9AVsaI+Ejk
	heYQrXI3xcWd/apuvmvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujFSQ-0000000CYgY-1S7c;
	Tue, 05 Aug 2025 11:03:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujF9u-0000000CWRM-47zE
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Aug 2025 10:44:44 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5759SEIY009784
	for <linux-rockchip@lists.infradead.org>; Tue, 5 Aug 2025 10:44:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HQj3FZoctR5ZS2xg/dOfzXuT0Dr0fvmcc9XZPTdXy0Y=; b=D0/F8yS6/OcIy9ah
	7YaYrsXNvAazegfh/GMt3/QvEy/j3/9zjhmhDdSZN5eOoxX0//gOc93vmKCwwaio
	tuQrFNy8O1HrQHG+Ye3CNeQqk2LaLBk00aHITaNjZm9dy6BCLlC2vhe614Pgqm/H
	IsBydYHwgenHTj0I2Ffgd36qePbfRXGL34H7NhfPxok74Q5WUhg7qpasftnYSMPG
	dmQJO7tUjBd5FtDTP8CcORgTyjhKfOpWBJWxLmrxA5oNclvJjLAvJCoJPE7U8Md1
	iKB+ndNvnLf99f4CTyG4cDWhe9YRVij8SDgNTVpAkEC/M9eY1nlKQzoUc2CpNKqW
	JMxy1w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48avvub61k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 05 Aug 2025 10:44:41 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-707722d08d9so102778736d6.3
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Aug 2025 03:44:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754390680; x=1754995480;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HQj3FZoctR5ZS2xg/dOfzXuT0Dr0fvmcc9XZPTdXy0Y=;
        b=ZMzgYCw9FGdqEr16kR8wtJ99HdZD+kAWo44L+t4x5oLJtlgfU7ocCOBfVlw+iRWEGS
         spefqwb9tC4ceEFDIJXZ9WLnn9DiBwmYuuFiHgB2tIdpA6ttvqUQrEDocMsFWvP4A08e
         1fipq3Mv/Q1gR7C4bnaUcgmvfKz3wvBKuK5WgJl3lpAf9X/332AVVSR009OUoKzR5I2o
         ytIlo+JicdmRHljGn47KSy0uw7EirPLwAX/RTm8b6avGMt8gPWQZ3wtNn2og39zq2QJC
         SC6RxVrWyds++VNQrGO4+cSaEVWWPHUnm7Ez+th66gKAibHjqELh2PNGJpvlgXr8g0gX
         MkYg==
X-Forwarded-Encrypted: i=1; AJvYcCXov2UbVnK9HKaSIAuuGlVpQ4rla0Y8OvtftKJVSwti3LOGqF64UqVIfnskVzTuj3JsfaEQzDNXB6OA8UVebQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyx3QeIHQzaAH8lBuY/Wt3QXJ8zYhzDxG9+g7yrK4oZD4L73N2K
	UVUTWsAAUuBS/dxj65u7vmxwme1P2a04sR49pIGxcazoL4IK7yG1RRgYp6iJd2SpuplYng1yvJp
	tSbcy3aid2ey7VtksrMiW76f6BZIQ7NdnuXTgmLVhDrWV0H77jwha2merwXFcPRJV8pOxoNdmCZ
	I=
X-Gm-Gg: ASbGncvLxMLOP2ZsCJnkao2/sT39otT1a0uzPf8y5Snn+lWCwBAeJ0Ab3/Boq6tkDpG
	DqhQO7uPmvY8JDRFOtwZs5K8f6yCQqamKhvXm92xGsZhxZpB7jsI2Sv9aTMZlu3/b2V89YsBM7M
	ahP2qnKixw4xKjHADEJ4XRkmQ3+uoTE0MNP3wttBdiQvA4gPJBICoJA6Ab3sAaCSLy/6DN5UQ3f
	zgGNRoakrAHUN6dmAnDsQ15ciImB1pyE4H64FV13Jv3VVPRqFd0sk6RrZARN56UlSqVUVE6aODT
	0wZEB1hETSLu5sdd6N2ha6gapOZ2Ko4E+C+GcUPHvzfJRq19qfyUtiOeEjdOszOn7CKfc5y+zmf
	73/pASYSNL1tyXslYFkqpvbvBln8io3NJYs4iCBseUuFQj1na7P72
X-Received: by 2002:a05:6214:5001:b0:707:6425:23fc with SMTP id 6a1803df08f44-709362430abmr166449056d6.26.1754390680335;
        Tue, 05 Aug 2025 03:44:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+lMiAsbHz8RoaMN5eHDsdtapu2Nr4qMF3fZ3qhDMKzwzlcVX/R3oTueoOHY1lwn3LqnbIIg==
X-Received: by 2002:a05:6214:5001:b0:707:6425:23fc with SMTP id 6a1803df08f44-709362430abmr166448516d6.26.1754390679809;
        Tue, 05 Aug 2025 03:44:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-332389807eesm19601341fa.88.2025.08.05.03.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 03:44:38 -0700 (PDT)
Date: Tue, 5 Aug 2025 13:44:37 +0300
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
Message-ID: <6nfmxwtwcvuyo2jaao7fele7jcgcykfpy7czbcbjmjxv7cs5sc@dmbtot73kw63>
References: <20250729090032.97-1-kernel@airkyi.com>
 <3kefqzjewmsyzfvyi33kvlgjd6jphjg3fsnixb3of7yb3xkgs2@hgi6xfkgd653>
 <63ec11cf-7927-431a-995e-a5fc35ef1ba7@rock-chips.com>
 <pk5wecbbpxn7v4bdwtghhdnm76fmrmglelytljwfb4cgvpu2i6@rk5turgyt5xq>
 <0207826d-a987-4464-b306-29bdbfac45bc@rock-chips.com>
 <3e880194-5ac8-4056-929c-ac103bedc737@oss.qualcomm.com>
 <f726862a-bd18-43ee-b307-8daef2451e6b@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f726862a-bd18-43ee-b307-8daef2451e6b@rock-chips.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDA3NiBTYWx0ZWRfX2iL9q9Sh+x6c
 48Mz5mNIwwfN57Pbdj5B7Sq1gojjwm7z3mXlHGc1Nuh6FBVOBRd55aRMoO+28Qv9YdZcZ+LCqTS
 oDoOlqICxt05XPz6Us6tMJ7nKh1gGEE1WMZCBMGhk+Mw5YP1jUD2e1QNpMim1kEWM4PBThMAFK6
 5o9oWhdgiHlqhWCFwgsO4KwZJ1hzzXvlsiQ6W+W8kPppN4AZitcyfS20h5n0dgMvNDWhtcMkT7i
 5+NtADi2v9WyrwJUbW26e2Joc3zEy7rb0c8nKaTTcOeRwcRvyJV2H7YcHI9kTkkmwpHSxnqmvqM
 XbFc4Hjo6U48BBXUsaVUXY2BV4fo7l4M+x/aX32c6z+KA6L8LRjP0v26hxRF7WU2SIANLsl2XFx
 gpah4TQ5mhVtlYeWZAH+SOB4/QWvA4Vc+06R3BQLzbK3gTe/R/zIpERKnDDa4vU7oeHBMWk1
X-Proofpoint-GUID: UVDFbsYsaxkQemRUWEcpOBeE0PArqUiy
X-Authority-Analysis: v=2.4 cv=OYKYDgTY c=1 sm=1 tr=0 ts=6891e099 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=2OwXVqhp2XgA:10 a=rd-FPC7Uua5lUePm5bYA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: UVDFbsYsaxkQemRUWEcpOBeE0PArqUiy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_03,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0
 priorityscore=1501 mlxlogscore=999 malwarescore=0 adultscore=0 suspectscore=0
 clxscore=1015 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508050076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_034443_145318_B522AFEE 
X-CRM114-Status: GOOD (  47.83  )
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

On Tue, Aug 05, 2025 at 02:32:17PM +0800, Chaoyi Chen wrote:
> Hi Dmitry,
> =

> On 8/5/2025 12:26 PM, Dmitry Baryshkov wrote:
> > On 05/08/2025 09:13, Chaoyi Chen wrote:
> > > Hi Dmitry,
> > > =

> > > On 8/2/2025 5:55 PM, Dmitry Baryshkov wrote:
> > > =

> > > [...]
> > > =

> > > =

> > > > > > > BTW, one of the important things to do is to implement extcon=
-like
> > > > > > > notifications. I found include/drm/bridge/aux-bridge.h , but =
if the
> > > > > > > aux-bridge is used, the bridge chain would look like this:
> > > > > > > =

> > > > > > > PHY0 aux-bridge ---+
> > > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
| ----> CDN-DP bridge
> > > > > > > PHY1 aux-bridge ---+
> > > > > > > =

> > > > > > > Oh, CDN-DP bridge has two previous aux-bridge!
> > > > > > > =

> > > > > > > Now, I try to use drm_connector_oob_hotplug_event() to notify=
 HPD
> > > > > > > state between PHY and CDN-DP controller.
> > > > > > Does it actually work? The OOB HPD event will be repoted
> > > > > > for the usb-c
> > > > > > connector's fwnode, but the DP controller isn't
> > > > > > connected to that node
> > > > > > anyhow. If I'm not mistaken, the HPD signal will not
> > > > > > reach DP driver in
> > > > > > this case.
> > > > > Yes.=A0 What you mentioned is the case in
> > > > > drivers/usb/typec/altmodes/displayport.c . I have also added
> > > > > a new OOB event
> > > > > notify in the PHY driver in Patch 3, where the expected
> > > > > fwnode is used in
> > > > > the PHY. So now we have two OOB HPD events, one from
> > > > > altmodes/ displayport.c
> > > > > and the other from PHY. Only the HPD from PHY is eventually
> > > > > passed to the DP
> > > > > driver.
> > > > This way you will loose IRQ_HPD pulse events from the DP. They are =
used
> > > > by DPRX (aka DP Sink) to signal to DPTX (DP Source) that there was a
> > > > change on the DPRX side and the DPTX should reread link params
> > > > and maybe
> > > > retrain the link.
> > > =

> > > Sorry, I still don't quite understand your point. I think the entire
> > > notification path is as follows:
> > > =

> > > Type-C mux callback -> RK3399 USBDP PHY -> PHY calls
> > > drm_connector_oob_hotplug_event() -> DP driver
> > > =

> > > Are you concerned that the IRQ_HPD event is not being handled
> > > somewhere along the path? Is it that the Type-C mux callback didn't
> > > notify the PHY, or that after the PHY passed the event to the DP
> > > driver via the OOB event, the DP driver didn't handle it?
> > =

> > The IRQ_HPD is an event coming from DPRX, it is delivered as a part of
> > the attention VDM, see DP_STATUS_IRQ_HPD. It's being handled by the
> > altmode displayport.c driver and is then delivered as an OOB hotplug
> > call. However, it's not a mux event, so it is not (and it should not)
> > being broadcasted over the typec_mux devices.
> > =

> > The way we were handling that is by having a chain of drm_aux_bridges
> > for all interim devices, ending up with a drm_dp_hpd_bridge registered
> > by the TCPM. This way when the DPRX triggers the IRQ_HPD event, it is
> > being handled by the displayport.c and then delivered through that
> > bridge to the DP driver.
> =

> I think the issue goes back to the beginning. The key is to reuse the log=
ic
> in displayport.c, and the previous approach of directly setting the fwnode
> has already been rejected. Is it a good idea to register the aux hpd brid=
ge
> in displayport.c? In this way, we don't need to register it with a bunch =
of
> PD drivers (such as fusb302), which seems like a more generic solution.

displayport.c comes into play only when you actually attach a DP dongle,
which is too late for bringing up the display pipeline. But your point
is valid, it might be worth moving drm_dp_hpd registration to
typec_port_register_altmode().

-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
