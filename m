Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC348C87FD2
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Aug 2025 04:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QHGAUSUxJ7vX6OGlpF18qbDVdhse1RtFaweT9mvLqGA=; b=Fnza0GvbuAfshz
	TdIMutMiB394V7D/PJDSXO/48WEVurWH0obHlT48qhTUZHOm7aNnr8e0elGDFaGazcnMGvJTyqnRn
	xfC2ndpI0nsZel2RnADjSbvrgsin2xmKtUu04J2W9HmRBv8aHYGg+6jHjhB/4BfDxGsbGZnprnaGl
	9P1tG6uphWoqKPsHUhAWNo4OZnu5aSVrvDrRUIsvROA3MRXIzuiNmzDme6X8aFqbqxNau13J69DGs
	ek7JiNbZnbq0XKgIsWOK/HdArMMP5NwTveJO4CRzfbxrJJCq1bF9IY7TZCakcKivyB05i61daXXTY
	Sjd5zG1D9MvbN22UItFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uj9KM-0000000BkeX-1rct;
	Tue, 05 Aug 2025 04:31:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uj9GZ-0000000BkMo-0jXP
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Aug 2025 04:27:13 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 574KPqaq018834
	for <linux-rockchip@lists.infradead.org>; Tue, 5 Aug 2025 04:27:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oOc6z05PE+JQqEEqbcSZYn5GdoipElasSOcBl/QC7mg=; b=kThrxO3mtDNyptln
	ENj7Vn4UHb1q8h4R/1TPBHteW6nAWsKccbCxgqx3M2Tsp5BF4lbQSBXdzn7Y8CvX
	unP4tP0f7Eg8v9agYfX/RG4oyuQLzYthdK/1fTVj1Dmgn2zvDqhovuJL+k4ZlIQN
	l65RRm8cSYq7nQspXUEBeRnUflH/zkRDomKPWp9LrQhQGNVwtM5pEhUipo4AXWUr
	Z7Jw2K2YJI3/NRya0dPmhBGmELtQy4/iCNm56LtqumsWlbB09EjccwrVPXSlt3pe
	CIA0lIWAnYImH0wM/Jbf6oMIYuvZC1xMWW9ArpYQaqrKIzlzmK1fo3y5k8d0O2S3
	Z2U1Qg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48avvua5q7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 05 Aug 2025 04:27:09 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76bf8e79828so4145669b3a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Aug 2025 21:27:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754368028; x=1754972828;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oOc6z05PE+JQqEEqbcSZYn5GdoipElasSOcBl/QC7mg=;
        b=r8tsBWsDXI5zhZY33wEB0LYdUp0gKeiT+9xAmsozvX4u8FlXZc47M9F8mgFVvrwfpz
         hK6sxFAoFNNIVY4e5JE4ZBAYo4jHadPWMVtTlCwaoXeu8A/289Od2y5+X3YC6zNOOvc5
         kBHnvd8PGuZPs4neBd/DWIqhvIKY/KjPXWeE8btgChSK4yGGw6T1RbVvV7YshP2WKHmE
         y32RjHALNVY5aLMJ4Kvg4I4ZDdfY6knnnlx6MJHNnLiwYBRwqXLfC0bAy25qgZl4iqNe
         YRJD4QiN0yJyCo4mTthSwiy0UQL9CAY0PSRyoInXgWtZXtp+fX9fjHBHzKwk3AsE0dGw
         I3pA==
X-Forwarded-Encrypted: i=1; AJvYcCVZpwJpbNex1LQ+TNCmX5ORmYteoXtHVwgiwwTk5AmVY3YwH1+tBUwLQqdruuPzXdRsWjrsJTDUttPojY/DnA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzszaalZi3VSjPZhQ7ioDYiYuGchyiY+MxxgrLTnHGWGNRa0El7
	/MMxZyBLqW6UFSdcDNl1A9HaDcKKpsg0dfBellbJBtTsKnIL+hd8aEGCoTLqd263F8cc+eTrvp0
	0tPJB8IWLdDxAecfexdKTxNb/bq9pEKmzk3TJ0LEG3anuMdH2KcgpomE9pMsoLQJkKL90tOFKUt
	k=
