Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C340ECCA476
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Oct 2025 12:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3Cb5xqM4c1dVyi4eAMI5r5lYhdUn2rl1O8Hseg1UQ8=; b=HLmV7j00XN7eZr
	ocJSwgqY8mUuYpdZNB4qUcp/NDa4yNG6X7pXCROP6GXb3X3uSPDoovO1OWllwYRmGhGuny7qOEsva
	o7pt1A5ZDIwHk0YhMvEgJxRpgzxdqvzkxdLDhRdZP3Ht2b7rAE67Q9bGLYU7KLrTiA+UuCEGkJuRA
	Dsrp0bIIDe7LqCOcgbuwKRYwDDEpp6qST3MvfTDvETDXmc8UjR+fUQFSU9EolOfNO9XszzFVfxP6w
	abxTBR6eCoAu+Bo9/TDBlC0zcqwqoRVE/ssqp6UYr4/AjA6N6+QC/kalVe606+MylQCJOvNc+hkfF
	bedjRreb3fvQ+K4tAIvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7CSj-00000008TFL-0ut7;
	Fri, 10 Oct 2025 12:43:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7CSf-00000008TE7-2XB7
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Oct 2025 12:43:08 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59A6XQGB008114
	for <linux-rockchip@lists.infradead.org>; Fri, 10 Oct 2025 12:43:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VNsUbT10s5zSfVe/NID+AupK44Pimf1cna/+6kSnqDA=; b=VJ6CoIt95oBJ80un
	2gMnh/GiQqHK97PV63qSektfmunXEeLtZZ12JITb+nGjrCeiA6CSo00VxOiRUBVM
	PZNq7xieoiKe3XKvYIPVK8NgJbZ90ZvVYUVeCJsjULHQArMP1TOHURivkT7Wt170
	B/vM2wNagv20ShNkRKLKExcvNL3pZS7iLggZMjf74RLRr7oJxHGU4+/qG/+KW5Uv
	kGDkYD2KO2ieu6qrOSzO708popFfV1xpgShF5/eFDgj2ZDz6ScjAQtPH/cKTfZ/Z
	Tr5ikGxlPTAGH/9V+DB3jjS/yAIXl2aeGF25DjTA57F+En0cVJAC73oxwxAb74Ie
	HsYqnw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4spe2c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 10 Oct 2025 12:43:04 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4df80d0d4aaso92151401cf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Oct 2025 05:43:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760100183; x=1760704983;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VNsUbT10s5zSfVe/NID+AupK44Pimf1cna/+6kSnqDA=;
        b=je6iYB2cbCxa1rKsdFg23O6mcAWDbuAD/wygCf1RU8LDt3AfELraI0W9O+rNnQglic
         DfWU4HcbDsmvAvFTOME2P3J/VeXd0Tng3oR2459WOzNoByG+1Vufkvm7EL0RxlM4vL42
         AszsBuWp0RPq3CJkYFUxYYd/0/vEWdZ/LzTSyX1P7OxsQAKsy+wC2iKSCNaDdle1hdt3
         d1Ty7C+oIPlDcZmxxUXB7VkT09bzeeHxxhB8kBCcQL2cKtjMzlCjeiVxvYrRcpA1RYxj
         C6gUHs3FomM5dEY+RjnU2sKsBb7y6aTova05AW2bO2K9D34pynOy25Z6xQDxu2zE5uLv
         RCDg==
X-Forwarded-Encrypted: i=1; AJvYcCX7jjHD8/SP7cJyPtS4PbtoanqzGOz8cRq0oeYvVo/s3tI3EHBsiq+DzbZGcaOMpVcldqseRK5KGV+e63kC2g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxqY4+MNbq5TQWbvqaGcDnSimnJDUdRGoa+N1hdWT762n2EaTxT
	rSyLmrPnR8LwkRgEqa0/8wUtt5M0h0uZzOHAYgzVtRF2aUep4Jur/2vVs1eP6/YUFDC56HkGXUY
	6qpT0T1ENT+tcPYorCIOOLuTEsi6dtjFFOOsrkbgp81jO3UUA+bNft60np0AcYH1+9sDMUC7ABT
	M=
