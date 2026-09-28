Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E979C9833F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2026 13:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+Gzt4U2q23o5WSpXA1bNn5mclaHV2dtay5KXrQKaVM=; b=oVFUyqCRtl5fW5
	xwXif3oXNZDoiXELuZlCtB/C6Du8rJmwB28Wj7ejlpwNMjmWT9ZJYvgHaJo7Ycrz+8VrTUEFBT+wC
	EZgfL696IIpKvGXmFumOyrG4AWee9thlcv5eResdDyN0DEh6+ZIBpFmnbk9carjcoYayOGoax+ypo
	dqzJZNFd0GJmqJL13NGXe5Hl69+CjLJWNEakpYvlZonkXS3BRBWOzlzmmhF3G/JUxBR8+jNDEPkZI
	AaB8GYm4+P822iHN2dqNADyWaemBxf2d6pjnarcgNFXh60yO20mJ90siWwsQ878VRTLcgdDpbdmuL
	j6L0xTtpGilpynBmjViQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBBb7-00000000g6v-0FvU;
	Mon, 28 Sep 2026 13:40:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBBb4-00000000g6B-18BB
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Sep 2026 13:40:47 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68SBAPDL2294821
	for <linux-rockchip@lists.infradead.org>; Mon, 28 Sep 2026 13:40:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zZSLT0qtV3AT2pT/zZ5wK5NWtEjRCQSyl08ssPseMk0=; b=U485Z+kMLJbFSvmR
	WkIjc5xdaf/z5680yZzZThSkSR2x1e+GmWov4EZLH8Z9EfVM5gvvaVwtVDeW8+Jt
	LmXUqZiNRAKDs+I1xaLR2AQ/hUx/6TCP0z/BY3XKwkDNQZpZc5B6oNJw6jJDts9h
	rJYDICZFmYTRaqxsK3tH3zHlNi0gqd+BNSTNtiM73tvxXPik0eXbgTVvnk9es7/Q
	XcgqfmdrtG7ZmRXVhtpBfJdFb26QCwdTr7FbhyvHm4HH6/o053DJaz2+2TAj7gPd
	of10OoGdjY8eNvtR623zedm4vrOGcj2JvxYjoS7Ox17YvPtxpBmU0LqGFfhBldiE
	SIoOEQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gyhubhshy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 28 Sep 2026 13:40:45 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cc1cdfb337eso1532761a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Sep 2026 06:40:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790602845; cv=none;
        d=google.com; s=arc-20260327;
        b=fkm9U1pZlB6vUUQXcyB/acrqkLakFfil8u572d/yyCujeGXuY7d6Q9Phtv5QIg1Qb9
         AkV21IN0vYP4cfMfu+VtnCUMWwLWt+KfsPUO+pARLOYGO93WFsqMXwawyarB936OiOQJ
         6os48fWx2YTLj3/LfTb9FgNytCAciHkGwMG3sTIJER+5VNdseQGc4Ray8ObmQjNpxZet
         lvj15FTS9fTT/2ZD7bXWU5oh4xkY9THxtTGeqj9lVsmd2bAH22MsI0vEmGqPVxYgaHrz
         316ukLxCcOX8sr8xVKX3JBY+JBiXbkdrWtXARkzSm6WznPmhKGok3qNKIai1dHqIV1LO
         CKCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zZSLT0qtV3AT2pT/zZ5wK5NWtEjRCQSyl08ssPseMk0=;
        fh=vCBnTP8zJ5TEmepXfaDRrRHwN4Lc4dYgbaOO6bYnWsM=;
        b=VKvmHF0Tmh3uACDUDTfAfs/++dRFR5KZ3hVN2Nm2QMnSd6S6RmjUcl68gsxh8+/cX1
         KF8+ZrDTt1jsXgpcpUjo6evkZjk3VsG0usI3W4UF3qcoQkJGnPjlkbwvJuH4BRZTFFDm
         B4jERLje+anQjSpNPa9JB7ixtaj2vlJJ33hcD9sEphkgb7517m4YyZQL4K9XUe1etZrb
         rieOTNdQaBNinQjhjWfvp+88t3qLZ/9gndKRiuyp8+BL3RVidjUybeMh1VI6FTtAIeB5
         huuzpcpsAzlvbi/yMPHj8zqlylSDMYI+Akwja0Yvr1NvZIiieRGX7vEYkMQL4HCfZbRJ
         MhNg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790602845; x=1791207645; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=zZSLT0qtV3AT2pT/zZ5wK5NWtEjRCQSyl08ssPseMk0=;
        b=JJzqbJJCdVyQQ+I6bCgFq01QGOOVWWjhsv8JqvYPBc2BEB94tfZWzwuIjy+aljHNdJ
         d1IEAanCsXRDNWKBOLLHXweALOIUwXC/InJ1JOECk6Jm6yvOSukKbmU7f0gLfHqp4nRZ
         2umkz5iAnO5NRyWsQYPmxVcF2cpf5u1neRus/GkcRXNJ2nAgSCL1B+fMB9Q1CxUEMZ5K
         p3EcJTNFWr+1RV08eCd2dsZ8GoC+euuyuA4y8Shw+DrGsBuWx++J0NmzNNO27pzp8EKD
         8kb/osk/5bKXM9dOlMS8h4qOsLrNDkjc6pAVqsg1RvJF/Su9i4r/g4s2ff8Q6ZE75uH2
         Xmnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790602845; x=1791207645;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zZSLT0qtV3AT2pT/zZ5wK5NWtEjRCQSyl08ssPseMk0=;
        b=txaE5olwh9TbVf90GCxBej7tswp8uzkhUXrmW9unIMRQa2sbIsfQxgZMtZPFq3sk9t
         zA33LG7VRB3xGzxuaIUJohRf6Rh+iQ2A2rQMW8K+kdfqeIro9P4KDDPP6wxgQrkdGBGT
         x0yOpyTZN+ecrBdmv6I4ptidFoZ5tmUWo/mlpFTIoTqaLnWilondVpLIqFjdmTpKgGXY
         deDno33zGoiNLmgjXdxA7wBXpi9ifiv4ZN0FKGRl9DVHNErH3xL9g7zfStpHvUh/uLZI
         eQHQdpHfdPVlMCYNR88rASGoG+pN2p+i5IM1DIrqpGoVUbQF/VcJBEX8z/WwtsS0GEbx
         iAtA==
