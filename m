Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E33ADCAC5AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Sep 2025 03:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RXtOg+Cf3Htgf86wGGSabqQcywF7lGuv8ByJntpmFwQ=; b=tSqsTd7smYsjXE
	8NDGFOzBaX0PewJjm1y7KO/FYQNLMGEWId+ljzdsbmTvD9bxlQFMWL7gWDRYEKhWcptIFPDhgYfdE
	HxPc2sCxKQnP755ZPIvEGCgzhTfXfqp8odg79rMwnTT2akEkQqNzoDXbrtHvevNW5zPIPHe3vBnC+
	UjdAChhpPbSPhaUuJZE9iUAJgn5JmFJdtIUeFjCxfIZyIf8yFLaRl4klVjpVauBZA7+ZuP3vVV/wx
	d/mOiTPKh0Ql/l0KBSIVKRTbGUrcLgeMluY68X8TzNbTczagTJU5k+trvruCUUFxEQffyqDJavKJN
	4skv5TVVp0pNNQT36H/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0tWr-0000000CDIq-0baL;
	Tue, 23 Sep 2025 03:17:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0tWo-0000000CDH3-2RV5
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Sep 2025 03:17:20 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MIWxu5017962
	for <linux-rockchip@lists.infradead.org>; Tue, 23 Sep 2025 03:17:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bMb7C2zDppeQTKGSH4djX/sY8FExMuELVy1N+D87Fjg=; b=XHGnxezEa/2Uh3/5
	AlxnmfeU39uhBRTepsSKDOYGtjOv65Batzfrkr5rmyt64pqUM8zQ0v7jXcgUDnEW
	wdfpN6ICL/zvfPpPg7+UBoPUXeuvVpWime1N7Q7zbvD2/PN9JFNg9fimXQ1Y1erK
	2DxwsfMFlQNsdSseVlu8JduF1Ir67zt3vRoejAPo5UCmAfmcp5RniBb5ci9PxE8d
	mr1yz7bSUjfZYsaTjrW3eqLFq16DnEHnEQeFN1dTSPOw+0ukSVH/irHkqNc0NoNZ
	OICwCifD1C2LCAXl9vlgNMz48sO8ULSNl9geCp54SMI8jQ6O03h6LDXHxZnGONrd
	uhmynA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv0xyjq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 23 Sep 2025 03:17:17 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-773e990bda0so104014246d6.3
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Sep 2025 20:17:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758597436; x=1759202236;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bMb7C2zDppeQTKGSH4djX/sY8FExMuELVy1N+D87Fjg=;
        b=VFEaelFxE3RX9f+HSQctvhvkQnEMjdgDwZwUB2lb54DZJUIEiNHz5FJLLhe2X5hOm1
         Kkc3cIjNtuSzdl0Fu5CvYK1X26V4/uVqX72Gai40IA5bKk1MjSNf+o6gBj2zF7BFFnkw
         LM9cmhcAfj16zM7MLGMS9UHauNKxpwV3o3MuE8LjyLS6hDdj7sBWGzVcF8fMrf2JhUtw
         s3PxaJYLXvsScir9a+3fVkhnVUomAepDoefQzOidIplqcrFs4ZYTjjV06F3OSko0Jq6W
         2l4kMDpi9Gw1I+/lA7GqvOTVBZ7/PD/b7jMbILUg9iO8YgIw+in4PcRttJjXahopOrlO
         335w==
X-Forwarded-Encrypted: i=1; AJvYcCVjVPUyvlFENpuB6ynyihxL1SIxXURKAFfj4D5nU5utH9RB0pCfN5njDWXdTxGm5KypwnFrPKoPXLWOJgwK5A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwWOToU9KTW5Xe5IBAIC3YvJufmIAmtKw1SqLGcdof2nPJruP9l
	8pZnUVSRYddXRxfBXaYPaDH4H0Se7TckM+LEbcxGVvtlcf/y2MguqhurAiiE6nV6k2oi98kikpg
	bEcn2MzIeyO2V8BXY16pCMD0w4JQ3ul9z1z05hwf4klmoXII4flrKwN2Xu1P2nZYPFQIls4YKS5
	Q=
X-Gm-Gg: ASbGncs5P1KZ3/yL8T0g4Ixl7jmIO0CzyRrH05b5TrYACmp0HnX/Y9qzoUrmyjpXUb2
	ggApAebcNfdrNtqH9lo/9XX6AwHCrSHtlCiYL2jjIgU2CFuHB4y5kO579nnyvjt4DxfCqrdKfA7
	n2pgLSY0uNaj1ZkE2mBgJme61XibKW1WxK6wTFRSVGlKAlPtT8RGqvdt5p4dXggXLUlRD3pD64/
	Z8bxyPLC9GNzDkkxgXRZtlKRDbmI4n5sevEyNNJq2A1kxaKYba+a0EFOot1abdfA5r4DYGeeCJC
	0evfIz9hENY570fZD0Wov9cogH4msKqEVlYPkq5qkau4Pr2Hk6PdwNI33BBaRurRJjAUsCICPdI
	K4qNzojr6ytQ/vzA6bWB4YO9Kj3p5jFCXZY7UaVJ+34ZlBET+yOy/
X-Received: by 2002:a05:6214:2a8f:b0:741:52cf:a104 with SMTP id 6a1803df08f44-7e70169a36amr13294536d6.5.1758597436494;
        Mon, 22 Sep 2025 20:17:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFn0eBFPbnW3yR2CGZz8WEuSgYw6bETDind9f429+o4fUJgBVTohgVWJzPvbfpV811TCcIXOQ==
