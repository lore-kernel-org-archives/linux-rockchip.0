Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CD91C5B543
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 May 2025 16:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Y7qNS2mcNJfv4pHLHiCii6C8U1Nup9jCX2GUMsWhDE=; b=ae+ORroQqjETq7
	+uzvGFEkFvWlBj3gSGyITSnFosQupc1gIDskRdDF0w/evDAe4lupyXxpK5O7gJ2xBDDHTQYPXInfj
	qnB+sa++Fp/AfYNd1zQSay6zBe7n2bynZBcXAHMniwCA7lgBwexlJEDjA1TIefYvrJOXDT/XO7sL+
	WeHRkxOAOsPDudvKL0GLMCPuZENvlSROjkUFB3zh4bMTm70dlggVYRt9HCb4yK2BPoqYj1UZdRDYi
	LBKg1anMrK3xC8RUZu/7TXW64v3fGn+CoquEnMhhVLawbDVf3eXeABozBAXqxi1wlgrfk4euRA7ae
	fRsvRjdzjXqgsXnuPMfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL2xI-00000001Fi4-0rwj;
	Fri, 30 May 2025 16:51:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL2g5-00000001CAB-0ix4
	for linux-rockchip@lists.infradead.org;
	Fri, 30 May 2025 16:33:54 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UBoT00018216
	for <linux-rockchip@lists.infradead.org>; Fri, 30 May 2025 16:33:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uCkkqy4vApGz2Fcr6sUFdDKm308UJD0nqqbHUovYzug=; b=dcweAjVDE/LjqPwp
	oTZoLRzOpQtI1JYDCMartltY2c5NB7YMlo/dTDRPndvS7pd9PPQfhgSBch3PEh4H
	oc5W8IPBmxXc8y9f0eJegWB4pykMBiCEZN8j+v7aGdrixd7VyGS2/kjhy0zo0QqA
	XUgfiq0u1OrBVtwV/38j7YZVZ/qTbTyZsx+lQ9ewM1baMS0WsetNFx0znDmQ5qfz
	BRdtzazkc4/gCaP/Gb9+EA695ygVe/1eKNTHi32s/wCYmY4odDJHX8u9qVCsOZJk
	9jXkDDFD0qe9Gq1ZUFCJmTcOm/GSbItFs5zFtondN5eTlNacUbBVYKOzoLNvsXQH
	LTVIag==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46yc4yruwa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 30 May 2025 16:33:52 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-745fd5b7b65so1793173b3a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 30 May 2025 09:33:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748622823; x=1749227623;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uCkkqy4vApGz2Fcr6sUFdDKm308UJD0nqqbHUovYzug=;
        b=RJefAFWi3ahZon/Sta/oh1TYc8dDCEdTnH+SIpUiwY5akGPU2vTXZ4QI0tZ+R9aABc
         2HdaZzP2wtSqSqo5mbD3Td0FQRWZhE59u9+kZGtWJYINGUiBJEdChtiSpG5/MToFbbrR
         irLXserYkZdQaTz6CNuEvHwra2McXENFs74VC/p/A75wZs1QB1vXGt+2hg31E0/tgI4e
         pbs3JFZVLD5YHuBmqHrbI0d2wG6+YV+NlBbQoeGo9DoRy6BMZoCT844GayvguY0K4+kG
         y6w1OsHu4G7HwPBSC2CUoxlVcWxp+FJuVMIJtMQWCzKsKLP4osG8uxaUABjYOat6yk/g
         wuYw==
X-Forwarded-Encrypted: i=1; AJvYcCXT56qYlUH99eofRlfHK8FHf7aekpexbBb8x+htGoa9W9DbLE3H9TtClrSxI34uW+qJWp69u9cgz8gTf0YSOQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5H8eFSm7TluU63FQ/Oy2OahWPqB78MzaD7OxgbTct9TL45mVp
	QC+wiKpU7G9mnc+CYkyPH4HQjLpIAYbV6uE/uJTK02jAlypWu6KZIx7y4AT7GxkdmvAnEgRYM8t
	WwNG+1AvNYptGuoKnEZAEJ7fr5W/unXrZfduFP0PPG7cz9/cmKaoVa1RG7o7A+xUUSSZiZ5MU3n
	w=
X-Gm-Gg: ASbGncsa12gAzkzlfPXm2UL7/82UyioqgPJJDBmMhYTRRakqKHjoj1H/eca09QVtxK8
	u6nUziDAT+7jBvpFR7OGs9d+2qlOKdcLtw0cn/quQLqAWfJpIPBed3QlN2qahYC6LJnv27VfdJj
	zJ85FHJkj1YvzxJehs6eb5wN6roj6aNg0ym87ego99IKxaPG7DvY1KJN9bKe1GyHTfhk5HWSNxG
	WKxBnpOHqOG69P7EneUnBB99oRs42iLModwM99mZaNySar9XsflqsXwpiQDJ84sEu9Bwi00kRQ6
	h7nBgDRO2+nSsi7r5EuviKGW0P/fSeT2rMSyweZnM0IkdPMbzaSrFYQu2Wv7Fw==
