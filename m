Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 761E6C02181
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 06:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FYCBcIU2qjNHJQNE4YOpCrcEmSPdYhowqIDknivdtY0=; b=Sq/mxscipH/mK6
	0hhZrjF8Lausvr6RKhWNcm3O2MglmHAyC4sqkz2hpXjiDwO0eB8keoqw9zvVd++xE/X6Ou3JvJf4z
	GTbskj7ry1otS/B7RAny1c8p+1dFGR28E5XhOs5DWRQnUqVI+7r2yIXR8XBXbmRC+NmJWSWcKJ4W3
	fe2Ph5+oMRi6sjwGPsA0kb3vdd2e2XQnMLPVLd3fAVvYYk5Jk/J2I9bepXY70eX7hatIum3tjLerN
	rFGKcGcNYOLIhPmWQbVjPOQL0AM5PxNNd8CI9A7JpbObrHZxozngsbr3SGiXBZtOoHIlR4MUvLWeD
	fwGr5EVEMgKXG8Lz64Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbDCe-0000000E0aD-1R4F;
	Fri, 24 Jan 2025 06:30:04 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbDBI-0000000E0Sf-2Mr2;
	Fri, 24 Jan 2025 06:28:41 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2165448243fso37368935ad.1;
        Thu, 23 Jan 2025 22:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737700119; x=1738304919; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JeN5L2YEWJnNE+LNbwNgDchuAps1f8wGg5gZvbxuxxw=;
        b=XjQ4xSttT6TDP3qcN+yY5e8+xdmRvICMlsIs2eNF9uXSMET0IzsKqh63o5XfAoWfQt
         /2cP63xdq0n4TOfhByDG1RFW1pCYVB5jZR5c2JQZUVQfZgeDDnBW1bjh0A2oSu5nsZ95
         3EdKW5eVykZB5gQoopju1ZJw7fxKaMfxXniCRH487Myb784lE4aEtHSfgBWmM3NdgYHb
         Mf7Vb8H7Po1eLxZMZjEPcHIKxxpyDhCq1EToCbz58b/9UDFIICnww4/elCMyDgZV+vs4
         1iJ0Slw+uZCujBKP9A9o1bKjG7Rg1wGGBmMDbVsE7NuWtneK3RGfpR6JtWRnnka/IKZR
         kYrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737700119; x=1738304919;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JeN5L2YEWJnNE+LNbwNgDchuAps1f8wGg5gZvbxuxxw=;
        b=aJl/pxxN3ByIeKV5DyP2VN7JK0hMDW7VzMktxSUV+XyIvgyrMDi9P+I/QTNp1v72cv
         r36Q1cpx8gxyr63VPoR8JJYqWXFyPsSnvsqnB7QXU1e2gelJfDBp9XdkdvFV7zWvhMWB
         mCLrrGF5Yvl3HEdCEw/q42IHPoLbekkWf9x0gVcRR3fVOMHCu3l0pXHlY3qMdnmKiZm8
         lQ85kiATGA2ygIuhHh/vg+3V8nQwgsfZpFNATrUQCfNraZ+pricV3rijifbDjHota2cP
         vNUFUa4Tpg1e2bAbWzLWMY/FvfFUzFsbour/iORTHeNSIZVouKdoi0oRsFuhSGaEvt2N
         CFCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHvefKcUkpvXg9zFvLFQLjifWm2OEmR8QtN+HA3mOTgfZ1zHQKu4RPFsiOIbPo04szgxWX5TMYbbIRKCNcok8=@lists.infradead.org, AJvYcCVGjKsocDo/Mw4IL8pIKOx0E60Pu8r/0t5Sl/75oYWdvA6YEpxS9rdn5bpQoaubnyw4fhfikyBp4iB9k8fo4t9q@lists.infradead.org
X-Gm-Message-State: AOJu0Yyi9+lV/cTy0rzYKr2khiVcZb8IlMrjymyrYGZG+ldY7F0BFYHS
	60ulDcbdJjJba/Rba9nO8s63/Av4WnOMe8GK462ofA3pzhjtlR3T
