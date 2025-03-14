Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D28C1C28B2F
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Mar 2025 05:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pIg8mzRK0X02tNx3DiaB3/wkqw8LSix+eOBVO0HyJ64=; b=lujvrHifxnA5xC
	o/mo/z9kUPaE2hnW6ALP6uqcptIncvh1ne1Kx3pFGSFGtdfrBOse7me82UZeYbbSk/fJHN6+yqwS1
	NRBlPLDr8REb3M4U7qUb/G2Ij+6NQZBNsuxhswSN+zKKKGuoRiU1KlLWT5r0hWIVNPXHuMGzNhbsd
	dDU6UK+sB8t/cXCbgVVzwInyW7T6HXBIGrdiNpDQG1qwFwU3W9EzH/wtyqhZXUmQH2DBNjU+N6kBy
	4JMSicbB+kNA8aiXLInMit0KXx8pPa8Pv/jbeUQ/C1G/ZUfPT4DHC1lsfW0SPMtHiqiUTrOxZXDv2
	Idku1Ekt1JtMXM28HVog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsxvo-0000000D8Dl-2YRt;
	Fri, 14 Mar 2025 05:50:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsxvm-0000000D8DA-3t21
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Mar 2025 05:50:04 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52DKDvBn029072
	for <linux-rockchip@lists.infradead.org>; Fri, 14 Mar 2025 05:50:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4TOFDBBaQAKbK4BTla+P3B3q
	tcM22y9Dpjkl1Xx8uyU=; b=FOwPYDn6uqbgE33QKkIebKQwi+aicKXo15prEI8k
	1VNtD1QHoA9u70HAbJDr6hbQh6G0+2nYOP1N1mM9X5/fedlt4OhRpzVFOlM3+xYX
	rfBqZIX1MBhyf/0RkU60OaU9Qk7ID30Q8MJWbH7FrkTd9to8AmAx/APa7VHpFC12
	OUQCgxzWBOg2S/aya/nj0McdSSw0aYTShgXYUphySAa+ulVbxbiJ1uHhKz0zqvhv
	k1SC8LTbioJg+GReKimw8Fy40NxF9Ux7r7yHzzupxNLkCRFYRJ4zlfM+Gtbv6mWO
	HNjm7TnDshB8IfH59YXH9FRpK7obFmZ7N6BNm7pcecr1QA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45c673134w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 14 Mar 2025 05:50:01 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e90b13f5c3so38094916d6.0
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Mar 2025 22:50:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741931400; x=1742536200;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4TOFDBBaQAKbK4BTla+P3B3qtcM22y9Dpjkl1Xx8uyU=;
        b=D7cDhuWMDAcO9J6LooEEWA0/CsBqkYLw7yAIGs5fohTequVnbGmkt6gPrnqUY1wKNv
         bCiGEsHkPAi1R7t5dJDAA/IYhcvh/Ovg1vjzHeCgXEAHkMGXbVyyV0LdIeNJPyTox/7J
         tRZoxmjTJGt7mHdS0CaJZUOLbwMKmiTWqZ/XC7O6V967LL7mWpbCZuD10CEgvQVZN/JW
         IPUAgw108KT2lH92R3keEdpofAOC3s5GLGg7J4oQDhkNdlqdJiGP88akW72lKbKxhb82
         dfJ2/h687QkDfBq7jvFZKz3Xw5v+DqOlDDzmfzKKXCGWUu8lp8UxoNWOK/OyP/rekvOj
         vgfw==
X-Forwarded-Encrypted: i=1; AJvYcCWBpqpe/AQ4Av6QhqERb1qPryhupEPsWFaJtS8F1hvrsU68m4hi2ua3lkw55rSHI7+lNIlUlJu4CiZjhBFb9Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwuUjj2QXwoBWC6E1axzo8DUbjX8INmgZDuFeU/dkWv8Gt5GYW9
	w+l+N5MMVRFYoKfTroM7lyWywkCDdbUVbaX8knVflVijdlMZjGHrL41rPKpc+RP8IJLXAht8pNI
	MH4KjPInDJ0F4/ref65RDvsfFiYDo8zD5UEy982Mw1BNnEU//ESjXnCXOg/f52Dj2oWkJZO0=
X-Gm-Gg: ASbGncs1h/WsT70LVT0X/XcEwiCZ+OMLGCs5jtDBRmsRZLp0SJHSRIV6wsEWl6ubi5l
	5GwXZT4WoqM4DPs1o9wIrTlE4SNh9NmxiJMqi9k9nHdj4lEWYt3OgnglfLsj/j3ZtWFk95Jrki3
	gNQJ5Ihcl7oBYTcT5mzgzRNbm4fYa/gpabj9QH6PC4lXNp/ly491gMLR+remL16BobDVmfZDJTU
	HEYllpQD7ruCqWJ6QbKg3P/rNPKaejrdxCf0ToNQwpORIJ3CpsWkmdwokQS9+DuALaKRjxTd2mI
	DJG3GCpAPg/Eou7fTctSnbN738gna4H0IAHohGNQGok0ykss0dGSZ1lNoU0VyjcecuIBgNuzbEu
	C9hQ=
X-Received: by 2002:a05:6214:1c09:b0:6cb:ee08:c1e8 with SMTP id 6a1803df08f44-6eaeaa6229bmr16168376d6.23.1741931400257;
        Thu, 13 Mar 2025 22:50:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFh/1B9u77m7dJMp8y3yNIwcJTMUKXqhqaNy74SsDU7tv+ReqnW3vVDj3NkhjjynMyUAolKfg==
X-Received: by 2002:a05:6214:1c09:b0:6cb:ee08:c1e8 with SMTP id 6a1803df08f44-6eaeaa6229bmr16168206d6.23.1741931399923;
        Thu, 13 Mar 2025 22:49:59 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0ea448sm4359661fa.43.2025.03.13.22.49.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 22:49:57 -0700 (PDT)
Date: Fri, 14 Mar 2025 07:49:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: lumag@kernel.org, mripard@kernel.org, neil.armstrong@linaro.org,
        dri-devel@lists.freedesktop.org, dianders@chromium.org,
        jani.nikula@intel.com, lyude@redhat.com, jonathanh@nvidia.com,
        thierry.reding@gmail.com, victor.liu@nxp.com, rfoss@kernel.org,
        linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 2/5] drm/bridge: cdns-mhdp8546: Switch to common helpers
 to power up/down dp link
Message-ID: <jxpnmrykd5wrrhif4mkhuoonsbfbkl5yrjsxklmrgyr3dfzkx3@wqslu5mmkyfw>
References: <20250314033856.538352-1-andyshrk@163.com>
 <20250314033856.538352-2-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250314033856.538352-2-andyshrk@163.com>
X-Authority-Analysis: v=2.4 cv=a5Iw9VSF c=1 sm=1 tr=0 ts=67d3c389 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=er13H2TdnkHqOr0P1-YA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: If10rbHPtboiNHT07juBBIZja22qtD5R
X-Proofpoint-ORIG-GUID: If10rbHPtboiNHT07juBBIZja22qtD5R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_02,2025-03-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=841
 suspectscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 clxscore=1015 spamscore=0 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503140044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_225002_976245_DD855D45 
X-CRM114-Status: GOOD (  12.50  )
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

On Fri, Mar 14, 2025 at 11:38:41AM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Use the common dp link power up/down helpers to avoid duplicating code.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  .../drm/bridge/cadence/cdns-mhdp8546-core.c   | 74 +------------------
>  1 file changed, 2 insertions(+), 72 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
