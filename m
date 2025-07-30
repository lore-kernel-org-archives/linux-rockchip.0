Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB72FC87FCB
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jul 2025 19:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZloyBWjQSa9scy97BOht+k+m1DCvP6saMjO/Pa+BVVo=; b=dUjmhU/C9ZbfJx
	Qytob/8BsqnK6e7j9NKZYaa2mG4NorLL2ri/3iwgQvXBFcuP5Hckd9EaqACyMZBqPtPwPyQka3Xta
	ZpiEh+Gy4lZbGMyg+fBwKMJsatq5hc7+IdUDaQEyKSZPCiBDY1mzzUMNhKa4MVWAkSbqpM1Jvq5Ml
	rUeLowiQv9K1J6oyfT0o1Yoon1hExBD85zrW1vaDw2m+8QUfXuMbYDNe4irvYOGv/lXkdodt+U5H9
	e5dMv0+LS9NJMRMPMis/y3QvURwHSrkxqSHuE4fhmKcbEBRgeWcpqfRnMRu7jexvbbU6a4BEp7rGH
	rJmz21DaCPDUfLoeS45Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhCFR-00000002GT7-3pxd;
	Wed, 30 Jul 2025 19:13:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhCFO-00000002GRb-2zNX
	for linux-rockchip@lists.infradead.org;
	Wed, 30 Jul 2025 19:13:56 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCb9Lr017607
	for <linux-rockchip@lists.infradead.org>; Wed, 30 Jul 2025 19:13:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aMpNvFPvt2cMAKNRFOUnF1jA
	yCuM7WFPijqR+Ei2D/0=; b=F+tBuQT8LTVPb4S5M+db3HHjBSYUucF1a7lRQtWt
	MIR9SkRhya+99V5V8/lCkZ69XUEV/WfkivHNugmXANg0r1P28+MM2JyoH76OU4yp
	TbYNkbUDeC8lxyKLRmncSo/Tv1OzyRPECGa70SVC/QkPzqjCCixFMMjhKsCehjac
	v6FVx4Zb6O92UC3KAD68jRCtmr0WCwmlFwoCXAxa4yeU+J5q+N+SCJ2WJzwgkUTJ
	5hQZ4/5/16sA898jwCJ0JuaW4Xj1h+vRzRlEpLuCQbQINUwExDgOnUdfHc5Bt08t
	NCt1x7voA+9p6OoZX9Znl7ZxSX4iMQYdS7hIjKYGKz1RDg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484qda4ymh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 30 Jul 2025 19:13:53 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7073b4fb53eso2025086d6.0
        for <linux-rockchip@lists.infradead.org>; Wed, 30 Jul 2025 12:13:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753902832; x=1754507632;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aMpNvFPvt2cMAKNRFOUnF1jAyCuM7WFPijqR+Ei2D/0=;
        b=izC8I3iyfDabd4wQZKPa6OLLk6Uk3XO4fj9FAUz+O2UgNhPr2IzHyn2ZuZvRXV7ZRi
         KNhAbibRI2VmSbSG+CHkT/D8zL/IBL3ZSUBr1ApQJ09pwEjyE8sOCjV6jTEVssC52x34
         jEJLMz+aQ1S7Iw0/1LkJUf5pMz9uASFxfonEuYtXCVieTI1dVDEM95H6ch4WEoVmlMsP
         FoiqDPc0wqLfPHQdcDaVUQ84cBIGq2W8uUhcABh7/owkWS9CDw7OUujdUVl+P+aYtNvz
         J2OxuPO7Tf0ADIRtS+dxzKhre7pYNNm493Fef1pjTfCzzaaZIKNEa2IeAddrV8kpbKvv
         GyWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcZf3q0Ldw0fm8qTckS1I0J8W68dwqf/hDmj+B8JA67fR2j+Nn3f4W5r/CWyzUJ02VUtXbM4ZWH/9QM8vVOg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzywiMEM/zXxKYe7DUsNIpWeqjbzT1KrjEyNh/t3kGsR0x7IdCH
	oMdyGif07aCjIYowGbnzN5pxEidXjdhWSVzQ2abz1LkWKI6VWYDO1OIgSvjxsulihwbYPrWfHn4
	UW/kt2EVscw3BTGTf57bwCOMPUM/UwhlHDO4M125RxUtqzmdsxreH4QnMPb5KefHyGFJj/jFFjk
	g=
X-Gm-Gg: ASbGnctQ3E+n/w1Y97NS4ndmZICNkCMoSblzKQ43MwQ/gDaU8pABiX20r4gRIWNmU8E
	jwWTTDR5WUcdZM8FYcQgSOJQsGzwvh2pTF/XCWdkIy6ibTFQpxYwmOxOJRgecZURrnVH4vTAG5G
	JCOfsl78Yt2rj38gsy41ab85Z8IyjCJDXudJAh1dVav2qxfGrFw7WaqXmciboFfymJa3JOMy9t7
	yYVdnrkC43wFs/9yWzDeDA/aRwRwTxUi2CXRQubMmjlkgnRv7i0ov0CoEqm5e3aQF9Eq2e0OJ1D
	chzkBTDgqOyHU6pwA+owWOXz6qCoFSMh4kEYOS+88wFdQJwXUdYu+HSwSKCRgF1PK/ceJpra7Zr
	/5MrJeYQy+a67xEfhfjPyTkQMm0OIlslDxbwn7gbPHQu+yojWJrNF