X-Received: by 2002:a05:6a00:2e04:b0:73f:e8c:1aac with SMTP id d2e1a72fcca58-747c1a48890mr3832891b3a.2.1748622822627;
        Fri, 30 May 2025 09:33:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFtqNwQxZU0xTr2WITGJuLCEWHrD4jd+DcWqKzqx8uZbn4MTH/bomjNfm/KY2N3fVJbrV50ng==
X-Received: by 2002:a05:6a00:2e04:b0:73f:e8c:1aac with SMTP id d2e1a72fcca58-747c1a48890mr3832859b3a.2.1748622822240;
        Fri, 30 May 2025 09:33:42 -0700 (PDT)
Received: from [10.226.59.182] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afeab820sm3347905b3a.60.2025.05.30.09.33.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 09:33:41 -0700 (PDT)
Message-ID: <34a9bf5e-34f1-46ee-bebb-96bca551768c@oss.qualcomm.com>
Date: Fri, 30 May 2025 10:33:39 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 07/10] accel/rocket: Add job submission IOCTL
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
 <20250520-6-10-rocket-v5-7-18c9ca0fcb3c@tomeuvizoso.net>
Content-Language: en-US
From: Jeff Hugo <jeff.hugo@oss.qualcomm.com>
In-Reply-To: <20250520-6-10-rocket-v5-7-18c9ca0fcb3c@tomeuvizoso.net>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDE0NyBTYWx0ZWRfXy3Wzw2Z5dM9K
 FIfxeCq62xySPUeHMQcqJO81lLvD3wIA2TERWEZQH8tnMwjLOQucTpgykxh89ekIqmi3oGd1th1
 FN1yuIqYTtqzdrGGCCUDll1XyKjP6dNY/p31uxKY4aElAvNQ0yzcyYTe7roXCZxXVHShsSQwhPB
 nyRznxfOEKs71Cy4qXB6+GR0NZ4hAI7+nFoKDptW5G3gvjxgB1w33lO6CDNDTVl2uOw5sfnsxLl
 /QXnzdlch/+zCWBoe0v9Ok+MTlIpYMPczgNHaB+mHgSlyGWpJ7HOOEYwlDuJ9hIROe7BlIKPlNS
 6MUKke7CRBH43mUcoEvQS4bEssrTUteiF1QSsTitXDlFNn5VnPkTfNwNfhYxFPeHKfRmO545bsC
 8JqjLgFcWWZ4swllcHTJdw6cZuewA3MT6AUEGIPzrpPjdy2Y9MywVnAoDGCitiRi+IkAft7Y
X-Authority-Analysis: v=2.4 cv=Ybe95xRf c=1 sm=1 tr=0 ts=6839ddf0 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=YifSY7n-Kb6RBMa0OVQA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: tPg3RnqVGrCsduw_xQvyQ2lCNfIEBsCT
X-Proofpoint-ORIG-GUID: tPg3RnqVGrCsduw_xQvyQ2lCNfIEBsCT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_07,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 priorityscore=1501 mlxlogscore=902 malwarescore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0 mlxscore=0
 adultscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_093353_212487_A65A26D5 
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 5/20/2025 4:27 AM, Tomeu Vizoso wrote:
> -	version = rocket_pc_read(core, VERSION);
> -	version += rocket_pc_read(core, VERSION_NUM) & 0xffff;
> +	version = rocket_pc_readl(core, VERSION);
> +	version += rocket_pc_readl(core, VERSION_NUM) & 0xffff;

This seems weird.  Feels like an eariler patch introduced a "bug" and 
you are fixing it here.  If so, then shouldn't the origional patch be 
updated?

> +static int
> +rocket_copy_tasks(struct drm_device *dev,
> +		  struct drm_file *file_priv,
> +		  struct drm_rocket_job *job,
> +		  struct rocket_job *rjob)
> +{
> +	struct drm_rocket_task *tasks;
> +	int ret = 0;
> +	int i;
> +
> +	rjob->task_count = job->task_count;
> +
> +	if (!rjob->task_count)
> +		return 0;
> +
> +	tasks = kvmalloc_array(rjob->task_count, sizeof(*tasks), GFP_KERNEL);
> +	if (!tasks) {
> +		ret = -ENOMEM;
> +		drm_dbg(dev, "Failed to allocate incoming tasks\n");
> +		goto fail;
> +	}
> +
> +	if (copy_from_user(tasks,
> +			   (void __user *)(uintptr_t)job->tasks,

u64_to_user_ptr() ?

Same thing down in rocket_ioctl_submit_job()



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
