Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3AC8606A31B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 18:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vIziAKIb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=RxGMeAKS;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Zz8oBjMA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=QhmEqt46p/CD28YUgTxzEc162fZxf6Xlpxxe077bP0k=; b=vIziAKIb6YqLVVinmcraBDb9Gm
	tFLDn448OJ1nDGhnJwSccrz4jX0xhKk47bDmd8tSK+k6l/uLkoMfzyv/FdURP7klrSg+j80WUm7fs
	5QMPNdeBcgBYTsQ8L2otCyDch3tyq5ZpwRSdT6Fd/b3cx4ksm3NWMAK9rCq9a8T5skQoaDgV5R+av
	VSOLiA+4oOS4UB/OqgfGmGHUdGw6Fa1Q8yp+Vn/v7heF82xlSrcJPoCX1EvFLZ9Nt/t7mAkxJQL6G
	YVprdljV6d/2B9r+HykH1XARAfGurb8hJVei74XfO4SFoU1ZJFgxRLiKHmhVvWyglv7WcEd9ULw2r
	gKWRdllQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP2Ts-0000000ABkW-21Oh;
	Thu, 05 Nov 2026 18:46:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP2Th-0000000ABhe-35N3
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 18:46:31 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A5HePbV1122092
	for <linux-rockchip@lists.infradead.org>; Thu, 5 Nov 2026 18:46:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eXSI/tp8V3OO/XBbPjfjDDVBAa4yWWkb3/wTplNoQFo=; b=RxGMeAKSj1hpLsLD
	SPuTURbUXc0fODCQAnPdOdri6y82vH/dN7NmgthtQb2xdT+bSbKmH+enI7gkpet1
	ApEOmz9ARwk64d0ftyGtAStmrnLrhPdvEDcCPHRWuxSkBw4M9Kv9+Mk95b+ceSS1
	hxOy8JKYFQi58GdBswd5c+ZOvoOM2wFowYmoDGOmli3UWWY6P6fpbb3iRosSn64b
	L6kGTkKrL4pPrt5djxvVjCLvbEs6+BGdv68l091g4TMQ2KdraJVjI/1/FRVIWSMd
	W+kpuhrW0aUwvgQ4jJtGCCKFN1tBf/wH/3DwdnZU4AjdK/nQhBpIZLEq8cko83nC
	okol4g==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hrq1p2gyq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 18:46:24 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-99076c676cbso737099241.3
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 10:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793904384; x=1794509184; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=eXSI/tp8V3OO/XBbPjfjDDVBAa4yWWkb3/wTplNoQFo=;
        b=Zz8oBjMAMe+vr/yEafnyBr/l2cJ0jo1tQjL9g11vce44WAA0T5kFBVyZzjOzydp1Wj
         mqHbGEfe5qgrGB7dmbHAmv5tx5a1BMRe7/+dFuP4ExomaY+mTV6ObfFm8cosL/bRbrwE
         UtqWZV4adMn6reKxmyNdfxl9RjE9bK2Tsf8NPz1DOCzj96DgDi99BIlD7wwf7UUjFzAT
         z739ouGsfPa5d2tZl4Kuvs3/OhfvIwfMpSSm5kpXD6lHYssFJhF2JA9FqW4qHr/vmWkN
         PGbRmNCr3zR64TaHs9Emf8nNNE9ckTElh2ZN21i3hbiqqYWwvosyVe0CG8QIxSKaulW4
         Sxhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793904384; x=1794509184;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eXSI/tp8V3OO/XBbPjfjDDVBAa4yWWkb3/wTplNoQFo=;
        b=iVuHdh2c41+R1qrqt/3MfopFp2/KGjopLwjOjWwEp+Ic8gifB3+AqoMIeecYwj4IO2
         D/8nRGAXAFfLn/BgbsxDzcklvpaEkv38yVBfMHmzWG0hdjCWbxcLSOeo8jFDK1lLiuV5
         G+WKbQXpxkQWyp5sg5ZAkWVXjR+eXw9U4G6PM7jKG6gF51tOPmT4dQQRfswA7Jol158q
         njnuKU98eeu10E+YlAypb4BibI85MehY6rUP2IAqh6gchPgecoyjvkoJ/OXKkE8QHoHk
         D18ZQ3blF/8oohFx9i1sV/JgMbuAXGRZjTk0+Sq2a+1WVUBmcPNh+4nlQLxS+N2+n2K4
         0qCA==
X-Forwarded-Encrypted: i=1; AKwUvBxGFtXgF378HU0+upAhtohruHSoOwqh9fq7RwERjzt7/jZdQKamuIxr8tCc35EVkvMTnWDQQHKOfPmmdbLtOQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z8PecbPZChre3edrTlkLwVv0FImcfF2J/7leGUnVP7sEwhWjaVP
	K+D/F/N8FMPW8nBTcOxbocQELjyAD90x7YuegewbLQlEPiM7WoFmd+AsZ7lstKC4kDdwHvDbEgZ
	7o3thuGSSdKXZYCoMZPCy9M26NF/EPg0NhK3RpvxDUYvYABotSIuSBnVf6sPIg9hfTSbuYbdJTd
	Y=
