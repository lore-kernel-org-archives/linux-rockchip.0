Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33A1DC87FCA
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jul 2025 16:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ae0Opg0C/x0RRVrXfJgByxCHd5y3q4Lh8qckq91yexg=; b=f/f7VIw6GxjL7o
	mczHyxIUOuvRi02SNZnJ1VBiW9wshoemS+J9bB40/SLRuuk2AWID5ONcAv53JgqV0Fip+fQMEmEh+
	wa414QYuTIcmhS1c2UaEk1HXk3KHfDxEQBF52ZegZ9fkpKiivZdY5I3vos6quFUtdchunBkcp/Qfm
	Kzqr8DQ3N8tjxDV+ZctNQ1wDEarq9itK3jkdiCmpSM7CZ9R7dKKfpzZV8KbuGQ9lpkaO0511cfsGs
	YR5DX8hs8JaWCVXdJ+m9dJ/QrJZ2ZN7EBqFTpcTRSk9eKUfYuyRQelQ/QhgQiJ5iZsVCwMAJ8aF54
	mAYom+9nQYelRpEnaAgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufL7D-0000000ACJN-0cs2;
	Fri, 25 Jul 2025 16:17:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufL3z-0000000ABiZ-1OMq
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Jul 2025 16:14:28 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P8vJlZ005345
	for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 16:14:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pTRAzXltnnQkXzy/4MfHD1BpN0UeO0JYTlGtIooVxhY=; b=VFdm9juMycnYZSHZ
	zUXA92nIOBcEnWTYEaYZVS7emlqydaCowoY21CWFScsHSDVVExvYnMTn3+dlby5s
	4hFLISQiz6TZG5bi9tOohYCb2gCWD9ar+XlLTzhbijgIX5E+1GuC37zcPa/MIpya
	Oo+QWB/wZTSCWzJFBHyT5vIqi3kLN//g/8yaVMd6jODWQHGtad5rkobIVYMVlpGi
	QLhQbu1VTEgSBYOY3iL0IqqWARLFc6G4r96pz9jb5jkIpBrByhITf5ekJy3yUGmo
	cGXUD/bTv2Rbch1TAYQSSp7JiozaHKVfDPiHii4f0OPK+8rFfOAqjLYfe6b2gPOs
	XMi8ug==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2ktqu6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 16:14:26 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7640573c32aso105857b3a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 09:14:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753460065; x=1754064865;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pTRAzXltnnQkXzy/4MfHD1BpN0UeO0JYTlGtIooVxhY=;
        b=DfYz3ZI7qQj238THi1lvh9KSGx6kU9yWhSgzHCtWTbqhtqcMfNTvmPGig6lDJLM+A8
         6PHmt+3bclp2WTE1E4CKPce4pnEoCnnJ7Yqc+4do1rh2n7la9ZTtNB6AwSQmUGN+Rfjx
         EDBNa1VqwRoCcNXYBlPpbMZpx0Ui4SlchP8WQ6HeGnG/QEonrNAXxtsf4xNBISRkdY1x
         bIxxRfT7/c8eund+iaI3FWkT6XpGwJmWfBgA2XFx0JzeWBV7Q20zTrIrMG+uQKSs43yk
         sCF1qZ4DhRX0qeFgqEbB62kmKZFeq1k3TKq5zj4HoXqaSXFhL0X75+FHb/GJq5dVFaLg
         9W7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVPXGJ1szr691CKo3tp4KT2AphZi71viAxM4xVo1Nf/5hli/7qA2TB15DQkTj+MQQo6BpdhIRolou+XSwBgnQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0FU+iAe8k/ICBP4YQxyaObxFpNVCm9fRtRdnFBJa3pA1RzmwG
	LS0U8YHU7X445NnXJ+rxdYKaFGvvi77vWExCSE1eKLVvmGt2V6G7Y0iF+zlUkdwQcYXmfRXrsk6
	4rYVy+fsqJFEe4pHxR8PuDS2w7Xeh91VkaVlHnYPato7XtEpSgd47no7NAwH3hoQAUa5K49JmtK
	c=
