Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15693D19515
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 11:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbw8+QFGLd/JBp/8CzGZdJAvWHUeT3hkGou8KG/LzYU=; b=Hoeqr7PoCKcB/U
	vYOXxJcdpWftOJmIkLc2KUcytPcXVerO537fPQFKfOLlHXOGDygwOGmnKIIBj2a/85l59SU+h86Kh
	o8ZpWT6pFknKhh6O8s93Bpwj52LFnKxoCAxMKLHpmAGBm2OvRuaypGM7+bLgc8B8Bs6M/DQQ+w1WK
	Sm1jRyCMTy/aidnPbn02uy1AvduuijTHtBC7VkNdQwPmBBf2Z8X4S5v1nuFC0Ie5d/KJe+coC7rDh
	nB3gZQmcDoZh4qMt4ccJeXJpcvyLIbyfzfRIUmTxWOwTM8RowJLsuZ8/Ny8JXz+Hb5KPH174ucvVi
	Ye8WbJZnAPBYQbNueSTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkh7x-0000000E9P2-2HQf;
	Tue, 27 Jan 2026 11:20:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkh7t-0000000E9NX-1Kce
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 11:20:56 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R87Jci2379244
	for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 11:20:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QHcqP74r9VhaV5/cZgET4JduR2x2H6zcTZIlVplq3nc=; b=ZOmoAHbzG7TQYghP
	Q/+fbofrkL7z1l7f55oU9lCHS5tFUbwHxZdoNe8x2Autw64GNBVGPZfGheI2QSXv
	FLteKO5fStxqgUtuFGTqtUmc3bhwpXiwUTAZq+eiWL9XCEl7E9oBmFcwcII/R3A1
	XIXCwti6ZrVikX3lgE3m+BnoMabUKfRhd6rX6vphMzGx4wHMLshJAZJClrQDYRtc
	V9wdwul5Zz53ucOdClomE9fcqt3xWzzcwLuJR/aoXdZY0kjqRw8azEK/efE5heiY
	9HP7tGuOK4teYFXiS9Y1Hx43Up5X4TKZSsUszoo+KyiOSAcSekrY+FTAMewIDm0c
	ocgIsg==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxsjr8mwt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 11:20:52 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5f5256bfd3cso5730153137.3
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 03:20:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769512852; x=1770117652; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QHcqP74r9VhaV5/cZgET4JduR2x2H6zcTZIlVplq3nc=;
        b=ZFV3UFfS5++2vGGec2PmRAlOSiEutmPfyfffpQS+duBzcQHZsFTQFfDUtpEgaC44sX
         mZiiOv10GrpW01vLU7r/sNTHk+WBIxGt8kIqD4mPvuMD1JAIOHjNDhyixyIpGv+DNws8
         +jOE6XeLlBNb0U20fUgnwSQPXCfb7qI3dG8hG/B7M2RbTFvg05bGx4vxTsxMbpdUF6+C
         qX5CEiP9zh7+rIvxsghw9f7leSBhKJiOo5XrbJKSscCrjXpft2SpGF0IXjtYAdt9s8PN
         ozi32eJuHhkXrRgiyuzCrxC+RzJhF/uGucyLga2iSEDCm7+//FFQ5+LIwATf8gvp6H8c
         dxQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769512852; x=1770117652;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QHcqP74r9VhaV5/cZgET4JduR2x2H6zcTZIlVplq3nc=;
        b=QyktR1iQG1iiq35cC+LaVgSj06Yxtqg6MYq6SNUlgorslUmwYAHibYRw36xqxFkp/w
         icvhU/fLHmBYRF+0Fz+bO4y1wzkwr5gVB3OBUAGvnk86nidaFnTOd8iaHH8Bpf12P4nN
         B0eWZKJ8SzbmB1+yT+d7wkF/Zeky5hPX4CxRvhIv5glFbZGxv0KVQp+R3+cMBQXnqyjW
         6ttIZ0bDYV1rTD//vFhXHRh0Q1h3MiLP1xt5153fyASaX9P93I6rsWkuUbtSrGnp/ZAG
         xIQNXJXjefVFLYf2JWmPI2sbzPh1DE5p95/rz1fFVBasJCyFZOIFC6wk+yU/4R7ccQr5
         p4kw==
X-Forwarded-Encrypted: i=1; AJvYcCVgtxQX2NtmFIyjRwV0lR9G4YG+IdVpIyadaxNk93jPZjkylQAZO5NzI6j5x7BoWvi/X/Q/ZOg7Hd7pvIR0Dg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3SIq2tYYAWJUqkYiXRRusEs2MfUDWPyzyJZaVr/B8oqm4jViF
	7Uyobth1BUSPUZ1UYJ3eb6Rxf7mnH1I+EFTzv6re/Ot1TgreABRMCJjqZ/boLs2tkDCa4b7BK6S
	ZcWtUxXANU1OaFA0/FAKmeg5P2jPaq0RitjvnFnQfHKN33Ejle1c0Le++9S/59HTFdSU+OakBNs
	Y=
