Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F298CAC5AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Sep 2025 03:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOLAK++ROLM+Y0Ya6wr6AEOw/XOG9yxjKoNSO8frGEU=; b=jiiTyAy+VOTl0z
	vHwSDrZj5Bu/I2uBGd6lELSD9L5yCSK/3tMSeWLoJt8CY5PXucS/jcHjHCbfSi/mkVShmVW7kI/Io
	ckToE0jVd+ThBiRUyDA3pyuryG/w+51vaWQUQ6GTCE7lyfenNSPo7fUvcI3fZf9qmPK0/bA8n5z47
	wKq4tqIoMKQKyVUUoEFaXHLuRJt3sHBk/Lt8q0xwK0ifLtWhYBQSIDAsGJVKH+ifBT1ph2vJsQWOb
	pJg6Gg5CedfXTJWFIUSRJim0y5OroCnMTOrv+hwPSQ0L0MbreYeFV2+ZJn4VabK4PWxcJYQA8l4r0
	VorXdKaz2s+xLDWvoy+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0tbZ-0000000CE7n-3V3w;
	Tue, 23 Sep 2025 03:22:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0tbX-0000000CE6P-1jED
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Sep 2025 03:22:12 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MIDKQ8029098
	for <linux-rockchip@lists.infradead.org>; Tue, 23 Sep 2025 03:22:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oUnJ2CE0BnHDgBWcL76+TzXIrZ4HxTgehwBTbISxmcE=; b=kpMoLxaw5pxOjYcc
	CKzOGh6j55O1iok4v8USxkJW92/TEHIvWEMIX2HoCD+QyCNCKQTMWZFBCR6vsjDO
	mVO1uo8lPfJuI2O6eAFfXYgU/aSZHZ7rAFeOPKx3QxxydcsQj4fsPjwwZN0CwP2Q
	CXbX42afkayRcQwlSti38gjZN3+aciVwO1eRvdh8JBL13zdiLuxLrDIXFXP3yBXr
	S8K+Yk6HS9tE34d4EJYkCCP0ogAbwWWAwr0cZpuMN3IELugNUWvM81LB2MWI9YX8
	Oc1Z+yIcC7wzetn+4IEBU0Ck/a9GCTtrCg4cydfqaE+BFgmzn1nTEpTiliahtu3N
	amQ9kA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kk2ugc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 23 Sep 2025 03:22:10 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b5ee6cd9a3so104625021cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Sep 2025 20:22:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758597727; x=1759202527;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oUnJ2CE0BnHDgBWcL76+TzXIrZ4HxTgehwBTbISxmcE=;
        b=KAuZolZ+9VoyDw1lDpprQtUIY7kRq0iAyIQ49l48+3/WHoB0sxcIAPgJGfz/hXLWnS
         n3vuLawr+P8i13nFzqfpvzxVT7GuG08Jj/bT5WsjZPQl4ZVmxNQVpysu2lYCICiX+xy4
         /90XszpsgOVB+YhtCLiQDMVkElLYIu8LN30ACVKl3jDmziORWJiKV3Yu9V1jn7t8gfse
         loURh9WxbqbDzKnmMIILcnSHQcOn7+D6ZgYdfbTt5D4CLCT50qLqWMF93yPOyfXasmip
         +nckgc92RHPLsxT7cXkiwfBGjrvFSRCGnE12NZpvqyPCwHSOYlSkhmPDoGARO5bfqXog
         RCFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUa1weneRTTIrqo+wa2Ros7qV+uvHf3/gJ0WRMBv18cF9K+E1RTwEjHA7gqrPTTkpLTibjceEJtuON4ME5LSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YypTJinjDqJhUlRpGpXNxQFzyRD2xg8GMkHz7egdhEfpQh5yFSY
	nsFf03Wdv9rfUIU/WAaTAdgPAcRr6LjAsyxaVy1TkQLbLN+eqyWf/H3a3cricyPk+npufgz8L9e
	oG0eQI9BkjAfIY+kquZsOawfRnQWX1oRv2pCdm0Y0gQBXBVNWOsrtPzqBM/UgOZQPp83q0ENRJy
	g=