X-Gm-Gg: ASbGncuTkyNRKIN2HHvR/p8FHsBRXCn2lIdqNSKc34QisiSsmgOT24Gh0gbFrKt6bDz
	P5n2ShoUJv+id75VE//PQ7vXMrDZ/TXz6+uythqpypJxbOCBwtZE56ZxqQkFNx4W86J//fVhatb
	1iqIT0KQ4FcHJsrEVu5JmZ3+RS3pT73LZDG4SMvGEeRd8RJiycVbWnOl6dVi8B2k6Yz397yXDoh
	XmHACMtDEcYszoO6ykHtK9tUZUFjaFwVu+CnBMc5QzDQqFDdgTToEpSALaW0/K/OSNvq0LdMLyq
	QOI4xYGy+Mj3yKHcOLUjTjXM19yPbSbabn7WjgCSrelFRJCvkQl29phXLwo=
X-Received: by 2002:a05:6a00:21d4:b0:74e:ab93:422b with SMTP id d2e1a72fcca58-76bec2f304fmr16590719b3a.4.1754368028232;
        Mon, 04 Aug 2025 21:27:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFw0pS+Af4/vl57IxtwquJOBQTfIqG+DV8SuowUeMiLkLhA25xCUY8PxbXrQoBIQT63gbcfpA==
X-Received: by 2002:a05:6a00:21d4:b0:74e:ab93:422b with SMTP id d2e1a72fcca58-76bec2f304fmr16590676b3a.4.1754368027830;
        Mon, 04 Aug 2025 21:27:07 -0700 (PDT)
Received: from [10.5.16.15] ([14.99.203.242])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bccfd4893sm11746425b3a.107.2025.08.04.21.26.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Aug 2025 21:27:07 -0700 (PDT)
Message-ID: <3e880194-5ac8-4056-929c-ac103bedc737@oss.qualcomm.com>
Date: Tue, 5 Aug 2025 09:56:57 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Add Type-C DP support for RK3399 EVB IND board
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20250729090032.97-1-kernel@airkyi.com>
 <3kefqzjewmsyzfvyi33kvlgjd6jphjg3fsnixb3of7yb3xkgs2@hgi6xfkgd653>
 <63ec11cf-7927-431a-995e-a5fc35ef1ba7@rock-chips.com>
 <pk5wecbbpxn7v4bdwtghhdnm76fmrmglelytljwfb4cgvpu2i6@rk5turgyt5xq>
 <0207826d-a987-4464-b306-29bdbfac45bc@rock-chips.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <0207826d-a987-4464-b306-29bdbfac45bc@rock-chips.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDAyOSBTYWx0ZWRfX0LHgqcrvlMkz
 qocTwmAcXJIOolbzk+em3XcOzWb9o0NI7+vFVBGQDTcV+1F+5hGgqHXU+sLRTN4NXC+s5SdVnLo
 yiBNdh6ExomcIbMWgfp7c355vRvw2RAaV8sVY2Bsm3GeIQT8bvqUDnmx1rh1/KC7Vq/ZRjCVexy
 3eaPsXl+HGGmj8N9QCjfCfJFzVHLOkG+L3/+dbJNbwN+D5tA4C+z5g//hIk9n+EZZ7D8XNclnSK
 RWc/xoa9oGPx6eeSKZ3a392SyGDQulpGvs/46ZTB/xxgPNmPq9VklGz7S4nrQMMVEyEt6aFQZyf
 HCPj3C6cSKtBok93P/HUAUhXKtkxV4z21gjO8WBmj9ntZe6NQI0LrvMks7mTRIeJkzk3MyqHRtp
 ghejp/TULM8f9y/FQWa/sbW/x3sjLrBl41506Z8T5ZfIIv5AXWpwUHYN2rEvyLBeiIJXIIDy
X-Proofpoint-GUID: CvRSMDBNDaGZtMfwE6xfYYH3RaQvYXyX
X-Authority-Analysis: v=2.4 cv=OYKYDgTY c=1 sm=1 tr=0 ts=6891881d cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=BCJAbJEDZziWQyy0sFgk6w==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=cm27Pg_UAAAA:8
 a=lJfCAnFZCnoPuUJW_CAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: CvRSMDBNDaGZtMfwE6xfYYH3RaQvYXyX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_10,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0
 priorityscore=1501 mlxlogscore=999 malwarescore=0 adultscore=0 suspectscore=0
 clxscore=1015 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508050029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_212711_344550_1C5F0C1D 
