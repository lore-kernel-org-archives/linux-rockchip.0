Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E489BCCA471
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Oct 2025 11:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=saqjPhqrlqw1Yd6f5pNmP/7nD4WF52MV4QfRRmg4yUw=; b=xIf1DQ/PDmcqyB
	cs33lE0eCe/CqaX6cFnpZoypjeizr566wnJvYdmW2XNDZqngex+8ZQyfjBC4R0GyyG/NU8NyLYICg
	IbB/m9TpJAuamcYDRQY08JyXMotOp8+ETmxByFsU9xxmGH/tlU7cCcZWc8NUEThioPVDMgsI2lWxb
	m/cixmHtqt4xR+6hMM8jB786qWoTu9qnnYIpmLsiC5SUEI2A/VDhged+ll7gXsPTGb7PzY/uye705
	RgJsUk0rq5FnyUhAFCHPbucFh3Zdxfk2/9vlClLIqsqLzUu2bJpTm/HHtBToFtmmRmx0A7newoLb0
	nhLaHVqp187wLwkKOc5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jFd-0000000HTIs-0Zd6;
	Mon, 06 Oct 2025 11:19:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jFZ-0000000HTHo-2xsa
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Oct 2025 11:19:30 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595LrlA5017280
	for <linux-rockchip@lists.infradead.org>; Mon, 6 Oct 2025 11:19:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VdDqFKfxdRsbEFQxS413xAtJ
	qLi/JD9yGrBIZt2nS7s=; b=eYySjoklVWJC6duqx1BCPWech6zXZkJGteyG1R0R
	F1SyG0UaSPXs2G4MxtfhWuwQNlRhV8/L4jS6259QnvLqYwJ5RrbQVRE+1J2xs4l9
	fo2uIYEY7w4x5f1G6iw/Jsy1Nf82Dyc6fnNvBaRsMXGuF1fLDlOm9kwNmBTpDKnu
	+ddhfD4Ago+27S4gmjqrkqIzR5ONiaSkmRM8sNpUNw8dyF14Q+ddfa9/mkFsKJDd
	JtR71cUpaEnTqCwb6rLZ9MOPQybt6a6hcGkVCGxAFdQxukCJ18CTzpxbK48DDj9R
	Z50k+TLpBNxJBWSoe363k+fwNvcfWRsku0jTOgWDIOxNRQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49juy6ukvk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 06 Oct 2025 11:19:28 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d6a82099cfso123416661cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Oct 2025 04:19:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759749567; x=1760354367;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VdDqFKfxdRsbEFQxS413xAtJqLi/JD9yGrBIZt2nS7s=;
        b=deohVF7WuGacOslIXij0ria7Vfyxp0t8TsUmn9w74j5D1JFiK4fLBHg0EKuOf5o1yV
         7/SEeIXdo4oQ4AO8TgL+iCZ/VEekZj/8gfnJNiVAQeBEtFj8sXsPJZgNd8ipnopjPuVN
         brx6tbtgMNEOHaSYB/vN36KUmMW/liGEAFQ1rb0sxrSNAHVyCadZ10ZXxYkqfHlI3Kdf
         9MCx8+q0LIy1afKTrZ8IayBkMqqWt9MP4rv8RiaI+TFzmCRGhDYfyRX+AyJSypMUOg6X
         6+/jsGUOF4ip+Uk+fzcZGYHnHihlLHEn1F6mhLbiSbG8eu3bnXGrxBsIS3w4fcLUb3ht
         lkNA==
X-Forwarded-Encrypted: i=1; AJvYcCXfi1QhOSO1mlUO2uKQvmDblbSM5hHxHoCtDWpvp1N6xpjHJMue/agDST2ygZvV7VycXkNAIdJ/u6j6XAaKmA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwRAPZxUgL2TBJF6sDWLbzDy1mobZ9axEQiHj8Kl1xgTjw2989R
	FUa308KFVox1u0Q2oZ4g15yfHLCQJbaewYZdyDqcZGFwNWEVPqU+CamEMr4RPUQ0JrE522EZ15L
	T+NkBf3TYscWk3YHSdg/LY20YIUxt7HY4UMJk82yTXom3AptkNOFryG+R8bszL3VHyA20wCjuhb
	c=
X-Gm-Gg: ASbGncuLuEzpHS5eAYnw2UpFLen0fBe/WVFgaVlFZBQueyARfT7+Gv9ile5fEaM2+kh
	I9Ao4gksDw9Z0ix5TRO9OAGo4x32LZbH5VfGFMHC/2rTpoqeMqha4fbJXlZzAvaycWCJjpxDICq
	McC/sPyALDx9VHTHOPkzJ7C3s2NPzxmBgB9QtClDFDvYxbUXFWNZcBcLACPQyNchNrvidEWtwvU
	2X1ydmU5D41ykIxkoyHMit4ebq0slnhmWELl6uBlTYLK8910k1+zUNxWUSenQ9Y0FAoAtU+/D2q
	vrQwGw8eoBeDzYdXGJISuJWjyJxITkAQZncVWCA/i9BJsq5bzESu1s5UkAX/dnjo74YK7EN1iEz
	KvgOuS7Lay9asqkrO/kBqOZH2Oz8Am/d5JGhfRlq33XcRglJnGsRKNuxVqQ==
