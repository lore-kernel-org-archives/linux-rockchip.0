Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31AE6CCD183
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 20:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P3sWus6o1kprfvWfbZKfv4NU6bVrkf1UGBXifAYxPyo=; b=qehgKpK77kMnNM
	IVIfY2d+I419dXg4EtshXoN7MlPulDPUc4/0TK7sPJ/d9NxTYZVWW8U0OjGO3kIXgDUVITLjMHLCp
	LUWl0ZLQiXKnoueJEzxO/vAIlrDVeKk2ogSFtk14cwLJXaZSNsOfh1MjGxvvrRSFU5lto2OSUGWiw
	19uqh9gJGHrfmyyLhJpX/hE3EJ8unMpptWM0QV7U+z4TJbNDsrmdlSbSVEVGjl5+llC692OJojsav
	POzGNZiyGYd/ReOTZFBjHaKDAKsoV5bgE+tnx8vBHVeqc8Swew9bPVpG45aDLmUxEa/WXBqAGICqw
	u1X/b78cUWjrkilMIWPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Pa7-0000000EVOi-25An;
	Mon, 13 Oct 2025 20:55:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Pa4-0000000EVN8-2der
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 20:55:46 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHD85J005568
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 20:55:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=h8b2DwudIexdSRYipqQ13kew
	J4gE/3CuV6C5IduoJwc=; b=IXcIkoB5lrzUNaD+HgdJcATWOkoQEcKeijyYxvoD
	CpeyXaCk6w8+tWGSjAMZkwZPw21qV3u1O1ltWg3VKydAx41BIaj7yET94j763QQv
	8I/Z2cRYqYJmZn5/9eQ44X518qWYT5ZOFYKy3uNI51mU8RGIcH5aJXPaF6WalADn
	CQvvpW+LgmFNa3+Kd6KgxOEkAEfo7BF8PvuLAhkdz7sjsigzp91+nUOOWeZRs5Ur
	hTq6JnBjke4ZYvn2gSX73qtSxdXDOyfUBOxqavidkmAIGZY60iZgEHSDfa3UaFJw
	+67xrf28nPjY7xEv2qBa52P21z2FZ4jz6ZD12F4OiNNcoA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa865fa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 20:55:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-87561645c1cso2591667385a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 13:55:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760388943; x=1760993743;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h8b2DwudIexdSRYipqQ13kewJ4gE/3CuV6C5IduoJwc=;
        b=ZQLuIt4Evye2t/xIkhqtzbgLWk/f/R86bLkz+czWhmO/ziCsgxA02/xxK5yHZZd52i
         mlp5dIfe0YPX4qvxieGXUjYCXMzxJA4uOz8NqSjaabAFPo/lFkCG4SjuKWZORNdbUHiZ
         J/XFuoloMzvS9JI2JlFdYgO5yF2s6jDLdAYfS2iN6o+I6X7G9O++Dyb/Nk0kVbYKe/n7
         37NQ5jsACgdEo1RXcKXtbh2OIapl0bqw09NTV0i/f+PFShE+o6+/tC+OVgQwpO1NXWPx
         8CSeI9uBGc6HV1bEwAoZOEmmqAC0tO4trAqee7Od9DAKW2bMwWKeH4zO76oUIRM9ZHWV
         ts2g==
X-Forwarded-Encrypted: i=1; AJvYcCUaMHP4IZevK3JgAwxM31OuMvrWryJToWsRpEi7HJInKSAVM2a5TYxoxJD6ylAR1/gmoXS4ggRMWhlYbYuyfQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzHrGY5/N1GDSxNqtfnsMZGb/vkxRfkh3OvkUtL4MFI08yZk+vW
	IrRdIY4W8eUuwX8HQmIEOBsk1kFSFa65Xm/P9cdZoa1s1TuE2EsRdh60gdI9yKieoqewnRTXVJi
	mjauo/ZI9/sLiKftB/czYRnSKjvBMBimHdK/TnBMh+Vd/gAH+8e35NYzmrr59kTgXIVv/rO0cbX
	M=
