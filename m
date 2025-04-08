Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEB84C3600C
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Apr 2025 13:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNQZyctAwpMI/kDygITwE07i3z3uYZ5kliBR7YtOPUc=; b=uNThT+1FbTJgXD
	JuQEvl1CpYqRBvQmqdJ4ZDRL1vypWUkYUY80PVHeR+NjcETJD1Zlo/Fl9WmIxzzuOOU7RYxsZKCLZ
	c0NUOhjios8im2ORKV5ufrvBjDMhtLEalxQrGxXevQkmO/EgmEAZ2SWLaGAkrJ2tX8S3aMq6VDkB7
	/qK/GaiCoSrOV3uxuGlqVGs4MBajcZ9Tq8i59ib/LK6k47Z4/Q+mi8zXQfqUvFr7zLsvnpyl5PTWx
	yIgH4Hgdb5kEjYmJGPtFBWECqJdlZazhvwlZ32cqO+AEiPTm4W8ot65d9xOe6t7qhu6MDNfHoRRsz
	lSFGaKDe2K1pndcWlQ9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u291e-00000004D1W-0bhp;
	Tue, 08 Apr 2025 13:30:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u28Jj-000000041HF-0jCD
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Apr 2025 12:44:45 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 538AsvBT019579
	for <linux-rockchip@lists.infradead.org>; Tue, 8 Apr 2025 12:44:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lg3ZT4srw+6aryFi5Qc7G2dueXIKHeooH8YunyQ+fbw=; b=ovuATnNAylzikAyd
	WtOcoK/ivI0Z1bAvVeZIcWUM0vUOKBVIFq1RIDSG6DOTo6g14E4X/kfM8FHcayzZ
	60RyeWAWGrY1LETgrU1OQTE94j923Igv32/NuaYlTPz0Gh3dpN2pxPNWbmRjzjZ4
	KZADeWIh059zhZsxgvrI0UhKbjoY3wWAIkxwEU2UHENveZagtDZpmYjeoUdXzk6I
	CHx8mEf2FDsuI0V6lPCnKQCmmBYLzt9VczDOsESP4g7ql52bytZH5mtGUDKOlfD2
	ACwfVqCLTHX8nmSZOfUrvaG61wc0WvOXe9l4n3vXWZsPZY3ddxrLpuQSCrFWYNNT
	4qY+/w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twg3fr7m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 08 Apr 2025 12:44:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c548e16909so504195085a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Apr 2025 05:44:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744116277; x=1744721077;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lg3ZT4srw+6aryFi5Qc7G2dueXIKHeooH8YunyQ+fbw=;
        b=IkaKwJvx/C+8WacVEMezbvY2uR46yJX8WydUP/c4Kz3euz11nhez+2dzl0cWPPpO/b
         /I2PWpEzjFijLj1n8wf51NSH6Ka6McUfAHg0RA4ZB6UlyaWRxfcSAaXRDIGBSt/3VUVZ
         coBRZpxEKzyQBEJxVllz4mlqvOFB0EP0iJGBT1y39mPOZ8rhUggIiEQpTfW3iRrQVKww
         ald0oLDzo3LGOlAizsylKx9dkEiL6eWy6hfPLx4F+jVRZG0P2rgpCyD48JZp1+Z6DMNA
         vJVy7vHm1kRYM9tu+OYvhMjZ/D4boJy1tWXdKTLC8h0fBD6WY7dyzyCXw1zxipbNFL0r
         7r+g==
X-Forwarded-Encrypted: i=1; AJvYcCWG2PtTb2KmyTYEf1mBKe/y5QJYKVqM0zBEAKv7lpZsSEU0fz8nnBXdPm0wLopM6FSG7xg8ahXNDF2PWAAyjw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxgyKHtfWDp9NIU1OMaEj8xfPI69aQ81yDoTo4gAyfGuWOFxZvj
	u+XR6SklqXt+EEnccombto4vE51YAuZ9bNIAlqGejnuXUL6t97XJPnIqzAPt4CqpMENjkGf2/A/
	pEVh+0UsjWplqByjcLnPZ2tbqoPcKJkzRSZyvkLlS9hpc1EfIARme2HWfFXBYxN0rWIwfzOY=
X-Gm-Gg: ASbGncuR/c5OGeZibBInoB5+hx49wzN81kcilEHmKCxlv9n75XaFnmCDSxKlNpgS31H
	LvwjO8tsXVbsMaaAUX4gTO2Y7ynMt/rXLZikG+xuY2pztp9N8SzwQVBehKPDs+wyjYKmJnxUsk5
	DZqBaWB6XUssZCgHTJp0a8rEo/Lpb96m86Karo6cBeVUiHT/a4478VHq17hyCB5nfeM9O31oYBq
	0KOsDfnZ4Ze3M5VRYTLsDmfzs5laguf+4hGkEhy87D/98lS5fh0hZ3f3WHvyPMmV82YqIDh2xUs
	eYFYclXO6HVmcLYGCCRzKam703NUngCZgilPScFqlEakNdKYspeWvvVA4lb/OHplPft3YmTgcGB
	lP2Q=
