Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B850CCD184
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 02:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILZSacbDONx5VFTmuItKVCxKZdHBGwsedshvDECWUFs=; b=FCk1+LZmdxBFlE
	qpxrO7Zy1oGxfmy1HsfQgOXJA4zcBzRE3YPf4WwnTjdojcNBtJohrgv8GghIuQQsQk6vm4y4Vl3UD
	Ttqsn7WS4XhQJW4tYWL48W3sBcYc2P9CqayZC337x4ifk3n7EUZHTto/VZZYGbr/iKEal5PPvxuPv
	WflW6q8bGiHMn8OOnKUN3QJprDYdk8BHgX3/600PHCcP2QY66K4RJK/LH0j1h4c2FkwVtSr3QkZYb
	KIFIUzSLGm7dzSo8vBXi+JbITGpAFZw3DMrPOJ8B3gX18bH0Fjuh81MZwdhMwdr9+QpCQgga+5De2
	ryWH98tQjHQH3lrnoeyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v882m-0000000C62M-1c1X;
	Mon, 13 Oct 2025 02:12:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v882i-0000000C5zd-0yAh
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 02:12:10 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59CNihro009729
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 02:12:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=86ZWYyPnzwyBT1SEdx2OYD4Y
	N65eSOUUs/UhqpCdnLU=; b=DgBt1V/4SL91g2tYdnkd8pnKY7IuVA+EB+yRk0Vq
	v8PHbqTD0VzuzZyY21lKErYPzBoXYywy+s4e9jCOvA3kPBADojpuhoAXBxGvmtgc
	BT4BG9IFTTf8n2dEjw2F/8FWrtb31sviYrI5Se30CpVvFpocz165YwzJHDEKo1fX
	frSI4/nEPXQqFlP2+MjVLT7S48x0lOc+kmYEdEaEKYzGPP5zSJxvf65fBjKr1EPQ
	38PCMSI5I4C9C61Kd9DqFv0aJrFSHpfv19sw9sqCiu1xKoh27NK5iv8bqgbbvXIi
	YOqcZu0byPqYfQcYHIC/NJIBC6pMoZTkbHOFEA7f67qLwQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfm5axxh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 02:12:05 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-857003e911fso2154348085a.3
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Oct 2025 19:12:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760321524; x=1760926324;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=86ZWYyPnzwyBT1SEdx2OYD4YN65eSOUUs/UhqpCdnLU=;
        b=OPkVr7SMToEVqsljCAQl8qd/UenfYJNh96L6JGNXnKt9/brqdYLkRu9riQqu9e8PO3
         DDTC1yeYitdmKRI8mxyTxGYIsioQlBxRi8HPQ6RFKm+edJ4QAyoU70L32p/xsDCen9PO
         udP9XawVsu0dU7NoCNIDNMXTwP/1dbsFIK/NSvmSCOFErYmpCO+iUaqhYOJklM1qDrjK
         LdGX9SDI30Zt2xuo3uNBprsVldQVrkfnjDt7W6hCgyRGaynz99TCEi0VXwjEi4l/nkVI
         E3if/b6y5WBYWGVa9WX6OOeqbvF3CGn3RxM2e7fct/D14dSxf3M9oDUMTDTH5XgowLok
         xUWg==
X-Forwarded-Encrypted: i=1; AJvYcCXR8OePx3biwYe46gNJZDVjUp9aDuab0J/ioetiR6v8MUDJa3k5YZuwcenr7TbfyRxZblyXxGAe183ngoV8bg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwiBKD3GscgslUuKR3ACrWM6x6CY7WqGu/uHobp3+CX85VqR9BJ
	O6rLsaz1866ikgZGScjOCMScRU2/jKvNCEA2ZBrwMNGxIGHQJ2HirNUVSShNb37C4ZyG5fJs8mD
	gB4FegJXyzC1khVV2pL/gShnSK4wsddrKq7R1bBM/oGMQMWqyzk1TC12GfDn94PN+zbrPe1NGZV
	4=
X-Gm-Gg: ASbGncsiPQxzaoSXbyYE2MPhQknxdxWuMTlmbfFPKQ68Um6sRd05onSFKREOhqLu8sg
	PHN4I1iv5SmklxjfoZRi8Hdt3MbwDattPzEcPNSaQyxztqcqycTawaYx2tr0CkNmqSIXCazuVnR
	OwR8b/n3rwoKrvCex2hgnsatNgNJkLH5fsgTtt+Wsrnh/K9QrVKZPRtiYocBn6I9GUwfIm/aDM1
	mDZv1oBJxqM8qYVOf11+btpZUoNETyx/HQL2uP2AkeuSAxgrUbWDuHZIhT8xhg7Eii3gn1ChCgC
	ifRCXZN9L2hbBooWOeB01husPbeJQhYdi4MlzgxQh0sumQA6xyrP6m1+ThlTKzr32p7pnSazEOf
	qIeP1d71GdOOtOEZn1cqTflsBoZeRNy0E8yTS8u1dvVNnMidS1XBW
X-Received: by 2002:a05:620a:1aa7:b0:863:42ea:d687 with SMTP id af79cd13be357-88352d9a142mr2371626285a.78.1760321524311;
        Sun, 12 Oct 2025 19:12:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMoQF7op5MF9g/GW/8bpQeNO9MGh0k/WN4mxk7m/kz0sYWr+GEzFx7kK0Z0muN7KMj1v1Eng==
X-Received: by 2002:a05:620a:1aa7:b0:863:42ea:d687 with SMTP id af79cd13be357-88352d9a142mr2371624385a.78.1760321523808;
        Sun, 12 Oct 2025 19:12:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5909a119fdbsm2285439e87.112.2025.10.12.19.12.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 19:12:01 -0700 (PDT)