X-Gm-Gg: ASbGnctIamaoHYYXLSPi/F+Ixy2kU+FdlSbbKWNj3NUgZdA2f/AiRCGyPvFNkmiaa7g
	89rbx2n742UesTC3R7l2tr/hRHXWA6wyacojmfY9hayFm9PafM+xnYiRJ1jAZq6upCdfEKfK2Tc
	YnwFsGJsoh3Mv6ZPn4T8C41oQ0ppZ/FOI/HeclAn/WdBzA0uqdF/mcFSbFgk3Rg3L1KiH59QMm7
	J8eSeE7b1a4XzRI8Ut3xfAPoYA4xdmNRUcj492v8CxdmZTlolJtFHjw4mVfSBNMlGCZ2fa52Dgt
	FZqeystdR7FpOk7awQsz4jj/hwhGazTX745LyM14QLLe9bzmnZQyJZhwQoLiyr8/rtWxZGM+LHO
	RhBaWDUScJORNJ/AlAxD9XKHaA+rs4lCmQRC4PL//7AoSVCuJjzAE
X-Received: by 2002:a05:620a:40ca:b0:850:95d4:db01 with SMTP id af79cd13be357-88352f83c1cmr2928836785a.21.1760388942668;
        Mon, 13 Oct 2025 13:55:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEp6cEaL5p5bxM9BKec5c/+vKMAwKsA7FMuN565mKfxMvwbeeumVcMSCt/OjDjFwBqiUk+E3g==
X-Received: by 2002:a05:620a:40ca:b0:850:95d4:db01 with SMTP id af79cd13be357-88352f83c1cmr2928833585a.21.1760388942214;
        Mon, 13 Oct 2025 13:55:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881f8c6csm4493487e87.28.2025.10.13.13.55.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 13:55:41 -0700 (PDT)
Date: Mon, 13 Oct 2025 23:55:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Robert Mader <robert.mader@collabora.com>, kernel@collabora.com,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Matt Roper <matthew.d.roper@intel.com>
Subject: Re: [PATCH v2 0/2] Introduce BACKGROUND_COLOR DRM CRTC property
Message-ID: <x33zabb5un2boben6r4qp3vvrgca5s37gmseespdwwbajumdxx@mcxe6or5p63m>
References: <20251013-rk3588-bgcolor-v2-0-25cc3810ba8c@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013-rk3588-bgcolor-v2-0-25cc3810ba8c@collabora.com>
X-Proofpoint-GUID: 6vJRGd0l4yrwzu3IZPdPufAvmIVHRz7N
X-Proofpoint-ORIG-GUID: 6vJRGd0l4yrwzu3IZPdPufAvmIVHRz7N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfX1iY6zajnPzOt
 FdD5o+AZJ8106q+n1D/D7uM8D56n/u+Hdr+BtFAVUPgzhMvORJkYrQJGcn+lmoJVj3eQSMuxode
 OGsAOlOJm2YdX990m+4Uqj2r8QUDHnarCW9MheJWmVAKVmr8awHt1cyanKI+kIMo0kyexAObHJC
 akZiNvDjhgS03R4vWAxKyeSVn0urGv9tRMV6sJStjxtJ0Jy01aiByIpMnsRWQ8GuP3bDSvcNRNO
 9B2PejUaGH3T9c3+8l/52ethPR132Lw4ToDFxRpZL1zcvKzT8ZD4HhbrOTUQVIqDLJ1AEvqTPdd
 bB97I6tzmdr3gTaVQlfRuNs85DZpqwmph0FtpLluHXJGnlxbojcHzX7vhz7JO73UxOExeAnM0Ud
 OCcZdc3/kpgnmZIHaw/CIp/x4/fp6Q==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68ed674f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=6rgqHx4lmTWDBTbEgdMA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_135544_775114_B834565F 
X-CRM114-Status: GOOD (  15.62  )
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

On Mon, Oct 13, 2025 at 09:27:17PM +0300, Cristian Ciocaltea wrote:
> Some display controllers can be hardware-configured to present non-black
> colors for pixels which are not covered by any plane (or are exposed
> through transparent regions of higher planes).
> 
> The first patch of the series introduces the BACKGROUND_COLOR DRM
> property that can be attached to a CRTC via a dedicated helper function.
> A 64-bit ARGB color value format is also defined and can be manipulated
> with the help of a few utility macros.


Please provide IGT tests. I'd at least check that using the
BACKGROUND_COLOR results in the same CRC as then one when there is a
plane covering the whole screen.

Additional note. I see a value in having the CRTC property for the
background colour. However it might be more flexible to reuse old
proposal for solid fill planes ([1]) and instead implement the lowest
Z-order plane supporting only solid fill colour as an image source.

[1] https://lore.kernel.org/dri-devel/20231027-solid-fill-v7-0-780188bfa7b2@quicinc.com/

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