X-Received: by 2002:a05:622a:4085:b0:4d9:3bc1:1404 with SMTP id d75a77b69052e-4e576a297damr192482641cf.2.1759749567340;
        Mon, 06 Oct 2025 04:19:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6z3fr6lPNiM8lZwEQJjps6GoE5mipREKT0DxSIXFLLzmU3vusYTO80+hqG4PsU2cGm+LQqw==
X-Received: by 2002:a05:622a:4085:b0:4d9:3bc1:1404 with SMTP id d75a77b69052e-4e576a297damr192482121cf.2.1759749566744;
        Mon, 06 Oct 2025 04:19:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0119ee99sm4958551e87.106.2025.10.06.04.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 04:19:25 -0700 (PDT)
Date: Mon, 6 Oct 2025 14:19:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: display: rk3588-dw-hdmi-qp: Add
 tmds-enable-gpios property
Message-ID: <c5kwmvu3j72evbgdmjn6qn5nqx7ywbiwpzhnpeh6hjjhbz5vwo@jpe3onblwhmy>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
 <20251005235542.1017-2-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251005235542.1017-2-laurent.pinchart@ideasonboard.com>
X-Authority-Analysis: v=2.4 cv=IrITsb/g c=1 sm=1 tr=0 ts=68e3a5c0 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=QX4gbG5DAAAA:8 a=P1BnusSwAAAA:8 a=V0X8aylG3EXbbglEqaoA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=AbAUZ8qAyYyZVLSsDulk:22
 a=D0XLA9XvdZm18NrgonBM:22
X-Proofpoint-GUID: EmxuCrLRRO8vCrzm7ClHeZUrHRQI9dji
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyOSBTYWx0ZWRfX6Q2L5mLts2zZ
 KUB46IbVrl50Qrf7lRQyuP8t1tN0FuAT5HtT6g4B5nBQjFX5Gj+XmHqgWtifDDEDOJ0op6Je4yw
 dbWOTSJY7YL5M3jPVETH01WVFDpIAt23rfkAf7lkOTcp/dQO1UFR9mwJquhpCQ8xPGSRRjw09h7
 EThx/m6ZffKH4C5XZ4b9//NDlPSrQ7a9Bn5ogdPwuh2mR/VMfsaRGTvkWtXPHO8Xgrp8W6c0Wiv
 Y7Xxi3iZSAf4sai/4oVR9lRIFP06qeNPlx1sHfDGLnYySzIcfJGs843Rms0W3BZ2YgHVLpWNuCZ
 Vofyw45v4ntGpjYUrDuU7LxWzn3e5J9Dmal7ohSHdG4g4qsrhpvGXOuZKAWz8EzJRl/cgkXM73X
 /CsEscSpQIYLZ/2c4yxuKIXwkXXZLA==
X-Proofpoint-ORIG-GUID: EmxuCrLRRO8vCrzm7ClHeZUrHRQI9dji
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 malwarescore=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_041929_864243_E8058557 
X-CRM114-Status: GOOD (  19.62  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Algea Cao <algea.cao@rock-chips.com>, Muhammed Efe Cetin <efectn@6tel.net>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Jimmy Hon <honyuenkwun@gmail.com>, Ondrej Jirman <megi@xff.cz>, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Cenk Uluisik <cenk.uluisik@googlemail.com>, Alexey Charkov <alchark@gmail.com>, Maxime Ripard <mripard@kernel.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Oct 06, 2025 at 02:55:37AM +0300, Laurent Pinchart wrote:
> From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> 
> Add an optional property to RK3588 HDMI TX Controller binding describing
> a GPIO line to be asserted when operating in HDMI 1.4/2.0 TMDS mode and
> deasserted for HDMI 2.1 FRL.
> 
> This is used to control an external level shifter for HDMI data lines.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml   | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> index 96b4b088eebe..eec0d40c91ea 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> @@ -113,6 +113,13 @@ properties:
>      description:
>        Additional HDMI QP related data is accessed through VO GRF regs.
>  
> +  tmds-enable-gpios:
> +    description:
> +      Optional GPIO line to be asserted when operating in HDMI 1.4/2.0
> +      TMDS mode and deasserted for HDMI 2.1 FRL. It can be used to control
> +      an external level shifter for HDMI data lines.
> +    maxItems: 1

Just my 2c: since TMDS is assumed to be a default mode, shouldn't this
be a frl-enable-gpios instead?

> +
>  required:
>    - compatible
>    - reg

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