X-Received: by 2002:a05:620a:1918:b0:7c5:9c38:ef6b with SMTP id af79cd13be357-7c775abfc97mr2255087585a.45.1744116276746;
        Tue, 08 Apr 2025 05:44:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEG22ST879wU1hj8qKN5DvkfkmnnORS8BpEMeXnfFTdBQ8zZsfg2IPMrVXraLLg9Li7ARcMaQ==
X-Received: by 2002:a05:620a:1918:b0:7c5:9c38:ef6b with SMTP id af79cd13be357-7c775abfc97mr2255084485a.45.1744116276401;
        Tue, 08 Apr 2025 05:44:36 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e6370d1sm1512901e87.143.2025.04.08.05.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 05:44:35 -0700 (PDT)
Date: Tue, 8 Apr 2025 15:44:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: Alex Bee <knaerzche@gmail.com>, heiko@sntech.de, conor+dt@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org, hjc@rock-chips.com,
        mripard@kernel.org, neil.armstrong@linaro.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v3 7/7] drm/rockchip: inno-hdmi: Convert to drm bridge
Message-ID: <yjxr7dphzm7rbuf7mfpkat4k2vssk2qxio3esvjfhd2ygq6byo@kag57knzrj4l>
References: <20250402123150.238234-1-andyshrk@163.com>
 <20250402123150.238234-8-andyshrk@163.com>
 <680a40a8-07c1-4dde-93b2-337ab15f7afe@gmail.com>
 <618c65eb.b8a8.1961550f5ae.Coremail.andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <618c65eb.b8a8.1961550f5ae.Coremail.andyshrk@163.com>
X-Proofpoint-GUID: _2mZGWh57jcjn1OyBmFxrJLVjMGtcmER
X-Proofpoint-ORIG-GUID: _2mZGWh57jcjn1OyBmFxrJLVjMGtcmER
X-Authority-Analysis: v=2.4 cv=I/9lRMgg c=1 sm=1 tr=0 ts=67f51a35 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=Byx-y9mGAAAA:8 a=pGLkceISAAAA:8 a=s8YR1HE3AAAA:8 a=RRhK3aCThXU4g2SLoiEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-08_04,2025-04-08_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 phishscore=0 suspectscore=0 mlxlogscore=999 lowpriorityscore=0 spamscore=0
 clxscore=1015 malwarescore=0 adultscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504080090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_054439_338601_A104E424 
X-CRM114-Status: GOOD (  27.82  )
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

