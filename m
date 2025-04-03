Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CB37C3600C
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Apr 2025 12:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V0fO9wlvp8WMQY9ktOnmYdEtQSzntX74eiF0f162WFI=; b=NvhLND6TSTfuWr
	UDfLLZTKSDY6mqjxCR3BhUClpNBfXY4URKw0TUUjlegJS5xv+nzM20XNMwIg9m+6nG0BZ7FahR2/n
	ySpW6fPfJPE0XkhPqWEU93kmOYsAcGAXrKJHOJ4/2S2BhYEWgxzpZmv2hpsowVr5vnBQDwxSOh60l
	sBx6NF4A7rIhb57j7JTG5MIPjysc8X7efhwLt/Duno1NZXiyjXlVvPpT9crauN/13Kiv/UJP9SJLM
	RCJTun2Ee9Yvpfk5tQWFhI/DdBls9RyY7JTfqbTprEdOju/Xmxmz0F2gDiMdhRmtRKjr0hJ4IAoeP
	1G9UHM9miVKKA5yai3Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0JSn-00000008nTo-3gTA;
	Thu, 03 Apr 2025 12:14:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0JSm-00000008nSu-1aft
	for linux-rockchip@bombadil.infradead.org;
	Thu, 03 Apr 2025 12:14:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=dLykAhXWunHI8kSEy4WPYTUfhVytF9OGgggs8oTBDs0=; b=WU0BZ+owMvD/9stQte28HbIsfg
	VGN6x2AZXzGkogoQ0uj0cI+4xFurdLRMaemLIA69h35LUaTSPEevEIH5a8uaVTLdAqPx26+53en7/
	teC29zsohSl9n3qKGgz8S77V6ICIZaWD4IM/aRNVEFMeW+XHwJ14hbIUq5krvTrm4dcZruvb5zA7a
	GCaQA9Z/ROEuATA/vafwXZMh1glKwHEigZ2Ch39T2GyYS/qU17lazl8yT9GVlri2nzj+zqhcrovvU
	uBFoxyE+Jeo0IEs+jCTxcjgXfzpM87+DHGQQyGqF6d+7jCjUb+scIfVw7SK7Ir5FGy6Qjqpd+4tWw
	acaRddcQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0JSi-00000007BOn-49IM
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Apr 2025 12:14:27 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5339s9So025677
	for <linux-rockchip@lists.infradead.org>; Thu, 3 Apr 2025 12:14:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dLykAhXWunHI8kSEy4WPYTUf
	hVytF9OGgggs8oTBDs0=; b=Fv64jfy4d7VRv6OsrA0sxh9Ku25e6unlukHU6c8p
	8wQRIVptsYgJVqd4mxFejsLZQnguSeTRwvPFTYtvOfNMLE8+o1xkA8yzM1wwWX17
	prCeJ45gxLCpz281i9Zx8jhwFPi45eQrnO2je3DMhgdPaFhJj5GlTsQvAnErxwUu
	1XWG+1JkZ2GKOrbDR95XS8ecyAmk8rLhItrK0frTlP/J7nsK8ooiW1ihsf1wW26f
	+K/8K+vwERjvObuiVkQqAmMG29cif/nhfrpSqm9hcHZbBpBEG9ZeGphNmLww1rkW
	/NFr51LzS1VWyJDoBuHowhLSC6T20TBssRh5KzZ0aLcizg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ruadvywa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 03 Apr 2025 12:14:19 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c54e9f6e00so328985085a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 03 Apr 2025 05:14:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743682458; x=1744287258;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dLykAhXWunHI8kSEy4WPYTUfhVytF9OGgggs8oTBDs0=;
        b=FGfHBUTMa54EedtcCS6hoo4rIh3dYVtW5a0HFJ+wVvrB3qS9zSxV2WDh8Dk0YWEm6i
         KsITO/merlGkJYZTPb5w0+aKEJ7xcnw4XzZizfHEgoXvgatLStwqWgS1V+hNCExWKMd6
         G7J8o4rhmpwGPMgWPxm9Aoa4Eo4aURit2yh0PPNIdbdCFreG0HQwT4Io7r8sY9qLHCGt
         9EuU6pF4B33MIf+Dbwf/FfGC3KxW1ubOhW0+kh/jPdyM9xtAZpUDq662ACZol/+fXI87
         lBRVBJ86o2eFuF40U2IVSOSk0UnPTeAbj/YfTVZPGYhFIOSyaapFWdqjMcZxrr4hl08B
         sZRg==
