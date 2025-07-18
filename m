Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE5CBC83F3B
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 17:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vj0iNeVT5Zato+FbqNSFAb6VsemxsLjIHA3EvZ28SeI=; b=bhbmnPzUilbjtk
	NcF8MTdukL2LbaYNFc/c1MpIJDwYBFHKJSFDExD1s5znmbBH3MfI5In5DcTMSVYBQag2Us42oD9f+
	4jLMOUeYXhJinxuiMAQwlCp+OzVWxfUYBI887YEJSv6XPc77Wc9xOSFC1LID8Nf/owjanZ3kI4Mwr
	2fhxaureo8ZpDRnRntBxpZ5+d1uv26heWQv/CTsF4PbPO4dpIcO9wimAwBr+YjqwpFfcE52CK/Eiu
	ZwD1Jx81PsJhMLLl4rlue4C1VpAyvdbWXHlrRtzrB1CDoMiBIf3AEFlyhFsrJ9QlNFAB0Uk6ZZJs7
	yQvkAUzy5i0sjqoDDnHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucoim-0000000DCan-41dE;
	Fri, 18 Jul 2025 17:18:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucoaa-0000000DBMK-3dq7
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Jul 2025 17:09:42 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I8NjOX008518
	for <linux-rockchip@lists.infradead.org>; Fri, 18 Jul 2025 17:09:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MvWIjxTgsWqTg+EpU1jF6w7w0dCuZOGk2IF4h2JIZKw=; b=BhVQL7bg08dH1Lyy
	sCNahyhXgLOooPUk6k8lhKr8X6uJk+1Pa2UywOtv1yU1ysnUtDgNZt4yqdpLZuE+
	K0tv2dxCzW6dvx8A4AAJj193IuREjeMHuDLlmtdnunNxuIVo2SkVCir+j0RyVX/M
	DYLgDAHww3n9z70tbq466VWkBPIVGCMhK+FGx8MfhiEBU9WEbLjFPgNtruQac7W4
	H0ncRaq33YzE0XB6rSNXGqFRZcmgcu5MhyjlXY0V7iyZJUiP7XPWZL0Oj9dh/qRa
	WzKiISQhUKpSQuddWBkeXHQ2hpidzoxFHYU6x5T5fvEiwFh+6mY2YvQkzlkNqfQh
	hbR8bA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxbcd6n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 18 Jul 2025 17:09:39 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-23536f7c2d7so38765605ad.2
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Jul 2025 10:09:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752858578; x=1753463378;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MvWIjxTgsWqTg+EpU1jF6w7w0dCuZOGk2IF4h2JIZKw=;
        b=UzKL5Bka85ay3Zw4B7gmp+nmsVJNoIHvrZZZIRQZCIkkIBCKrZmstOJY6fxAUq+WCg
         xUAUws+2SU5FAOEqsEQW++jtsEg/qpNSTvsq9GKvdCIzWE5xAaxTia4I4B2XlRj/ZZwv
         w6jdZdy6BnEgYrvaQMuSYYFh1ah9b2U7eYXP2SdDe+WUCfXZCpElg7yeDU5FEAvT1swx
         J8JXnEm8bcAXymlweVDwJB6/zVHa4hPc0AO92o6jap76SaoKPLygHH8pi8QtNdB19zU5
         i0hJ9vi1SRd+Ki+bjpZGPtP+6Cn5uYEcuJze9rQyIxbftmdqWzAJTMigoDR0gnrTloUr
         qLog==
X-Forwarded-Encrypted: i=1; AJvYcCWmW1uE0Q69cQg8udkVOm1X43qrfzB+Dhv8FWF+LdbXzyZlZw4rs0lCc+go2isZT87lGTR3zLIBheeF8y3V5w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzMht0GO6WHy6n6sL/D/Nj2kw4VGQuG3N/gbiIH0H0lqTlwyIBJ
	fULiIwcUxeQR5q+VtlJb+9fkHlqFEAmIhdQachWXMnt0laK0X1EUyFsX6dxLTve5yKKkjPwWK5K
	zLwJSahVKzcbcEJ8J62k4MvAUAcYZLB4Rde3CIjZE11d1iKSQUXWuYVN41m8Ldp8t9Yu6+GXmGX
	I=
