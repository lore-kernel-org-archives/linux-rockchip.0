Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A07C7C5AD49
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 May 2025 16:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4e/8kATj6L2dwKqxBFIrbDZu/4XtoNQ7DKXJD3aPsKk=; b=en/WT/gW+kFlTl
	QX/hjQISAlEbidKIiE1cYPytVe2q+DSVlrHZvZcdoR831TsGrnBBE1iMBX4lCcTb+oKOCQ6Ov4SqO
	4HJq7Ogu+77TZsrwRm2lpL7VRtnO9aNs7Dluz/xYCxuPOHaMZMGkWpG+6qPTWpR04uNJCH/YjP7Qv
	hRs8S0949DK3g77SjHgAK/VPVoF1SToWWnsaKU3+6VtvI32lpznSzby0o/h3enm67s7+PJPk9uvpO
	fujKrUukztvpa/seSFNQv2FZWuQKha3UkQJFVJZLpRispY8H1gmF+TNGzI4mYuGbRgLZUteKNwDVQ
	c/gCMob8lSV5Y9UNtrxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL31W-00000001H0T-09nf;
	Fri, 30 May 2025 16:56:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL2i9-00000001CPa-2H67
	for linux-rockchip@lists.infradead.org;
	Fri, 30 May 2025 16:36:03 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UB0Tf1003577
	for <linux-rockchip@lists.infradead.org>; Fri, 30 May 2025 16:36:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Shoo0tKVIcVl87O2cZuDQQ6KICwG3ajVLpAaOIpSTcE=; b=hS1NY1XCWJaI/L0a
	dJatO4IlRpSEMzQwwY6c+SNFZcYQnB/2uVSktsWPY/evcTwsqeyAoC8RlpC3jRT5
	PwBJxfWcS17aLFb3MyLV2CuDAdNs1tTCeaxyyHtzHnyQLmbFeJdD9x5lNa50Q63o
	tK5NWCrkoAz3Vd+a0iuaQBZe/GiJczyWL5VGp56jwk5No9co1fSOJzDRGdkezfD3
	Fmua1tTrWJBWsx97/dseKpjIUR4Egok5O8OUgpIBEPv+Zyzv0KGRUXjXIuwejRjs
	D13y+FQ5Tm0r0DiJGB+WMLhkIhJWdzZ69i6suJJNMWJ6ViZ9ISgdlRQMbWenOjmT
	+ru2/A==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u549sn5f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 30 May 2025 16:36:00 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-311f4f2e761so2297210a91.2
        for <linux-rockchip@lists.infradead.org>; Fri, 30 May 2025 09:36:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748622959; x=1749227759;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Shoo0tKVIcVl87O2cZuDQQ6KICwG3ajVLpAaOIpSTcE=;
        b=pppbb7U4rDFNwJum9tT3L0nOjearWf95nt1Ner8sXkIyL5HWKvjtBHQCv5jYCMmnE5
         T0DZuzUbyaHoR7ojM7jRWKC1mtgZPkQRmDg+NfNbgc2ZyCSfon9Y++Fs25j+ZMdNVqr1
         z2CoKtVMmdNt1IkH0JAf2OPIO8XayITZvdOnoOa2++Zc+HyQBSl4nfJrHWBgHOYtX2kd
         1EyMoXD55JOXyqqf89GZcZlzjhHko54bpABZJ2+GuEPTbnyp1on/mk1tINjPJCY0P9BK
         ADsnbn3HvlhEP7OcdoXgTd+rY6crKpv9CfYpXeWi745olbiDeZxhmdoYzaboA2maMugW
         Pxww==
X-Forwarded-Encrypted: i=1; AJvYcCWcwZJyLLfTs/b8gGP/W02F8laWNAfkKxqVlM5YskNBtWtaTK+2TUwf8DL3C2H6HJSnYaayJJjhRPhzjlptJg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzP5mnyQuFh8PBOilMui3xYfonhi+pXZCOjPg/odX2hoVP2+5ZX
	eFBtzD1l6VYltstX4SJe648hu5mhUF3MBRU+5sCcaKleMgY5BOUqQUvA1mQJnhjCzifmR7SHTyb
	bLpB/aHIfAHykFwaRN846mliomPghhjLUDrIGH9fmr9TrePSjHfXwxHDnUXRD3wCvu015WRlCa/
	o=
