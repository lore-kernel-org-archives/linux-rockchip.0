Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38483CA1012
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Sep 2025 19:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TA/GsQV0NAHAa7wxRa8EifGqzNAWMAvlpa15CQwBHac=; b=VkKEL89tH5zibD
	aBrqsHC6+rGMM9DsTykNZioQaoIl7EFIMF73BykDc2/cDKnvbQ4XTKeA1VVOm/Pp9yT2lAi1byaWa
	PmzMrDOCcXw+XvxSTFbx768a3d00UGOuyQ/IyIjO1YG1ChwYWpFt5/HSktv6iGliWg9lnhca20pof
	xtCFW4r5PZvr4jNCZX1q0G1L6//UCOhYlIlq0BBkVG0v12mGrofIcO7IR53g1nZMds62fiv4MQixl
	gY9b3aCIZMunf/H5YdyH6GuSrgCvl6IRX3twXsKkQHtZUh9FmX1BJTX43UdJUTDPXDK4QPBB0Acms
	rGkavqTk4b26a5IMvcCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuyXs-00000008MOB-1ouP;
	Sat, 06 Sep 2025 19:25:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuyWy-00000008MHK-1YX3
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Sep 2025 19:25:01 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 586BwGcc012071
	for <linux-rockchip@lists.infradead.org>; Sat, 6 Sep 2025 19:24:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MTEK0pkDHJjciIVxHN9OmhQI
	NcjLjs9n3rxGq729tTE=; b=DdPwKsIYMWvg8x8N76/OFmxu4st7+i6Xm7nNHoSw
	xxhOS07Bd2FmXKrePMmNQYdbHYKjQoPCG3umm6WMnxbKVxSwvf75vSmEh/gnQgDt
	cGcN5iQf5KAl/fIsxs+Bt54Nv5Fn4wB/CCns3U9e7jfMq1WvIsOOADJz1WBk6T+a
	tdm3OwCm3rhaL1SMvkjAEhPrSdyXbEsmgn/ug47MTLMBZ4magi4oHWuETK7yLL4k
	uibp/5MTko3mD+NBYFBhLiONtePX0VgTV/nrDBHST/kZ4USRH1LLyJoutVDJe97V
	HrcemKRKeA56msJcbfWqZ4SC6mdRryL5cWZJr+AOOnkc5Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by8s5xh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 06 Sep 2025 19:24:59 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-72631c2c2f7so69400076d6.0
        for <linux-rockchip@lists.infradead.org>; Sat, 06 Sep 2025 12:24:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757186698; x=1757791498;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MTEK0pkDHJjciIVxHN9OmhQINcjLjs9n3rxGq729tTE=;
        b=UiFzSc45gczywozm+Gq7UDbkPbZHqU3z9zoj0cwho3gEKKk2wTRkxnAxIabhXGjv0d
         6634UQODJfLBsyw1TI3XCS53Io3aGeP9AQDgwUdjhrV/j6MOwWd2TtujIyhX4QOEfoI6
         /vId2ByF9EFgE6Ory/mBmSRqnbrC1puLH1EfEcLZc0SsZLsuj4C0qC4Og81h+JG5x81P
         /415HJSwYxhCEDQXlELmKo1BxvAzR1gvHdWB65X882aXX7IgYEKpFyxC/1dcrcSGl8h2
         +kTwWcWSQUcWA3HAErrmRMnitnSBrE1Sy1e0lUiT0DdBYBKcXD+T8xLiy8yKT4gMGZzM
         UQiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXikq+sNGpVNUDIqqn9uc/XhHRrncbtsOmBEKF7lqm7NY8B97QuQT8XamD/SzY8bd2FtvyBGp1BZ3ZcbW/5AQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx08HrDnMev7qXAj1U+RLlzt0sjzlyYDvAlLg5Yrk+UTRPMoqI4
	ge1sTYKq0evfqqphwukAi9WSOALgtK1gfYg5nMxijSFdNqCj+DgxeEjJUld/W9VmH66LTm4W4qM
	qz7NvT8tVjXtAlyEYTTPHxJzLDhlArRRA7gKuwYvOpjpoHqCIRs+94U20Gr00e5zBgOC9YPkXMB
	k=
X-Gm-Gg: ASbGncvZ/juTno1/07vqcKON9bj7bW8tNXxICxyN66OI4MlCqZ1ylIMksGxTpTWziOP
	UD8LaCpQmDeRtxOoy6HVH3/kL+LIoTa4r7s1XBlGIX+1gdXv2tclgwgZNQDYGTPw0qXbH4Nn9zJ
	alZoKhpmOoXhhR3y9MG5WxTGkAEUt//f3uOljmr+X/hXNTb+lK9w2VNxPJ7VSv8OKRFZYKPmmsC
	+dq9eenkf9ntpl7QhXmreOUNUyfTiUJkUcDewUQXNHEHMTN3mTuA8bT5vaGC0BS3/I46NmZaHZ+
	gn+x9nxOeQwKauqu7miEjGQIf2YJgicthl+qsVd7m/O0fawnrt93t3n5j9uqKENJuffgJNP5x52
	MZClTiZvDw0hJjOb05Ve6Zj1xIMNhAiByoecRnHJKA+/3jVHddNZh
