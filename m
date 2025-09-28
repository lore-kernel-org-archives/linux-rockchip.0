Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77D1BCAC5BB
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Sep 2025 21:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NB7NczqjCioOZPWGLxPLIW6izySzhDhp4NrRKV+R0RA=; b=E827m/7qzrxQgF
	Y2xamGaqYx/oYUIERTlO9C6OcLBSXvs0qWxCvZ9280ZwPdEMnYbALvQYH2ugr0/MvOZq7D/Mk6o8h
	bnA6EL2cPnf3kso/PcUdCJxO8FH1SJH1HcWrvZx9lYdjwAbzmD8MLti6QGQxeDhG28rKUmrowuxct
	Id7H1l2owRgQEuD1n19ZDtRf3zLDabBM3TSCKNRhQ7/DM0zpaZdFcssVjGkwpfJ9Uh3aPtNbadG0w
	qUu8oFuCEfN8lyZRFSiaYtYWnu/G/WkapwrASQIm/ScmHoRrw5oxIYTaAPS7Tnxxx30HIyS+cQBLo
	vQciT0F29z1GlBu9t7WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2yvl-000000007nP-3WsD;
	Sun, 28 Sep 2025 21:27:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2yvh-000000007jQ-1t86
	for linux-rockchip@lists.infradead.org;
	Sun, 28 Sep 2025 21:27:39 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SLHNI9011481
	for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 21:27:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FaQfFaFOCtgfi/FoFC/UkQ6y
	6ObNoFB/yOWfDU1S1+U=; b=PAL+GAJD0HhMhVMaHNzW3C3EAMAcOjXGffze1CsK
	uDDHw+OwM0yB+ka31d9/zuJbovMY2r0tHatqUjceYV1dTa4hRa0TKDhQM935U1M9
	EVpAHWpK96Y+eJAsUf1Na0pK4BQ/54gx83afKRWs1YyVEKvNUQY+CUMWDIJDyMqg
	/Di/0NHnbJ+RkAxfUWrKAbLm1vdfHc4uLpUz8GYmdWeoUOfvcYoptNtluc3Bqljb
	jOZw4DJSSgvme0o7NkTB7lVChb+UfQtRRMfE3iEj03aAqxw/Y7EikAMN6qyyh0uj
	vSaN6ZASONI0LNJaRT/geCkcMNo8Z8e7vE5PHWRM5YT6/g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vqub4q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 21:27:36 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4deb67c61caso49832781cf.2
        for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 14:27:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759094855; x=1759699655;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FaQfFaFOCtgfi/FoFC/UkQ6y6ObNoFB/yOWfDU1S1+U=;
        b=sJTEGFQhPoSo1fgB/tWdWXU1zIORlrgD4HCFjDjMj4H95n0IvkgmkeITFuzacZWE4D
         KSP2KVrw24fkooys4FtY7cwozdKdKDHwwnD3/VpMykfc5yByLVz/EjRZeX/PQgX9k0sn
         unP/uIt0RH+1li37vPjnQrrx6DuobXNRYQazF7HRNxkiY4Qk49wn0AgzAKyApg8x1rE1
         PNPDZoR3jUlPAxSMglpwLB3JbDy8wLwCTofCFVMwD9xQVqEenIL8YsTzuYWD2VwM+pXC
         8JqgcOriLWfzbwePMhuaWR/WZRREgmfXzvwoQp/nnymEv7F+ZZgWkRZvl5U+zh89RXxN
         6SuA==
X-Forwarded-Encrypted: i=1; AJvYcCXjXsHy+uaDUJ4Uxsfcoo53bMFwTKj0eEprLItW6EPgvGCxibto2WXHw9kmRsbBGg+4YcCyjzzyiWJq8iTRBg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxplZbrZttn6mx5C+rw6Fl6y0cCBdGBGthrxSGgiu+IuMLyN6mw
	OMc4ZWH30/bwBVhAsXgAzH5yuosJdsqnf8YEYwTm7KC4eVBq2GBkj1Sngut0bKvsVB2Ceu37SMW
	wlGVb8Tfu2jykd6r16IXDUiB4IxC3x3fJv3TvSrjOFRRI5AyEHanCfrPDmtbWcZBxdhwLkwmKSU
	4=
X-Gm-Gg: ASbGncvuw3bXVmc/gy1soxll8Ci3sqp963G+K4RxVKJ0fHShD1SJ54OD+lXpmLWhK4m
	PuUlpqClH0JTnamoH6Nt+0mC5jj9NgcJoHD70urB7q9Bs4Cw4XaMSUbs5YAkPeom5ek6LG1HpTK
	FSnDTBtqIvwkaUueKO2griFjRHRTSKmx8J4F9wfoFIZ6UvNJdoMaphjlUHDulUyroXOEabbKKOf
	VjEHMRd52UWSxkGpoePOdYq05uEMW7H9QxQo1xwu2QjfEkjl24q45wqnbi8JF2J5CXfmYb0khHu
	JPNZ8aw1tOOR4IPLARaEK1Jp4PUN2LecEUT1GVkv3qousrSJjpJ256m6+peQy2tL7SNO7f/akyZ
	ZC3M+JJIb1kt0o5NDN5Z1psOUeX9iaXMY6oyppMubzBhZZ0pRG91Q