X-Received: by 2002:a05:6214:5010:b0:707:3891:a072 with SMTP id 6a1803df08f44-707669f8c80mr67431856d6.0.1753902831541;
        Wed, 30 Jul 2025 12:13:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHgmYSqHWL1JQSbQgLX/lTKYei8dv1aftQo53r3fvUDU06KrOX+cc9BvRo4AKOH1ZPMuJ35Q==
X-Received: by 2002:a05:6214:5010:b0:707:3891:a072 with SMTP id 6a1803df08f44-707669f8c80mr67430436d6.0.1753902830418;
        Wed, 30 Jul 2025 12:13:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-331f427c501sm21257541fa.77.2025.07.30.12.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 12:13:49 -0700 (PDT)
Date: Wed, 30 Jul 2025 22:13:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
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
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 0/5] Add Type-C DP support for RK3399 EVB IND board
Message-ID: <3kefqzjewmsyzfvyi33kvlgjd6jphjg3fsnixb3of7yb3xkgs2@hgi6xfkgd653>
References: <20250729090032.97-1-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250729090032.97-1-kernel@airkyi.com>
X-Proofpoint-ORIG-GUID: M7Cdl8jfzuId3BUBRtaqz9LD4n7Tdr03
X-Authority-Analysis: v=2.4 cv=Pfv/hjhd c=1 sm=1 tr=0 ts=688a6ef1 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=14ipHPXA7Wsnq1XJWM0A:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: M7Cdl8jfzuId3BUBRtaqz9LD4n7Tdr03
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDE0MCBTYWx0ZWRfX6RSX5uLwI6hW
 SThQH3dGvUPLZVj4SlNYoGUn2m0qq7X+z0Z6HBbi7whP7lmoUJbCfEF9uakEluZ2iED3oQSjMvV
 lTGjc35QVqZHpiD+yOEedsawS9FIKDAJ8K5txVmgNM/9JYKuCRW/C84CR17IwFasTWzx2LGovjD
 ta4Q4jQ2v15tUd5b8UxqokY0LsHGnFyXv7NA14ldX0+SCT9iS2afTfti8oeijyKWoUTi76sImPH
 52UdtrYXsRtd5l8AC/Wbk0Ejf45fSwS2ybnpFxJFojO5AwzHeWXAfEQePN5LhbyJcQQY0vZfKZr
 zHLWJNj7KekhFYg+DbB6MVUNbA6T6pm9S2Eyd/T//FRrT1MhaZwPDBBj8q2FwA1Q72Yr+U1IH6i
 SZ8MnvIqG/Z/9xEExvup5Wc1sQUGMr+L5X3FEmotOWw/Fdl7ifgVnfLvrtBAsjmBuP1KeIX/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_05,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=909 clxscore=1015 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300140
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_121354_896880_19A05963 
X-CRM114-Status: GOOD (  24.26  )
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

On Tue, Jul 29, 2025 at 05:00:27PM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> This series focuses on adding Type-C DP support for USBDP PHY and DP
> driver. The USBDP PHY and DP will perceive the changes in cable status
> based on the USB PD and Type-C state machines provided by TCPM. Before
> this, the USBDP PHY and DP controller of RK3399 sensed cable state
> changes through extcon, and devices such as the RK3399 Gru-Chromebook
> rely on them. This series should not break them.
> 

[....]

> ====
> 2. DP HPD event notify
> 
> The RK3399 has two USB/DP combo PHY and one CDN-DP controller. And
> the CDN-DP can be switched to output to one of the PHYs.
> 
> USB/DP PHY0 ---+
>                | <----> CDN-DP controller
> USB/DP PHY1 ---+

Could you please clarify this, can you switch DP stream between two
USB-C outputs? What happens if user plugs in DP dongles in both USB-C
ports?

> 
> BTW, one of the important things to do is to implement extcon-like
> notifications. I found include/drm/bridge/aux-bridge.h , but if the
> aux-bridge is used, the bridge chain would look like this:
> 
> PHY0 aux-bridge ---+
>                    | ----> CDN-DP bridge
> PHY1 aux-bridge ---+
> 
> Oh, CDN-DP bridge has two previous aux-bridge!
> 
> Now, I try to use drm_connector_oob_hotplug_event() to notify HPD
> state between PHY and CDN-DP controller.

Does it actually work? The OOB HPD event will be repoted for the usb-c
connector's fwnode, but the DP controller isn't connected to that node
anyhow. If I'm not mistaken, the HPD signal will not reach DP driver in
this case.

> 
> Patch1 add new Type-C mode switch for RK3399 USBDP phy binding.
> Patch2 add typec_mux and typec_switch for RK3399 USBDP PHY.
> Patch3 drops CDN-DP's extcon dependency when Type-C is present.
> Patch4 add missing dp_out port for RK3399 CDN-DP.
> Patch5 add Type-C DP support for RK3399 EVB IND board.
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
