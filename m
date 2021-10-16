Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9589FC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 18:22:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 509E660EFF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 18:22:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 509E660EFF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s1Mpn7ErY+F3qYdd9GjyJA/w1KDk3LeiULiCopikbso=; b=ACdnmSikZjIysltas44MQPst9Y
	BlltumM2FlLb0qCQJ+pCCkzR9JR0bKtS1u0x0Ri5xY+QBxNXnJuHFBygs8glVCOwEcIbOf6pPf5bn
	velQT4xBvq7G/WmAv/sMZwC/G/jdtzu8DaG9kPd9sYXXKmuskBqwYIqjiDI6MKhrWbH09akiVW7FW
	aLmz2bDQ1FmrFXUQzGnFx9M+9QeleIZoCmzSpC0HhDQBavfrhr1E7Z/3q6hDKu4W7deyShyUbKzgH
	eMyg69ng2y81q9JQm/MFgtQF1BSwXN9L5gQ1bVHkOAZXfS9fe7YnAU9jyfYhbRks609/2u++8zrNz
	YiZkLobQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mboKS-00B6nG-SM; Sat, 16 Oct 2021 18:22:44 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mboKQ-00B6mi-67
 for linux-rockchip@lists.infradead.org; Sat, 16 Oct 2021 18:22:43 +0000
Received: by mail-wr1-x42e.google.com with SMTP id e12so32463286wra.4
 for <linux-rockchip@lists.infradead.org>; Sat, 16 Oct 2021 11:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=9QMXwjRgg9WKiMDTO1eOxoPnW7Wq3XEzG3PPmnYHIS8=;
 b=IE99jWeZ2Ane8r/NbgALzv9jHGLpvydfeWW5He4+a9izIi2gMqmTKpzyuMXyc3f/vN
 kMvruXZZEls4HS5scTAYBSA3kfqVUMh4/jPNlsZOiRby0yPu6kc7rW4ux7VFKOw0Y4fD
 vxwaMjYudNL5wsRMJEED/340gsMmCXbI8leWhq5buFuKxKN9NQSz5tnrlS9WOWakIqH/
 pkmpYq11/OrGZUJeDO4I/ljoofu9RY1RpyALWi3cPhsHuLb6QeF2rGacygqkLmhI+bY/
 q0gF1qz1WjeRR+N5A6+tp18uSP4jjs19nAguaP8vip37Crdrtgc//HOA0OD+Hpi6ZI9a
 XSsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=9QMXwjRgg9WKiMDTO1eOxoPnW7Wq3XEzG3PPmnYHIS8=;
 b=A4Z/nqsuCKu/MZaW7sl0Gng2xvBkj/BxHYS+X+8rOYaf5kcsM4lvvlXJYdPewHsrJS
 zTJRZ/xeUN860VNwmXE0R4zejR2hKv2w6dqUecZKp0evLuG5gClZVcbu/DXVCWbd5bem
 laBMxayrUamYS2bdu6N3f3ttyT7eG/wFtslssdbjWP2s3cnY00+tbpeCUIHeOuG7wdTx
 CcGf7oltvYyu1wDPXplomSKNkxkaZg01hzOUBZcN11LZqiGdq4pONR56VTR7MqzluEt6
 qiXFVjiQSAhxfQLVML1WCD37Srx6Z0+q6Jiwj4lhWAdKWzdx51FD/uTINYSkntaaLuvK
 FzJw==
X-Gm-Message-State: AOAM530wBqQNnaK0iPeA5H8VYPtE7CBcGhqf7TqTUBXD2QGMATmHSJ5t
 +vsNyncIjcol4EBk2eFh+w==
X-Google-Smtp-Source: ABdhPJxqqODGb43ZkTiCJFtTiVtsKgqpfPCC4neudp0/50KJQHLV7bavPG2WoqS3N7CpHLh7ZuJ3BQ==
X-Received: by 2002:a5d:45c9:: with SMTP id b9mr23138685wrs.365.1634408560677; 
 Sat, 16 Oct 2021 11:22:40 -0700 (PDT)
Received: from [192.168.200.23] (ip5b435a69.dynamic.kabel-deutschland.de.
 [91.67.90.105])
 by smtp.gmail.com with ESMTPSA id y8sm7913848wrr.21.2021.10.16.11.22.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 Oct 2021 11:22:40 -0700 (PDT)
Subject: Re: [BUG] Re: [PATCH v3 07/10] media: hantro: Enable H.264 on
 Rockchip VDPU2
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 maccraft123mc@gmail.com, Chris Healy <cphealy@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jonas Karlman <jonas@kwiboo.se>, Kever Yang <kever.yang@rock-chips.com>,
 kernel@collabora.com
References: <20210719205242.18807-1-ezequiel@collabora.com>
 <20210719205242.18807-8-ezequiel@collabora.com>
 <2fe158874e627d2aab97901916a63d884826b6ec.camel@ndufresne.ca>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <bee0202c-ad4e-52de-7244-28249a05c63d@gmail.com>