X-Received: by 2002:a05:622a:4c88:b0:4dd:2d5a:4c70 with SMTP id d75a77b69052e-4dd2d5a5249mr113850511cf.45.1759094855316;
        Sun, 28 Sep 2025 14:27:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVlSpEy9WtWa4TAoo8vOL0fbhKJIDjrX8Rm+aa/grsoe17g1Qr6IL2cUsXyuX3wvLhYBHeqA==
X-Received: by 2002:a05:622a:4c88:b0:4dd:2d5a:4c70 with SMTP id d75a77b69052e-4dd2d5a5249mr113850321cf.45.1759094854866;
        Sun, 28 Sep 2025 14:27:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-587c807ed8bsm359961e87.37.2025.09.28.14.27.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 14:27:33 -0700 (PDT)
Date: Mon, 29 Sep 2025 00:27:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
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
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 5/7] drm/rockchip: cdn-dp: Add multiple bridges to
 support PHY port selection
Message-ID: <pwk4ylrxyedq33qivpwy4kly3yx25yjkv75ja3prf5ynxosiez@lb53gculvj3x>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-6-kernel@airkyi.com>
 <idyrlzhd5sotg3ylr7vbwmczimglffc75nafxbnhhm3ot2jn4w@ixerm6elfmre>
 <ede70598-c451-4352-ab3e-0e278ce33ad7@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ede70598-c451-4352-ab3e-0e278ce33ad7@rock-chips.com>
X-Proofpoint-GUID: wOZvPNO3A_ZkhXUTcPeAMBkVpE2ly6uu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfX3E/n/Imj1wJ0
 2I7V9GxW5egs8Js2oUXUsR1xaJlWrdUeYrk06LEIzFYVMIMvXs3tTItrgRSJ20e/mBhduqIyp3I
 sn+UlbKfPWgYRhX1dI7hhOWObKOCQfUe8t80gERn16377j3QAJikaFTxQi0ZKBg4xe7rTyIjDH1
 8Fw+WCTLfchhg6BIUcazY2foBLsRBmai3rpUlLRKjXOIlQ8/1DI67+eH4Bkf+k06eOLlO6mcaP/
 BMHtbWqCx0LFECR1YHGt4eRwpnsuBsJNCMpHJYd5xxM1CNDhAbhw7Q6syhNUJbFjXC2OimDBUek
 8c450OcznqTJN37PTqY17dXyctddImjiad7uAJgvC8wHoOPPOszu8vguPWaZh3vVezb5L8WDQSB
 RTsXhFvf1lJgS692g2Zz174786Zq7Q==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68d9a848 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=gy9Ct68RWRgD3XKeOnoA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: wOZvPNO3A_ZkhXUTcPeAMBkVpE2ly6uu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-28_09,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_142737_498044_7A167DF6 
X-CRM114-Status: GOOD (  27.91  )
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

On Sun, Sep 28, 2025 at 05:52:35PM +0800, Chaoyi Chen wrote:
> On 9/23/2025 9:50 AM, Dmitry Baryshkov wrote:
> 
> [...]
> 
> 
> > > +	/* One endpoint may correspond to one HPD bridge. */
> > > +	for_each_of_graph_port_endpoint(port, dp_ep) {
> > > +		/* Try to get "port" node of correspond PHY device */
> > > +		struct device_node *phy_ep __free(device_node) =
> > > +			of_graph_get_remote_endpoint(dp_ep);
> > > +		struct device_node *phy_port __free(device_node) =
> > > +			of_get_parent(phy_ep);
> > > +
> > > +		if (!phy_port) {
> > > +			continue;
> > > +		}
> > > +
> > > +		/*
> > > +		 * A PHY port may contain two endpoints: USB connector port or CDN-DP port.
> > > +		 * Try to find the node of USB connector.
> > And then there can be a retimer between PHY and the USB-C connector. Or
> > some signal MUX. Or DP-to-HDMI bridge. Please, don't parse DT for other
> > devices. Instead you can add drm_aux_bridge to your PHY and let DRM core
> > build the bridge chain following OF graph.
> > 
> I think building a bridge chain across multiple drm_aux_hpd_bridge may be difficult. First, drm_dp_hpd_bridge_register() cannot register the bridge immediately; instead, it is deferred until drm_aux_hpd_bridge_probe(). When it is added to the bridge_list, it may not yet be attached, and attempting to attach it at that point is too late.
> 
> But, if I only use drm_aux_bridge on the USB-C connector, and use my own custom bridge on the PHY device and managing the alloc and attach bridge process myself, then things would become much easier.

Well... consider a your board, but add onnn,nb7vpq904m retimer between
the CDP and usb-c connector (it's not an uncommon device nowadays). Or
add fsa4480 analog audio switch. Build all the drivers as modules. You
should not need any changes to your drivers to handle such boards and
such kernel config.

With those devices you can't handle everything inside the DP driver,
since there are two "streams" of probe events: the DRM bridge needs the
"next" bridge (in the direction from the SoC to the connector), but the
USB-C events code needs "previous" mux, switch or retirmer. After some
trial and error we have ended up with having a chain of drm_aux_bridge
devices ending up with the drm_aux_hpd_bridge inside the Type-C port
manager driver. This way the typec_* depetencies are resolved first,
going from the SoC to the Type-C controller driver then the DRM bridge
devices probe backwards, creating the chain, which is finally consumer
by the DP driver inside the SoC.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
