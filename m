Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82E3AC5B549
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 May 2025 16:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6an0BQDRXdVozbHali20lw2+O3wRhct4P048z+hOQs=; b=rgZPovWenu1504
	5aNvjCAzqmFRII94XPdUf4fvGtfrUMvXV9j6ngevmtTtx382LdUjQjiDfIz2hfolULGxAH/Wg4qy1
	RvuMcy0sPlqupkYswemov7tDohylkz4SWRaBiMFi7FnnctsQWcy0YgvsoU7eOBrbaHnrUH1RtY+CN
	pZAxf/jSNcIRLLNR2/yVK6qDtxBhHLSrsfgS65tZRnfuyTDOUp3tJKPBLVoUoxd3iSf9gR8SpSeoN
	IyhkagqrhUdiVN9GsvtnxwohonlAf7JtWEiascftl/kEqkXTXPzLH0tIfOyUwMRhtezphz52is6dG
	VUFgeHL0yakb/+ANmfNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL2iS-00000001CUk-48k0;
	Fri, 30 May 2025 16:36:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL2TV-000000019K7-0UOf
	for linux-rockchip@lists.infradead.org;
	Fri, 30 May 2025 16:20:54 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UBnxh5017015
	for <linux-rockchip@lists.infradead.org>; Fri, 30 May 2025 16:20:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MqTzkJ+m0M+WwOs1Ufc/BTxcDL+AaLfZVAxh4o4YAwY=; b=mNjXMMHHA9/IsnPJ
	bLB6OGDnRHH6TsGyzMA9Y6YkKzuXxYzxYKwYBQX+y+WDSDMLnUbl3xlPyN9RKEFU
	VR3/076P8sMLc4qnBFFmc4zhLDyfAcT7Lbljewd8Rk48yxywVfXPLzNIH2pSUDeV
	FpSbfvepy+aBXNj6PUFKHihnQ8dK3XhbEU6CuA1z0EsuVpqK7yNpuQ4kySb2CHsp
	VDzwbNirXwHGIaLJfPCVsmK4kjj2HUigxBXP08htjUMTjgmKTfbGe5A9aAilBuOV
	Bc70kDQml7vGlIt3HFedEAWQGOLVSgL82pvT9rhxMt5NwjuYCgdvp5QjQ+fvWGFd
	tM5RYA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46yc4yrtqr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 30 May 2025 16:20:51 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-742aa6581caso1781434b3a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 30 May 2025 09:20:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748622051; x=1749226851;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MqTzkJ+m0M+WwOs1Ufc/BTxcDL+AaLfZVAxh4o4YAwY=;
        b=ofuuj3IxRdyRYUKMb61rqP0EwB9vnJvzPUXcAsUbK/uGB0pfgEhIwCZbVBZd8z/W/7
         Ldl4aLeBeL/KNOrFLPrsVLO64L3LjJAdncDG7IosUjBuWb5ANXVhaNgMYXPzmUrRuOE4
         NWjarOhuE/8/1VaH7ns/O+vZDjCtNj9PXaNgmKXrJTZ86TzLKteueQkLlXe4EozJ/Qzv
         gJQHgSiW/wJjR3lSAGwMbexvLHXs+mzMaZhnPYY3SHnEKFoDrv+KR1xl1dmgxXiOZDXP
         y1VGNZADPqpKx6lQ4nl/Md265/vyQfWmT7KT0BhkgGJgkr4BO9xF3pxL9aoXC86oNHg+
         /V4A==
X-Forwarded-Encrypted: i=1; AJvYcCWrAFtcII0fD0y+9ZzDijj1X+GB5zv6qlXbMtWrWriErZQc6X53olrXf58TJYFcduMnKb53y4iVeINCgetQ0g==@lists.infradead.org
X-Gm-Message-State: AOJu0YwJEwvd5uqTg8uOVtxRIyluxg2damLTH3lE3LsT0h54dcHugTqj
	sKTrtHULL1XJ2E1tmPyrd/k5nE1EQOrPrmF9imIxqFDJxJmXUuB+Eprsk7oH3uYE11g3HXyl5Z3
	WcHD+Yz5nGpg0Ux8W/9AP0HLo3pqtJ9m4+vUVl7q1zNZ2ftkoAk7JgioJ5IGe7CrRyMNU8xD8SI
	Y=
X-Gm-Gg: ASbGncuDkDQp5b53ffJV7y7VJbUUTygvhminQvkM70UkVeWNiL05zaKBqNkYHvbnlNe
	EeSdaBugmuvKv/JQNkkEV0/kiHp7Fd54a//BrEsXJu/R2zqFCFMs7o5TQZeF6O+vDN9dx1W4bKH
	iY9kdH4q4KoDH7quZeL77aMwmYMTVt/r2YI6besMl+xEgm6RUy+rgu7e6Le7rvDQc0lynulUZ+p
	6YsRsV9JKr2ESvOHa17Vh1uJVpZre39OYQfMLkx6K0I1hL5GVUwBV1orqS/fTRRmdMegfrdNaDd
	EfhINsJM+WomnOabxRbrN+HHevP4M6O/mv+N0d1WMSNuDu64dZKqLbLDkbsQaQ==
X-Received: by 2002:a05:6a00:7491:b0:740:6615:33c7 with SMTP id d2e1a72fcca58-747c1c83852mr2995564b3a.23.1748622050785;
        Fri, 30 May 2025 09:20:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3KvuYJT4qbQ5u5CbTu0XT/yKXicfsd+dn08wq+4nYHqmMZGv9KAdolvB8TbaAHA/+TUu3/A==