X-Gm-Gg: ASbGncskR2Qxzq1LA+vZKnH/D2vLZMEKCl/j4aOCcl56e3IPDKzt6nDjZXnmXU/Ukv9
	5pW/xdV3+I/4+0KMtqFNuGqnlEWyz0ahcVveh9ejY/W/Wmti2xyn9gjUEejkpckfx3Y9rDbTWml
	+EasUK2A/EW6mLXaRdIEI4u2N3xO+7hfCNKvuGqk8l+IuYNEkAKvhIEmn0kwnrGSoYv5VjUgSrU
	rYPpDV9XcTy5gCwaHld1JyH8coUZ+nHpsnFZHSdKiKaaQTbKdgUox0PkMrzAElq4BoDaCU8kel+
	B5GggxI9iFzWUtJX2z29lfLP/KgFbOhQFDansk03z5VVtg==
X-Google-Smtp-Source: AGHT+IHY/D+A068yAUx/g7x+kFr63Bnlf+rIa04USNxKmK/2NSr0XdbeFHP/urcYPUPpXZvoC5hi8Q==
X-Received: by 2002:a17:903:2312:b0:216:69ca:770b with SMTP id d9443c01a7336-21c3550eaacmr474494645ad.12.1737700118732;
        Thu, 23 Jan 2025 22:28:38 -0800 (PST)
Received: from ?IPV6:2408:8362:245d:56a8:bc4b:53ff:fead:2724? ([2401:b60:5:867d:3631:b7db:c3f4:aae2])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21da4141dacsm8967865ad.133.2025.01.23.22.28.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 22:28:38 -0800 (PST)
Message-ID: <98387508-10de-4c2e-80ad-05d0d86b7006@gmail.com>
Date: Fri, 24 Jan 2025 14:28:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: change eth phy mode to rgmii-id for
 orangepi r1 plus lts
From: Tianling Shen <cnsztl@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>
References: <20250119091154.1110762-1-cnsztl@gmail.com>
 <ce15f141688c4c537ac3307b6fbed283@manjaro.org>
 <59893a67-18c7-4ab3-9b2a-5a17091d4b6c@gmail.com>
 <dffd06a341b58e9689f578c3456cc11d@manjaro.org>
 <65f4e27f-3dc4-4eaf-be4d-265ce0325ade@gmail.com>
In-Reply-To: <65f4e27f-3dc4-4eaf-be4d-265ce0325ade@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_222840_615182_6452DC28 
X-CRM114-Status: GOOD (  20.90  )
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

