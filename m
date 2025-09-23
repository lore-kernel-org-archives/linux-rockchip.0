Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAD36CAC5A5
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Sep 2025 04:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojKb/Aq+Gvbj2c1GUwdGkwPMJYcIzkcjVvY+1ANgVxg=; b=pbG4fbXoVKmvYX
	AEin5XVzyDn54HaCEuqTUz4VrYltZ1XzL4D7wUdUPp6/PInhmhpGlxeEtNFq/n2iQzNv0AD55amCD
	uwtIiLzYontKAfPJDpBXUDZV0xuZExOHmuW/3M25awTNBD112cQ66RZZ2d97wX1asK0pQnI/F2eAI
	sCx7C8n0IYlj44KTjtzlS5AC00fcK1hUPHSoQWxZvTJWfcd0fkM7PyUotJu0oa86sig1TyqH2GlOf
	5Qxs6xjTvXdK9ryUCLHfWoxO7Yjelx7yjOADWMJw8w6WSoB6+oErCkKpapNKjZI6+tKYWTPjVtjg7
	WiLC4q3h9Cyad6YnqzLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0v0X-0000000CMJ1-43Xw;
	Tue, 23 Sep 2025 04:52:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0v0U-0000000CMHe-1e5q
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Sep 2025 04:52:04 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N4VoN9022875
	for <linux-rockchip@lists.infradead.org>; Tue, 23 Sep 2025 04:52:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1ysyyR+HSBxqCI8FuQWOZHxXbhAf2dscJgNWIhtU+ys=; b=Bl+LV8UHw8nBOeNg
	NQIkWQ/9ghyTSiJpE5s3ltpVJJsx54k2D57hFQg0RSns3glajhRuY9DHDsdHNr7z
	8/Iun4mHhE1YK7M8Y743Mh9rZilV7wAynsNrbt/ATzPy0BNYMzi0plv+VFySLZl0
	YDo+hK6a/y7hmmRc+2AuKr8RmiPAME+hyuztfZbtK6us+/K4HW+XfwSqRqAS8F+h
	+pqyfOw1pcveSMNnazD3JxfhKfPmeutiJFyK6UCOOa040okTLj6ULcvLTiuWqd69
	41Iome+o+KiZfvuPyASZP5AkD/ztoycFxi+7hmuWQpFYAvFedC2EB9xxeFbVMbAH
	8+zQLw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kk32em-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 23 Sep 2025 04:52:01 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-84f13fb5b5eso214008585a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Sep 2025 21:52:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758603120; x=1759207920;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1ysyyR+HSBxqCI8FuQWOZHxXbhAf2dscJgNWIhtU+ys=;
        b=Es8tr94xtEkiSAllgbm0WqWu8IM35v8M5Kb6OKRmwIXiknG2J1oDgiWxjfFE4DNciR
         CMCtHMDDlgCyli7meWg5UgUdfLNOljeQbI9uuZDAlS1qjMKsdCuNk4OzCscG75NAd4nQ
         Y/LR0UO/kVdWCbwEWlG7xsFYCrsNyNcrP3O8S6m+sqrJHQekjPgmzxJadBxlPhR1sccT
         b+ns79q2PX1jM3FC2tcE27e1j8/QsM0N/lD1hgodSJdjbmFukTPD9UeccCsrrMt5H2X4
         OA+WhTwEufKdG1YyUveSIW2HbwQIDJBan52B24Ul6Jrp7sRd4lVOi88CpZe4Y85J3tS9
         aamw==
X-Forwarded-Encrypted: i=1; AJvYcCWJ9wt5Q4jB74HTzq1VRkmKC14Ee/umttqf4IVzpFFv5BSUd0NptfQ8+opypjz5BpftTlRw3dCngm/bQHnFEQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyDzWdiJ6NYz4CemlVubunuvfPXrVSCbLbyzvfdMSJdGKe3c3zY
	mNx41hDaLKLKSij53UAhaN7YZssW7uI5mgzZfxc2FttEfJyjH5S3q/zfS3A1rvfXeZqrC23i6xi
	kHLv5waU10nOHjNrJAcfT/cgjA4FSFCBX8vXeNONyL1bllLoTDpeCF2Fj5/Ty3D6vO/fUoBbTWF
	c=