Date: Mon, 13 Oct 2025 05:11:58 +0300
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
Subject: Re: [PATCH v5 6/8] drm/rockchip: cdn-dp: Add multiple bridges to
 support PHY port selection
Message-ID: <6hilafgpdbsppeeib75b5uamwf22kbu4likcp64ahb4u7zehhw@c3mtlzwx7qcp>
References: <20251011033233.97-1-kernel@airkyi.com>
 <20251011033233.97-7-kernel@airkyi.com>
 <qzcdulyj2enho7l6vyvad7ln46zk2u4z7rnsjv2nv4tbw5j6jf@6oenbixoh3sp>
 <08eb7560-c13e-462f-8110-d4ce5ccbd687@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08eb7560-c13e-462f-8110-d4ce5ccbd687@rock-chips.com>
X-Proofpoint-GUID: 7HbELERVG9ukUJV7Zk8EhySU1GAY0eZ9
X-Proofpoint-ORIG-GUID: 7HbELERVG9ukUJV7Zk8EhySU1GAY0eZ9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMCBTYWx0ZWRfX9WYyTc/qCotQ
 L2bPs75VJzibMbkXh/We9DwRJfQSPCoCzy+XjmQqU5Tab5E1lL+qPqoBxEPZfWH+UlFoa3fu5hJ
 mq2xqvXt9eVpydB96AbWbDJmRHExSwpo2H8eXa9i1hM0drGhXQAdiUFSqYErkz/Z0JrIOic+ty6
 j5hKQgv8rRaZ1docXCa1BLBX91epTDJPWovIprnG4HVC57J+eCzF+FbwyrM+JKGw/Kt9cpOCBAO
 LSuifi7KB+mhF5B5ll0lDaQsepYJqu3y5em6s3mDIEiU7c4Zjs32cNBM2G71wvyagJMYfPQXFYq
 Qs1fNjln1VJtadx6aiv8kGM2vFDyTZELmxoXdFqetTAK5zKzWI5DAIBS+9PxbVygx5mmV5Evqq8
 TByWuHUxq7ZhxO11ncmKbyx6xkotDg==
X-Authority-Analysis: v=2.4 cv=V71wEOni c=1 sm=1 tr=0 ts=68ec5ff5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s8YR1HE3AAAA:8 a=46buKmVFnKFTYA1G4KoA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0
 impostorscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251012_191208_436952_48541639 
X-CRM114-Status: GOOD (  39.88  )
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

On Mon, Oct 13, 2025 at 09:26:06AM +0800, Chaoyi Chen wrote:
> On 10/12/2025 2:52 AM, Dmitry Baryshkov wrote:
> 
> > On Sat, Oct 11, 2025 at 11:32:31AM +0800, Chaoyi Chen wrote:
> > > From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > 
> > > The RK3399 has two USB/DP combo PHY and one CDN-DP controller. And
> > > the CDN-DP can be switched to output to one of the PHYs. If both ports
> > > are plugged into DP, DP will select the first port for output.
> > > 
> > > This patch adds support for multiple bridges, enabling users to flexibly
> > > select the output port. For each PHY port, a separate encoder and bridge
> > > are registered.
> > > 
> > > The change is based on the DRM AUX HPD bridge, rather than the
> > > extcon approach. This requires the DT to correctly describe the
> > > connections between the first bridge in bridge chain and DP
> > > controller. For example, the bridge chain may be like this:
> > > 
> > > PHY aux birdge -> fsa4480 analog audio switch bridge ->
> > > onnn,nb7vpq904m USB reminder bridge -> USB-C controller AUX HPD bridge
> > > 
> > > In this case, the connection relationships among the PHY aux bridge
> > > and the DP contorller need to be described in DT.
> > > 
> > > In addition, the cdn_dp_parse_hpd_bridge_dt() will parses it and
> > > determines whether to register one or two bridges.
> > > 
> > > Since there is only one DP controller, only one of the PHY ports can
> > > output at a time. The key is how to switch between different PHYs,
> > > which is handled by cdn_dp_switch_port() and cdn_dp_enable().
> > > 
> > > There are two cases:
> > > 
> > > 1. Neither bridge is enabled. In this case, both bridges can
> > > independently read the EDID, and the PHY port may switch before
> > > reading the EDID.
> > > 
> > > 2. One bridge is already enabled. In this case, other bridges are not
> > > allowed to read the EDID. So we will try to return the cached EDID.
> > > 
> > > Since the scenario of two ports plug in at the same time is rare,
> > > I don't have a board which support two TypeC connector to test this.
> > > Therefore, I tested forced switching on a single PHY port, as well as
> > > output using a fake PHY port alongside a real PHY port.
> > > 
> > > Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > ---
> > > 
> > > +	/* One endpoint may correspond to one HPD bridge. */
> > > +	for_each_of_graph_port_endpoint(port, dp_ep) {
> > > +		struct device_node *phy_bridge_node __free(device_node) =
> > > +			of_graph_get_remote_port_parent(dp_ep);
> > > +
> > > +		bridge = of_drm_find_bridge(phy_bridge_node);
> > > +		if (!bridge) {
> > > +			ret = -EPROBE_DEFER;
> > > +			goto out;
> > > +		}
> > > +
> > > +		dp->hpd_bridge_valid = true;
> > > +		dp->hpd_bridge_list[count].bridge = bridge;
> > > +		dp->hpd_bridge_list[count].parent = dp;
> > > +		dp->hpd_bridge_list[count].id = count;
> > This looks misnamed. They are not necessarily HPD bridges. There can be
> > a random chain between your controller and the actual output / connector
> > /etc.
> 
> Yes, and more precisely, this should be `pervious_bridge_list` . Will fix in v6.

I think the typical convention is around next_bridge, not previous.


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