T24gVHVlLCBBcHIgMDgsIDIwMjUgYXQgMDg6MTI6MjlQTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6
Cj4gCj4gCj4gSGkgQWxleO+8jAo+IAo+IEF0IDIwMjUtMDQtMDMgMDE6MjQ6MjIsICJBbGV4IEJl
ZSIgPGtuYWVyemNoZUBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+SGkgQW5keSwKPiA+Cj4gPj4g
RnJvbTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+ID4+IAo+ID4+IENvbnZl
cnQgaXQgdG8gZHJtIGJyaWRnZSBkcml2ZXIsIGl0IHdpbGwgYmUgY29udmVuaWVudCBmb3IgdXMg
dG8KPiA+PiBtaWdyYXRlIHRoZSBjb25uZWN0b3IgcGFydCB0byB0aGUgZGlzcGxheSBkcml2ZXIg
bGF0ZXIuCj4gPj4gCj4gPj4gU2lnbmVkLW9mZi1ieTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2st
Y2hpcHMuY29tPgo+ID4+IAo+ID4+IC0tLQo+ID4+IAo+ID4+IENoYW5nZXMgaW4gdjM6Cj4gPj4g
LSBGaXJzdCBpbmNsdWRlZCBpbiB2Mwo+ID4+IC0gTGluayB0byBWMjogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvZHJpLWRldmVsLzIwMjUwMzI1MTMyOTQ0LjE3MTExMS0xLWFuZHlzaHJrQDE2My5j
b20vCj4gPj4gCj4gPj4gICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL0tjb25maWcgICAgICAgICAg
ICAgICAgfCAgIDcgKwo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9NYWtlZmlsZSAgICAg
ICAgICAgICAgIHwgICAxICsKPiA+PiAgIC4uLi9pbm5vX2hkbWkuYyA9PiBicmlkZ2UvaW5uby1o
ZG1pLmN9ICAgICAgICB8IDkyNCArKysrKysrKysrLS0tLS0tLS0KPiA+PiAgIGRyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9LY29uZmlnICAgICAgICAgICAgICB8ICAgMSArCj4gPj4gICBkcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICAgICAgfCAgIDIgKy0KPiA+PiAgIGRy
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWktcm9ja2NoaXAuYyB8IDE4NyArKysrCj4g
Pj4gICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmggICAgICAgICAgfCAzNDkg
LS0tLS0tLQo+ID4+ICAgaW5jbHVkZS9kcm0vYnJpZGdlL2lubm9faGRtaS5oICAgICAgICAgICAg
ICAgIHwgIDMzICsKPiA+PiAgIDggZmlsZXMgY2hhbmdlZCwgNzQxIGluc2VydGlvbnMoKyksIDc2
MyBkZWxldGlvbnMoLSkKPiA+PiAgIHJlbmFtZSBkcml2ZXJzL2dwdS9kcm0ve3JvY2tjaGlwL2lu
bm9faGRtaS5jID0+IGJyaWRnZS9pbm5vLWhkbWkuY30gKDUyJSkKPiA+PiAgIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLXJvY2tjaGlwLmMKPiA+
PiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1p
LmgKPiA+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2RybS9icmlkZ2UvaW5ub19oZG1p
LmgKPiA+Pgo+ID4KPiA+Li4uCj4gPgo+ID4+ICsjZGVmaW5lIG1fUlhfRE9ORQkJCSgxIDw8IDAp
Cj4gPj4gKwo+ID4+ICsjZGVmaW5lIEhETUlfQ0VDX1RYX0lOVAkJCTB4ZGEKPiA+PiArI2RlZmlu
ZSBIRE1JX0NFQ19SWF9JTlQJCQkweGRiCj4gPj4gKyNkZWZpbmUgSERNSV9DRUNfQlVTRlJFRVRJ
TUVfTAkJMHhkYwo+ID4+ICsjZGVmaW5lIEhETUlfQ0VDX0JVU0ZSRUVUSU1FX0gJCTB4ZGQKPiA+
PiArI2RlZmluZSBIRE1JX0NFQ19MT0dJQ0FERFIJCTB4ZGUKPiA+PiArCj4gPj4gICBzdHJ1Y3Qg
aW5ub19oZG1pX2kyYyB7Cj4gPj4gICAJc3RydWN0IGkyY19hZGFwdGVyIGFkYXA7Cj4gPj4gICAK
PiA+PiBAQCAtNjgsNDEgKzM5NSwxOCBAQCBzdHJ1Y3QgaW5ub19oZG1pX2kyYyB7Cj4gPj4gICAK
PiA+PiAgIHN0cnVjdCBpbm5vX2hkbWkgewo+ID4+ICAgCXN0cnVjdCBkZXZpY2UgKmRldjsKPiA+
PiAtCj4gPj4gKwlzdHJ1Y3QgZHJtX2JyaWRnZSBicmlkZ2U7Cj4gPj4gICAJc3RydWN0IGNsayAq
cGNsazsKPiA+PiAgIAlzdHJ1Y3QgY2xrICpyZWZjbGs7Cj4gPj4gICAJdm9pZCBfX2lvbWVtICpy
ZWdzOwo+ID4+ICAgCXN0cnVjdCByZWdtYXAgKmdyZjsKPiA+PiAgIAo+ID4+IC0Jc3RydWN0IGRy
bV9jb25uZWN0b3IJY29ubmVjdG9yOwo+ID4+IC0Jc3RydWN0IHJvY2tjaGlwX2VuY29kZXIJZW5j
b2RlcjsKPiA+PiAtCj4gPj4gICAJc3RydWN0IGlubm9faGRtaV9pMmMgKmkyYzsKPiA+PiAgIAlz
dHJ1Y3QgaTJjX2FkYXB0ZXIgKmRkYzsKPiA+PiAtCj4gPj4gLQljb25zdCBzdHJ1Y3QgaW5ub19o
ZG1pX3ZhcmlhbnQgKnZhcmlhbnQ7Cj4gPj4gKwljb25zdCBzdHJ1Y3QgaW5ub19oZG1pX3BsYXRf
ZGF0YSAqcGxhdF9kYXRhOwo+ID4+ICsJdW5zaWduZWQgaW50IGNvbG9yaW1ldHJ5Owo+ID4KPiA+
dGhhbmtzIGEgbG90IGZvciBkb2luZyB0aGUgYnJpZGdlIGNvbnZlcnNpb24gZm9yIHRoaXMgZHJp
dmVyLgo+ID5QbGVhc2Uga2VlcCB0aGUgY3VzdG9tIGNvbm5lY3RvciBzdGF0ZSB3aGljaCB3YXMg
aW50cm9kdWNlZCBhZnRlciBNYXhpbSdzCj4gPnJldmlldyBkdXJpbmcgdGhlIGxhc3QgcmV3b3Jr
IG9mIHRoaXMgWzBdIGRyaXZlci4gVGhlIGNvbG9yaW1ldHJ5IGlzIG5vdAo+ID5wYXJ0IG9mIHRo
ZSBkZXZpY2UsIGJ1dCBvZiB0aGUgY29ubmVjdG9yIGFuZCB0aHVzIHNob3VsZCBub3QgYmUgcGFy
dCBvZiB0aGUKPiA+ZGV2aWNlIHN0cnVjdC4KPiA+SXQncywgaG93ZXZlciwgbGlrZWx5IHRoYXQg
dGhlIGNvbW1vbiAoaGRtaS0pY29ubmVjdG9yIGZyYW1ld29yayB3aWxsIG9uY2UKPiA+aG9sZCBp
dHMgb3duIGNvbG9yaW1ldHJ5IHByb3BlcnR5IGFuZCB0aGVuIHRoZSBjdXN0b20gY29ubmVjdG9y
IHN0YXRlIGluCj4gPnRoaXMgZHJpdmVyIGNhbiBnbyBhd2F5LCBidXQgdW50aWwgdGhhbiB3ZSBo
YXZlIHRvIGtlZXAgaXQgaGVyZS4KPiAKPiBBZnRlciBjb252ZXJ0aW5nIHRvIGEgYnJpZGdlIGRy
aXZlciwgdGhpcyBkcml2ZXIgbm8gbG9uZ2VyIGhhcyBhIGNvbm5lY3Rvci4gCj4gSW4gdGhpcyBj
YXNlLCBob3cgc2hvdWxkIEkgY3JlYXRlIGN1c3RvbWl6ZWQgY29ubmVjdG9yIHN0YXRlcz8KCllv
dSBjYW4gc3ViY2xhc3MgZHJtX2JyaWRnZV9zdGF0ZS4gQW5vdGhlciBvcHRpb24gaXMgdG8gZm9s
bG93CnJrMzA2Nl9oZG1pLmMgYW5kIHRvIHBhc3MgbW9kZSB0byBpbm5vX2hkbWlfY29uZmlnX3Zp
ZGVvX2NzYygpLgpGaW5hbGx5LCB5b3UgY2FuIGp1c3QgZXh0ZW5kIHRoZSBkcm1fY29ubmVjdG9y
X2hkbWlfc3RhdGUuCgpNeSBwcmVmZXJlbmNlIHdvdWxkIGxlYW4gdG93YXJkcyB0aGUgc2Vjb25k
IG9wdGlvbi4KCj4gCj4gPgo+ID5UaGFua3MsCj4gPkFsZXgKPiA+Cj4gPlswXQo+ID5odHRwczov
L3dlYi5naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGlu
dXguZ2l0L2NvbW1pdC8/aWQ9Y2VlYjBmMDEwNGE2MmM4Njc2NTZjMjczMGE1MWRmNDdlNzM1MGI4
Zgo+ID4KPiA+Cj4gPj4gICB9Owo+ID4+ICAgCj4gPj4gLXN0cnVjdCBpbm5vX2hkbWlfY29ubmVj
dG9yX3N0YXRlIHsKPiA+PiAtCXN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlCWJhc2U7Cj4gPj4g
LQl1bnNpZ25lZCBpbnQJCQljb2xvcmltZXRyeTsKPiA+PiAtfTsKPiA+PiAtCj4gPj4gLXN0YXRp
YyBzdHJ1Y3QgaW5ub19oZG1pICplbmNvZGVyX3RvX2lubm9faGRtaShzdHJ1Y3QgZHJtX2VuY29k
ZXIgKmVuY29kZXIpCj4gPj4gLXsKPiA+PiAtCXN0cnVjdCByb2NrY2hpcF9lbmNvZGVyICpya2Vu
Y29kZXIgPSB0b19yb2NrY2hpcF9lbmNvZGVyKGVuY29kZXIpOwo+ID4+IC0KPiA+PiAtCXJldHVy
biBjb250YWluZXJfb2YocmtlbmNvZGVyLCBzdHJ1Y3QgaW5ub19oZG1pLCBlbmNvZGVyKTsKPiA+
PiAtfQo+ID4+IC0KPiA+PiAtc3RhdGljIHN0cnVjdCBpbm5vX2hkbWkgKmNvbm5lY3Rvcl90b19p
bm5vX2hkbWkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiA+Li4uCgotLSAKV2l0
aCBiZXN0IHdpc2hlcwpEbWl0cnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
