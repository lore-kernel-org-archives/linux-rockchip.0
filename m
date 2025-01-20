Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8973C02182
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jan 2025 14:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4TTQJoLFp44NUJJAO18IfpNE8fXtlAfeeXin9RGn+k=; b=ZMzCG9kcVVOqb1
	0+XiC+cYVDkZ0HNfmQ0bqsiX3CT6Z+klfunpB9/am4EGOYKLDsPZeYg3jcIEKYDrPRC0KRb2gnFeB
	/oBGqpBAEKuFpi/2arrD1Tf1MQO3c1jtz/H4l+Ny7ZhyRxpt5Kty9qsAx35AMiL37Z++ZZAM77+GR
	IDi+CONPVGBp/j8h8UVFNWVR+6+1RQc0J55O1j4Bi/VlZ8LTcz+l+OU5TLttvSOleTKUpprPojzld
	kz+5edVvJ1yHHtXuinUb1i/1i5R1wQtY30FWcrr8mbeuTezoWCv86q1zuw1ro+mC4mEzyhJ3ezdCk
	3BKbYs1xH/LZPaanEYhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZscZ-00000005ltL-0Adq;
	Mon, 20 Jan 2025 14:19:19 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZscW-00000005lsF-0FW9
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jan 2025 14:19:17 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1737382751; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=PFdLP00+DfJy0CN1yx7nB319WnSSTzDMciqTmrywMgytoJ9dqSqiBt7QUvoD3/ZXGmHGdJJaMpcpv7Teyc222bENmdTJjxeoHNdvb3wa7v3tTQHlDRmKHc3yp3BQssg8Gh7RlDJq1IxE31ETKmiR2qA3bdo+xaneTK7aSBVcPnw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1737382751; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=j+E1q7ijcKFXJxDwrg5aw4UobRbm2qLeSggSBlQ9bug=; 
	b=PdX0dsOlvTRhuhW+MqbKhEMppSGtKgJtdLHhJ5OW0ltSMMvqwwMufyDf2HvH6iz6KHvT4+QCxxun8F7acBaLn7F1ljMlbW++kQNSt99vOoGAlqqWr0TV8h99ZSQYMSRumafgWgKwubA+VJ8q2LorxxarOO8IKgxaQYGWjcukco8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1737382751;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=j+E1q7ijcKFXJxDwrg5aw4UobRbm2qLeSggSBlQ9bug=;
	b=aRZmGCZpaeiEer1N8oAnlga/awVEWYYpVKmJGW6AXALo/XKUtP3YAaZrCJV+jMLi
	cginWQPPuzTd3GU+zkcrx4YFAjDX557ygUOC2/t5grQRerllHTfvY25fOyPXwCni5qx
	C1SI7u2RnUl3CqoMZ7t+mCyh/L1fylTaJvpnZQSY=
Received: by mx.zohomail.com with SMTPS id 1737382746840120.86569708376226;
	Mon, 20 Jan 2025 06:19:06 -0800 (PST)
Message-ID: <0a1b29c5-11f7-4836-b41e-99be75afdfd8@collabora.com>
Date: Mon, 20 Jan 2025 15:19:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: verisilicon: HEVC: Initialize start_bit field
To: Adam Ford <aford173@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250120081052.63224-1-benjamin.gaignard@collabora.com>
 <cc3b22c9-ff98-4328-9e70-4d22c29a6b0d@collabora.com>
 <95a8e3c6d28444750bd312ff61a3f6b0daea177a.camel@collabora.com>
 <CAHCN7xKySGN6wnE2FmpuLms-DyThBvx9w6vdKqJvsaWpgW6FOQ@mail.gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <CAHCN7xKySGN6wnE2FmpuLms-DyThBvx9w6vdKqJvsaWpgW6FOQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_061916_207745_309C7AD5 
X-CRM114-Status: GOOD (  11.56  )
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