T24gMjAyNS8xLzE5IDIzOjQ4LCBUaWFubGluZyBTaGVuIHdyb3RlOgo+IE9uIDIwMjUvMS8xOSAx
OTozNiwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+PiBPbiAyMDI1LTAxLTE5IDEyOjE1LCBUaWFubGlu
ZyBTaGVuIHdyb3RlOgo+Pj4gT24gMjAyNS8xLzE5IDE3OjU0LCBEcmFnYW4gU2ltaWMgd3JvdGU6
Cj4+Pj4gVGhhbmtzIGZvciB0aGUgcGF0Y2guwqAgUGxlYXNlLCBzZWUgYSBjb21tZW50IGJlbG93
Lgo+Pj4+Cj4+Pj4gT24gMjAyNS0wMS0xOSAxMDoxMSwgVGlhbmxpbmcgU2hlbiB3cm90ZToKPj4+
Pj4gSW4gZ2VuZXJhbCB0aGUgZGVsYXkgc2hvdWxkIGJlIGFkZGVkIGJ5IHRoZSBQSFkgaW5zdGVh
ZCBvZiB0aGUgTUFDLAo+Pj4+PiBhbmQgdGhpcyBpbXByb3ZlcyBuZXR3b3JrIHN0YWJpbGl0eSBv
biBzb21lIGJvYXJkcyB3aGljaCBzZWVtIHRvCj4+Pj4+IG5lZWQgZGlmZmVyZW50IGRlbGF5Lgo+
Pj4+Pgo+Pj4+PiBGaXhlczogMzg3YjNiYmFjNWVhICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFk
ZCBYdW5sb25nIE9yYW5nZVBpIFIxIAo+Pj4+PiBQbHVzIExUUyIpCj4+Pj4+IENjOiBzdGFibGVA
dmdlci5rZXJuZWwub3JnICMgNi42Kwo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUaWFubGluZyBTaGVu
IDxjbnN6dGxAZ21haWwuY29tPgo+Pj4+PiAtLS0KPj4+Pj4gwqBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLWx0cy5kdHMgfCAzICstLQo+Pj4+PiDC
oGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRz
wqDCoMKgwqAgfCAxICsKPj4+Pj4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMy
OC1vcmFuZ2VwaS1yMS1wbHVzLmR0c2nCoMKgwqAgfCAxIC0KPj4+Pj4gwqAzIGZpbGVzIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdp
dAo+Pj4+PiBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LW9yYW5nZXBpLXIx
LXBsdXMtbHRzLmR0cwo+Pj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4
LW9yYW5nZXBpLXIxLXBsdXMtbHRzLmR0cwo+Pj4+PiBpbmRleCA2N2MyNDZhZDhiOGMuLmVjMmNl
ODk0ZGExZiAxMDA2NDQKPj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzMjgtb3JhbmdlcGktcjEtcGx1cy1sdHMuZHRzCj4+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMtbHRzLmR0cwo+Pj4+PiBAQCAt
MTcsOCArMTcsNyBAQCAvIHsKPj4+Pj4KPj4+Pj4gwqAmZ21hYzJpbyB7Cj4+Pj4+IMKgwqDCoMKg
IHBoeS1oYW5kbGUgPSA8Jnl0ODUzMWM+Owo+Pj4+PiAtwqDCoMKgIHR4X2RlbGF5ID0gPDB4MTk+
Owo+Pj4+PiAtwqDCoMKgIHJ4X2RlbGF5ID0gPDB4MDU+Owo+Pj4+PiArwqDCoMKgIHBoeS1tb2Rl
ID0gInJnbWlpLWlkIjsKPj4+Pgo+Pj4+IFNob3VsZG4ndCB0aGUgInR4X2RlbGF5IiBhbmQgInJ4
X2RlbGF5IiBEVCBwYXJhbWV0ZXJzIGJlIGNvbnZlcnRlZAo+Pj4+IGludG8gdGhlICJ0eC1pbnRl
cm5hbC1kZWxheS1wcyIgYW5kICJyeC1pbnRlcm5hbC1kZWxheS1wcyIgcGFyYW1ldGVycywKPj4+
PiByZXNwZWN0aXZlbHksIHNvIHRoZSBNb3RvcmNvbW0gUEhZIGRyaXZlciBjYW4gcGljayB0aGVt
IHVwIGFuZAo+Pj4+IGFjdHVhbGx5IGNvbmZpZ3VyZSB0aGUgaW50ZXJuYWwgUEhZIGRlbGF5cz8K
Pj4+Cj4+PiBUaGUgZG9jdW1lbnRhdGlvblsxXSBzYXlzICJ7dCxyfXgtaW50ZXJuYWwtZGVsYXkt
cHMiIGRlZmF1bHQgdG8gMTk1MAo+Pj4gYW5kIHRoYXQgdmFsdWUgYWxyZWFkeSB3b3JrcyBmaW5l
IG9uIG15IGJvYXJkLgo+Pj4KPj4+IDEuIGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvIAo+Pj4gbW90b3Jjb21tJTJDeXQ4eHh4
LnlhbWwKPj4KPj4gSSBzZWUsIGJ1dCB0aG9zZSB2YWx1ZXMgZGlmZmVyIGZyb20gdGhlIHZhbHVl
cyBmb3VuZCBpbiB0aGUKPj4gInR4X2RlbGF5IiBhbmQgInJ4X2RlbGF5IiBEVCBwYXJhbWV0ZXJz
LCBzbyBJIHRoaW5rIHRoaXMgcGF0Y2gKPj4gc2hvdWxkIGJlIHRlc3RlZCB3aXRoIGF0IGxlYXN0
IG9uZSBtb3JlIE9yYW5nZSBQaSBSMSBQbHVzIExUUwo+PiBib2FyZCwgdG8gbWFrZSBzdXJlIGl0
J3MgYWxsIHN0aWxsIGZpbmUuCj4gCj4gVGhpcyBwYXRjaCBoYXMgYmVlbiB0ZXN0ZWQgb24gMiBi
b2FyZHMsIGFuZCB3ZSB3aWxsIGRvIG1vcmUgdGVzdHMgaW4gCj4gbmV4dCB3ZWVrLgo+IAoKTWFu
YWdlZCB0byB0ZXN0IG9uIGFub3RoZXIgYm9hcmQgYW5kIGxvb2tzIHNvIGZhciBzbyBnb29kLgoo
V29ya2luZyBuZXR3b3JrIGNvbm5lY3Rpb24sIG5vIHBhY2tldCBkcm9wKQoKVGhhbmtzLApUaWFu
bGluZy4KCj4gVGhhbmtzLAo+IFRpYW5saW5nLgo+IAo+Pgo+Pj4+Cj4+Pj4+IMKgwqDCoMKgIHN0
YXR1cyA9ICJva2F5IjsKPj4+Pj4KPj4+Pj4gwqDCoMKgwqAgbWRpbyB7Cj4+Pj4+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVz
LmR0cwo+Pj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LW9yYW5nZXBp
LXIxLXBsdXMuZHRzCj4+Pj4+IGluZGV4IDMyNGE4ZTk1MWY3ZS4uODQ2YjkzMWUxNmQyIDEwMDY0
NAo+Pj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2Vw
aS1yMS1wbHVzLmR0cwo+Pj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0cwo+Pj4+PiBAQCAtMTUsNiArMTUsNyBAQCAvIHsKPj4+
Pj4KPj4+Pj4gwqAmZ21hYzJpbyB7Cj4+Pj4+IMKgwqDCoMKgIHBoeS1oYW5kbGUgPSA8JnJ0bDgy
MTFlPjsKPj4+Pj4gK8KgwqDCoCBwaHktbW9kZSA9ICJyZ21paSI7Cj4+Pj4+IMKgwqDCoMKgIHR4
X2RlbGF5ID0gPDB4MjQ+Owo+Pj4+PiDCoMKgwqDCoCByeF9kZWxheSA9IDwweDE4PjsKPj4+Pj4g
wqDCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+Pj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzMjgtb3JhbmdlcGktcjEtcGx1cy5kdHNpCj4+Pj4+IGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtb3JhbmdlcGktcjEtcGx1cy5kdHNpCj4+
Pj4+IGluZGV4IDRmMTkzNzA0ZTVkYy4uMDk1MDhlMzI0YTI4IDEwMDY0NAo+Pj4+PiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0c2kK
Pj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtb3JhbmdlcGkt
cjEtcGx1cy5kdHNpCj4+Pj4+IEBAIC0xMDksNyArMTA5LDYgQEAgJmdtYWMyaW8gewo+Pj4+PiDC
oMKgwqDCoCBhc3NpZ25lZC1jbG9ja3MgPSA8JmNydSBTQ0xLX01BQzJJTz4sIDwmY3J1IFNDTEtf
TUFDMklPX0VYVD47Cj4+Pj4+IMKgwqDCoMKgIGFzc2lnbmVkLWNsb2NrLXBhcmVudHMgPSA8Jmdt
YWNfY2xrPiwgPCZnbWFjX2Nsaz47Cj4+Pj4+IMKgwqDCoMKgIGNsb2NrX2luX291dCA9ICJpbnB1
dCI7Cj4+Pj4+IC3CoMKgwqAgcGh5LW1vZGUgPSAicmdtaWkiOwo+Pj4+PiDCoMKgwqDCoCBwaHkt
c3VwcGx5ID0gPCZ2Y2NfaW8+Owo+Pj4+PiDCoMKgwqDCoCBwaW5jdHJsLTAgPSA8JnJnbWlpbTFf
cGlucz47Cj4+Pj4+IMKgwqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