X-Forwarded-Encrypted: i=1; AKwUvBwtxytBV3XM/3fTaqED+Zw16BZQCyxuUE9xildbo/4DuOKDpwGj99r1lQoHZ82bRdi19nmDe8cZ4v7EVWcAAA==@lists.infradead.org
X-Gm-Message-State: AFuF++lSyw72zkdczQVs9T+KqoFU+vtZs6IvafdAlGBccAidEtCEd+Vn
	Y0FdjtoVxKw+Bp36zFjdgHWEKGzRcJ/gK91+UFt6bVsVU9bOd5iYqSsECZrSaHKZ2WJE9lHtJUx
	iANmhAWVuPAK6tW+Op79kBrxDiNQguXuTcvhwRv5MNBpCP/kEKEf13OfomdmY1dUtBYmHdqgTXW
	mv6YkAhGF8h7xePGg7/tTPHunGKL6aQqUCDasVGGU4BTIEBGxgRw==
X-Gm-Gg: AYBFou3veYqVGv2LwT6tb7DubF2nRw9vZwP3vYrpt4kfywlrccrPm28BjV8MiISn/u9
	HuxVTd6cmLwcmRmLhCYp+L6mwRFHrhF8ikfrnJoKU+H3mwRYuxwi0kmXuZVv5XOg+bjkjE/yPgZ
	5485jJ4wq1KSpqIsrwDpgxC3dNy7zRZBELvKtlWdUA/ugUUzFMCC1pt1Zzzg==
X-Received: by 2002:a05:6a21:3301:b0:3dd:a197:cf2a with SMTP id adf61e73a8af0-3de0e9211e2mr13232916637.78.1790602844607;
        Mon, 28 Sep 2026 06:40:44 -0700 (PDT)
X-Received: by 2002:a05:6a21:3301:b0:3dd:a197:cf2a with SMTP id
 adf61e73a8af0-3de0e9211e2mr13232889637.78.1790602844134; Mon, 28 Sep 2026
 06:40:44 -0700 (PDT)