X-Gm-Gg: ASbGncvRCzVgOm5wqofbQGZqFthjPkWDxaeRxbBx94f7wmuiHFGHpkstaI90hWhRlYG
	ht63ilmiRMBlEZGOK3gTIKnFRaVKCxsnkLFlr0oyL989CZodZQ4Jn1beUbhcqzPIhRP+RtC6iU2
	rta+HK0mrsfYxIKfqtwqamy0br5Qls++AhKr2qTkksJS78mS6nFI5DI46mhb4Pm9WjyffSy/9vw
	cEuy8tFpq1eixxQnQcB91ZTg2CG81dum/V/ctHznJ70K/weKnUpwTsTfCtNHh9V5OxR/2I/BIKU
	2ALyxYxuYVl38EmqUR4ESPMI6KIRnq7fTlt0epfK/hya11kEGSqJoCmrW58XEOoHbttavm3pDcA
	QbiEC94vNSoCUfA==
X-Received: by 2002:a05:6a20:7288:b0:239:1c1e:3edf with SMTP id adf61e73a8af0-23d701eaf4cmr4483517637.40.1753460065405;
        Fri, 25 Jul 2025 09:14:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEH45mowQM24zNVVrDWA1OAKen9/Rncat1udl96ywd3HTaGlMrzSKhS42XbAwTPbo2lmkT86g==
X-Received: by 2002:a05:6a20:7288:b0:239:1c1e:3edf with SMTP id adf61e73a8af0-23d701eaf4cmr4483464637.40.1753460064981;
        Fri, 25 Jul 2025 09:14:24 -0700 (PDT)
Received: from [10.226.59.182] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7640b8b0c60sm71215b3a.126.2025.07.25.09.14.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 09:14:24 -0700 (PDT)
Message-ID: <12223a91-82f0-4889-8f07-bfa5833c8ffb@oss.qualcomm.com>
Date: Fri, 25 Jul 2025 10:14:21 -0600
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
X-Proofpoint-GUID: tsUsZW1M0zBIvc1Tz0Ac_lWm_1MNLjnh
X-Proofpoint-ORIG-GUID: tsUsZW1M0zBIvc1Tz0Ac_lWm_1MNLjnh
X-Authority-Analysis: v=2.4 cv=QNtoRhLL c=1 sm=1 tr=0 ts=6883ad62 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=e5mUnYsNAAAA:8 a=DISFzqtZAAAA:8
 a=XWXL-kdBtCKZFopiRrIA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=Vxmtnl_E_bksehYqCbjh:22 a=aug85vrO5LANNmmtkfAW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDEzOCBTYWx0ZWRfX2753AoWVzK0N
 XVMZtVuKkAZ+qT0ZZ1dMVw7zMR2e34n0PtFr9SejJJQ7xCBnp4ey1AcRFN8S3q/AOC9OAVBTvV6
 WJtm8LrSfZVkDfTV9yri0b8ZIxP4NPnJjFp59Weh4uRoONLxLU/ZNDoPIHxzmwzpqxlW1Ql73EW
 d/jmUxjsVOEkwDykGsPl+HngZjGC4Ar/nxnhXGVndSWdVZbfK/v+RQzDveGKBWJGtBfBtSE4Qjg
 ZQ8pyr/YdVqbx92dQxgggl/1LV+5Dm01S/gJayyCnNG9sL2Csyxcm0rzHENU77iTaLmCI3JOVhr
 gdL1bhjiCnmVYCJp5KAxWYvPW3oqXOv2sv/kgUzM1txH3UpMAAjWfQEX+rzWvB/2M3cZekx+oG5
 Pq7KKLyz26C2aD0DEfx8k6MEDF64daaGGgGceawxsA4EQ8HWzk3TGQ/jvU3EMSp9jr2jIqRD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_04,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxlogscore=796 bulkscore=0 mlxscore=0 suspectscore=0
 spamscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_091427_371545_B49CAEB4 
X-CRM114-Status: GOOD (  14.03  )
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

Patches 1-6 pushed to drm-misc-next.

-Jeff

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
