Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B2B3C9830B
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 12:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+WaVZVC79Uerw1k05zh5vz9ss5bBtprwpHckCTdJdWM=; b=fLc4Ukj60Qg14M
	hMCgBXCXmxbKyyZloLF2q/U9K+hbIk+asarrUE1MvVaMf9Mmds9H0BuoCxzip3PtxxZtZhvACvyvD
	3oHUSFYAJq9j/RJxIjrBVPZQwzoKIP06P55KTg8q/bOJdQEg0G/S3wsZCXBvE+i/61R/Ka+znVMoF
	52tNaktXhDVSQCJpYe5berjchrazi+00EILsr8ghQeY+SwfpTKO7GfEKIFMs7E7vY2zMleQpcrxkq
	t2SirjJh4qvV9u/oPJbXK7dCdD+cmIDMD7xwVWmCnzZJ1YlXOct78YRgyo9p4bm40BwSvxO01htoQ
	vfNBjzyMzHHrHnANaCWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9LsW-00000008DVX-3xqe;
	Wed, 23 Sep 2026 12:15:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9LsU-00000008DUe-1tFA
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 12:15:11 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68NBbW1G3027997
	for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 12:15:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Fktn/LhG8dTvstUPUwN7AN5xYcPEg9UCV2BzUJUfCOM=; b=I3u/C6KaUblZKqAR
	F3O2Vg+wFPJbGyQWEilq04IXNQnOmF9aTZdjWIsNXr4/ZQc2/YsVmT3sQTn4k4ZF
	tiz3peVkcm/yU4hlixEV+qip7Yk5L3AKW1sERvl0ATc05g1HKcAarfymTZW9N6PV
	756n0XbUkiS1ZR4Dyb4d14BYpl4byE1NHePbTzPS/Njz+IfuhvVvyKZzYO/GOoYu
	HGj3N9oMQ0xv5Ag/YGCPnmsIm6hjmQRl0SGMCXugsTO0WrOmOcUR9hE+DwhxgwYj
	Iaf+yGPztP9iwBJ7BUxbUJbuRG8vklr3I0CGej0kCsLenFaDIOVYb1mnQoTsSK/W
	HjqjLA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gvbwarqv9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 12:15:08 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-398dcfabbf8so1992943a91.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 05:15:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790165707; cv=none;
        d=google.com; s=arc-20260327;
        b=UgIqsA/GyNBs4HVFSY+YVWuNf6LTnjF9b79q9PvPxvogeeD6jdeZplznj2pdurnERy
         sJ/uTI8YeYO77I9oMUAy4nQt+hFzbCOW8aDXHJO49fc6ISfYGHutxw48oMjJmi8LNw6B
         Fe8xXTBA7Pwf1ottG4HKTJpF+TX6Q6Vrq5VQcdfjs5k9VYUdB9x9iIz1uIOtdnuxTAGV
         uDScJ5tDAlN7kcBaozcm96bdr3QH6GLMeg7vb8PtH9YAZldBKX601MXAPP0XZfP21vRV
         nwAUhK0pH/6qwQVF45ImHJ+UjII1zzrIVLvXzd5BG3+7I5EVlm+smlds8JHQHryUC7o7
         AdEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Fktn/LhG8dTvstUPUwN7AN5xYcPEg9UCV2BzUJUfCOM=;
        fh=pLl7vXqbK2BnZp2VZjLTtCod2r8fCRcDBaz1kG7D1po=;
        b=lvjlwDj3rzCkvjTNcKf5YQJFVj3hzvct+7GAlpXhBo0m3ofo1houmcu9cSN5EkbjTl
         vbp5K5tNTqF2VucaU9a0E8+X62XNTlqlVumMZeyc3Fm3Rbiv5x8uONWvhrdxM41bgP0o
         SpBcU2QXHZqVHXWz3+QKtNSyi0G/uAo/pO3m30pCXzZ2XBFJg5FGClALpgzLl2iuC7t5
         7fxU4NSYIAgZPaj49RGHoAhhkdUazrkEXfQ0+ecwhCGPkVILB/WfnzQxttkk/RrXFH/p
         2rCFFSMpdfbrQygSfODxp8g2U1z6nYhpGWCZ+tbDB8475T0Ahve8VhbsB3R8gLzR/Xe7
         uuQA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790165707; x=1790770507; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Fktn/LhG8dTvstUPUwN7AN5xYcPEg9UCV2BzUJUfCOM=;
        b=VzRSM5ovoQ6u2Edleig3PrYrJL9Yw2iM5odOYQrw0rM95JBwGILLpNxx+G4j/v4kRW
         UsuMDPGPy31swEyEK/kIgsUzZn0px23I6wEBGyR1kTc6n5URSIR3z3O9m+aXcaznSzJc
         a8Qi1cMSvfk21WdxrpaPdj07kLzu7P3q1xqnCpR6BoWYWmw2SCuoOxWxsPhaZMbCjZCv
         whxhBoRIihrXbj42gOe2L1VcW8KVI2fkB44lTAb6joKOqxcpmdB6RZATjhlAKDDi5OJ/
         L//kowcOS96aTJQWzy3tfL4AGUBFYbWmXDiUmBKFbshUq/9xRuSFL9YhQqYT8hF3sSer
         jl8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790165707; x=1790770507;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Fktn/LhG8dTvstUPUwN7AN5xYcPEg9UCV2BzUJUfCOM=;
        b=LYSwj0MpCEQpp4Oz+XvgGrLlZPFoZFW7bp2GMdU2c6rwXpEBubrSnBsMjGZJ2Byzk7
         Sqh2Edc2LAgtlTB9rZgmNcJSlKfdR/r0wntNczh+YzC2+vmMzLOEfk7nbC4GvHKhikJE
         rGKX1hprw5eWP2nP9iI85SMlZSpNbl2fUNlbUPqxGtWLuJhdxMSDSq/uNMiWWZNC/RUK
         yijFjUxFxMxMwvFSvcxKZhL+PccjfhqLxAyMT2WGhqS1MIEJirP9a06JXk1zrbxPAH2r
         hn6Hc0E4SvBdYsh2aBz9nkk4Aa6ra8Rno1Bx89tMIoy8atGlE1pteUhDcHEdPzVH+T4U
         ckRg==