X-Received: by 2002:a05:6214:2a8f:b0:741:52cf:a104 with SMTP id 6a1803df08f44-7e70169a36amr13294086d6.5.1758597435854;
        Mon, 22 Sep 2025 20:17:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57a9a81f52asm2678963e87.124.2025.09.22.20.17.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 20:17:13 -0700 (PDT)
Date: Tue, 23 Sep 2025 06:17:12 +0300
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
Subject: Re: [PATCH v4 2/7] dt-bindings: phy: rockchip: rk3399-typec-phy:
 Support mode-switch
Message-ID: <mpyfe63tzxzxyyqf4vxwmrewzeosnaftlkko7pq2ynld6u3lcz@wlpixckov4hg>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-3-kernel@airkyi.com>
 <eb6ogrepo5acwcj5gpdolxxyg3xrx7kz6zrbizzseqyavvitfd@cnzurelqeh4t>
 <533d41bd-9293-4808-85f3-8fb6dc8bcda7@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <533d41bd-9293-4808-85f3-8fb6dc8bcda7@rock-chips.com>
X-Proofpoint-GUID: 7TjWiwGcte5zdSwLsfH-y5tLQ43OKCTp
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d2113d cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=KKAkSRfTAAAA:8 a=uIhu009UdGQP6qFfJxgA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=jGH_LyMDp9YhSvY-UuyI:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX8t62mSIKGKXj
 hIFqNO0kmn6m9tzqNY5YGWYnqrO3JgZjBSp3/UpT+sg/TjspdhRs/2VzYX6ooB4uJ57joBX7EAa
 6fWUpyFlgcEDAEXZcRr05gE48eErzZJG1gDa+65cm5h5oIb9Jb+iH8tsekCEPHg6x3BGYizR5Te
 LZGzYwIFHjhSe+acAe94F8H2IGkiYULIs1jsq9XGqCaK4boQiBSowS3Mqct5PyxyK4PobdUt/Yf
 kUVIEhAVqNVln9dyqSJuxrR7n7X0hf/ZQ8qkSoZo0vRW6FGohaUGaiQhn1roFHIhoDJ193UESCM
 rVmCFX4+sKQgy5rfDBm/l2j/+U7k5vzNOLY9Bs4X06HzKSJGSXPCsdMbuE3q3+IfKu+OLQh7FNn
 5rvrSvi/
X-Proofpoint-ORIG-GUID: 7TjWiwGcte5zdSwLsfH-y5tLQ43OKCTp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_01,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_201718_728456_5704D0D7 
X-CRM114-Status: GOOD (  33.18  )
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

On Tue, Sep 23, 2025 at 09:53:06AM +0800, Chaoyi Chen wrote:
> Hi Dmitry,
> =

> On 9/23/2025 9:12 AM, Dmitry Baryshkov wrote:
> > On Mon, Sep 22, 2025 at 09:20:34AM +0800, Chaoyi Chen wrote:
> > > From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > =

> > > The RK3399 SoC integrates two USB/DP combo PHYs, each of which
> > > supports software-configurable pin mapping and DisplayPort lane
> > > assignment. These capabilities enable the PHY itself to handle both
> > > mode switching and orientation switching, based on the Type-C plug
> > > orientation and USB PD negotiation results.
> > > =

> > > While an external Type-C controller is still required to detect cable
> > > attachment and report USB PD events, the actual mode and orientation
> > > switching is performed internally by the PHY through software
> > > configuration. This allows the PHY to act as a Type-C multiplexer for
> > > both data role and DP altmode configuration.
> > > =

> > > To reflect this hardware design, this patch introduces a new
> > > "mode-switch" property for the dp-port node in the device tree bindin=
gs.
> > > This property indicates that the connected PHY is capable of handling
> > > Type-C mode switching itself.
> > > =

> > > Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > =

> > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > ---
> > > =

> > > Changes in v4:
> > > - Remove "|" in description.
> > > =

> > > Changes in v3:
> > > - Add more descriptions to clarify the role of the PHY in switching.
> > > =

> > > Changes in v2:
> > > - Reuse dp-port/usb3-port in rk3399-typec-phy binding.
> > > =

> > >   .../devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml  | 6 +++=
+++
> > >   1 file changed, 6 insertions(+)
> > > =

> > > diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3399-ty=
pec-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-=
phy.yaml
> > > index 91c011f68cd0..83ebcde096ea 100644
> > > --- a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy=
.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy=
.yaml
> > > @@ -51,6 +51,12 @@ properties:
> > >         '#phy-cells':
> > >           const: 0
> > > +      mode-switch:
> > Having the mode-switch here is a bit strange. I think the whole PHY
> > device should be an orientation-switch and mode-switch. Otherwise it
> > feels weird to me.
> =

> I think this is a difference in practice. In the previous binding, there =
was already an orientation-switch under the usb-port. I trying to add both =
an orientation-switch and a mode-switch to the top-level device in v2. And=
=A0Krzysztof reminded me that adding a mode-switch under the dp-port would =
be better, so I changed it to the current form :)

I couldn't find the comment on lore. Could you please point it out?

> =

> =

> =

> > =

> > > +        description:
> > > +          Indicates the PHY can handle altmode switching. In this ca=
se,
> > > +          requires an external USB Type-C controller to report USB P=
D message.
> > > +        type: boolean
> > > +
> > >         port:
> > >           $ref: /schemas/graph.yaml#/properties/port
> > >           description: Connection to USB Type-C connector
> > > -- =

> > > 2.49.0
> > > =

> -- =

> Best,
> Chaoyi
> =


-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
