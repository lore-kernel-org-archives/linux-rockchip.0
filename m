Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0783FC87FC5
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jul 2025 16:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFzrt3HKCtAR/osDJdeo1NYaWwoGsOqNniaFOmIfk98=; b=ds1y4pVCGZW37N
	znFNvx0f+8D2FN7Zx2rds1+BF0/JeSR9HxOFC8+CNUValqZDqcRBRdiGFiKBlHtvPB6fROPWHWorr
	f8Ow1e3Na7RQQIaq9g3yhsFXXf4e8j6zgvWbDcIXso9aLRhpBD2iMCSIHKqw6YcyUKQnudiIj9Lgz
	IcV5sCIZLYeeINPU2FF2HZA6TrnlSvvLVTzOLNi2Ki0+f/hjeS5UWV4wOZxr4OM9IKxb+GmDejPb2
	izm9ZRrstMZqkHR/q41BvLqcvxZPlVe6qPrjApOMCtDY43Se1WFaVZ3lp+2yQKmvX4KTnQnT16o2k
	ux1YgsAbuc84guXVFbLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udtbb-00000000CkZ-3h7W;
	Mon, 21 Jul 2025 16:43:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udrv2-000000000e4-1mq1
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Jul 2025 14:55:10 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56L9ppgW029344
	for <linux-rockchip@lists.infradead.org>; Mon, 21 Jul 2025 14:55:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FejjzcessRXamuxdGef6IiWtk5XK9CE9N5H4NCWgoR4=; b=PNXilcgUTbMv1ouq
	A1YYn1t4ZKuvtrEsH12jT5n1aov+zYfP8o8+0WQP6+kg+4OMdpBurm8ataI9Yw75
	bbL0Yuj0mw33YiN+G0TsVc/fEtdvAlMObpiKSDHgHN/kWSajdPZTh3fpciqa6t8C
	qL+bU5nSd7BjCvu2t8EM85mbo79+Us41V0/xkeqOzmqQVcJPubC47CzFtQxj7Hhp
	eLjnJ3Mb8iHwtdJJ6ZiWLFTen9nj9Fupt1Anrm7QLGUHBPiPp3hwY8sljekyf+iM
	bP2He1bdTd/PcUuemlCkKHgrM4DrGv2NGBWc143uV/VLaZFYJX6GQAyu92P8iToY
	r4oAkA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048tdnce-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 21 Jul 2025 14:55:06 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2382607509fso30149325ad.3
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Jul 2025 07:55:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753109705; x=1753714505;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FejjzcessRXamuxdGef6IiWtk5XK9CE9N5H4NCWgoR4=;
        b=Ml+R9QNEgSAvyMpniYboRZAq0lAYmp/2BhLCGRsli8GqtQkXCdcQXo+yXswdWmzIYY
         DicIIFo8/f5gUFufnqk4+nnC5RMrJHJJwUjPSCA4nVV/SQKT8xxyN2NUoCuwGyp7bOWl
         IOPP1P79YsZS4RxRBMGwns+HA/feICLl6d1Xml6J7sXoV9Yjoe/ikrVfz4XY90+n8DHe
         CDpLbgylSjeRyP4JilR89MFRyI+0oQbcXZxr6iPk8nLK0BU7yhuUvuZ0LiPXc4tdSMPH
         jUO8Z/Xy+VpoSR0qDNAVFCr3r0oiqmO0v1dxYDzleirbESwDYhjAoL0WFhhCk9JflDYx
         CuYg==
X-Forwarded-Encrypted: i=1; AJvYcCV3WgvQ//YrVSiYhdNOKXLcohld55V4V5x0dvV8MN4WdBcltFxhQc++U34KxVl6AuHdKVbHRhgILlMBVM2ajA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzEDj+70IcEaF63sUFic+VA/f8brBQoB/6E2Cd6uxp0ufXKsTMx
	jvR4DP1ZvdfrrVP1IDS9O9SecOnzHlXVzYDPD8SFxHoQBgjJaOe4G5IXttcGP7wSzTPsyr2x9wO
	KsQFBiTEgunFDsvVD63674Pn+tCNk3Vj8WkXbuaLssl0wF9KVtZDcqbzrj7RGVf+ItDc83ANuzz
	E=