Date: Sat, 16 Oct 2021 20:22:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <2fe158874e627d2aab97901916a63d884826b6ec.camel@ndufresne.ca>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_112242_255689_2DA48E68 
X-CRM114-Status: GOOD (  20.71  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgTmljb2xhcywKCkFtIDE0LjEwLjIxIHVtIDIwOjE3IHNjaHJpZWIgTmljb2xhcyBEdWZyZXNu
ZToKPiBMZSBsdW5kaSAxOSBqdWlsbGV0IDIwMjEgw6AgMTc6NTIgLTAzMDAsIEV6ZXF1aWVsIEdh
cmNpYSBhIMOpY3JpdMKgOgo+PiBHaXZlbiBILjI2NCBzdXBwb3J0IGZvciBWRFBVMiB3YXMganVz
dCBhZGRlZCwgbGV0J3MgZW5hYmxlIGl0Lgo+PiBGb3Igbm93LCB0aGlzIGlzIG9ubHkgZW5hYmxl
ZCBvbiBwbGF0Zm9ybSB0aGF0IGRvbid0IGhhdmUKPj4gYW4gUktWREVDIGNvcmUsIHN1Y2ggYXMg
UkszMzI4Lgo+IFRoZXJlIGlzIGEgc21hbGwgb29wcywgdGhlIGRlY29kZXIgaXMgbm93IHZpc2li
bGUgb24gUkszMzk5LiBBdCBsZWFzdCBmb3IKPiBHU3RyZWFtZXIsIGl0IGdvdCB0cmlja2VkIGlu
IHBpY2tpbmcgaXQgYnkgZGVmYXVsdCwgd2hpY2ggcmVncmVzcyBkZWNvZGluZwo+IHBlcmZvcm1h
bmNlLiBJIHN0aWxsIHRoaW5rIHdlIHNob3VsZCB3YWl0IGJlZm9yZSBlbmFibGluZyBpdCB1bnRp
bCB3ZSBrbm93IHRoYXQKPiB1c2Vyc3BhY2UgaGF2ZSBpbmZyYXN0cnVjdHVyZSB0byByYW5rIHRo
ZW0gcHJvcGVybHkuCgpJIGd1ZXNzIGhhdmluZyB0aGUgZGVjb2RlciBhdmFpbGFibGUgaXMgZXhw
ZWN0ZWQsIHNpbmNlIGl0IGlzIHVzZWQgZm9yIApNUEVHMiBhbmQgVlA4IC0gaXQgd2FzIGFscmVh
ZHkgYmVmb3JlIHRoaXMgcGF0Y2guCgpJdCBqdXN0IHNob3Vkbid0IGhhdmUgdGhlIEguMjY0IGNh
cGFiaWxpdGllcyBleHBvc2VkIG9uIFJLMzM5OSB5ZXQgLSAKdGhhdCBzZWVtcyBPSyBoZXJlLgoK
QWxleAo+PiBTaWduZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9y
YS5jb20+Cj4+IFRlc3RlZC1ieTogQWxleCBCZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+Cj4+IC0t
LQo+PiAgIC4uLi9zdGFnaW5nL21lZGlhL2hhbnRyby9yb2NrY2hpcF92cHVfaHcuYyAgICB8IDI2
ICsrKysrKysrKysrKysrKysrKy0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlh
L2hhbnRyby9yb2NrY2hpcF92cHVfaHcuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
cm9ja2NoaXBfdnB1X2h3LmMKPj4gaW5kZXggM2NjYzE2NDEzZjQyLi5lNGUzYjVlNzY4OWIgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vcm9ja2NoaXBfdnB1X2h3
LmMKPj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9yb2NrY2hpcF92cHVfaHcu
Ywo+PiBAQCAtMTYyLDYgKzE2MiwxOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQg
cmszMzk5X3ZwdV9kZWNfZm10c1tdID0gewo+PiAgIAkJLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9O
VjEyLAo+PiAgIAkJLmNvZGVjX21vZGUgPSBIQU5UUk9fTU9ERV9OT05FLAo+PiAgIAl9LAo+PiAr
CXsKPj4gKwkJLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9IMjY0X1NMSUNFLAo+PiArCQkuY29kZWNf
bW9kZSA9IEhBTlRST19NT0RFX0gyNjRfREVDLAo+PiArCQkubWF4X2RlcHRoID0gMiwKPj4gKwkJ
LmZybXNpemUgPSB7Cj4+ICsJCQkubWluX3dpZHRoID0gNDgsCj4+ICsJCQkubWF4X3dpZHRoID0g
MTkyMCwKPj4gKwkJCS5zdGVwX3dpZHRoID0gTUJfRElNLAo+PiArCQkJLm1pbl9oZWlnaHQgPSA0
OCwKPj4gKwkJCS5tYXhfaGVpZ2h0ID0gMTA4OCwKPj4gKwkJCS5zdGVwX2hlaWdodCA9IE1CX0RJ
TSwKPj4gKwkJfSwKPj4gKwl9LAo+PiAgIAl7Cj4+ICAgCQkuZm91cmNjID0gVjRMMl9QSVhfRk1U
X01QRUcyX1NMSUNFLAo+PiAgIAkJLmNvZGVjX21vZGUgPSBIQU5UUk9fTU9ERV9NUEVHMl9ERUMs
Cj4+IEBAIC0zODgsNiArNDAxLDEyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJvX2NvZGVj
X29wcyByazMzOTlfdnB1X2NvZGVjX29wc1tdID0gewo+PiAgIAkJLmluaXQgPSBoYW50cm9fanBl
Z19lbmNfaW5pdCwKPj4gICAJCS5leGl0ID0gaGFudHJvX2pwZWdfZW5jX2V4aXQsCj4+ICAgCX0s
Cj4+ICsJW0hBTlRST19NT0RFX0gyNjRfREVDXSA9IHsKPj4gKwkJLnJ1biA9IHJvY2tjaGlwX3Zw
dTJfaDI2NF9kZWNfcnVuLAo+PiArCQkucmVzZXQgPSByb2NrY2hpcF92cHUyX2RlY19yZXNldCwK
Pj4gKwkJLmluaXQgPSBoYW50cm9faDI2NF9kZWNfaW5pdCwKPj4gKwkJLmV4aXQgPSBoYW50cm9f
aDI2NF9kZWNfZXhpdCwKPj4gKwl9LAo+PiAgIAlbSEFOVFJPX01PREVfTVBFRzJfREVDXSA9IHsK
Pj4gICAJCS5ydW4gPSByb2NrY2hpcF92cHUyX21wZWcyX2RlY19ydW4sCj4+ICAgCQkucmVzZXQg
PSByb2NrY2hpcF92cHUyX2RlY19yZXNldCwKPj4gQEAgLTQzMyw2ICs0NTIsOCBAQCBzdGF0aWMg
Y29uc3QgY2hhciAqIGNvbnN0IHJvY2tjaGlwX3ZwdV9jbGtfbmFtZXNbXSA9IHsKPj4gICAJImFj
bGsiLCAiaGNsayIKPj4gICB9Owo+PiAgIAo+PiArLyogVkRQVTEvVkVQVTEgKi8KPj4gKwo+PiAg
IGNvbnN0IHN0cnVjdCBoYW50cm9fdmFyaWFudCByazMwMzZfdnB1X3ZhcmlhbnQgPSB7Cj4+ICAg
CS5kZWNfb2Zmc2V0ID0gMHg0MDAsCj4+ICAgCS5kZWNfZm10cyA9IHJrMzA2Nl92cHVfZGVjX2Zt
dHMsCj4+IEBAIC00OTUsMTEgKzUxNiwxNCBAQCBjb25zdCBzdHJ1Y3QgaGFudHJvX3ZhcmlhbnQg
cmszMjg4X3ZwdV92YXJpYW50ID0gewo+PiAgIAkubnVtX2Nsb2NrcyA9IEFSUkFZX1NJWkUocm9j
a2NoaXBfdnB1X2Nsa19uYW1lcykKPj4gICB9Owo+PiAgIAo+PiArLyogVkRQVTIvVkVQVTIgKi8K
Pj4gKwo+PiAgIGNvbnN0IHN0cnVjdCBoYW50cm9fdmFyaWFudCByazMzMjhfdnB1X3ZhcmlhbnQg
PSB7Cj4+ICAgCS5kZWNfb2Zmc2V0ID0gMHg0MDAsCj4+ICAgCS5kZWNfZm10cyA9IHJrMzM5OV92
cHVfZGVjX2ZtdHMsCj4+ICAgCS5udW1fZGVjX2ZtdHMgPSBBUlJBWV9TSVpFKHJrMzM5OV92cHVf
ZGVjX2ZtdHMpLAo+PiAtCS5jb2RlYyA9IEhBTlRST19NUEVHMl9ERUNPREVSIHwgSEFOVFJPX1ZQ
OF9ERUNPREVSLAo+PiArCS5jb2RlYyA9IEhBTlRST19NUEVHMl9ERUNPREVSIHwgSEFOVFJPX1ZQ
OF9ERUNPREVSIHwKPj4gKwkJIEhBTlRST19IMjY0X0RFQ09ERVIsCj4+ICAgCS5jb2RlY19vcHMg
PSByazMzOTlfdnB1X2NvZGVjX29wcywKPj4gICAJLmlycXMgPSByb2NrY2hpcF92ZHB1Ml9pcnFz
LAo+PiAgIAkubnVtX2lycXMgPSBBUlJBWV9TSVpFKHJvY2tjaGlwX3ZkcHUyX2lycXMpLAo+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