X-Gm-Gg: AYBFou2Z/QHD57fFAbgyhz5akvSTjJSFw6jx1DvX6FxhDVv9fnk6zj9Od/D1RZkKemD
	ux6C2ix/1OemHjx19W+aT8aIJE2AB0CWKw2ifqVQ9tDvVMvj5T5f7gvSFCsjRVcDm+RiAhMw1i8
	dVTIVrt2tccLDbJnWjQ7oSERBCmdt67ZshNstW1vdk4SE1iSWHHjO4A7BpkH9SyZmYvdLPfn+Ww
	o3pRT6CsmU5HQq09s9dwXg/dqNSOu1l5ElO6hvngiTxz1f9A5y/UPBHzjSZXAPqPlWyDu6MPQUE
	Cv1j5mNW9bsaoLms2GoAYAatOFn19f8M8mXtyfwFX3gmamF3u7NPrseo0VKJFwCRRozk7w77Y64
	qZ5WlCLm4Pj5+/1q+kLY5HWz3q3K6NXAotPAJXFUlXeHQzFi8GWBjjJ/ha1rzNSWCtOuMK/BtYj
	FgJx6CgeunMmEDj9PA
X-Received: by 2002:a05:6102:dc6:b0:7cf:61e7:e789 with SMTP id ada2fe7eead31-7d2a16135d7mr395310137.24.1793904383938;
        Thu, 05 Nov 2026 10:46:23 -0800 (PST)
X-Received: by 2002:a05:6102:dc6:b0:7cf:61e7:e789 with SMTP id ada2fe7eead31-7d2a16135d7mr395283137.24.1793904383187;
        Thu, 05 Nov 2026 10:46:23 -0800 (PST)
Received: from [192.168.2.1] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48fec8d8e29sm12177950f8f.19.2026.11.05.10.46.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2026 10:46:22 -0800 (PST)
Message-ID: <493b853d-fe45-4058-914b-a9ee684701db@oss.qualcomm.com>
Date: Thu, 5 Nov 2026 19:46:13 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] powercap: idle_inject: Create threads on demand
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: akpm@linux-foundation.org, rafael@kernel.org, tglx@kernel.org,
        peterz@infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
        "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <cover.1793660202.git.daniel.lezcano@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <cover.1793660202.git.daniel.lezcano@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=AaYkjHXG c=1 sm=1 tr=0 ts=6aeccf00 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=uw/3876vWhRnNVL35W6mqQ==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=Z4Rwk6OoAAAA:8 a=VwQbUJbxAAAA:8 a=b9Gx46yHQhYJBP6_XqkA:9 a=QEXdDO2ut3YA:10
 a=o1xkdb1NAhiiM49bd1HK:22 a=HkZW87K1Qel5hWWM3VKY:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA1MDA3NCBTYWx0ZWRfX2HQwha8CE7mg
 nuaqRcfPguKZMIa1wNr6P9mM2n6f6NNuOju5uodTOAOP3An0o8jBjBMw00n8+hGPLpsROeM8PT1
 CSK6itlRR5UzkLEYq9vvzFRS2JUXR75IIIO20vpuYF4tjHaDM4uz7D2GjMfSeNHaf+9QJj2aeb3
 yoV3O6twEpWBTPkwHR9m+yOaa4exJqQQ16dbUEPAKSWKbIELX04iu+G97aDEJlahuPXBmdbEQqI
 51Sogpz4y8sqdnL1PyM1dZaQ3WG7Tr/F+2bm5ZWDbHLjlQwWvK9dTNzxuw1Y85PcepvAkrh8X7N
 H9yMC8kDvLkM56f+jDP3LotBWHPtfoHIyyATWRmUVTtMptamxYd/3nYFLjvb3K7e2zHiCH5jYL0
 y1Ih8KEmf0hNnqxS2UbSSivsZjRbXrMplY6jR6ML1RhVjEN1sjmm4QD7SY+J32TvZ7riD2nlguQ
 G/TcBGzxasM2w9URGxQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA1MDA3NCBTYWx0ZWRfX6Nvj42Cxx6YO
 6dk9oz3BAQcDZum5WxQbyULUJnqd59iflz/r5XekLU4aggaYmrh7NRmsPhEFtdN5BcwiEaOfKtW
 oDD1vDVyCqPGvyIUKgIK+1k0o9Witlk=
X-Proofpoint-ORIG-GUID: H4AqaLi0nZEi96yDg1HJReYF0iyZI7rA
X-Proofpoint-GUID: H4AqaLi0nZEi96yDg1HJReYF0iyZI7rA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-05_05,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0 spamscore=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611050074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_104626_790247_CE045425 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/3/26 00:09, Daniel Lezcano wrote:
> Idle injection currently registers per-CPU kernel threads during early
> initialization, including on CPUs for which no idle injection device
> will be registered.
> 
> This series makes thread creation follow the lifetime and CPU mask of
> each idle injection device.
> 
> The first patch adds an optional CPU mask to smpboot thread descriptors.
> The mask restricts thread creation, CPU hotplug handling and teardown,
> while preserving the existing behavior for descriptors without a mask.
> 
> The second patch uses this support to register idle injection threads
> when a device registers and destroy them when it unregisters. CPU
> ownership claims, registration rollback and thread teardown are
> serialized to prevent overlapping registrations from sharing threads.
> 
> Validation includes W=1 builds of the affected objects, whitespace
> checks and static review of the teardown locking paths. Concurrent
> registration and CPU hotplug runtime testing remains outstanding.
> 
> The series was tested on Rockchip RK3588.

One thing not specified in this cover is which tree these changes have 
to go through ?
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Rafael J. Wysocki <rafael@kernel.org>
> 
> Daniel Lezcano (2):
>    smpboot: Allow restricting per-CPU threads to a CPU mask
>    powercap: idle_inject: Create per-CPU threads on registration
> 
>   drivers/powercap/idle_inject.c | 69 +++++++++++++++++++++-------------
>   include/linux/smpboot.h        |  4 ++
>   kernel/smpboot.c               | 17 ++++++++-
>   3 files changed, 61 insertions(+), 29 deletions(-)
> 
> 
> base-commit: c03c1a14507dfaf8b856c2608f9ac216021fc222


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
