Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4121CAC5A7
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Sep 2025 10:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYoUq+3jPihECTdHEScHAGNjeitDZpnA1rIgPc2OkKA=; b=2pJwr4GDJnqiKG
	uvdoaeM2VHDvk8lMNi7aQHvEugLtZl0BFk5tu61iAIIWRqlXwgmlEhKLYyEcqGOi7qhifcCiPYHVR
	YZ3HglOH+uSRQh+IqMOCwb6kdqF5CszTBRz4uGOfbQ3rfcLc97X/W2vdqrwQ1WeOsQF5NK9moqxdd
	OGDRzPy+D1hpBGA84IB48/c5xWFVFOXNfpBXJotstqN758Ji0qhCFmSIAyydsN6aaxZIT/dofLgb2
	ojF7oiC7H6RPzbb33Qmgqecb8vB/IDE+9OyhHvM+iHc6Wc/UqE3zVvpUxcmFg4fsFPgMCcGiNMcX1
	BlazT4IDEtfRvYWhCtVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v10Wr-0000000D58T-1IUq;
	Tue, 23 Sep 2025 10:45:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v10Wn-0000000D56H-30BF
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Sep 2025 10:45:48 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N8H8CF007332
	for <linux-rockchip@lists.infradead.org>; Tue, 23 Sep 2025 10:45:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QliD1n9xy/2XCUdFKu8941e4ETR46EUUmd/ECFnedT0=; b=TCT5YuN5yyg6V5lP
	+oPpau14OqQ5ZlUfTkPDvNWoBDr2ZTf6SP0fcIUFURx7R5Irl044q0/EBTDc8bAX
	Jt/xhkAUFIQFLBDJqprwVtOllYO17qb0yr7h4X9zF/pxBFRcTsfpqTo5G2sLI4LN
	TfFkaoStJuEIYuqLxKsxlWJnu74ZEYCceuG6t7xnV32CmD3gbzqjJMHTwi3Hhcqh
	Yf19nlw13fF7+H7IBkz8DOMa5xJKkAdAS1w/qJ3qiFKxRRqamdbiDdwGWV7UDORI
	BBCdohVva9tBmBSEg8i7U0BY3oyDEWauOfC+TO8cTeblrrmjpT+8zH1V9TiUplec
	QN8wjw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98g7gm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 23 Sep 2025 10:45:44 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d38dbc0e29so11970941cf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Sep 2025 03:45:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758624344; x=1759229144;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QliD1n9xy/2XCUdFKu8941e4ETR46EUUmd/ECFnedT0=;
        b=B/vPKBgA9Nyk9Rvr+/XnJShW0ogziiMvPO7i21ol9YgTfYMnYm8IH8PyQvSYAN5Qdw
         6i3wGnpdLkdG2LWBY5UxKvvvl1FsKQWntdnrC/BxUwZHldlxMMWu6fWA8QTJHHq+w/Fx
         G4LPS1IdIuNFw+6cCpjuvg+WnKZuPva8ncG9fMExTlYQ+44BbiwKOxuhSZ87Bv2rk9l4
         5DzDfObJ0t3DdDaVBRSpm6Bu9c6vDg60KNZ02OVc7WanLWmvOrBMpTRVtDS4ya3b0yfn
         d0SBWd9l0z1xX4GE5rrCpoFTQvHuqNBjYB1Aw2gFFTlIBF5q6SRXNNCNnyAvCl2h+tlM
         Z5Dg==
X-Forwarded-Encrypted: i=1; AJvYcCVzCe/na87LWKX/xJaLM9im9sQa0+gGOn+6TQNGsVru3KgpCFl8GjI53tcRvYiUdKdcgi0IjnHzcGcIof6+fA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzrKLaUEkcen9mEGUgjQeYR5SdEK5f5m628qAjCz4Ti3I9lC91T
	YAgk1WQIocXwZqi6091rCe5RzK98/R10pIa5zl7Tq6OhQO7QhevKjWejB8xW4kSN+U1Xd3PG8uP
	+2NvJB6p/9bs5knJ8q3Z0PQ+XWu8nsxNB/EOBBOGJ2kfRICqVnRK8QKmB0meg87VR8ydYzF9i+0
	4=
X-Gm-Gg: ASbGnctSfq24Q+z/HEOxixyLnZAEkB/Iv/Rdmc8T23pGuq4OYo+07wzYCta9Av473/U
	xN994RjAcDhKE5iDPgI9kqbz9RLHzh7v7K6DcpaBHvXffd3984ioP5G3evRqQVf6jBk2GPLWeZ0
	Qaw2eueBxyIrzbneoREY51UU9p7Mj1cilItfkS5ACd/CLyMImrSMiduUfINxg8fQXOe08/jNBIw
	wtexHfjD6lNQwk+3B7eg/f6oiO+JBYjUuNCB3Mb9hU6jZvYBmydjRx0gZCRZ5X3mceNIq336uwH
	5e/17UtIeYZOm32aEfPPGYTUV98nL7g2dI+vaqqZOmV5dCEiVh9JjG9Ua0NmlCor/KkpgK8pEXo
	961lJ9yRDtgg6R63vMqASE8gkLibuLXjzN00XMOwlRORErr/MrX3l