X-Gm-Gg: ASbGnctD6i33DWKemAzgHXYM/0pzXN0ltEhvisqLiWYbkABmvVkiah/Cy8sn0rYZZJQ
	UZwE7jsF8ya4Z0jJJ0ElZTORmt+PKKuYcm37FFgupTj3EWUIkrH28/Ve8Vz4r+FSivrf22LlnTj
	1w5ZDsMPmLg4nDtk8i6WhdyQJileqOcGdk2Yjd29RubMxWy0Zi1Y7cfVrzb7BrT0eSKsmpRrjON
	RLXLxFZq0n2GM736eWhDel9YBWarf0j2IYwZhmIVZsmHYKWuYM92Zdj9l9io1BiyAMjS3trhUhw
	w4Ryfod01DAYb3Ufr6EQ+wRO8TJchy0pG3xXRv10cAe/g5EoZ9jmbGqU7F7UaJWZ2ip6UH45AJV
	zNDD66ZB6nbdEuYZE1AjuwtZsH4jysCU0oBVM7lJHIU+5GqNNS9wW
X-Received: by 2002:ac8:7d0a:0:b0:4e4:beb1:73d4 with SMTP id d75a77b69052e-4e6eacf551amr173804541cf.31.1760100183554;
        Fri, 10 Oct 2025 05:43:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1ZudeCrHVqgLFSFdYWiioumPJG3NkOroOV8K0GCBnWR2pTMVmS9VaAdEuh0dVymq3W77cGA==
X-Received: by 2002:ac8:7d0a:0:b0:4e4:beb1:73d4 with SMTP id d75a77b69052e-4e6eacf551amr173804061cf.31.1760100183037;
        Fri, 10 Oct 2025 05:43:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea3aafasm6103321fa.49.2025.10.10.05.43.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 05:43:02 -0700 (PDT)
Date: Fri, 10 Oct 2025 15:43:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, m.szyprowski@samsung.com,
        andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] drm/bridge: analogix_dp: Fix connector status detection
 for bridges
Message-ID: <wzeleliof47ogogxqrlwswfbnvummoydtegpgwf463k5ve3uue@tpemjilgagpl>
References: <20251009193028.4952-1-heiko@sntech.de>
 <v6aqic6kffc3x42dkb4bika5tvoqdpmmloroqio2656g74pkws@7fe3bsfzbasn>
 <3572997.QJadu78ljV@diego>
 <b47c5579-511e-4831-b86e-48ad4cefaa6c@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b47c5579-511e-4831-b86e-48ad4cefaa6c@rock-chips.com>
X-Proofpoint-GUID: hn6DsEe6jQypFjTWjnLWnI_YppDSAT0S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXyAFnzPWaUqGM
 NQjnF7o8Q9HFjnaNaeLU09NlYXBBE1700eJ01c4nF+bgr4lYtzGny95XY9hcmAS4EiTJGd+OJsw
 Oxq8g9pAMZ6gh3iuFJOz0i1kHVvg2jzC6uE7teaEgKhzKJBnFeCgeHiULZk1pxkifm3f6p/fTKV
 VuBQOXZLbpdVSc2JNQvH3rCK6zOh3CvZ8wUJRAbivCPg5Cw5GqblivxlgDLVkK0/E4VaKhzyhAl
 f9Ni5JZxSUGi5PTde+/3oobMrnSuDIxkzto37/aYOfiHExFW/DvvJ9O6VjF3bhPWOw0pShYb1Ar
 a4aox29VZfbhFfYWePvbwXkutRXhDiroWUl0fHYPuMlhYtMqFRNQZX7tcoa4j//I9kBqAi4TcP3
 Yav/cnjx0OtUCHFQiwMPdH0ZYbfPWw==
X-Authority-Analysis: v=2.4 cv=SfL6t/Ru c=1 sm=1 tr=0 ts=68e8ff58 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=hD80L64hAAAA:8 a=s8YR1HE3AAAA:8
 a=V7SD_xnUNx52fGP0aLEA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=jGH_LyMDp9YhSvY-UuyI:22 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-ORIG-GUID: hn6DsEe6jQypFjTWjnLWnI_YppDSAT0S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251010_054305_937831_4CD2E6A1 
X-CRM114-Status: GOOD (  62.88  )
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

On Fri, Oct 10, 2025 at 12:02:43PM +0800, Damon Ding wrote:
> Hi,
> =