CkxlIDIwLzAxLzIwMjUgw6AgMTU6MTUsIEFkYW0gRm9yZCBhIMOpY3JpdMKgOgo+IE9uIE1vbiwg
SmFuIDIwLCAyMDI1IGF0IDg6MTDigK9BTSBOaWNvbGFzIER1ZnJlc25lCj4gPG5pY29sYXMuZHVm
cmVzbmVAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4+IExlIGx1bmRpIDIwIGphbnZpZXIgMjAyNSDD
oCAxMTowMCArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgYSDDqWNyaXQgOgo+Pj4gTGUgMjAvMDEv
MjAyNSDDoCAwOToxMCwgQmVuamFtaW4gR2FpZ25hcmQgYSDDqWNyaXQgOgo+Pj4+IEFsd2F5cyBz
ZXQgc3RhcnRfYml0IGZpZWxkIHRvIDAsIGlmIG5vdCBpdCBjb3VsZCBsZWFkIHRvIGNvcnJ1cHRl
ZCBmcmFtZXMKPj4+PiBzcGVjaWFsbHkgd2hlbiBkZWNvZGluZyBWUDkgYml0c3RyZWFtcyBhdCB0
aGUgc2FtZSB0aW1lIHNpbmNlIFZQOSBkcml2ZXIKPj4+PiBzZXQgaXQgZm9yIGl0IG93biBwdXJw
b3NlLgo+PiAgICAgICAgICAgICAgICAgaXRzCj4+Cj4gRG9lcyB0aGlzIGltcGFjdCB0aGUgRmx1
c3RlciBzY29yZT8KCk5vIGJlY2F1c2UgdGhhdCBoYXBwZW5zIG9ubHkgd2hlbiBkZWNvZGluZyBW
UDkgYW5kIEhFVkMgYml0c3RyZWFtcyBhdCB0aGUgc2FtZSB0aW1lLgoKPgo+Pj4+IFNpZ25lZC1v
ZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29t
Pgo+Pj4gSSBjb3VsZCBhZGQgdGhpcyB0YWc6Cj4+Pgo+Pj4gRml4ZXM6IGNiNWRkNWEwZmE1MTgg
KCJtZWRpYTogaGFudHJvOiBJbnRyb2R1Y2UgRzIvSEVWQyBkZWNvZGVyIikKPj4gSSBoYXZlIHRl
c3RlZCB0aGlzIG9uIElNWDhNUSBib2FyZCB1c2luZyB0aGUgZm9sbG93aW5nIEdTdHJlYW1lciBw
aXBlbGluZS4KPj4gQmVmb3JlIHRoZSBjaGFuZ2UsIHRoZSBIRVZDIHdpbmRvdyB3YXMgZW50aXJl
bHkgY29ycnVwdGVkLiBUaGUgc3RyZWFtcyBkb24ndAo+PiBtYXR0ZXIgYXMgbG9uZyBhcyB0aGV5
IHVzZSBib3RoIEhFVkMgYW5kIFZQOSBjb2RlYy4KPj4KPj4gZ3N0LWxhdW5jaC0xLjAgXAo+PiAg
ICBmaWxlc3JjIGxvY2F0aW9uPWhldmMubXA0ICEgcGFyc2ViaW4gISB2NGwyc2xoMjY1ZGVjICEg
ZmFrZXZpZGVvc2luayBcCj4+ICAgIGZpbGVzcmMgbG9jYXRpb249dnA5Lm1rdiAhIHBhcnNlYmlu
ICEgdjRsMnNsdnA5ZGVjICEgZmFrZXZpZGVvc2luawo+Pgo+PiBUZXN0ZWQtYnk6IE5pY29sYXMg
RHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KPj4KPj4KPj4+PiAtLS0K
Pj4+PiAgICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl9oZXZj
X2RlYy5jIHwgMSArCj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4+Pj4K
Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50
cm9fZzJfaGV2Y19kZWMuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFu
dHJvX2cyX2hldmNfZGVjLmMKPj4+PiBpbmRleCA4NWE0NDE0M2IzNzguLjBlMjEyMTk4ZGQ2NSAx
MDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRy
b19nMl9oZXZjX2RlYy5jCj4+Pj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9oYW50cm9fZzJfaGV2Y19kZWMuYwo+Pj4+IEBAIC01MTgsNiArNTE4LDcgQEAgc3RhdGlj
IHZvaWQgc2V0X2J1ZmZlcnMoc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPj4+PiAgICAgIGhhbnRy
b19yZWdfd3JpdGUodnB1LCAmZzJfc3RyZWFtX2xlbiwgc3JjX2xlbik7Cj4+Pj4gICAgICBoYW50
cm9fcmVnX3dyaXRlKHZwdSwgJmcyX3N0cm1fYnVmZmVyX2xlbiwgc3JjX2J1Zl9sZW4pOwo+Pj4+
ICAgICAgaGFudHJvX3JlZ193cml0ZSh2cHUsICZnMl9zdHJtX3N0YXJ0X29mZnNldCwgMCk7Cj4+
Pj4gKyAgIGhhbnRyb19yZWdfd3JpdGUodnB1LCAmZzJfc3RhcnRfYml0LCAwKTsKPj4+PiAgICAg
IGhhbnRyb19yZWdfd3JpdGUodnB1LCAmZzJfd3JpdGVfbXZzX2UsIDEpOwo+PiBJJ3ZlIGFsc28g
Y3Jvc3NlZCBhZ2FpbnN0ICJkZWNvZGVyX3N3cmVnX21hcF9nMi54bHN4IiBkb2N1bWVudGF0aW9u
LCBpZiB5b3UgYXJlCj4+IGx1Y2t5IHRvIGhhdmUgYWNjZXNzIHRvIHRoYXQsIGFuZCB3aXRoaW4g
c3dyZWc1IHRoZXJlIGlzIG9ubHkgZzJfdGVtcG9yX212cF9lCj4+IHRoYXQgaXMgYWxzbyBzaGFy
ZWQsIGFuZCBpdHMgYWxyZWFkeSBiZWluZyBzZXQgaW4gYm90aCBkcml2ZXJzLgo+Pgo+PiBSZXZp
ZXdlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29t
Pgo+Pgo+Pgo+Pj4+ICAgICAgaGFudHJvX3dyaXRlX2FkZHIodnB1LCBHMl9USUxFX1NJWkVTX0FE
RFIsIGN0eC0+aGV2Y19kZWMudGlsZV9zaXplcy5kbWEpOwo+PgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
