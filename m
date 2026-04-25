Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 928A8FF885C
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 14:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0FXQD2fkmGaw+wx5ZiaPwOdrCygi7NNA8c0vXEHC/M=; b=yDUEE38DSwgXVl
	QnqNQ06cwXS4OfV8iazrneMJco4C8NXBu9PzMyoSJ/BUMHqzKzJ6deJ9aqLpwjZDzyKdIL8RPCKiW
	Xs7Rvc3rE+pgs0Hf/r83qHxlAOab3sKWKIHMGvIU47o37uRySRba1udgJIrwrjwaVai9r5/v8UXlX
	Kt52x9MCI5qkeJKFJEcFBWpvWjlY/TAeazaljQ/lH6Ub5rorxy1sJaFKCy6zQFyPg30SQBo1gdHxv
	97ctvMHMUnPtNFNpiKtzLYZGBmJi/LADZWYs8/lNZONQcELHM9egtuxZfcNKSVnTch6UCaX0d3TTQ
	TGdPhEvIg4U8kA6Dbg7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGdvr-0000000EVnS-38zJ;
	Sat, 25 Apr 2026 14:24:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGdvo-0000000EVmm-33RZ
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 14:24:30 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63P4llPQ3843650
	for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 14:24:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ixUuUGkcS1ogu+Ork+yFuS7W
	ctoV+chAiSQKyR8/7As=; b=LV84CZbJ73kJp0FekAB/P5MFtE8cPCFmomVJgA8/
	HltgsE2+S3s8RndEDZoWzufhFPhHv9rrTgYsJVLsGLo9EfW4ZKo8Uy/7t5E2xpL9
	r/Ul/d435zV2Ukr6cwrKZi7VfHBAROBA35u8rKTxC95sVgHDQ5UeGZssUWcjIoal
	IkKHCnmJZJZA9T/XMO6yG8pOqkkf5cyJC04dmRMJTe+iyDuiAPrcutLRx2ixA91i
	nfrv/Mh/xsbRLLxxbY9tErJ8BxDhdbPMPHU36B9/DROKtbLukDyzJNwhu/SofGbU
	E0sK/QMRT0pTpQgi6e5k19Jh+GTVN3UScVIEEyLx3+Ef+A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drpw98y16-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 14:24:28 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50d8ed08aa4so23735621cf.3
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 07:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777127067; x=1777731867; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ixUuUGkcS1ogu+Ork+yFuS7WctoV+chAiSQKyR8/7As=;
        b=IvS3pEjK7RngPx+g8z03laG3p/PjzqOJkw8a83q0XoLYkVZ86QmVzH4AE1sN6rge4c
         wW2auzI8AuMWe8rpHbjBDbepm8i4SMCead7GC+bA0GvJVsSjNOqJDG+SXpA5xbww0G41
         xb97Zj2UZS7+S84nda+0eAEAn4J35CQiS05nvHmgrMarspb2sl3cLH0P2Awafoch5vlS
         l7WkZ+Bk6lFAGNmxNH/3dKZoOuT5OhBM+Ez1wUS3fLScwNJEmIizDe5oX7I3StfkyUHy
         Uj+YqWmh2QzB4lDPFWMIl9LY2K4RX7yTo21DPq1k+P1HVYsAVOyzYqjVN9Hr3KoqsXVG
         JPHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777127067; x=1777731867;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ixUuUGkcS1ogu+Ork+yFuS7WctoV+chAiSQKyR8/7As=;
        b=ahmd37lLAbq5+7/6RTx001Qtlmcc80sthhdL9IuhFcO71ugnKPDkoySyt83/QII35f
         1XkGfDBJ/8rAQl/EsbSV8rWJKn1PPUYu86dTFXO5A4swa0hMnj4+3brChPL78WGOqdmC
         IZ11dxP4r2rBNLZWvNsffBh50yjyDpRkCpsMMeWmUk/Vl0IpeuCkawDC3DFYg2rIfgsS
         NMnWKusC5F96vv18kCzRfCvkhodoObVc8LmBxgLr3vfCi6PvuNZOyMhFCj6OxY8KgA8O
         aGc8VG/gMnuPDWoSI7wzT6R/0A2NTIKDcFeKAG3Ig1cJ4OM23hJ3c7rFIIOGy6v2pTqC
         50KA==
X-Forwarded-Encrypted: i=1; AFNElJ9ICUTy9bMeR9j57kxAPNqkMlCaAlLjRZTSNNjZaaeVbgywqHg5FG74uMbjV2IudPTmEa7jvrE6Zrrv2nnwNQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5NRgN1KrZBs98anl4uZVD9serVbbYoj9HrOWgb2Yx0M2sJHNm
	ZA6fj3u9dQkhuChl55e+29KmZwzS2IANf+7n7t1pt9oVbjf+An9U6LSfwqQ1dNn9n7GaT7Zc+sp
	Ncw4pI8dzxAA5W8Daw0OPCaRrRQuEcQ5C2EBNKi5cfUxR2muKbOIkiPv/Ff79/ZA7tDQ+BpEubP
	Q=