X-Gm-Gg: ASbGncu0b3+T4lBbyamp33OuS3ePyKoW4IXjuwh3f26yzmtVL60TQdxFuOLSindd7t/
	pg3bXzKCqp8ByZa0T1Deh3dGDt9z913WR712ZD14SAhMEIwOWrkK4PFIQLw6wJHmOcbOVUbLPZM
	CfV28qhANZOHgpxbbXwrFwAaX9k6ybDEKhPOYs2leyIHN2CfxKw90pl46kPdd1LTv24lLJ8f4t1
	BOFx/uHrRcxMBQ8B+hMbh+j4K/ZPmnm2XbgZhFa+lOnrT0pULdak+1PpmPiTEDLekqmtHVqEwlC
	Q5apcRODjYCvMfhl2k4igaUBqwEik8r78Oo+UUCAr5IqvuSWL/HNSj7OqD9r8Q==
X-Received: by 2002:a17:90b:55cb:b0:311:e8cc:424e with SMTP id 98e67ed59e1d1-31241e8cb1dmr6395385a91.24.1748622959264;
        Fri, 30 May 2025 09:35:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7gZlETTzuM/nB9i8V58eslnhzSbt76+bQeUPi+dwYMc6LXYsmcqrpPQXpymgaj7IkyAYV1Q==
X-Received: by 2002:a17:90b:55cb:b0:311:e8cc:424e with SMTP id 98e67ed59e1d1-31241e8cb1dmr6395344a91.24.1748622958819;
        Fri, 30 May 2025 09:35:58 -0700 (PDT)
Received: from [10.226.59.182] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e3c1358sm1544883a91.37.2025.05.30.09.35.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 09:35:58 -0700 (PDT)
Message-ID: <bf24ba20-dad5-410a-934c-f5963a2769ec@oss.qualcomm.com>
Date: Fri, 30 May 2025 10:35:55 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 08/10] accel/rocket: Add IOCTLs for synchronizing
 memory accesses
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
 <20250520-6-10-rocket-v5-8-18c9ca0fcb3c@tomeuvizoso.net>
Content-Language: en-US
From: Jeff Hugo <jeff.hugo@oss.qualcomm.com>
In-Reply-To: <20250520-6-10-rocket-v5-8-18c9ca0fcb3c@tomeuvizoso.net>
X-Proofpoint-GUID: qU8-S7Jo_m3-cpuzA-AqyTu3C73DW7N3
X-Authority-Analysis: v=2.4 cv=E9nNpbdl c=1 sm=1 tr=0 ts=6839de70 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=DISFzqtZAAAA:8 a=EUspDBNiAAAA:8
 a=CskBsiFdeBhsZAe0Fc8A:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=aug85vrO5LANNmmtkfAW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDE0NyBTYWx0ZWRfX8V8JfbH6nYj/
 0LLACDsopJ0Gw31DqsfBDlZtG1QMkCIY9HJ/84riFma3ksjOcs10CmF//ufG63Ocr95NpbYQUtL
 pIoa9bdY+CkkwF2c+3J6KZMzlPGaQYjNddCmpYv4rjhU/AhHKVS8gxkM5W6DkOGLRch9UZkEHB7
 mOXQOSRYrpLSZrxPbdXqlyleRdlA4kWQk1Y9LxYqxPNDNcF4xDXLcD2kK/YeypeMk/52UiswoCp
 sWSjE6/uZgsZGhP0iM05GApNlL25gWyoAsJCzh9+aUpT1+mEMICnpvULVPZiSdOn3YuZor0+TXa
 Ty/crQCsRH+urjXp99QIkdArzY6WM3AzJS75kESjtwb0nWotdjpN+QnPj5aRft/EnZv6H6y0NtO
 HIWG6YIcaZyxXDp+Pji4zXc1XTTSlDP9cmvA1/jm2uqfwHJZETOBS8gmhlzvvSEwZEpDzcwm
X-Proofpoint-ORIG-GUID: qU8-S7Jo_m3-cpuzA-AqyTu3C73DW7N3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_07,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=999 spamscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_093601_710075_B47BD3CE 
X-CRM114-Status: GOOD (  14.08  )
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
> The NPU cores have their own access to the memory bus, and this isn't
> cache coherent with the CPUs.
> 
> Add IOCTLs so userspace can mark when the caches need to be flushed, and
> also when a writer job needs to be waited for before the buffer can be
> accessed from the CPU.
> 
> Initially based on the same IOCTLs from the Etnaviv driver.
> 
> v2:
> - Don't break UABI by reordering the IOCTL IDs (Jeff Hugo)
> 
> v3:
> - Check that padding fields in IOCTLs are zero (Jeff Hugo)
> 
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>

Assuming what Lucas pointed out is addressed,

Reviewed-by: Jeff Hugo <jeff.hugo@oss.qualcomm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
