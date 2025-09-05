Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 828D0CA1010
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 18:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BYDErQ1hCGCX8q7vF3jdMX8aKyQaCPl5rTg+ITlsO+g=; b=JYkCSwBilb0+l7
	lwiPjntBwfp+r2CWCfTvfKgk/QSzN5jjypgjYY24bTIfYgEMzkHdBlMTyRPctriyfep6qBWyWg0lE
	frz5+dc2bjWspP8CKFFzaiKAH3dVTOoEn/H0OyU1MBy3iIp1QSiJp1j/J8BQJiagrUWfSjoiRUfpu
	nW0zY21m+QwIk93C7cc2LK4vu/dOIs0ySXGY++n7/RuJNQzVT/2b2hI+Z5/ZHjIx2+5v44PwwMma9
	LdlPFnNJnBf1hh7heWf1ED/LHkXOxTWZdXE6uWRrTV/lV624+/TWOsxIYCcYTWZY/TGs9BaUuJiXS
	qAQtOTMsZzCrqkCPePYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uubA1-00000003msj-3UWg;
	Fri, 05 Sep 2025 18:27:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuXPA-00000002HRN-25SE
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Sep 2025 14:27:09 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5857TlID031829
	for <linux-rockchip@lists.infradead.org>; Fri, 5 Sep 2025 14:27:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eF61zkZp9mMYxVggMMzwArKN
	A1z21l0hZQVBszHsT2g=; b=F5vPBUQTBlKC7wn+jmgeXSyLos6dsnyMQncm+JVu
	4r31K2SfNeSKL8AE4GDWK6KuuJQ3CohKTgWA08ieqRKK/KfeX6oXYPsz6GKr1PS8
	xsylaqqlAAJ4PSyCGaPiJfVTAuz8DbfHuarGUxwMB67AfFDLKB7JUyQy9ZrG8CvO
	h2DoL4KmgSPDdrW2XnGUv1iDhE/wpi9B5aW8UdSEs2tvgr8wW6FjZI8C4Ak0SlYz
	H/iPBgeUqLrZJSUgvEimmNiN5sRt3FnCO0/40J6GlibJLiVRSt+uycsoGKwE1Ggc
	Xgvb8mLoVntLOI1qGVkZ/rg7Gxr29RFk/WPNQlITj9eq8Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urw0bf92-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 05 Sep 2025 14:27:07 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b345aff439so56697911cf.0
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Sep 2025 07:27:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757082426; x=1757687226;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eF61zkZp9mMYxVggMMzwArKNA1z21l0hZQVBszHsT2g=;
        b=XN9l+p8ItVhJh4jtTcpZS1juJjF3cZMcK+xfbKYpRe+CQcdx5lQnVFcgxEWp4ryEtV
         dG5BE3XL/vhV0/T7NUCHYNB832T1NbU2FlSzkBbtywkZYyKtWlORerbM2m557ZtJXEk5
         8g8mkJYdvCnqXjr4poFIUGYoASSZKKJ40n1IGQxVY733FFikD5xH0nPWb33uWiWgPcQF
         y0UsoLa5CJEaBav9lmWFLcT/aq80V6HmV65AIjzbYg+OqKYflCy1Zqwf+cfAUH/iCcyk
         rWJcwCf+am4NpG4igYr2PC4p8sUgM+1BNzYAhybF7QkyH5oqQ0oVq/qDEsmuJqISRFob
         qzwA==
X-Forwarded-Encrypted: i=1; AJvYcCXg0grGHN8dBJqpow8Hp3fJEU78qJ8v5zv+NCi82bmU5mSzJ5FTGZ4NOZgOjfJ3lD1xPxKAowr2ZYgShCfFMg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzqYwEXMaN2LcS4I2+xP5h9f+Xlv9ObDur1UnlAihLrZzDB2Lrh
	HJEypwoSuMqqYfcpVVkwYKJfFn0EGWyoGp8ftTlerMOyu0npBDSJNrCl89tVUcmurBOg3bZZvo9
	zR5Ri3HDB+snbemOKaZWDJc27I7+AlRKB0amCdRcaDwLlmcqErMESGgp6yYEd38FdCgycEhANoX
	8=
X-Gm-Gg: ASbGncuZEA3fJSTLSeuwKwO8ATnC+dWk4hgx5xaccfLOO6PeT42db1jDKTGxzaBuNLi
	R1HseYnytKOFDgK3Nm1IqqVkmIZ2iX8X2z7lyyExkxUHnloVNvZ4PbXtbUD6eRi1Xxen2qoMWFk
	VRyDuJCKhB0NL2eLcHD5RPweuSDq/1mzAhTgCflrMNO/t3mlGxTz1Wt3UCXagOn+q6A36Y5PF0I
	qYw37e1/AQuvn9c5//xwow4BXI53T+9GH8GZ8mbBmgX5yvuVhYbkO6JXfToOew4vF6coBkU65yV
	ze9E33hTLliRrQp0QgT2h3jRApF58wYwW/do51/V2r81HVtNn9vzcA87JQeiD6cjM3cEgJj/gWy
	CZ36PcXCEhnQ64XNnYB2ZRbQIqGCTWVltRsD9GWSHS1EfOt8OOUsl