X-Received: by 2002:a05:622a:553:b0:4b7:90e2:40df with SMTP id d75a77b69052e-4d36708263amr20612671cf.1.1758624343333;
        Tue, 23 Sep 2025 03:45:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiYj54pkLfQJi4mBKnM8awsCwLOK/0GZu894Y6oYBprrn+tmmkltO3sOFH+V8iuDnCGbKBNQ==
X-Received: by 2002:a05:622a:553:b0:4b7:90e2:40df with SMTP id d75a77b69052e-4d36708263amr20612281cf.1.1758624342548;
        Tue, 23 Sep 2025 03:45:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57c56d475a7sm2237990e87.42.2025.09.23.03.45.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 03:45:41 -0700 (PDT)
Date: Tue, 23 Sep 2025 13:45:39 +0300
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
Message-ID: <p3kgqn3euumhysckh4yyqavqv5y6any5zcrgkrcg3j5a7z7cyw@lfpkla5p3put>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-3-kernel@airkyi.com>
 <eb6ogrepo5acwcj5gpdolxxyg3xrx7kz6zrbizzseqyavvitfd@cnzurelqeh4t>
 <533d41bd-9293-4808-85f3-8fb6dc8bcda7@rock-chips.com>
 <mpyfe63tzxzxyyqf4vxwmrewzeosnaftlkko7pq2ynld6u3lcz@wlpixckov4hg>
 <8396dd15-9111-4ceb-a561-6ed57727546f@rock-chips.com>
 <jm32ujhxslsx5snes4o66t2grb5uxhsaapjqahektfck66g6hb@fx6f53yojlcr>
 <dc554831-4368-43f0-b92b-896fd920e239@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dc554831-4368-43f0-b92b-896fd920e239@rock-chips.com>
X-Proofpoint-GUID: -sfIwGDQbcn9Q4BBJeWYVvaYmG3RmFW-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX/iGoIbcoT2Rc
 Psnk6D3UHZaKLZS913rYhwFJV2sqVrpws/TZicf7ewqObwpMKWaVGDJ/Bp4ce6icLCeAek8O2U3
 CsqN0CffZj4c9ZZ+3FbrGVxrSYYLE8D8Ci0lt/QOp7+UzyFjDtsAzn6rSSCptRh2c1dC0nIGy4c
 04YNK6Y4Ldl+NPEyHnt9rmC5lQY8T788pgQwdlK16FnXFZdjOVVVg3YlsmcVb1OoBNXpFnDhewG
 WWGGHH3vofQGo1ZZ5HczbzWvOKSu9Zl3tvlP/y0eY8GVqGLMvzIJxzdUirTCHkbEqF13lvNkElS
 qpEyt2G+9qMc0v/KmbZVwyXv0GGSlx4sme2Gyh6Gslb4bsK4XqjKW/jRDIe6zd07YVmPVmDrIOa
 J707/bPM
X-Proofpoint-ORIG-GUID: -sfIwGDQbcn9Q4BBJeWYVvaYmG3RmFW-
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d27a58 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=ePr-TV-LAAAA:8 a=JfrnYn6hAAAA:8
 a=s8YR1HE3AAAA:8 a=KKAkSRfTAAAA:8 a=Y8DisfNwMWTW2FRaHhwA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=uGDpjx9DKq9E8W49yboe:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=jGH_LyMDp9YhSvY-UuyI:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_02,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_034545_865586_073BF7DB 
X-CRM114-Status: GOOD (  46.46  )
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

On Tue, Sep 23, 2025 at 03:17:20PM +0800, Chaoyi Chen wrote:
> On 9/23/2025 12:51 PM, Dmitry Baryshkov wrote:
> =

> > On Tue, Sep 23, 2025 at 11:40:33AM +0800, Chaoyi Chen wrote:
> > > On 9/23/2025 11:17 AM, Dmitry Baryshkov wrote:
> > > =

> > > > On Tue, Sep 23, 2025 at 09:53:06AM +0800, Chaoyi Chen wrote:
> > > > > Hi Dmitry,
> > > > > =

> > > > > On 9/23/2025 9:12 AM, Dmitry Baryshkov wrote:
> > > > > > On Mon, Sep 22, 2025 at 09:20:34AM +0800, Chaoyi Chen wrote:
> > > > > > > From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > > > > > =

> > > > > > > The RK3399 SoC integrates two USB/DP combo PHYs, each of which
> > > > > > > supports software-configurable pin mapping and DisplayPort la=
ne
> > > > > > > assignment. These capabilities enable the PHY itself to handl=
e both
> > > > > > > mode switching and orientation switching, based on the Type-C=
 plug
> > > > > > > orientation and USB PD negotiation results.
> > > > > > > =

> > > > > > > While an external Type-C controller is still required to dete=
ct cable
> > > > > > > attachment and report USB PD events, the actual mode and orie=
ntation
> > > > > > > switching is performed internally by the PHY through software
> > > > > > > configuration. This allows the PHY to act as a Type-C multipl=
exer for
> > > > > > > both data role and DP altmode configuration.
> > > > > > > =