X-Forwarded-Encrypted: i=1; AKwUvBypqwHMVjWAYlaIYO6WNbjhsPZy6O9SvoDaIkoMU1gZ0e4KOlt4T9PF5mlYbaLuxkZKZVGGyggKKaG6kCSVrA==@lists.infradead.org
X-Gm-Message-State: AFuF++mtC5JNLZji9v/q1VrV3KRS+x6Hzgzue6BqW2gOzB0ZQIWJYCEs
	kck4mKA2YS5v1NniW/RnTCrDGftA6QTE8veReVnUK53yIJrO+IeKziKO4BOT/ecl3dfZurPfyN7
	qFNCC68y1vNRKBX11KrTJ69bOFCGz3W30+pNbN0ysAEHiFO/FjlVkyhZS8H97R/Kja2VFmmFmTC
	jchjFDZizsH0nCAXW5gnbtg1SrKPzNcL7AoqczXeEwf9ER26Fo2w==
X-Gm-Gg: AYBFou1LwFLY25Ul0cPALuf8mAYfITMs7jtLqzCJneWkEWx3RGRkXw2hKsJ2t4KgUus
	BKhsYxQR43NThq3x0g2IynUMXgThI5vLnqVBAl7tMmAfkjTJBCihd51W91n+znj3ynGqfhMqVJr
	bR0W7qw3Sip8jkUua/O9uG9WgQwWOidv1UxsCniEWpLb9AvDFrtNPXEL61lQ==
X-Received: by 2002:a17:90b:5150:b0:39e:4c81:6c99 with SMTP id 98e67ed59e1d1-3a07e6427d3mr2204049a91.31.1790165707438;
        Wed, 23 Sep 2026 05:15:07 -0700 (PDT)
X-Received: by 2002:a17:90b:5150:b0:39e:4c81:6c99 with SMTP id
 98e67ed59e1d1-3a07e6427d3mr2204025a91.31.1790165706997; Wed, 23 Sep 2026
 05:15:06 -0700 (PDT)