X-Gm-Gg: ASbGncvl8HA4AwlKrP919FYV7cZkNk7L2tze6tDQSxgwJ92oM8WxuBmf08xfmnmjTZb
	s1/+7ZFL+fQJCG+ej5E6+uuETvHVyJto+QM6/K9Kp+P4Qq8eWaNnZ5olhJy4zQYr3L7TzeMuPhM
	uYCLGSKeDmMex528ROwMqe/J1yMpxfdXGgWOCakYrF2IMAufIeDBMc0FoSFWvmsZ5k7OlMjuicH
	LEyYUDRk1a8Mlro74tJGSdNx6n2HHpDNmcXxtAWQIFQGK2COpTtpSKRSQ3JOly7BIFmqnMXUnyd
	804N1l0CzmvmRs/eQjY6DNJUJD3sRCxT/e7ZLKpEr3IpxfDdGK9u4S30erjXPnOcgFH5LHSEUgf
	Lo/Vg6bjc0Al57w==
X-Received: by 2002:a17:903:284d:b0:234:f580:9f8 with SMTP id d9443c01a7336-23e24ec73bdmr227526315ad.3.1753109705046;
        Mon, 21 Jul 2025 07:55:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJ97391DW7uxpfMEy3HG26NDZaHXwi2jparAOfw5+iKlWu2Jnai8JQP+g81zAyqSEzBAX4EA==
X-Received: by 2002:a17:903:284d:b0:234:f580:9f8 with SMTP id d9443c01a7336-23e24ec73bdmr227525925ad.3.1753109704562;
        Mon, 21 Jul 2025 07:55:04 -0700 (PDT)
Received: from [10.226.59.182] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b6cfa0esm59073595ad.145.2025.07.21.07.55.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 07:55:04 -0700 (PDT)
Message-ID: <b48c6694-2bd1-44d0-9dd1-1b7a67e22d87@oss.qualcomm.com>
Date: Mon, 21 Jul 2025 08:55:01 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 00/10] New DRM accel driver for Rockchip's RKNN NPU
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
        Kever Yang <kever.yang@rock-chips.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
        linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
        Robert Foss <rfoss@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250721-6-10-rocket-v9-0-77ebd484941e@tomeuvizoso.net>
Content-Language: en-US
From: Jeff Hugo <jeff.hugo@oss.qualcomm.com>
In-Reply-To: <20250721-6-10-rocket-v9-0-77ebd484941e@tomeuvizoso.net>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIxMDEzMyBTYWx0ZWRfX3OXvX8M1AHOC
 pek0eipLvCe9zRDKK2CwaUuqAZu6I6gaan4cPcrVMsX3zPJUQDS16/73tNkUc0NA5A7si9k5twR
 asrrOAaHqkbtgp+nZW7XsTOrfi609K2s0FCd7C0LAwNyeIrWMZcrCXuvW0WYFHnC9sAfMR4tRMO
 2O5B0IO5DWsAQeb6eZdCn7qIo9uxbuEw6IQp9LTMd4oGHatMFcuarjnPJFelpHakGPkPTM9u9dg
 X6V9kPsLtlsIF9y6SnNGkqZTaTx6W7P+/ESMxqukCfMBHTLjPDBs7aX12srZPVXUuFOWWC8kCoJ
 mT+97aMXRWMJBIdn1ka0m2kVvQIa1cbn85wl52v5IMjdZ96Qnd9ZBsZhFTm9Jq+MRc/34RA7fMR
 ath9ZFX/Tq3ReI0GFalnc+jhhc8N2TlAiZlItr4KVthhIPQ4vFeuUiA8WphMOMtRZZlxgIYE
X-Authority-Analysis: v=2.4 cv=Jb68rVKV c=1 sm=1 tr=0 ts=687e54ca cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=e5mUnYsNAAAA:8 a=DISFzqtZAAAA:8
 a=I0N-cO3Jf6GV4mgy0ZYA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=Vxmtnl_E_bksehYqCbjh:22 a=aug85vrO5LANNmmtkfAW:22
X-Proofpoint-GUID: b3ugHPpMgOeZDqT7Ye9aL38eEwAerjiN
X-Proofpoint-ORIG-GUID: b3ugHPpMgOeZDqT7Ye9aL38eEwAerjiN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_04,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=843 adultscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0 mlxscore=0
 spamscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507210133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_075508_604714_AA1FF0B3 
X-CRM114-Status: GOOD (  15.04  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 7/21/2025 3:17 AM, Tomeu Vizoso wrote:
> This series adds a new driver for the NPU that Rockchip includes in its
> newer SoCs, developed by them on the NVDLA base.
> 
> In its current form, it supports the specific NPU in the RK3588 SoC.
> 
> The userspace driver is part of Mesa and an initial draft can be found at:
> 
> https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/29698
> 
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>

This (and the userspace component) appear ready for merge from what I 
can tell. Tomeu is still working on his drm-misc access so I've offered 
to merge on his behalf. Planning on waiting until Friday for any final 
feedback to come in before doing so.

-Jeff

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