X-Received: by 2002:ad4:5f07:0:b0:728:4af1:e4f9 with SMTP id 6a1803df08f44-739435cf288mr38553276d6.47.1757186698179;
        Sat, 06 Sep 2025 12:24:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrz7N2428ImzsvEUQElMBkqhCweROuKesIV1+3pYGl1R0oId7O3XdYr9aAYzNEBMgDXflUUA==
X-Received: by 2002:ad4:5f07:0:b0:728:4af1:e4f9 with SMTP id 6a1803df08f44-739435cf288mr38553016d6.47.1757186697694;
        Sat, 06 Sep 2025 12:24:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608acfd2ffsm2500187e87.107.2025.09.06.12.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Sep 2025 12:24:56 -0700 (PDT)
Date: Sat, 6 Sep 2025 22:24:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Frank Wang <frank.wang@rock-chips.com>,
        Zhang Yubing <yubing.zhang@rock-chips.com>,
        Andy Yan <andyshrk@163.com>,
        Maud Spierings <maud_spierings@hotmail.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 1/2] dt-bindings: phy: rockchip-usbdp: add improved
 ports scheme
Message-ID: <aLyKhngeksG2SKdq@umbar.lan>
References: <20250904-rock5b-dp-alt-mode-v1-0-23df726b31ce@collabora.com>
 <20250904-rock5b-dp-alt-mode-v1-1-23df726b31ce@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250904-rock5b-dp-alt-mode-v1-1-23df726b31ce@collabora.com>
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68bc8a8b cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=QX4gbG5DAAAA:8 a=OfM26ny4dbP1suOavW4A:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: tH5HRicY5VQDhQd5vW9HnMti5EoEOcn1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX71bbEfLHavSz
 mfrlgPcy9i+sJdsI9RdRNKLvJWe/puOxZo68TWLcFdGe1qJm7IC+yiIE1eOHZHAvdmGABYn2KgD
 +ejsZEMbe+x2Uu8de2hR7AAUvEpjfwtgRTawd8DVA4GZnArTnPeKnyIIEwXvJgEryedimFscDe2
 ZeZzxrSDZhcNCJeHUWnRM9G29cH3l6aVHZpmtu3sWuhoow5QCY0lQaf9K4T9zkr8r+w11FsibNJ
 GCzhyNdd5bdF0GK0XJp0TRr7OyCxC1/H03gEBrkcBtQFAPRBpGbZ3CjmUnfdlkni5kQMx4PDhlB
 h4jjTb9dZVubdOycm517+EJpIjsHDS1QW01SiM39BeY0pxglNRH4MbtMY+sdTsOGHwTMXnuSiPe
 APC0bGQP
X-Proofpoint-ORIG-GUID: tH5HRicY5VQDhQd5vW9HnMti5EoEOcn1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-06_07,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250906_122500_527560_C7BFA052 
X-CRM114-Status: GOOD (  29.89  )
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

On Thu, Sep 04, 2025 at 08:26:02PM +0200, Sebastian Reichel wrote:
> Currently the Rockchip USBDP PHY as a very simply port scheme: It just
> offers a single port, which is supposed to point towards the connector.
> Usually with 2 endpoints, one for the USB-C superspeed port and one for
> the USB-C SBU port.
> 
> This scheme is not good enough to properly handle DP AltMode, so add
> a new scheme, which has separate ports for everything. This has been
> modelled after the Qualcomm QMP USB4-USB3-DP PHY controller binding
> with a slight difference that there is an additional port for the
> USB-C SBU port as the Rockchip USB-DP PHY also contains the mux.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/phy/phy-rockchip-usbdp.yaml           | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> index 8b7059d5b1826fdec5170cf78d6e27f2bd6766bb..f728acf057e4046a4d254ee687af3451f17bcd01 100644
> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> @@ -114,6 +114,29 @@ properties:
>        A port node to link the PHY to a TypeC controller for the purpose of
>        handling orientation switching.
>  
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of the PHY for USB (or DP when configured into 4 lane
> +          mode), which should point to the superspeed port of a USB connector.

What abourt USB+DP mode, where each one gets 2 lanes?

> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Incoming endpoint from the USB controller
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Incoming endpoint from the DisplayPort controller
> +
> +      port@3:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of the PHY for DP, which should either point to the
> +          SBU port of a USB-C connector or a DisplayPort connector input port.

I would suggest describing this port as 'DisplayPort AUX signals to be
connected to the SBU port of a USB-C connector (maybe through the
additinal mux, switch or retimer)'. It should not be confused with the
actual DisplayPort signals (as those go through the port@0).

In the Qualcomm world we currently do not describe this link from the
PHY to the gpio-mux or retimer, but I think we will have to do that
soon.

> +
>  required:
>    - compatible
>    - reg
> 
> -- 
> 2.50.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