MIME-Version: 1.0
References: <1789973573-151146-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1789973573-151146-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Mon, 28 Sep 2026 15:40:32 +0200
X-Gm-Features: AclHuK9sUfyIFRz6KpRG96cJdIw0_h7BlsY77sB9GJwOpGZD6WYoBk9TbbBZqLg
Message-ID: <CAPx+jO_EjZz+MQUUYrkBa42EAGun0Nb8rGrRfHg8HvawaL-tkw@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Small fixes and improvement for Rockchip
 pm-domains driver
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org
X-Proofpoint-GUID: KYMq_AQyHtt4r8qCe7qET2mIuBQpDa93
X-Authority-Analysis: v=2.4 cv=C7F8WgP+ c=1 sm=1 tr=0 ts=6aba6e5d cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=Um2Pa8k9VHT-vaBCBUpS:22 a=s8YR1HE3AAAA:8 a=i0__BfBF2mjEo0ecNoYA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: KYMq_AQyHtt4r8qCe7qET2mIuBQpDa93
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI4MDA1NCBTYWx0ZWRfX//rbVfEeaADk
 2OX44ZKnZOEBt9GFkKtr93UWRFTJUNWaX4Z0fixHnAH617XbfsAxtI5xgGWjZbGxdE6POgqImMy
 /NlTbhk7U8FSF6qWOSS0kfr2xSsix0Caiig0EHZwtVCAmeSqjCb3kGwph9Lf1T3uOkWYMVIxI4c
 Kv1MwiU08n1kwgjaL8aizmjnkJculNDoCwhqCKyvATMdvKjpYaPB2JTg03fXYTw8HjZDHp/iqkt
 65ZYgBERap1XBSeR3sQzmsUDGdRPKKfFj966pV9sdqVBQrModav+d6nPxHBHDUVnIGfQv5DMCpO
 mwbs1V1RgJAhRKz13LEK1lWW8ObyctQqR31LqemGYm/w5fKV4KY18Fjv9I88WvVEw/APeagZeVw
 4LOd3Kj/5I7GaLqGYAETqrpLG6sM21k5yZelYYnEgR1TM+Fr0MxAavhODbVqXa8ytjha4H4m69j
 k62rELL3qIp+bwZLH6w==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI4MDA1NCBTYWx0ZWRfX/BJuUoOvx/G8
 fItSf1QSr8kDvmeA26+QnFGRJJgF3UO/CumfqLuYEvBbyNRVuiiF7B68xjZ5LVjcRysCypxuaaO
 zRY71mlQoqkzTcMOvLC2VtPhfiBBDKo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-28_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 adultscore=0 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609280054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_064046_328047_D0A5ECF2 
X-CRM114-Status: GOOD (  16.04  )
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

T24gTW9uLCBTZXAgMjEsIDIwMjYgYXQgODo1M+KAr0FNIFNoYXduIExpbiA8c2hhd24ubGluQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPgo+Cj4gVGhlIGZpcnN0IDMgcGF0Y2hlcyBhcmUgZm9yIGZp
eGluZy4gQW5kIHRoZSBsYXN0IG9uZSBpcyBmb3IKPiBpbXByb3ZlbWVudC4KPgo+Cj4gQ2hhbmdl
cyBpbiB2MzoKPiAtIGRyb3AgdGhlIGRldm1fa2NhbGxvYygpIHRvIGRldm1fa3phbGxvYygpIHN3
aXRjaDsga2NhbGxvYygpIGFscmVhZHkKPiAgIHplcm9lcyB0aGUgYXJyYXkgYW5kIHRha2VzIGFu
IGVsZW1lbnQgY291bnQsIHdoaWxlIGRldm1fa3phbGxvYygpCj4gICBkb2VzIG5vdC4KPgo+IENo
YW5nZXMgaW4gdjI6Cj4gLSBhZGQgU2ViYXN0aWFuJ3MgdGFnCj4KPiBTaGF3biBMaW4gKDQpOgo+
ICAgcG1kb21haW46IHJvY2tjaGlwOiBwcm9wYWdhdGUgc3ViZG9tYWluIGFkZCBlcnJvcnMKPiAg
IHBtZG9tYWluOiByb2NrY2hpcDogZml4IGNsb2NrIGxlYWsgb24gZG9tYWluIHByb2JlIGZhaWx1
cmUKPiAgIHBtZG9tYWluOiByb2NrY2hpcDogZG9uJ3QgaWdub3JlIGNsb2NrIGxvb2t1cCBlcnJv
cnMgb24gYXR0YWNoCj4gICBwbWRvbWFpbjogcm9ja2NoaXA6IGRyb3AgZHVwbGljYXRlZCBlcnJu
byBmcm9tIHN1cHBseSBmYWlsdXJlIG1lc3NhZ2UKPgo+ICBkcml2ZXJzL3BtZG9tYWluL3JvY2tj
aGlwL3BtLWRvbWFpbnMuYyB8IDIyICsrKysrKysrKysrKysrKysrKy0tLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiAtLQo+IDIuNy40Cj4K
CkZyb20gdGhlIHYzLCBwYXRjaCAxLT4zIGFwcGxpZWQgZm9yIGZpeGVzIGJ5IGFkZGluZyBhIHN0
YWJsZSB0YWcgYW5kCnBhdGNoNCBmb3IgbmV4dCwgdGhhbmtzIQoKS2luZCByZWdhcmRzClVmZmUK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