MIME-Version: 1.0
References: <20260920175928.42566-1-s.shtylyov@auroraos.dev>
In-Reply-To: <20260920175928.42566-1-s.shtylyov@auroraos.dev>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Wed, 23 Sep 2026 14:14:55 +0200
X-Gm-Features: AcwNN1XX2TwqwRb1ZoRjaB9CUImpJjiTV5b_h3ECFgJFj0KO-kS0Qy6oSUUekgQ
Message-ID: <CAPx+jO-Ph038WJQ4gMH93XzoMC09+meht=yT9JQBAnTD6HzGEg@mail.gmail.com>
Subject: Re: [PATCH] pmdomain: rockchip: fix domain check in rockchip_pm_add_one_domain()
To: Sergey Shtylyov <s.shtylyov@auroraos.dev>
Cc: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Caesar Wang <wxt@rock-chips.com>, Kevin Hilman <khilman@linaro.org>,
        linux-arm-kernel@lists.infradead.org
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDA0OCBTYWx0ZWRfX708Z2VMeD0w0
 r8xgqfl14EIgiyV8zc7XPEJv3gnO86rbRnjE7xo0NMzRSb1tlqC80T/Di/2YHKY3GdYJ8SoW2dN
 HzH3QBJT1qUyQG+KnCsxKkN+5iY8WxwfZugi8l7cSLPnrjPHYSm9IGMJN1fC+G18jo61Y9Q6nMl
 +n7r6asIwSfXAhr66TD2F9lsKONE414sItPOGco4y8eIeyhHikOmnVSXfHQhTXTkWAUpOJTdOGx
 bdlUJwmhKWK3m+n2BKeXe3B+wqXc+ww/sdlACy47HJljcvNBvBlGU3YLGTWJvRAduDxjfsijoQT
 WHiiBRDj+U1AmFlceipRmQFJaQsZoVk5rN+nj0QjbQS61v1vpFwpcHOd6KMvEoWZFVdzluLZgDf
 plcT9adxh9yrCIX+0uLAfD13Hdh4lIeAJlgywbWiumejK7PioUw3TjgDuJonpmMLZ/Z6tqFvSw6
 OQfNnax7friJh/iO7ww==
X-Authority-Analysis: v=2.4 cv=HfuB3SE8 c=1 sm=1 tr=0 ts=6ab3c2cc cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=ZpdpYltYx_vBUK5n70dp:22 a=HH5vDtPzAAAA:8 a=9fon7Y1cHxUUJadseLkA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22 a=QM_-zKB-Ew0MsOlNKMB5:22
X-Proofpoint-GUID: 7KklOFx_3_90FsLWwI-ZxIj0uj6S6ZJv
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDA0OCBTYWx0ZWRfXxKNjtOSh2qY5
 EgUWq8l/Ze5ac6SueQ+h48HMBpU0RA1/ZeTToqwuWza3TfUalGYriKMugJEHmYGW871CGtOiMZr
 PQdxsNGUf3sYVf0/nBaSvQcpB2mlZBM=
X-Proofpoint-ORIG-GUID: 7KklOFx_3_90FsLWwI-ZxIj0uj6S6ZJv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-23_04,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609230048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_051510_609599_23BAF9DB 
X-CRM114-Status: GOOD (  24.68  )
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