X-Gm-Gg: ASbGncsbQR/VmCl6/PNxEyKt3xIIsrQ4cYs6M6eAagEj6DpFrwcoaoENo9FvspsIMl4
	hcH2Ks70kp2DTSiXIRxgowHrS6sOyNJn7T8KpgmW8YAIqM6fsv8BnoPPEz9AE5/KMJZNnsQAP5D
	m6AlOXo6XcpbnKO+YRoXcW6x5M00ojM/xJ2vrURKNy/H54M9tUZUFDINDFdIUCkGEJGeVAfljUQ
	X4bsfzLlrHSthwYjhE+iIC9cqoQSU1YqOXZAdJ4NJOS5S6WxpFCPufTKbwuGF27AUCzoAvOrXTV
	c46mLb4D/akoVw5HsuYHGUn3PsxwQNbp6zK54OLhcKAm+qiPuRbXz4wPOn1xzkbJIle6/IcYTa4
	OU64bpSw5Zipz7bLmNloIZoe6ZlKrel4Vm3/hiQrGxcuSAzYkLPak
X-Received: by 2002:a05:6214:19cc:b0:78b:e6ac:7169 with SMTP id 6a1803df08f44-7e7131d6edbmr13878226d6.32.1758597726891;
        Mon, 22 Sep 2025 20:22:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIgFDuQXlz78aQgFJIuN6m1QzDuD7QbClf/2Di5vm32tNyLwxeGQHA2RXdv8rX7kJSHv2lUw==
X-Received: by 2002:a05:6214:19cc:b0:78b:e6ac:7169 with SMTP id 6a1803df08f44-7e7131d6edbmr13877966d6.32.1758597726347;
        Mon, 22 Sep 2025 20:22:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a8fad2b6sm3799691e87.69.2025.09.22.20.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 20:22:05 -0700 (PDT)
Date: Tue, 23 Sep 2025 06:22:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 5/7] drm/rockchip: cdn-dp: Add multiple bridges to
 support PHY port selection
Message-ID: <3n6gvt2lcf24smt6njiqoqt5h4733z36hwvc2zfyft62d25uu5@vwl26mmsfzbz>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-6-kernel@airkyi.com>
 <idyrlzhd5sotg3ylr7vbwmczimglffc75nafxbnhhm3ot2jn4w@ixerm6elfmre>
 <e10484e2-fafb-4e50-866f-f409c12259a5@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e10484e2-fafb-4e50-866f-f409c12259a5@rock-chips.com>
X-Proofpoint-GUID: hWYaCqwY5Dmmpfa6JUX35Rfpr1jLfelC
X-Proofpoint-ORIG-GUID: hWYaCqwY5Dmmpfa6JUX35Rfpr1jLfelC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX3suWyT7wFhnt
 FHBLDbZbnk0UFBVDiWCgOMvAtZ66imkkRo5Mr9F2TsJgYnsHLwKo7bQl4iLkdCKbKmK5ZAhF45/
 glcPGXBz+bWioJ/Z5th/uskj4Ojda5/CiMbqX0mpkQkQIxTHjXXcZC5OJjd/6xVZx2EgF8r9L0N
 JlsXtOtBViHKhmZJ2TRfoJygBepAryd5mQPuBmm7u9RVoFMk5u/nFqQDDdygXjaXA/9aVqCogBQ
 j1O8j/lK7wPaIJIe1B47FuXxHFir8A+wNp6VfAfKXg0/mX/DdaaU77eoJrcv4QN4MnKXOcaITmR
 ydITdWGvl6Vpd5iRRtTIbSBlkMyNtP+adGbjXvfXONNhoRkLpYiDQrSGNEBLG0GwL4EMzQB7Uja
 U9qfWXCQ
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d21262 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=O6fFDK9WeBrGYpzTqrUA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_01,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_202211_564422_9BBBCA9C 
X-CRM114-Status: GOOD (  54.38  )
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