X-Gm-Gg: AZuq6aI5ELfX05IO6ZohN9gLApbDOSCBwCOKVRsnBBkeKL2QZY08gJ2gUS216i8WOTj
	Ij46+JbRTBQSvIaABe4Xs039GldjCxPwYrytO/OXF6ol5hpnKcI1F327C1DFyU/jNLB3ViGC75Z
	st1PVKZqu3HRM9j5nmjcGNuuc+aIgRUCNuHK/t9Pp1ReEMdqIcpk9TmHmU5a/aHfUAlEdq2Oofr
	IpUwz5gOtlghoj97Yl6Rv8YGEk6lmEkf21HKBa7ovaUvhQJuSb3B8d+4pR2oqFwN1hJ0SVIA8B1
	fO6lyBsxc78S4Xc8EWh8/ju3XkRW8fqLmzqy5M9MJtvWCujkc6sDigYpXu5RpydE4TByy0AyG9D
	3ge2dJKnZdECGH4DhnYcOvwCiupMLP/UI3tHKcmACeA5y+j8E4Z8atsTb/KJa4TNKJrqKHiNMJU
	9eAh6yIutuDrDVafRWuIdHoko=
X-Received: by 2002:a05:6102:291f:b0:5f5:35bd:6fb3 with SMTP id ada2fe7eead31-5f7235d4e59mr521462137.5.1769512851680;
        Tue, 27 Jan 2026 03:20:51 -0800 (PST)
X-Received: by 2002:a05:6102:291f:b0:5f5:35bd:6fb3 with SMTP id ada2fe7eead31-5f7235d4e59mr521455137.5.1769512851297;
        Tue, 27 Jan 2026 03:20:51 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de48f0259sm3368696e87.45.2026.01.27.03.20.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 03:20:50 -0800 (PST)
Date: Tue, 27 Jan 2026 13:20:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
        helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch,
        lumag@kernel.org, robdclark@gmail.com, robin.clark@oss.qualcomm.com,
        guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
        valentine.burley@collabora.com, linux-mediatek@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
        amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 3/7] drm/ci: reduce sm8350-hdk parallel jobs from 4 to
 2
Message-ID: <ftkgk4xevcfe4dyx2pqi3gk3bqm7jcv65qvn3ypgrwls5dyx3m@srsgbmsteifw>
References: <20260127104406.200505-1-vignesh.raman@collabora.com>
 <20260127104406.200505-4-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260127104406.200505-4-vignesh.raman@collabora.com>
X-Proofpoint-GUID: JRuk2VqybGy-GD717W8W3pL20C8zevMl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5MiBTYWx0ZWRfX9ptpVHLm8cQN
 Xtn3nHbXKYW3qPI7347PiOY/VVSet8mTKw4GbQjCJF2xIUI/RQeXS02Hwf+CcnVbF4UgNBPFDDb
 rpDrDROOT7vTR7VBUeK9KdSzjeJpCKOlk7AImWb0qeaUy+U820Wb0N8tSeCL2Ln7ii1T8Gx9qzm
 jM1Q0Gp6KCqIO7XQ864l7cqNj6lb26THKNf7ocAz5zWljMMyqvEdSuq2jGPCQTUveV9xjSf2b7o
 K56xEbNKH3alL581g6G0LlcZNKHh5fo9cfApNzhSk28gJRHsCQgdkkeaO/P4v8p9JbOvrhXnqSg
 KTnz5ifqHTVcn2W2VNqrfMV5929JP4NWgjEi6jhWz178ieAaxRzOJLWw78fVe+RTcaASDJgQp1t
 kK/5Tz2bC+2QWdq2xDXboZciP3GYCBGtFzxoiCeot91nkVzUztL3REhAHjDqYuJsLTf6uHIv7Jq
 QcqDeUoPtensmdnULvg==
X-Authority-Analysis: v=2.4 cv=b+i/I9Gx c=1 sm=1 tr=0 ts=69789f94 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=_49z0RMimKR0Jg0_r6oA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=-aSRE8QhW-JAV6biHavz:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: JRuk2VqybGy-GD717W8W3pL20C8zevMl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 impostorscore=0 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_032055_007735_0F911405 
X-CRM114-Status: GOOD (  14.37  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKYW4gMjcsIDIwMjYgYXQgMDQ6MTM6NThQTSArMDUzMCwgVmlnbmVzaCBSYW1hbiB3
cm90ZToKPiBUaGUgc204MzUwLWhkayBqb2JzIGFyZSBzaG9ydCBhbmQgZWFjaCB0ZXN0IHRha2Vz
IGFyb3VuZCAy4oCTMyBtaW51dGVzIGFuZAo+IHRoZSBmdWxsIGpvYiBjb21wbGV0ZXMgaW4gYWJv
dXQgMTAgbWludXRlcy4gUnVubmluZyA0IHBhcmFsbGVsIGpvYnMgdXNlcwo+IDQgZGV2aWNlcyBh
dCBvbmNlLCB3aGljaCBpcyBub3QgbmVlZGVkLiBTZXQgcGFyYWxsZWwgdG8gMiB0byByZWR1Y2UK
PiBkZXZpY2UgdXNhZ2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlnbmVzaCBSYW1hbiA8dmlnbmVz
aC5yYW1hbkBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vY2kvdGVzdC55
bWwgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+IAoKUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAb3Nz
LnF1YWxjb21tLmNvbT4KCgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