X-Gm-Gg: ASbGnct5nUDvP/jDxtBKJTPXGLyFlM7QJBVz4hynqtNRDH0Wz8hZcKDOHT0YPGbPsDu
	sLYS9NaLhO7cxhmJxFTYGrw5JxVxhcpN4VZUE0cuBossZF+EMMjMGYRHgTNJAAlpYo+CH6v7ycm
	rLnR3CEPBBOEJUTYTVpXhCsji6DK0wgROkebWxYrGKr5XM3KKkA2T5kBWVxkfAyXEEbx5P3RZtn
	MoEjZD0FzJyJUyjrbxoCpaJqiSfhDXx1l4YsjkAN4EWYRgOZgeoLrXdv36MnsMJwAzA+89kbWac
	BPkw972f0LcR2Eiuc0JZeajyrWVwv+TgdL/ZbYROGNrczv9LFSAzGZiaQ8r1GeDu6vWcWHDo58I
	X/EF8tqOc4RFsENcaM1YPIY07qyQnkezcGMESYZ+famyYwxB6hprS
X-Received: by 2002:a05:620a:1923:b0:812:48b9:2eb0 with SMTP id af79cd13be357-8516a8202bamr136830485a.19.1758603120281;
        Mon, 22 Sep 2025 21:52:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKxvB+ebtnxiMgBizv494obsHW1ZlzjCI32T27z/Odi7Kl2wEkCUAGK1+a+EPj6Wq2e5gDkQ==
X-Received: by 2002:a05:620a:1923:b0:812:48b9:2eb0 with SMTP id af79cd13be357-8516a8202bamr136828685a.19.1758603119745;
        Mon, 22 Sep 2025 21:51:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-365694f1be4sm23536661fa.17.2025.09.22.21.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 21:51:58 -0700 (PDT)
Date: Tue, 23 Sep 2025 07:51:55 +0300
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
Message-ID: <jm32ujhxslsx5snes4o66t2grb5uxhsaapjqahektfck66g6hb@fx6f53yojlcr>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-3-kernel@airkyi.com>
 <eb6ogrepo5acwcj5gpdolxxyg3xrx7kz6zrbizzseqyavvitfd@cnzurelqeh4t>
 <533d41bd-9293-4808-85f3-8fb6dc8bcda7@rock-chips.com>
 <mpyfe63tzxzxyyqf4vxwmrewzeosnaftlkko7pq2ynld6u3lcz@wlpixckov4hg>
 <8396dd15-9111-4ceb-a561-6ed57727546f@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8396dd15-9111-4ceb-a561-6ed57727546f@rock-chips.com>
X-Proofpoint-GUID: j1PnVaYZ7CIQagotP7cm2EdsA0004YKI
X-Proofpoint-ORIG-GUID: j1PnVaYZ7CIQagotP7cm2EdsA0004YKI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfXxix+ws0HOCvy
 kxxRyRMkHic474fDGknnAvHceRn3HAMjI4PZxMl42LWqTF4U0Oixmotf4bxMxoNGFzoZtD8jlqh
 gX5BqEu+VEdKm559jirKN5ZpqtR6e0QN4RdSnj1PDp2u6Ucpcj7fByu14VF8Z15JUsOReDt2Q/f
 fFERpjpWIpnuevCkgQGmiCZ3LoPQ2P2Ow7vlICASVds7eJWwNgpWoKW8wq65dvkWlUbdPUQ5F+o
 jJ5itKPVHWiGkPiRIyNnofO27BsO9xfTslmEpHqeO7Cu+KCmEKeAe4SpaN80UHEb4t7RWt0oilR
 U39eg3yolgspXL3kJ5hB6zpc/qbOgcvdgAFnzu7igYPvCkmMtZsJBw0jgFgYUCXyRSY3OjWyL/E
 VSIVg3ko
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d22771 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=ePr-TV-LAAAA:8 a=JfrnYn6hAAAA:8
 a=s8YR1HE3AAAA:8 a=KKAkSRfTAAAA:8 a=SBpjGD6abgB5dFENKZUA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=uGDpjx9DKq9E8W49yboe:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=jGH_LyMDp9YhSvY-UuyI:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_01,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_215202_549340_AA32E4D5 
X-CRM114-Status: GOOD (  39.54  )
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

On Tue, Sep 23, 2025 at 11:40:33AM +0800, Chaoyi Chen wrote:
> On 9/23/2025 11:17 AM, Dmitry Baryshkov wrote:
> =