X-Gm-Gg: AeBDieteG2yi5o9Jo+umUSDNAm0TfthHVpGcuKo1WEPtMrezuVpTRsiYsrCsqTRjQCm
	JicqzCPV/awEeqIIQ6Z+WUa+jve67aTMXgh4DKW8tEkmZOWQrju9Lilt0B4XX/gXwvSj6+OxCAi
	epqwUddj4hrlrzGIxK+hkJFMYImbPBkjYV3axHadN5eUWkz5L0c411hugz7+clYmYbMB4MAgSwF
	QYEMDmKO6dUjjvDmk/slY7Pft22j2PLaTBpJwtOrx3T9fDOXkShLNNSq/b848XGjnkspybfWKhL
	c1voB85LdIn5fooo95R59GqvQi4ZnJDpRpn6vdQ8a+pvnCb7UrqP69rm1bhA0gLcbcUC05lhrzM
	rdoWJzoQcqis+WASDELVrm94bW33xKsXnM3NOKOcHfWfc2XlBe5B4vWK0GTCEWA2HpQw9NVKhhB
	sbXrgXEQ/uPXKFHGUk2NFn5RMvvIjzS4i5/ytCxIfVPt/LSw==
X-Received: by 2002:ac8:5dd1:0:b0:509:965f:888f with SMTP id d75a77b69052e-50e3669f7a7mr531573911cf.0.1777127067122;
        Sat, 25 Apr 2026 07:24:27 -0700 (PDT)
X-Received: by 2002:ac8:5dd1:0:b0:509:965f:888f with SMTP id d75a77b69052e-50e3669f7a7mr531573301cf.0.1777127066688;
        Sat, 25 Apr 2026 07:24:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a4187e1116sm6909552e87.54.2026.04.25.07.24.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 07:24:25 -0700 (PDT)
Date: Sat, 25 Apr 2026 17:24:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Dennis Gilmore <dennis@ausil.us>, Heiko Stuebner <heiko@sntech.de>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maxime Ripard <mripard@kernel.org>, Alexey Charkov <alchark@gmail.com>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 3/6] drm/bridge: simple: Add the Lontium LT8711UXD
 DP-to-HDMI bridge
Message-ID: <45evt7lkzuykoqsc2z27hsvm7fasmn6sr6gbjtdnme54jauehf@dmvon2o5emzd>
References: <20260425031011.2529364-1-dennis@ausil.us>
 <20260425031011.2529364-4-dennis@ausil.us>
 <20260425112844.GB2964234@killaraus.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260425112844.GB2964234@killaraus.ideasonboard.com>
X-Proofpoint-GUID: 37bT1VN8QdV5PeE2-zjMatzZf-EPcIdw
X-Authority-Analysis: v=2.4 cv=H67rBeYi c=1 sm=1 tr=0 ts=69ecce9c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=ssO-rxKZoUVbP6lRNB8A:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI1MDE0NyBTYWx0ZWRfX0k3UBNt5HQuG
 Sb55E+m45+Aj+PDsxK/UiKAje8wrTwZuqYzl42sWu9PW+zGRHkjkgdQhUq5TCpwBinNsf+VlTP2
 oXw6IX8vmdmggohMaCL3U7H4e9crXN2CkehtOzmPQXhsO/qN+IvG2aFY0raUnAuzUF2xxSzKMve
 7DDa2UZY0dK3nXIXa6qU4swYWyC1k0IY952/Yq/eb8IDYLK7Wps9N9FANRhd1NqwUwttr+K2aoq
 iBG51+NnpkX9mNisCfzuZPMtMg1bFGAzsaoidP9+i2VbQVZaPKxXi8qohpEzXecyz9w856NPrCm
 1sH9vJLTIeMqgskQ1+09LH9bJL5ZoJzna/C81Dg7Bh/3SiHH8XofeQpb54E2j63XTp0TqCyrOqw
 +gcWxxchmIRwfk8FlgjwoWXRWWEaUS5LRwY4pg+5r1dVP391HTwANa40HEXTQknMgBaUqFeDP1f
 wK95YTvRfFBWlAvNYEw==
X-Proofpoint-ORIG-GUID: 37bT1VN8QdV5PeE2-zjMatzZf-EPcIdw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-25_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604250147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_072428_793427_5DEC8B89 
X-CRM114-Status: GOOD (  25.70  )
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

On Sat, Apr 25, 2026 at 02:28:44PM +0300, Laurent Pinchart wrote:
> Hi Dennis,
> 
> Thank you for the patch.
> 
> On Fri, Apr 24, 2026 at 10:10:08PM -0500, Dennis Gilmore wrote:
> > The Lontium LT8711UXD is a high performance two lane Type-C/DP1.4
> > to HDMI2.0 converter, designed to connect a USB Type-C source or
> > a DP1.4 source to an HDMI2.0 sink.
> 
> As far as I can tell, the LT8711UXD has an I2C control interface.
> Shouldn't it be an I2C device ?

From the datasheet:

The device is capable of automatic operation which is
enabled by an integrated microprocessor that uses an
embedded SPI flash for firmware storage. System control
is also available through the use of a dedicated
configuration I2C slave interface.

My guess was that it can either be an I2C device or it can function as a
simple platdev with no I2C controls. Please correct me if my
understanding was wrong.

But now looking at the schematics, it seems to be connected to I2C6.
Which means that it should be desribed (and bound) as such.

> 
> > Signed-off-by: Dennis Gilmore <dennis@ausil.us>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >  drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
> > index 8aa31ca3c72d..42c1f3d5ba0c 100644
> > --- a/drivers/gpu/drm/bridge/simple-bridge.c
> > +++ b/drivers/gpu/drm/bridge/simple-bridge.c
> > @@ -270,6 +270,11 @@ static const struct of_device_id simple_bridge_match[] = {
> >  		.data = &(const struct simple_bridge_info) {
> >  			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
> >  		},
> > +	}, {
> > +		.compatible = "lontium,lt8711uxd",
> > +		.data = &(const struct simple_bridge_info) {
> > +			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
> > +		},
> >  	}, {
> >  		.compatible = "parade,ps185hdm",
> >  		.data = &(const struct simple_bridge_info) {
> 
> -- 
> Regards,
> 
> Laurent Pinchart

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