> > > > > > > To reflect this hardware design, this patch introduces a new
> > > > > > > "mode-switch" property for the dp-port node in the device tre=
e bindings.
> > > > > > > This property indicates that the connected PHY is capable of =
handling
> > > > > > > Type-C mode switching itself.
> > > > > > > =

> > > > > > > Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > > > > > =

> > > > > > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > > > > > ---
> > > > > > > =

> > > > > > > Changes in v4:
> > > > > > > - Remove "|" in description.
> > > > > > > =

> > > > > > > Changes in v3:
> > > > > > > - Add more descriptions to clarify the role of the PHY in swi=
tching.
> > > > > > > =

> > > > > > > Changes in v2:
> > > > > > > - Reuse dp-port/usb3-port in rk3399-typec-phy binding.
> > > > > > > =

> > > > > > >     .../devicetree/bindings/phy/rockchip,rk3399-typec-phy.yam=
l  | 6 ++++++
> > > > > > >     1 file changed, 6 insertions(+)
> > > > > > > =

> > > > > > > diff --git a/Documentation/devicetree/bindings/phy/rockchip,r=
k3399-typec-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk339=
9-typec-phy.yaml
> > > > > > > index 91c011f68cd0..83ebcde096ea 100644
> > > > > > > --- a/Documentation/devicetree/bindings/phy/rockchip,rk3399-t=
ypec-phy.yaml
> > > > > > > +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-t=
ypec-phy.yaml
> > > > > > > @@ -51,6 +51,12 @@ properties:
> > > > > > >           '#phy-cells':
> > > > > > >             const: 0
> > > > > > > +      mode-switch:
> > > > > > Having the mode-switch here is a bit strange. I think the whole=
 PHY
> > > > > > device should be an orientation-switch and mode-switch. Otherwi=
se it
> > > > > > feels weird to me.
> > > > > I think this is a difference in practice. In the previous binding=
, there was already an orientation-switch under the usb-port. I trying to a=
dd both an orientation-switch and a mode-switch to the top-level device in =
v2. And=A0Krzysztof reminded me that adding a mode-switch under the dp-port=
 would be better, so I changed it to the current form :)
> > > > I couldn't find the comment on lore. Could you please point it out?
> > > Sorry, it is v1. I added an orientation-switch and a mode-switch in t=
he top-level PHY [0]. Comment is here: [1]
> > My interpretation of [1] doesn't quite match yours. It doesn't say
> > anything about moving mode-switch to dp-port. It basically pointed out
> > that you already have two ports.
> =

> Yes, I think this can be easily changed, as long as the issue you mention=
ed below is resolved.
> =

> =

> > =

> > Also, I'm not sure how the current construction works: you register
> > switch and mux for the dev_fwnode(tcphy->dev), however the lookfup
> > functions should be looking for a device corresponding to the port OF
> > node (which doesn't exist).
> =

> In v1, that is fwnode =3D dev_fwnode(tcphy->dev) .=A0 And dt like is:
> =

> =

> &tcphy {
> =A0 =A0 port {
> =A0 =A0 =A0 =A0 tcphy0_orientation_switch: endpoint@0 { ... };
> =A0 =A0 =A0 =A0 tcphy_dp_altmode_switch: endpoint@1 { ... };
> =A0 =A0 };
> };
> =

> =

> Since the binding already includes a "usb3-port" and a "dp-port", it can =
not add another new port.
> =

> So after v1, that is fwnode =3D device_get_named_child_node(tcphy->dev, "=
usb3-port") . And dt like this:

I see it now, I was probably looking at the different revision, sorry
about it.

> =

> =

> &tcphy0_dp {
> =A0 =A0 port { ... };
> };
> =

> &tcphy0_usb3 {
> =A0 =A0 port { ... };
> };
> =

> =

> Sorry, this looks a bit hacky. Do you have a better idea? Thank you.

No, it's fine from my POV now.

> =

> =

> > =

> > > =

> > > [0] https://lore.kernel.org/all/20250715112456.101-4-kernel@airkyi.co=
m/
> > > =

> > > [1] https://lore.kernel.org/all/4dfed94c-665d-4e04-b527-ddd34fd3db8f@=
kernel.org/
> > > =

> > > =

> > > =

> > > > > =

> > > > > > > +        description:
> > > > > > > +          Indicates the PHY can handle altmode switching. In=
 this case,
> > > > > > > +          requires an external USB Type-C controller to repo=
rt USB PD message.
> > > > > > > +        type: boolean
> > > > > > > +
> > > > > > >           port:
> > > > > > >             $ref: /schemas/graph.yaml#/properties/port
> > > > > > >             description: Connection to USB Type-C connector
> > > > > > > -- =

> > > > > > > 2.49.0
> > > > > > > =

> > > > > -- =

> > > > > Best,
> > > > > Chaoyi
> > > > > =

> > > -- =

> > > Best,
> > > Chaoyi
> > > =

> > > =

> > > -- =

> > > linux-phy mailing list
> > > linux-phy@lists.infradead.org
> > > https://lists.infradead.org/mailman/listinfo/linux-phy
> =

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