T24gVHVlLCBTZXAgMjMsIDIwMjUgYXQgMTA6MDk6MzhBTSArMDgwMCwgQ2hhb3lpIENoZW4gd3Jv
dGU6Cj4gT24gOS8yMy8yMDI1IDk6NTAgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gCj4g
PiBPbiBNb24sIFNlcCAyMiwgMjAyNSBhdCAwOToyMDozN0FNICswODAwLCBDaGFveWkgQ2hlbiB3
cm90ZToKPiA+ID4gRnJvbTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29t
Pgo+ID4gPiAKPiA+ID4gVGhlIFJLMzM5OSBoYXMgdHdvIFVTQi9EUCBjb21ibyBQSFkgYW5kIG9u
ZSBDRE4tRFAgY29udHJvbGxlci4gQW5kCj4gPiA+IHRoZSBDRE4tRFAgY2FuIGJlIHN3aXRjaGVk
IHRvIG91dHB1dCB0byBvbmUgb2YgdGhlIFBIWXMuIElmIGJvdGggcG9ydHMKPiA+ID4gYXJlIHBs
dWdnZWQgaW50byBEUCwgRFAgd2lsbCBzZWxlY3QgdGhlIGZpcnN0IHBvcnQgZm9yIG91dHB1dC4K
PiA+ID4gCj4gPiA+IFRoaXMgcGF0Y2ggYWRkcyBzdXBwb3J0IGZvciBtdWx0aXBsZSBicmlkZ2Vz
LCBlbmFibGluZyB1c2VycyB0byBmbGV4aWJseQo+ID4gPiBzZWxlY3QgdGhlIG91dHB1dCBwb3J0
LiBGb3IgZWFjaCBQSFkgcG9ydCwgYSBzZXBhcmF0ZSBlbmNvZGVyIGFuZCBicmlkZ2UKPiA+ID4g
YXJlIHJlZ2lzdGVyZWQuCj4gPiA+IAo+ID4gPiBUaGUgY2hhbmdlIGlzIGJhc2VkIG9uIHRoZSBE
Uk0gQVVYIEhQRCBicmlkZ2UsIHJhdGhlciB0aGFuIHRoZQo+ID4gPiBleHRjb24gYXBwcm9hY2gu
IFRoaXMgcmVxdWlyZXMgdGhlIERUIHRvIGNvcnJlY3RseSBkZXNjcmliZSB0aGUKPiA+ID4gY29u
bmVjdGlvbnMgYmV0d2VlbiB0aGUgUEhZLCBVU0IgY29ubmVjdG9yLCBhbmQgRFAgY29udHJvbGxl
ci4KPiA+ID4gQW5kIGNkbl9kcF9wYXJzZV9ocGRfYnJpZGdlX2R0KCkgd2lsbCBwYXJzZXMgaXQg
YW5kIGRldGVybWluZXMKPiA+ID4gd2hldGhlciB0byByZWdpc3RlciBvbmUgb3IgdHdvIGJyaWRn
ZXMuCj4gPiA+IAo+ID4gPiBTaW5jZSB0aGVyZSBpcyBvbmx5IG9uZSBEUCBjb250cm9sbGVyLCBv
bmx5IG9uZSBvZiB0aGUgUEhZIHBvcnRzIGNhbgo+ID4gPiBvdXRwdXQgYXQgYSB0aW1lLiBUaGUg
a2V5IGlzIGhvdyB0byBzd2l0Y2ggYmV0d2VlbiBkaWZmZXJlbnQgUEhZcywKPiA+ID4gd2hpY2gg
aXMgaGFuZGxlZCBieSBjZG5fZHBfc3dpdGNoX3BvcnQoKSBhbmQgY2RuX2RwX2VuYWJsZSgpLgo+
ID4gPiAKPiA+ID4gVGhlcmUgYXJlIHR3byBjYXNlczoKPiA+ID4gCj4gPiA+IDEuIE5laXRoZXIg
YnJpZGdlIGlzIGVuYWJsZWQuIEluIHRoaXMgY2FzZSwgYm90aCBicmlkZ2VzIGNhbgo+ID4gPiBp
bmRlcGVuZGVudGx5IHJlYWQgdGhlIEVESUQsIGFuZCB0aGUgUEhZIHBvcnQgbWF5IHN3aXRjaCBi
ZWZvcmUKPiA+ID4gcmVhZGluZyB0aGUgRURJRC4KPiA+ID4gCj4gPiA+IDIuIE9uZSBicmlkZ2Ug
aXMgYWxyZWFkeSBlbmFibGVkLiBJbiB0aGlzIGNhc2UsIG90aGVyIGJyaWRnZXMgYXJlIG5vdAo+
ID4gPiBhbGxvd2VkIHRvIHJlYWQgdGhlIEVESUQuCj4gPiA+IAo+ID4gPiBTaW5jZSB0aGUgc2Nl
bmFyaW8gb2YgdHdvIHBvcnRzIHBsdWcgaW4gYXQgdGhlIHNhbWUgdGltZSBpcyByYXJlLAo+ID4g
PiBJIGRvbid0IGhhdmUgYSBib2FyZCB3aGljaCBzdXBwb3J0IHR3byBUeXBlQyBjb25uZWN0b3Ig
dG8gdGVzdCB0aGlzLgo+ID4gPiBUaGVyZWZvcmUsIEkgdGVzdGVkIGZvcmNlZCBzd2l0Y2hpbmcg
b24gYSBzaW5nbGUgUEhZIHBvcnQsIGFzIHdlbGwgYXMKPiA+ID4gb3V0cHV0IHVzaW5nIGEgZmFr
ZSBQSFkgcG9ydCBhbG9uZ3NpZGUgYSByZWFsIFBIWSBwb3J0Lgo+ID4gPiAKPiA+ID4gU2lnbmVk
LW9mZi1ieTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+ID4gPiAt
LS0KPiA+ID4gICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyAgICAgICB8ICAgMSAr
Cj4gPiA+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMgfCAzOTggKysr
KysrKysrKysrKysrKysrKysrLS0tLQo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9j
ZG4tZHAtY29yZS5oIHwgIDIzICstCj4gPiA+ICAgMyBmaWxlcyBjaGFuZ2VkLCAzNjYgaW5zZXJ0
aW9ucygrKSwgNTYgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2Nv
bmZpZwo+ID4gPiBpbmRleCBmYWY1MGQ4NzJiZTMuLjNhNjI2NjI3OTMyMyAxMDA2NDQKPiA+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKPiA+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKPiA+ID4gQEAgLTU1LDYgKzU1LDcgQEAgY29uZmln
IFJPQ0tDSElQX0NETl9EUAo+ID4gPiAgIAlzZWxlY3QgRFJNX0RJU1BMQVlfSEVMUEVSCj4gPiA+
ICAgCXNlbGVjdCBEUk1fQlJJREdFX0NPTk5FQ1RPUgo+ID4gPiAgIAlzZWxlY3QgRFJNX0RJU1BM
QVlfRFBfSEVMUEVSCj4gPiA+ICsJc2VsZWN0IERSTV9BVVhfSFBEX0JSSURHRQo+ID4gPiAgIAlo
ZWxwCj4gPiA+ICAgCSAgVGhpcyBzZWxlY3RzIHN1cHBvcnQgZm9yIFJvY2tjaGlwIFNvQyBzcGVj
aWZpYyBleHRlbnNpb25zCj4gPiA+ICAgCSAgZm9yIHRoZSBjZG4gRFAgZHJpdmVyLiBJZiB5b3Ug
d2FudCB0byBlbmFibGUgRHAgb24KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9jZG4tZHAtY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1j
b3JlLmMKPiA+ID4gaW5kZXggMWUyNzMwMTU4NGE0Li43ODRmNTY1NmZjYzQgMTAwNjQ0Cj4gPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCj4gPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCj4gPiA+IEBAIC0yNywxNiAr
MjcsMTcgQEAKPiA+ID4gICAjaW5jbHVkZSAiY2RuLWRwLWNvcmUuaCIKPiA+ID4gICAjaW5jbHVk
ZSAiY2RuLWRwLXJlZy5oIgo+ID4gPiAtc3RhdGljIGlubGluZSBzdHJ1Y3QgY2RuX2RwX2Rldmlj
ZSAqYnJpZGdlX3RvX2RwKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UpCj4gPiA+ICtzdGF0aWMg
aW50IGNkbl9kcF9zd2l0Y2hfcG9ydChzdHJ1Y3QgY2RuX2RwX2RldmljZSAqZHAsIHN0cnVjdCBj
ZG5fZHBfcG9ydCAqcHJldl9wb3J0LAo+ID4gPiArCQkJICAgICAgc3RydWN0IGNkbl9kcF9wb3J0
ICpwb3J0KTsKPiA+ID4gKwo+ID4gPiArc3RhdGljIGlubGluZSBzdHJ1Y3QgY2RuX2RwX2JyaWRn
ZSAqYnJpZGdlX3RvX2RwX2JyaWRnZShzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlKQo+ID4gPiAg
IHsKPiA+ID4gLQlyZXR1cm4gY29udGFpbmVyX29mKGJyaWRnZSwgc3RydWN0IGNkbl9kcF9kZXZp
Y2UsIGJyaWRnZSk7Cj4gPiA+ICsJcmV0dXJuIGNvbnRhaW5lcl9vZihicmlkZ2UsIHN0cnVjdCBj
ZG5fZHBfYnJpZGdlLCBicmlkZ2UpOwo+ID4gPiAgIH0KPiA+ID4gLXN0YXRpYyBpbmxpbmUgc3Ry
dWN0IGNkbl9kcF9kZXZpY2UgKmVuY29kZXJfdG9fZHAoc3RydWN0IGRybV9lbmNvZGVyICplbmNv
ZGVyKQo+ID4gPiArc3RhdGljIGlubGluZSBzdHJ1Y3QgY2RuX2RwX2RldmljZSAqYnJpZGdlX3Rv
X2RwKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UpCj4gPiA+ICAgewo+ID4gPiAtCXN0cnVjdCBy
b2NrY2hpcF9lbmNvZGVyICpya2VuY29kZXIgPSB0b19yb2NrY2hpcF9lbmNvZGVyKGVuY29kZXIp
Owo+ID4gPiAtCj4gPiA+IC0JcmV0dXJuIGNvbnRhaW5lcl9vZihya2VuY29kZXIsIHN0cnVjdCBj
ZG5fZHBfZGV2aWNlLCBlbmNvZGVyKTsKPiA+ID4gKwlyZXR1cm4gYnJpZGdlX3RvX2RwX2JyaWRn
ZShicmlkZ2UpLT5wYXJlbnQ7Cj4gPiA+ICAgfQo+ID4gPiAgICNkZWZpbmUgR1JGX1NPQ19DT045
CQkweDYyMjQKPiA+ID4gQEAgLTE5MSwxNCArMTkyLDI3IEBAIHN0YXRpYyBpbnQgY2RuX2RwX2dl
dF9zaW5rX2NvdW50KHN0cnVjdCBjZG5fZHBfZGV2aWNlICpkcCwgdTggKnNpbmtfY291bnQpCj4g
PiA+ICAgc3RhdGljIHN0cnVjdCBjZG5fZHBfcG9ydCAqY2RuX2RwX2Nvbm5lY3RlZF9wb3J0KHN0
cnVjdCBjZG5fZHBfZGV2aWNlICpkcCkKPiA+ID4gICB7Cj4gPiA+ICAgCXN0cnVjdCBjZG5fZHBf
cG9ydCAqcG9ydDsKPiA+ID4gLQlpbnQgaSwgbGFuZXM7Cj4gPiA+ICsJaW50IGksIGxhbmVzW01B
WF9QSFldOwo+ID4gPiAgIAlmb3IgKGkgPSAwOyBpIDwgZHAtPnBvcnRzOyBpKyspIHsKPiA+ID4g
ICAJCXBvcnQgPSBkcC0+cG9ydFtpXTsKPiA+ID4gLQkJbGFuZXMgPSBjZG5fZHBfZ2V0X3BvcnRf
bGFuZXMocG9ydCk7Cj4gPiA+IC0JCWlmIChsYW5lcykKPiA+ID4gKwkJbGFuZXNbaV0gPSBjZG5f
ZHBfZ2V0X3BvcnRfbGFuZXMocG9ydCk7Cj4gPiA+ICsJCWlmICghZHAtPmhwZF9icmlkZ2VfdmFs
aWQpCj4gPiA+ICAgCQkJcmV0dXJuIHBvcnQ7Cj4gPiA+ICAgCX0KPiA+ID4gKwo+ID4gPiArCWlm
IChkcC0+aHBkX2JyaWRnZV92YWxpZCkgewo+ID4gPiArCQkvKiBJZiBtb3JlIHRoYW4gb25lIHBv
cnQgaXMgYXZhaWxhYmxlLCBwaWNrIHRoZSBsYXN0IGFjdGl2ZSBwb3J0ICovCj4gPiA+ICsJCWlm
IChkcC0+YWN0aXZlX3BvcnQgPiAwICYmIGxhbmVzW2RwLT5hY3RpdmVfcG9ydF0pCj4gPiA+ICsJ
CQlyZXR1cm4gZHAtPnBvcnRbZHAtPmFjdGl2ZV9wb3J0XTsKPiA+ID4gKwo+ID4gPiArCQkvKiBJ
ZiB0aGUgbGFzdCBhY3RpdmUgcG9ydCBpcyBub3QgYXZhaWxhYmxlLCBwaWNrIGFuIGF2YWlsYWJs
ZSBwb3J0IGluIG9yZGVyICovCj4gPiA+ICsJCWZvciAoaSA9IDA7IGkgPCBkcC0+YnJpZGdlX2Nv
dW50OyBpKyspIHsKPiA+ID4gKwkJCWlmIChsYW5lc1tpXSkKPiA+ID4gKwkJCQlyZXR1cm4gZHAt
PnBvcnRbaV07Cj4gPiA+ICsJCX0KPiA+ID4gKwl9Cj4gPiA+ICsKPiA+ID4gICAJcmV0dXJuIE5V
TEw7Cj4gPiA+ICAgfQo+ID4gPiBAQCAtMjM5LDEwICsyNTMsMTEgQEAgc3RhdGljIGVudW0gZHJt
X2Nvbm5lY3Rvcl9zdGF0dXMKPiA+ID4gICBjZG5fZHBfYnJpZGdlX2RldGVjdChzdHJ1Y3QgZHJt
X2JyaWRnZSAqYnJpZGdlLCBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ID4gPiAg
IHsKPiA+ID4gICAJc3RydWN0IGNkbl9kcF9kZXZpY2UgKmRwID0gYnJpZGdlX3RvX2RwKGJyaWRn
ZSk7Cj4gPiA+ICsJc3RydWN0IGNkbl9kcF9icmlkZ2UgKmRwX2JyaWRnZSA9IGJyaWRnZV90b19k
cF9icmlkZ2UoYnJpZGdlKTsKPiA+ID4gICAJZW51bSBkcm1fY29ubmVjdG9yX3N0YXR1cyBzdGF0
dXMgPSBjb25uZWN0b3Jfc3RhdHVzX2Rpc2Nvbm5lY3RlZDsKPiA+ID4gICAJbXV0ZXhfbG9jaygm
ZHAtPmxvY2spOwo+ID4gPiAtCWlmIChkcC0+Y29ubmVjdGVkKQo+ID4gPiArCWlmIChkcF9icmlk
Z2UtPmNvbm5lY3RlZCAmJiBkcC0+Y29ubmVjdGVkKQo+ID4gPiAgIAkJc3RhdHVzID0gY29ubmVj
dG9yX3N0YXR1c19jb25uZWN0ZWQ7Cj4gPiA+ICAgCW11dGV4X3VubG9jaygmZHAtPmxvY2spOwo+
ID4gPiBAQCAtMjUzLDEwICsyNjgsMzYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZWRpZCAq
Cj4gPiA+ICAgY2RuX2RwX2JyaWRnZV9lZGlkX3JlYWQoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRn
ZSwgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiA+ID4gICB7Cj4gPiA+ICAgCXN0
cnVjdCBjZG5fZHBfZGV2aWNlICpkcCA9IGJyaWRnZV90b19kcChicmlkZ2UpOwo+ID4gPiAtCWNv
bnN0IHN0cnVjdCBkcm1fZWRpZCAqZHJtX2VkaWQ7Cj4gPiA+ICsJc3RydWN0IGNkbl9kcF9icmlk
Z2UgKmRwX2JyaWRnZSA9IGJyaWRnZV90b19kcF9icmlkZ2UoYnJpZGdlKTsKPiA+ID4gKwlzdHJ1
Y3QgY2RuX2RwX3BvcnQgKnBvcnQgPSBkcC0+cG9ydFtkcF9icmlkZ2UtPmlkXTsKPiA+ID4gKwlz
dHJ1Y3QgY2RuX2RwX3BvcnQgKnByZXZfcG9ydDsKPiA+ID4gKwljb25zdCBzdHJ1Y3QgZHJtX2Vk
aWQgKmRybV9lZGlkID0gTlVMTDsKPiA+ID4gKwlpbnQgaSwgcmV0Owo+ID4gPiAgIAltdXRleF9s
b2NrKCZkcC0+bG9jayk7Cj4gPiA+ICsKPiA+ID4gKwkvKiBNb3JlIHRoYW4gb25lIHBvcnQgaXMg
YXZhaWxhYmxlICovCj4gPiA+ICsJaWYgKGRwLT5icmlkZ2VfY291bnQgPiAxICYmICFwb3J0LT5w
aHlfZW5hYmxlZCkgewo+ID4gPiArCQlmb3IgKGkgPSAwOyBpIDwgZHAtPmJyaWRnZV9jb3VudDsg
aSsrKSB7Cj4gPiA+ICsJCQkvKiBBbm90aGVyIHBvcnQgYWxyZWFkeSBlbmFibGUgKi8KPiA+ID4g
KwkJCWlmIChkcC0+YnJpZGdlX2xpc3RbaV0gIT0gZHBfYnJpZGdlICYmIGRwLT5icmlkZ2VfbGlz
dFtpXS0+ZW5hYmxlZCkKPiA+ID4gKwkJCQlnb3RvIHVubG9jazsKPiA+ID4gKwkJCS8qIEZpbmQg
YWxyZWFkeSBlbmFibGVkIHBvcnQgKi8KPiA+ID4gKwkJCWlmIChkcC0+cG9ydFtpXS0+cGh5X2Vu
YWJsZWQpCj4gPiA+ICsJCQkJcHJldl9wb3J0ID0gZHAtPnBvcnRbaV07Cj4gPiA+ICsJCX0KPiA+
ID4gKwo+ID4gPiArCQkvKiBTd2l0Y2ggdG8gY3VycmVudCBwb3J0ICovCj4gPiA+ICsJCWlmIChw
cmV2X3BvcnQpIHsKPiA+ID4gKwkJCXJldCA9IGNkbl9kcF9zd2l0Y2hfcG9ydChkcCwgcHJldl9w
b3J0LCBwb3J0KTsKPiA+ID4gKwkJCWlmIChyZXQpCj4gPiA+ICsJCQkJZ290byB1bmxvY2s7Cj4g
PiA+ICsJCX0KPiA+ID4gKwl9Cj4gPiA+ICsKPiA+ID4gICAJZHJtX2VkaWQgPSBkcm1fZWRpZF9y
ZWFkX2N1c3RvbShjb25uZWN0b3IsIGNkbl9kcF9nZXRfZWRpZF9ibG9jaywgZHApOwo+ID4gU28u
Li4gSWYgSSB0cnkgcmVhZGluZyBFRElEIGZvciB0aGUgUEhZIDIgd2hpbGUgUEhZIDEgaXMgZW5h
YmxlZCwgd2lsbAo+ID4gaXQgcmV0dXJuIE5VTEwsIGV2ZW4gaWYgdGhlcmUgaXMgYSBtb25pdG9y
IHRoZXJlPyBJdCB0b3RhbGx5IGZlZWxzIGxpa2UKPiA+IHRoaXMgaXMgb25lIG9mIHRoZSByYXJl
IGNhc2VzIHdoZW4gY2FjaGluZyBFRElEcyBtaWdodCBtYWtlIHNlbnNlLgo+IAo+IE9mIGNvdXJz
ZS4gSSBkaWQgY29uc2lkZXIgdXNpbmcgY2FjaGUsIGJ1dCBpZiB0aGUgbW9uaXRvciBjaGFuZ2Vz
LCB0aGVuIGNhY2hpbmcgdGhlIEVESUQgZG9lc24ndCBzZWVtIHRvIGJlIG9mIG11Y2ggdXNl4oCm
CgpZZXMuLi4gSXQgbWlnaHQgc3RpbGwgYmUgYmV0dGVyIHRvIGludmFsaWRhdGUgdGhlIGNhY2hl
IG9uIHRoZSBwbHVnCmV2ZW50IHJhdGhlciB0aGFuIGFsd2F5cyByZXBvcnRpbmcgZW1wdHkgRURJ
RCB3aGVuIGFub3RoZXIgbW9uaXRvciBpcwplbmFibGVkLgoKLS0gCldpdGggYmVzdCB3aXNoZXMK
RG1pdHJ5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