X-Received: by 2002:a05:622a:1a89:b0:4b5:d739:627b with SMTP id d75a77b69052e-4b5d7396898mr89983101cf.76.1757082425998;
        Fri, 05 Sep 2025 07:27:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECmkBwlmY6UiEs6hcJX3488laXoD4oV0+tFPvFeEwoB/BLO8UPs9WqixuE8OIxKWAk1kYaYA==
X-Received: by 2002:a05:622a:1a89:b0:4b5:d739:627b with SMTP id d75a77b69052e-4b5d7396898mr89982311cf.76.1757082425175;
        Fri, 05 Sep 2025 07:27:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608acfc24fsm1802596e87.104.2025.09.05.07.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 07:27:04 -0700 (PDT)
Date: Fri, 5 Sep 2025 17:27:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, kernel@collabora.com,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Algea Cao <algea.cao@rock-chips.com>,
        Derek Foreman <derek.foreman@collabora.com>,
        Daniel Stone <daniels@collabora.com>
Subject: Re: [PATCH v4 0/6] Add HDMI CEC support to Rockchip RK3588/RK3576
 SoCs
Message-ID: <zni6d5udvawma6kcjp54d24kihlue543dfqc2ti3k43jntaphj@xtuusmebp6qj>
References: <20250903-rk3588-hdmi-cec-v4-0-fa25163c4b08@collabora.com>
 <ncmsmxdcvhj4jec6wmqf5abrb7nijx7ac2i33tvvcc2prljez3@uks2cb6aunnx>
 <b8d068ef-d083-4bb1-b34e-b8ddaa62b436@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8d068ef-d083-4bb1-b34e-b8ddaa62b436@collabora.com>
X-Proofpoint-GUID: 2fXkkGBDtfXYbkSP_ac30FtF8i_rzmde
X-Proofpoint-ORIG-GUID: 2fXkkGBDtfXYbkSP_ac30FtF8i_rzmde
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfXx0YptLMZLzs5
 HVGlRsT5Bfb98qZuxvV8pqNePQu8tMO4rV7JvozjM8brqwDwGjAa7ZwEp9Dec+SWHeefoCl6fxn
 EbZvq3UmmY7FL23d8vqF6QId/DMGkGCAria/aRHmx1mrunqAlXimCHL5XOLvoQGoZ1orVPHu02L
 okuRaWdhcobGIEoO9/ePcTYicXyldVMXKxru8F2/z30sfalIQHzsHOKJ0mk4zPiwg6m3flZArlw
 mENpmWFyAgKvb8958t85BUCDLBrUSCul5TgORsnL5+0TQEurWZ0LfY0Mi5r+Gfe+6oc5RmaUR49
 AcoH9ZlmkxFQGc6cv0Si28TD7oFEUWPNfrF1M16oRLUdIPMDKmEPUVBbNXlUuxfm/kvxVk/pZ6r
 WeouF4KP
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68baf33b cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=QX4gbG5DAAAA:8 a=gdAa2DyRb25O423_gIoA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_072708_647311_1D87A122 
X-CRM114-Status: GOOD (  28.21  )
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

On Fri, Sep 05, 2025 at 09:32:36AM +0300, Cristian Ciocaltea wrote:
> Hi Dmitry,
> 
> On 9/5/25 2:48 AM, Dmitry Baryshkov wrote:
> > On Wed, Sep 03, 2025 at 09:50:58PM +0300, Cristian Ciocaltea wrote:
> >> The first patch in the series implements the CEC capability of the
> >> Synopsys DesignWare HDMI QP TX controller found in RK3588 & RK3576 Socs.
> >> This is based on the downstream code, but rewritten on top of the CEC
> >> helpers added recently to the DRM HDMI connector framework.
> >>
> >> The second patch is needed for RK3576 in order to fixup the timer base
> >> setup according to the actual reference clock rate, which differs
> >> slightly from RK3588.
> >>
> >> The following three patches setup platform data with the new information
> >> expected by the HDMI QP transmitter library, while improving the error
> >> handling in the probe path.
> >>
> >> Please note the CEC helpers were affected by a resource deallocation
> >> issue which could crash the kernel and freeze the system under certain
> >> test conditions.  This has been already fixed in v6.17-rc1 via commit
> >> 19920ab98e17 ("drm/display: hdmi-cec-helper: Fix adapter
> >> unregistration").
> >>
> >> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> > 
> > Cristian, I'm sorry for almost off-topic, but as you are working on this
> > driver: would it be possible to support HDMI (vendor-specific) and SPD
> > InfoFrames in the dw-hdmi-qp driver?
> 
> Sure, no worries.  I'll be on leave for the next two weeks, but I can handle
> it on my return.

Nice, thanks!

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