> > On Tue, Sep 23, 2025 at 09:53:06AM +0800, Chaoyi Chen wrote:
> > > Hi Dmitry,
> > > =

> > > On 9/23/2025 9:12 AM, Dmitry Baryshkov wrote:
> > > > On Mon, Sep 22, 2025 at 09:20:34AM +0800, Chaoyi Chen wrote:
> > > > > From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > > > =

> > > > > The RK3399 SoC integrates two USB/DP combo PHYs, each of which
> > > > > supports software-configurable pin mapping and DisplayPort lane
> > > > > assignment. These capabilities enable the PHY itself to handle bo=
th
> > > > > mode switching and orientation switching, based on the Type-C plug
> > > > > orientation and USB PD negotiation results.
> > > > > =

> > > > > While an external Type-C controller is still required to detect c=
able
> > > > > attachment and report USB PD events, the actual mode and orientat=
ion
> > > > > switching is performed internally by the PHY through software
> > > > > configuration. This allows the PHY to act as a Type-C multiplexer=
 for
> > > > > both data role and DP altmode configuration.
> > > > > =

> > > > > To reflect this hardware design, this patch introduces a new
> > > > > "mode-switch" property for the dp-port node in the device tree bi=
ndings.
> > > > > This property indicates that the connected PHY is capable of hand=
ling
> > > > > Type-C mode switching itself.
> > > > > =

> > > > > Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > > > =

> > > > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > > > ---
> > > > > =

> > > > > Changes in v4:
> > > > > - Remove "|" in description.
> > > > > =

> > > > > Changes in v3:
> > > > > - Add more descriptions to clarify the role of the PHY in switchi=
ng.
> > > > > =

> > > > > Changes in v2:
> > > > > - Reuse dp-port/usb3-port in rk3399-typec-phy binding.
> > > > > =

> > > > >    .../devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml  | =
6 ++++++
> > > > >    1 file changed, 6 insertions(+)
> > > > > =

> > > > > diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk339=
9-typec-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3399-ty=
pec-phy.yaml
> > > > > index 91c011f68cd0..83ebcde096ea 100644
> > > > > --- a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec=
-phy.yaml
> > > > > +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec=
-phy.yaml
> > > > > @@ -51,6 +51,12 @@ properties:
> > > > >          '#phy-cells':
> > > > >            const: 0
> > > > > +      mode-switch:
> > > > Having the mode-switch here is a bit strange. I think the whole PHY
> > > > device should be an orientation-switch and mode-switch. Otherwise it
> > > > feels weird to me.
> > > I think this is a difference in practice. In the previous binding, th=
ere was already an orientation-switch under the usb-port. I trying to add b=
oth an orientation-switch and a mode-switch to the top-level device in v2. =
And=A0Krzysztof reminded me that adding a mode-switch under the dp-port wou=
ld be better, so I changed it to the current form :)
> > I couldn't find the comment on lore. Could you please point it out?
> =

> Sorry, it is v1. I added an orientation-switch and a mode-switch in the t=
op-level PHY [0]. Comment is here: [1]

My interpretation of [1] doesn't quite match yours. It doesn't say
anything about moving mode-switch to dp-port. It basically pointed out
that you already have two ports.

Also, I'm not sure how the current construction works: you register
switch and mux for the dev_fwnode(tcphy->dev), however the lookfup
functions should be looking for a device corresponding to the port OF
node (which doesn't exist).

> =

> =

> [0] https://lore.kernel.org/all/20250715112456.101-4-kernel@airkyi.com/
> =

> [1] https://lore.kernel.org/all/4dfed94c-665d-4e04-b527-ddd34fd3db8f@kern=
el.org/
> =

> =

> =

> > > =

> > > =

> > > > > +        description:
> > > > > +          Indicates the PHY can handle altmode switching. In thi=
s case,
> > > > > +          requires an external USB Type-C controller to report U=
SB PD message.
> > > > > +        type: boolean
> > > > > +
> > > > >          port:
> > > > >            $ref: /schemas/graph.yaml#/properties/port
> > > > >            description: Connection to USB Type-C connector
> > > > > -- =

> > > > > 2.49.0
> > > > > =

> > > -- =

> > > Best,
> > > Chaoyi
> > > =

> -- =

> Best,
> Chaoyi
> =

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