X-Forwarded-Encrypted: i=1; AJvYcCWzLd6jzCdS/he3NQYufDkzlU7c2gTVg/Y13WcUTtEY0OQzKcCluf9rm5Q1aoOt/lYAHgVLaeMVco99N577Gg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyvvtrE9tT7Q5QURzDBBq6bN4zjWFwWOkNSQLHlWXPXdGcYTCga
	TGr9Dp7eZRqQlM5F0YbgOFHyPdhOjo3Y84a0jMd0XAc0oBgqf1uKM0Q0hattN/jF+2xsNEeDYWV
	lKIq7aotqVCt9XHpWt9y2TwPEbCQ7wwQulNOYx0MeQrBrxafaLctYo2wUVDW+Q/+JvUSUn1g=
X-Gm-Gg: ASbGnctP+TTB/3x9F15C1lpQBQwg0zPWjb+UOjfnSu/eHOA89HyzqB14GNzX2E3ulnr
	pLFKoNphKW7Dy0FdnavjjdaFfmVnAObf3KLuT9L7tZ1KkSXmsVz986CThGqzWAEiNbAGmyePE5+
	hjbbbN1Fdv+7ov/X/5SaXq5AlVMFyB3eMXgScTR8L8OWCEHVL9jL51KN8R5/+XU4Ch7edIgJmsf
	WuSYy6i3D4XZ0ckmpb2cBr3Nfj5hdGPEWZhL10d1ibA1z07OVqkX/DTAB+ovm1/3ZMCjDapqpVw
	gGpeGisLRwWj9b0aJRcVhlZOjC4+ZOCsFDUJgGDxgamZou+uxi6yNivXD/ROQQ8MHQ/cV7SZ+IH
	doj8=
X-Received: by 2002:a05:620a:2910:b0:7c3:b7c2:acf6 with SMTP id af79cd13be357-7c76c98f7dbmr511678385a.15.1743682457794;
        Thu, 03 Apr 2025 05:14:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQP5HNZ7qkcK4qHlBcQj9o3SAvJ8aXKNFHMdgvICYbDg+OhKlKPefSoRKfg6pRpmiRTZ1ysw==
X-Received: by 2002:a05:620a:2910:b0:7c3:b7c2:acf6 with SMTP id af79cd13be357-7c76c98f7dbmr511673185a.15.1743682457414;
        Thu, 03 Apr 2025 05:14:17 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e5cc52csm138973e87.105.2025.04.03.05.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 05:14:15 -0700 (PDT)
Date: Thu, 3 Apr 2025 15:14:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v3 5/9] drm/birdge: simple-bridge: Add support for radxa
 ra620
Message-ID: <mp6dgybevy5uercnqam3ok4rorpmo7a7ok5jcgadmxypl7ueaf@yl64do47jnp3>
References: <20250403033748.245007-1-andyshrk@163.com>
 <20250403033748.245007-6-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250403033748.245007-6-andyshrk@163.com>
X-Authority-Analysis: v=2.4 cv=VI/dn8PX c=1 sm=1 tr=0 ts=67ee7b9b cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=mpY5dVvo0S6m34Ll3HoA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: aT0m24vGAsLevi1MhxmSIxYHrbIW0zHf
X-Proofpoint-GUID: aT0m24vGAsLevi1MhxmSIxYHrbIW0zHf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-03_05,2025-04-02_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 priorityscore=1501 mlxscore=0 adultscore=0 suspectscore=0 impostorscore=0
 phishscore=0 lowpriorityscore=0 mlxlogscore=965 malwarescore=0 bulkscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504030050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_131425_443348_D0E8FF20 
X-CRM114-Status: GOOD (  16.65  )
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, heiko@sntech.de, stephen@radxa.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Apr 03, 2025 at 11:37:33AM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The RA620 is an active DP to HDMI converter chip, basically
> no software is involved to drive it.
> 
> Add it to simple bridge to make it can be find by the drm bridge chain.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v3:
> - First introduced in this version.
> 
>  drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