X-Gm-Gg: ASbGncvVK1ny7Wwd1jpQS0FdNb5XICr71KVunLWbfZYQFB/vnnLRWtg2MOgAKWRgCb+
	Wj7EAajAURSCSspzKxHMtCcyzSIhcbDc+k7+Op6lzKYavkHekx9CkwUxB0rbQ3QW10VAQLEbvNu
	87qpcd8sQoFZXvP2d1lYvRXpFmHvAivW0VRhkUD8TjS5X6JfTG8/1QNt9sAQPvn0B0Jx/HLnB/P
	xCTs/asw9iHbACpz29d7Da5YJMQ9Oeyyi7DqqYeMT7XAgvRnoXJLrfnucUMFA/Yv1q4aShde8M2
	eGY/hWa/4aTwIqFIs9PZVP03o2QwPhAIY7oaEEImjlQQDOJZrIF5St7wbVPBwPT94JpFXlO7ehg
	IxXkCFXcQMQnLYw==
X-Received: by 2002:a17:902:c40a:b0:235:1706:1fe7 with SMTP id d9443c01a7336-23e25693727mr159582615ad.4.1752858577926;
        Fri, 18 Jul 2025 10:09:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETvEp5rZykda6Fkwq9ZXpRv9woHFJ3xh4GKGF4HzLDjXZN+/v8QGQrNtiX8DgvikLdgkWCIA==
X-Received: by 2002:a17:902:c40a:b0:235:1706:1fe7 with SMTP id d9443c01a7336-23e25693727mr159582215ad.4.1752858577500;
        Fri, 18 Jul 2025 10:09:37 -0700 (PDT)
Received: from [10.226.59.182] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b60ec88sm16079385ad.65.2025.07.18.10.09.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 10:09:37 -0700 (PDT)
Message-ID: <b7653a05-f747-4764-9c33-793346cae223@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 11:09:33 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 01/10] accel/rocket: Add registers header
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
        Robert Foss <rfoss@kernel.org>
References: <20250713-6-10-rocket-v8-0-64fa3115e910@tomeuvizoso.net>
 <20250713-6-10-rocket-v8-1-64fa3115e910@tomeuvizoso.net>
Content-Language: en-US
From: Jeff Hugo <jeff.hugo@oss.qualcomm.com>
In-Reply-To: <20250713-6-10-rocket-v8-1-64fa3115e910@tomeuvizoso.net>
X-Proofpoint-GUID: Klo_k9d3UoYfQ7zTqCx-HcysSC3oRJh-
X-Proofpoint-ORIG-GUID: Klo_k9d3UoYfQ7zTqCx-HcysSC3oRJh-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEzNSBTYWx0ZWRfX2hLbnpa7fZNO
 94Tk6aiuAZh3LDoKN5euEUXeVcOtH0pjrca77aCgSA1kPyrwAStzR9eTVrvnFDEP1mqutMNMeJC
 Ojo5MRAri8Ez0Hr4BpEa58Sn0E31lvjTOqhP3JkUj3E/DcuhIDV0OvIHMIl7l1WgH/9o/XbFi1v
 Plnl4BIFq+38RpDAbIICKJWSFmyKVU+KxR8Qq40GcBWWml1INb5jyaPTfJ2vT9o6riFQF3HJvpM
 YoCdV4z1zHeF9sCJtItnDXsZ+H2jtjKI+Pedl7j1xCa8pLYJg9ZXbRwX1beLfo8pY+v4PBPVF2B
 Sn/twttlS+v0MoVuPRMnvkKpeQleuCInkq1bgQ8edQ03VB7ZaFAPWRQG0N1Q3nZ1o6o/trpyTp5
 9UD/KK2PwUAJNKt+piXR6bibTl6Wb7HYgqeDtoadPFJAH0/tjMECEgUHOGr3N/Zwgu7Gh4eG
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=687a7fd3 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=DISFzqtZAAAA:8
 a=EUspDBNiAAAA:8 a=4Ppn7do-3_l0xiadvqUA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=aug85vrO5LANNmmtkfAW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_04,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=854
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_100941_025131_88772C86 
X-CRM114-Status: GOOD (  15.81  )
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

On 7/13/2025 2:38 AM, Tomeu Vizoso wrote:
> A XML file was generated with the data from the TRM, and then this
> header was generated from it.
> 
> The canonical location for the XML file is the Mesa3D repository.
> 
> v3:
> - Make use of GPL-2.0-only for the copyright notice (Jeff Hugo)
> 
> v8:
> - Remove full MIT license blob, to match other files with the same
>    licensing arrangement in the kernel
> 
> Reviewed-by: Robert Foss <rfoss@kernel.org>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>

Structure of the file and markings look sane. I'm not familiar with the 
hardware specifics, so the autogenerated content is a bit over my head, 
but I guess for something so large using automated generation should 
minimize errors.

Reviewed-by: Jeff Hugo <jeff.hugo@oss.qualcomm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