T24gU3VuLCBTZXAgMjAsIDIwMjYgYXQgODowMOKAr1BNIFNlcmdleSBTaHR5bHlvdiA8cy5zaHR5
bHlvdkBhdXJvcmFvcy5kZXY+IHdyb3RlOgo+Cj4gSW4gcm9ja2NoaXBfcG1fYWRkX29uZV9kb21h
aW4oKSwgdGhlcmUncyB0aGUgY2hlY2sgKG1vc3QgcHJvYmFibHkgZm9yCj4gdGhlIGNhc2Ugd2hl
cmUgdGhlICJyZWciIHByb3AgaGFzIGFuIHVuZXhwZWN0ZWQgdmFsdWU/KSB3aGljaCBkb2Vzbid0
Cj4gbWFrZSBtdWNoIHNlbnNlIGFzIHRoZSB2YXJpYWJsZSBwZF9pbmZvIHdpbGwgYmUgTlVMTCBp
ZmYgcG11LT5pbmZvLT4KPiBkb21haW5faW5mbyBpcyBOVUxMIGFuZCB0aGUgdmFyaWFibGUgaWQg
aXMgMC4gIFdoYXQgZG9lcyBtYWtlIHNlbnNlCj4gdGhlcmUgaXMgY2hlY2tpbmcgcGRfaW5mby0+
cHdyX21hc2sgYW5kIHBkX2luZm8tPnJlcV9tYXNrIHdoaWNoIChhcwo+IHNlZW1zIHRvIGZvbGxv
dyBmcm9tIHRoZSBjb2RlKSBjYW4ndCBib3RoIGJlIDAgZm9yIGEgdmFsaWQgZG9tYWluLi4uCj4K
PiBGb3VuZCBieSBMaW51eCBWZXJpZmljYXRpb24gQ2VudGVyIChsaW51eHRlc3Rpbmcub3JnKSB3
aXRoIHRoZSBTdmFjZQo+IHN0YXRpYyBhbmFseXNpcyB0b29sLgo+Cj4gRml4ZXM6IDdjNjk2Njkz
YTRmNSAoInNvYzogcm9ja2NoaXA6IHBvd2VyLWRvbWFpbjogQWRkIHBvd2VyIGRvbWFpbiBkcml2
ZXIiKQo+IFNpZ25lZC1vZmYtYnk6IFNlcmdleSBTaHR5bHlvdiA8cy5zaHR5bHlvdkBhdXJvcmFv
cy5kZXY+CgpBcHBsaWVkIGZvciBuZXh0LCBidXQgd2l0aG91dCB0aGUgZml4ZXMgdGFnLCB0aGFu
a3MhCgpOb3RlLCB0aGF0IEkgYW0gZHJvcHBpbmcgdGhlIGZpeGVzIHRhZyBiZWNhdXNlIGlmIHRo
ZXJlIHdhcyBhIHJlYWwKcHJvYmxlbSwgd2Ugd291bGQgcmVxdWlyZSB5ZXQgYW5vdGhlciBmaXgg
b24gdG9wIHRvIGdldCB0aGUKY29ycmVzcG9uZGluZyBkb21haW4gZGVjbGFyYXRpb24gdG8gYmUg
Y29ycmVjdC4gWWV0LCB0aGUgcGF0Y2ggaXMKdXNlZnVsIGFzIGlzIQoKS2luZCByZWdhcmRzClVm
ZmUKCgo+Cj4gLS0tCj4gVGhpcyBwYXRjaCBpcyBhZ2FpbnN0IHRoZSBmaXhlcyBicmFuY2ggb2Yg
VWxmIEhhbnNzb24ncyBsaW51eC1wbS5naXQgcmVwby4KPgo+ICBkcml2ZXJzL3BtZG9tYWluL3Jv
Y2tjaGlwL3BtLWRvbWFpbnMuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbWRvbWFpbi9yb2Nr
Y2hpcC9wbS1kb21haW5zLmMgYi9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMu
Ywo+IGluZGV4IGJhNjZhZTcxOTQyOC4uNjk3OTJlMmIyMTViIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jCj4gKysrIGIvZHJpdmVycy9wbWRvbWFp
bi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPiBAQCAtODA5LDcgKzgwOSw3IEBAIHN0YXRpYyBpbnQg
cm9ja2NoaXBfcG1fYWRkX29uZV9kb21haW4oc3RydWN0IHJvY2tjaGlwX3BtdSAqcG11LAo+ICAg
ICAgICAgICAgICAgICByZXR1cm4gMDsKPgo+ICAgICAgICAgcGRfaW5mbyA9ICZwbXUtPmluZm8t
PmRvbWFpbl9pbmZvW2lkXTsKPiAtICAgICAgIGlmICghcGRfaW5mbykgewo+ICsgICAgICAgaWYg
KCFwZF9pbmZvLT5wd3JfbWFzayAmJiAhcGRfaW5mby0+cmVxX21hc2spIHsKPiAgICAgICAgICAg
ICAgICAgZGV2X2VycihwbXUtPmRldiwgIiVwT0ZuOiB1bmRlZmluZWQgZG9tYWluIGlkICVkXG4i
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgIG5vZGUsIGlkKTsKPiAgICAgICAgICAgICAgICAg
cmV0dXJuIC1FSU5WQUw7Cj4gLS0KPiAyLjU1LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