> On 10/10/2025 7:42 AM, Heiko St=FCbner wrote:
> > Hi Dmitry,
> > =

> > Am Freitag, 10. Oktober 2025, 00:30:11 Mitteleurop=E4ische Sommerzeit s=
chrieb Dmitry Baryshkov:
> > > On Thu, Oct 09, 2025 at 09:30:28PM +0200, Heiko Stuebner wrote:
> > > > Right now if there is a next bridge attached to the analogix-dp con=
troller
> > > > the driver always assumes this bridge is connected to something, bu=
t this
> > > > is of course not always true, as that bridge could also be a hotplu=
ggable
> > > > dp port for example.
> > > > =

> > > > On the other hand, as stated in commit cb640b2ca546 ("drm/bridge: d=
isplay-
> > > > connector: don't set OP_DETECT for DisplayPorts"), "Detecting the m=
onitor
> > > > for DisplayPort targets is more complicated than just reading the H=
PD pin
> > > > level" and we should be "letting the actual DP driver perform detec=
tion."
> > > > =

> > > > So use drm_bridge_detect() to detect the next bridge's state but ig=
nore
> > > > that bridge if the analogix-dp is handling the hpd-gpio.
> > > > =

> > > > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > > > ---
> > > > As this patch stands, it would go on top of v6 of Damon's bridge-co=
nnector
> > > > work, but could very well be also integrated into one of the change=
s there.
> > > > =

> > > > I don't know yet if my ordering and/or reasoning is the correct one=
 or if
> > > > a better handling could be done, but with that change I do get a ni=
ce
> > > > hotplug behaviour on my rk3588-tiger-dp-carrier board, where the
> > > > Analogix-DP ends in a full size DP port.
> > > > =

> > > >   drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 8 ++++++--
> > > >   1 file changed, 6 insertions(+), 2 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/d=
rivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> > > > index c04b5829712b..cdc56e83b576 100644
> > > > --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> > > > +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> > > > @@ -983,8 +983,12 @@ analogix_dp_bridge_detect(struct drm_bridge *b=
ridge, struct drm_connector *conne
> > > >   	struct analogix_dp_device *dp =3D to_dp(bridge);
> > > >   	enum drm_connector_status status =3D connector_status_disconnect=
ed;
> > > > -	if (dp->plat_data->next_bridge)
> > > > -		return connector_status_connected;
> > > > +	/*
> > > > +	 * An optional next bridge should be in charge of detection the
> > > > +	 * connection status, except if we manage a actual hpd gpio.
> > > > +	 */
> > > > +	if (dp->plat_data->next_bridge && !dp->hpd_gpiod)
> > > > +		return drm_bridge_detect(dp->plat_data->next_bridge, connector);
> =

> I have tried to use the drm_bridge_detect() API to do this as simple-brid=
ge
> driver, but it does not work well for bridges that do not declare OP_DETE=
CT.
> =

> Take nxp-ptn3460 as an example, the connected status will be treated as
> connector_status_unknown via the following call stack:
> =

> drm_helper_probe_single_connector_modes()
>   -> drm_helper_probe_detect()
>      -> drm_bridge_connector_detect()
>         -> analogix_dp_bridge_detect()
>            -> drm_bridge_detect()
>               -> return connector_status_unknown due to !OP_DETECT
> =

> However, the connected status will be connector_status_connected as expec=
ted
> if Analogix DP does not declare OP_DETECT[0]:
> =

> drm_helper_probe_single_connector_modes()
>   -> drm_helper_probe_detect()
>      -> drm_bridge_connector_detect()
>         -> return connector_status_connected due to CONNECTOR_LVDS
> =

> Base on Andy's commit 5d156a9c3d5e ("drm/bridge: Pass down connector to d=
rm
> bridge detect hook"), the drm_connector becomes available in
> drm_bridge_detect().
> =

> It may be better to unify the logic of drm_bridge_detect() and
> drm_bridge_connector_detect(), which sets the connected status according =
to
> the connector_type. Then the codes will be more reasonable and become
> similar to the simple-bridge demo via
> 'drm_bridge_detect(dp->plat_data->next_bridge, connector)'.

I'm not sure, what you are trying to achieve here. The
drm_bridge_connector should handle the OP_DETECT and use the last bridge
in the chain that supports detection.

Note: OP_HPD and OP_DETECT are not that tightly connected, especially
for DP bridges. It is fine to have a later bridge which generates HPD
events, while Analogix DP bridge responds to .hpd_notify() events and
performs its duties.

For example, it's perfectly fine to have dp-connector with the HPD GPIO
pin routed to the connector (in which case it will declare OP_HPD). But
the Analogix bridge should perform actual detection. Normally this is
handled by reading DPCD and ensuring that there is an actual connected
device (i.e. either a non-branch device or a branch with at least 1
sink).

> =

> But we still need a specific check for DP-connector to resolve this issue.
> The '!dp->hpd_gpiod' may not be well-considered. Perhaps we could introdu=
ce
> a new API, similar to drm_bridge_is_panel(), called
> drm_bridge_is_display_connector()?
> =

> > > =

> > > And it's also not correct because the next bridge might be a retimer
> > > with the bridge next to it being a one with the actual detection
> > > capabilities. drm_bridge_connector solves that in a much better way. =
See
> > > the series at [1]
> > > =

> > > [1] https://lore.kernel.org/dri-devel/41c2a141-a72e-4780-ab32-f22f3a2=
e0179@samsung.com/
> > =

> > Hence my comment above about that possibly not being the right variant.
> > Sort of asking for direction :-) .
> > =

> > I am working on top of Damon's drm-bridge-connector series as noted abo=
ve,
> > but it looks like the detect function still is called at does then stuf=
f.
> > =

> > My board is the rk3588-tiger-displayport-carrier [0], with a dp-connect=
or
> > which is the next bridge, so _without_ any changes, the analogix-dp
> > always assumes "something" is connected and I end up with
> > =

> > [    9.869198] [drm:analogix_dp_bridge_atomic_enable] *ERROR* failed to=
 get hpd single ret =3D -110
> > [    9.980422] [drm:analogix_dp_bridge_atomic_enable] *ERROR* failed to=
 get hpd single ret =3D -110
> > [   10.091522] [drm:analogix_dp_bridge_atomic_enable] *ERROR* failed to=
 get hpd single ret =3D -110
> > [   10.202419] [drm:analogix_dp_bridge_atomic_enable] *ERROR* failed to=
 get hpd single ret =3D -110
> > [   10.313651] [drm:analogix_dp_bridge_atomic_enable] *ERROR* failed to=
 get hpd single ret =3D -110
> > =

> > when no display is connected.
> > =

> > With this change I do get the expected hotplug behaviour, so something =
is
> > missing still even with the bridge-connector series.
> > =

> > =

> > Heiko
> > =

> > =

> > [0] v3: https://lore.kernel.org/r/20250812083217.1064185-3-heiko@sntech=
.de
> >      v4: https://lore.kernel.org/r/20251009225050.88192-3-heiko@sntech.=
de
> >      (moved hpd-gpios from dp-connector back to analogix-dp per dp-conn=
ector
> >      being not able to detect dp-monitors)
> > > =

> > > >   	if (!analogix_dp_detect_hpd(dp))
> > > >   		status =3D connector_status_connected;
> > > =

> > > =

> > =

> > =

> =

> I see... There is also a way to leave the connected status check in Analo=
gix
> DP bridge:
> =

> 1.If the later bridge does not support HPD function, the 'force-hpd'
> property must be set under the DP DT node. The DT modifications may be
> large by this way.

Well... The drivers should continue to work with old DTs, if they did so
before.

> 2.If the later bridge do support HPD function like the DP-connector, the
> connected status detection method is GPIO HPD or functional pin HPD.

dp-connector should set OP_HPD
analogix-dp should set OP_DETECT

> =

> With the DT modifications for above 1, the analogix_dp_bridge_detect() can
> be simplified to:
> =

> static enum drm_connector_status
> analogix_dp_bridge_detect(struct drm_bridge *bridge, struct drm_connector
> *connector)
> {
> 	struct analogix_dp_device *dp =3D to_dp(bridge);
> 	enum drm_connector_status status =3D connector_status_disconnected;
> =

> 	if (!analogix_dp_detect_hpd(dp))
> 		status =3D connector_status_connected;
> =

> 	return status;
> }
> =

> Best regards,
> Damon
> =

> [0]https://lore.kernel.org/all/22a5119c-01da-4a7a-bafb-f657b1552a56@rock-=
chips.com/
> =


-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