X-Received: by 2002:a05:6a00:7491:b0:740:6615:33c7 with SMTP id d2e1a72fcca58-747c1c83852mr2995515b3a.23.1748622050335;
        Fri, 30 May 2025 09:20:50 -0700 (PDT)
Received: from [10.226.59.182] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747affd2c86sm3325986b3a.144.2025.05.30.09.20.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 09:20:49 -0700 (PDT)
Message-ID: <463162bb-5e2d-4768-8811-ede7b2063c85@oss.qualcomm.com>
Date: Fri, 30 May 2025 10:20:47 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/10] accel/rocket: Add a new driver for Rockchip's
 NPU
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
        Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
        linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20250520-6-10-rocket-v5-0-18c9ca0fcb3c@tomeuvizoso.net>
 <20250520-6-10-rocket-v5-5-18c9ca0fcb3c@tomeuvizoso.net>
Content-Language: en-US
From: Jeff Hugo <jeff.hugo@oss.qualcomm.com>
In-Reply-To: <20250520-6-10-rocket-v5-5-18c9ca0fcb3c@tomeuvizoso.net>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDE0NCBTYWx0ZWRfXyzHa1XOZ+bh9
 o5qzjmJLEiAwclobQEOPOEVC+TRVvD+CcNWTFwDD4FRmPeRfNLXBI4DnWD1XG8CoGiEsNlITkLb
 mGH+LRcqASNWluhKFuKpMdAqbqtv8w8+ISiBMmwE4/DgaDGxgkK09tsTVPhZQUAvcQvDB+U4fbh
 j1FS4RJRzhVV+K5o3h6f36RUee79Y0S28hoKLQMD0wjUN000PoCmplBo5629/8Jx03nNX38cXZT
 j3Ual4fxcvZqITTB2xca9/8+H1mYUJ7LNzcsOStyyjlnnQPX9A3YTyH9TlO2cyUgN1Vljw/WNMF
 WIpQkaNJZG6y7Zd3vhdt5W1YYrPpPZ9csz+O4MVn3fdI33c1VXlPYrjQO1TVCg8E//QfcZKWaOJ
 cdHhWH2+2PmdNJdMyWPmoe38Tl6lyvMq812KaUbUx7w2j7KSnBw8rfetztj+6o+kVFIbaDgn
X-Authority-Analysis: v=2.4 cv=Ybe95xRf c=1 sm=1 tr=0 ts=6839dae3 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=DISFzqtZAAAA:8 a=HlDAqVJfg7-00m_e3XEA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22 a=aug85vrO5LANNmmtkfAW:22
X-Proofpoint-GUID: A8Nn_ivgNaysXeZ_qG3ETH92Ve9psa4Y
X-Proofpoint-ORIG-GUID: A8Nn_ivgNaysXeZ_qG3ETH92Ve9psa4Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_07,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 priorityscore=1501 mlxlogscore=975 malwarescore=0
 lowpriorityscore=0 clxscore=1011 phishscore=0 impostorscore=0 mlxscore=0
 adultscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_092053_165272_4C234374 
X-CRM114-Status: GOOD (  16.95  )
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

On 5/20/2025 4:26 AM, Tomeu Vizoso wrote:
> diff --git a/drivers/accel/rocket/rocket_device.h b/drivers/accel/rocket/rocket_device.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..55f4da252cfbd1f102c56e5009472deff59aaaec
> --- /dev/null
> +++ b/drivers/accel/rocket/rocket_device.h
> @@ -0,0 +1,27 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* Copyright 2024-2025 Tomeu Vizoso <tomeu@tomeuvizoso.net> */
> +
> +#ifndef __ROCKET_DEVICE_H__
> +#define __ROCKET_DEVICE_H__
> +
> +#include <drm/drm_device.h>
> +#include <linux/clk.h>
> +
> +#include "rocket_core.h"
> +
> +struct rocket_device {
> +	struct drm_device ddev;
> +
> +	struct clk_bulk_data clks[2];
> +
> +	struct rocket_core *cores;
> +	unsigned int num_cores;
> +};
> +
> +int rocket_device_init(struct rocket_device *rdev);
> +void rocket_device_fini(struct rocket_device *rdev);
> +
> +#define to_rocket_device(drm_dev) \
> +	((struct rocket_device *)container_of(drm_dev, struct rocket_device, ddev))

Include container_of.h?

> +static int rocket_drm_bind(struct device *dev)
> +{
> +	struct device_node *core_node;
> +	struct rocket_device *rdev;
> +	struct drm_device *ddev;
> +	unsigned int num_cores = 1;
> +	int err;
> +
> +	rdev = devm_drm_dev_alloc(dev, &rocket_drm_driver, struct rocket_device, ddev);
> +	if (IS_ERR(rdev))
> +		return PTR_ERR(rdev);
> +
> +	ddev = &rdev->ddev;
> +	dev_set_drvdata(dev, rdev);
> +
> +	for_each_compatible_node(core_node, NULL, "rockchip,rk3588-rknn-core")
> +		if (of_device_is_available(core_node))
> +			num_cores++;
> +
> +	rdev->cores = devm_kmalloc_array(dev, num_cores, sizeof(*rdev->cores),
> +					 GFP_KERNEL | __GFP_ZERO);

devm_kcalloc will handle the ZERO flag for you.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