X-CRM114-Status: GOOD (  38.03  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMDUvMDgvMjAyNSAwOToxMywgQ2hhb3lpIENoZW4gd3JvdGU6Cj4gSGkgRG1pdHJ5LAo+IAo+
IE9uIDgvMi8yMDI1IDU6NTUgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gCj4gWy4uLl0K
PiAKPiAKPj4+IEN1cnJlbnRseSwgdGhlIHNvZnR3YXJlIHNpbXBseSBzZWxlY3RzIHRoZSBmaXJz
dCBhdmFpbGFibGUgcG9ydC4gU28gCj4+PiBpZiB1c2VyCj4+PiBwbHVncyBpbiBEUCBkb25nbGVz
IGluIGJvdGggVVNCLUMgcG9ydHMsIHRoZSBEUCBkcml2ZXIgd2lsbCBzZWxlY3QgCj4+PiB0aGUg
Zmlyc3QKPj4+IHBvcnQuIFRoaXMgcHJvY2VzcyBpcyBpbXBsZW1lbnRlZCBpbiBjZG5fZHBfY29u
bmVjdGVkX3BvcnQoKSAuCj4+Pgo+PiBJIHRoaW5rIFN0ZXBoZW4gQm95ZCBoYXMgYmVlbiBsb29r
aW5nIG9uIHNpbWlsYXIgaXNzdWVzIGZvciBDaHJvbWVib29rcywKPj4gd2hpY2ggd2VyZSBzaGFy
aW5nIERQIGNvbnRyb2xsZXIgYmV0d2VlbiBzZXZlcmFsIFVTQi1DIHBvcnRzLiBJIGRvbid0Cj4+
IHJlbWVtYmVyIHdoYXQgd2FzIGhpcyBsYXN0IHN0YXR1cy4gSSB0aGluayB0aGVyZSBpdCB3YXMg
ZWFzaWVyIHNpbmNlIHRoZQo+PiBiaWZ1cmNhdGlvbiBwb2ludCB3YXMgdGhlIEVDLgo+IAo+IEkg
dGhpbmsgdGhlIGxhdGVzdCBwcm9ncmVzcyBzaG91bGQgYmUgaGVyZTogWzBdLiBJdCBzZWVtcyB0
aGF0IGl0IGhhc24ndCAKPiBiZWVuIHVwZGF0ZWQgZm9yIGEgd2hpbGUuCgpNaWdodCBiZSA6LSgK
Cj4gCj4gWzBdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNDA5MDEwNDA2NTguMTU3
NDI1LTEtIAo+IHN3Ym95ZEBjaHJvbWl1bS5vcmcvCj4gCj4gCj4+Cj4+IEkgdGhpbmssIENETi1E
UCBuZWVkcyB0byByZWdpc3RlciB1cCB0byB0d28gZW5jb2RlcnMgYW5kIHVwIHRvIHR3bwo+PiBj
b25uZWN0b3JzLCBoYXZpbmcgYSBzZXBhcmF0ZSBkcm1fYnJpZGdlIGNoYWluIGZvciBlYWNoIG9m
IHRoZSBEUAo+PiBzaWduYWxzIHBhdGhzIChpbiB0aGUgZW5kLCB5b3UgY2FuIG5vdCBndWFyYW50
ZWUgdGhhdCBib3RoIGJyYW5jaGVzIHdpbGwKPj4gaGF2ZSB0aGUgc2FtZSBzaW1wbGUgQ0ROLURQ
IC0+IFBIWSAtPiBVU0ItQyBjb25maWd1cmF0aW9uOiB0aGVyZSBjYW4gYmUKPj4gZGlmZmVyZW50
IHJldGltZXJzLCBldGMpLgo+Pgo+PiBCb3RoIGVuY29kZXJzIHNob3VsZCBsaXN0IHRoZSBzYW1l
IENSVEMgaW4gcG9zc2libGVfY3J0Y3MsIGV0Yy4gT2YKPj4gY291cnNlLCBpdCBzaG91bGQgbm90
IGJlIHBvc3NpYmxlIHRvIGVuYWJsZSBib3RoIG9mIHRoZW0uCj4+Cj4+IFRoaXMgd2F5IGlmIHRo
ZSB1c2VyIHBsdWdzIGluIHR3byBEUCBkb25nbGVzLCBpdCB3b3VsZCBiZSBwb3NzaWJsZSB0bwo+
PiBzZWxlY3QsIHdoaWNoIG91dHB1dCBhY3R1YWxseSBnZXRzIGEgc2lnbmFsLgo+IAo+IFRoYXQg
bWFrZXMgc2Vuc2UsIGJ1dCB0aGlzIG1pZ2h0IG1ha2UgdGhlIERQIGRyaXZlciBxdWl0ZSBjb21w
bGV4LiBJIAo+IHdpbGwgc2VlIGlmIEkgY2FuIG1ha2UgaXQgaGFwcGVuLgoKSSB0aGluayBpdCdz
IHRyYWRpbmcgb25lIGJ1cmRlbiBmb3IgYW5vdGhlciwgYmVjYXVzZSBDRE4tRFAgY3VycmVudGx5
IApoYXMgYSBjb21wbGljYXRpb24gb2YgY2FsbGluZyBjZG5fZHBfZ2V0X3BvcnRfbGFuZXMoKSAv
IApjZG5fZHBfZW5hYmxlX3BoeSgpIGluIGEgbG9vcCByYXRoZXIgdGhhbiBqdXN0IGVuYWJsaW5n
IG9uZSBpbnN0YW5jZS4KCj4gCj4gCj4+Cj4+Pgo+Pj4+PiBCVFcsIG9uZSBvZiB0aGUgaW1wb3J0
YW50IHRoaW5ncyB0byBkbyBpcyB0byBpbXBsZW1lbnQgZXh0Y29uLWxpa2UKPj4+Pj4gbm90aWZp
Y2F0aW9ucy4gSSBmb3VuZCBpbmNsdWRlL2RybS9icmlkZ2UvYXV4LWJyaWRnZS5oICwgYnV0IGlm
IHRoZQo+Pj4+PiBhdXgtYnJpZGdlIGlzIHVzZWQsIHRoZSBicmlkZ2UgY2hhaW4gd291bGQgbG9v
ayBsaWtlIHRoaXM6Cj4+Pj4+Cj4+Pj4+IFBIWTAgYXV4LWJyaWRnZSAtLS0rCj4+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAtLS0tPiBDRE4tRFAgYnJpZGdl
Cj4+Pj4+IFBIWTEgYXV4LWJyaWRnZSAtLS0rCj4+Pj4+Cj4+Pj4+IE9oLCBDRE4tRFAgYnJpZGdl
IGhhcyB0d28gcHJldmlvdXMgYXV4LWJyaWRnZSEKPj4+Pj4KPj4+Pj4gTm93LCBJIHRyeSB0byB1
c2UgZHJtX2Nvbm5lY3Rvcl9vb2JfaG90cGx1Z19ldmVudCgpIHRvIG5vdGlmeSBIUEQKPj4+Pj4g
c3RhdGUgYmV0d2VlbiBQSFkgYW5kIENETi1EUCBjb250cm9sbGVyLgo+Pj4+IERvZXMgaXQgYWN0
dWFsbHkgd29yaz8gVGhlIE9PQiBIUEQgZXZlbnQgd2lsbCBiZSByZXBvdGVkIGZvciB0aGUgdXNi
LWMKPj4+PiBjb25uZWN0b3IncyBmd25vZGUsIGJ1dCB0aGUgRFAgY29udHJvbGxlciBpc24ndCBj
b25uZWN0ZWQgdG8gdGhhdCBub2RlCj4+Pj4gYW55aG93LiBJZiBJJ20gbm90IG1pc3Rha2VuLCB0
aGUgSFBEIHNpZ25hbCB3aWxsIG5vdCByZWFjaCBEUCBkcml2ZXIgaW4KPj4+PiB0aGlzIGNhc2Uu
Cj4+PiBZZXMuwqAgV2hhdCB5b3UgbWVudGlvbmVkIGlzIHRoZSBjYXNlIGluCj4+PiBkcml2ZXJz
L3VzYi90eXBlYy9hbHRtb2Rlcy9kaXNwbGF5cG9ydC5jIC4gSSBoYXZlIGFsc28gYWRkZWQgYSBu
ZXcgCj4+PiBPT0IgZXZlbnQKPj4+IG5vdGlmeSBpbiB0aGUgUEhZIGRyaXZlciBpbiBQYXRjaCAz
LCB3aGVyZSB0aGUgZXhwZWN0ZWQgZndub2RlIGlzIAo+Pj4gdXNlZCBpbgo+Pj4gdGhlIFBIWS4g
U28gbm93IHdlIGhhdmUgdHdvIE9PQiBIUEQgZXZlbnRzLCBvbmUgZnJvbSBhbHRtb2Rlcy8gCj4+
PiBkaXNwbGF5cG9ydC5jCj4+PiBhbmQgdGhlIG90aGVyIGZyb20gUEhZLiBPbmx5IHRoZSBIUEQg
ZnJvbSBQSFkgaXMgZXZlbnR1YWxseSBwYXNzZWQgdG8gCj4+PiB0aGUgRFAKPj4+IGRyaXZlci4K
Pj4gVGhpcyB3YXkgeW91IHdpbGwgbG9vc2UgSVJRX0hQRCBwdWxzZSBldmVudHMgZnJvbSB0aGUg
RFAuIFRoZXkgYXJlIHVzZWQKPj4gYnkgRFBSWCAoYWthIERQIFNpbmspIHRvIHNpZ25hbCB0byBE
UFRYIChEUCBTb3VyY2UpIHRoYXQgdGhlcmUgd2FzIGEKPj4gY2hhbmdlIG9uIHRoZSBEUFJYIHNp
ZGUgYW5kIHRoZSBEUFRYIHNob3VsZCByZXJlYWQgbGluayBwYXJhbXMgYW5kIG1heWJlCj4+IHJl
dHJhaW4gdGhlIGxpbmsuCj4gCj4gU29ycnksIEkgc3RpbGwgZG9uJ3QgcXVpdGUgdW5kZXJzdGFu
ZCB5b3VyIHBvaW50LiBJIHRoaW5rIHRoZSBlbnRpcmUgCj4gbm90aWZpY2F0aW9uIHBhdGggaXMg
YXMgZm9sbG93czoKPiAKPiBUeXBlLUMgbXV4IGNhbGxiYWNrIC0+IFJLMzM5OSBVU0JEUCBQSFkg
LT4gUEhZIGNhbGxzIAo+IGRybV9jb25uZWN0b3Jfb29iX2hvdHBsdWdfZXZlbnQoKSAtPiBEUCBk
cml2ZXIKPiAKPiBBcmUgeW91IGNvbmNlcm5lZCB0aGF0IHRoZSBJUlFfSFBEIGV2ZW50IGlzIG5v
dCBiZWluZyBoYW5kbGVkIHNvbWV3aGVyZSAKPiBhbG9uZyB0aGUgcGF0aD8gSXMgaXQgdGhhdCB0
aGUgVHlwZS1DIG11eCBjYWxsYmFjayBkaWRuJ3Qgbm90aWZ5IHRoZSAKPiBQSFksIG9yIHRoYXQg
YWZ0ZXIgdGhlIFBIWSBwYXNzZWQgdGhlIGV2ZW50IHRvIHRoZSBEUCBkcml2ZXIgdmlhIHRoZSBP
T0IgCj4gZXZlbnQsIHRoZSBEUCBkcml2ZXIgZGlkbid0IGhhbmRsZSBpdD8KClRoZSBJUlFfSFBE
IGlzIGFuIGV2ZW50IGNvbWluZyBmcm9tIERQUlgsIGl0IGlzIGRlbGl2ZXJlZCBhcyBhIHBhcnQg
b2YgCnRoZSBhdHRlbnRpb24gVkRNLCBzZWUgRFBfU1RBVFVTX0lSUV9IUEQuIEl0J3MgYmVpbmcg
aGFuZGxlZCBieSB0aGUgCmFsdG1vZGUgZGlzcGxheXBvcnQuYyBkcml2ZXIgYW5kIGlzIHRoZW4g
ZGVsaXZlcmVkIGFzIGFuIE9PQiBob3RwbHVnIApjYWxsLiBIb3dldmVyLCBpdCdzIG5vdCBhIG11
eCBldmVudCwgc28gaXQgaXMgbm90IChhbmQgaXQgc2hvdWxkIG5vdCkgCmJlaW5nIGJyb2FkY2Fz
dGVkIG92ZXIgdGhlIHR5cGVjX211eCBkZXZpY2VzLgoKVGhlIHdheSB3ZSB3ZXJlIGhhbmRsaW5n
IHRoYXQgaXMgYnkgaGF2aW5nIGEgY2hhaW4gb2YgZHJtX2F1eF9icmlkZ2VzIApmb3IgYWxsIGlu
dGVyaW0gZGV2aWNlcywgZW5kaW5nIHVwIHdpdGggYSBkcm1fZHBfaHBkX2JyaWRnZSByZWdpc3Rl
cmVkIApieSB0aGUgVENQTS4gVGhpcyB3YXkgd2hlbiB0aGUgRFBSWCB0cmlnZ2VycyB0aGUgSVJR
X0hQRCBldmVudCwgaXQgaXMgCmJlaW5nIGhhbmRsZWQgYnkgdGhlIGRpc3BsYXlwb3J0LmMgYW5k
IHRoZW4gZGVsaXZlcmVkIHRocm91Z2ggdGhhdCAKYnJpZGdlIHRvIHRoZSBEUCBkcml2ZXIuCgot
LSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
