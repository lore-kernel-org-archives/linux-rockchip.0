Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD54E10706DB
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Mar 2026 14:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Cc:From:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9vNYzCSgehCX2Jtj/edRUPpC0rOzDPpCMD64BSYo6E=; b=pkTun2VXQoxgwg
	j9E8FFoRsgAva98kiPk7DLJu7uk4Yh9YDXE/9GuoOd3/w5SqP6PzvSTxqD41aDyhMPBdFaQZrvzRL
	M4EBFXNPP9wrz0qX8LBqfr8SI8MaCtnCb6EjTgX151di8DTYJOby9VpSC49XqOOaftJy82SQhzbZO
	TUFiuJo8W4PH2pCtnMLYznj6PXX0bIagx6SpQKtc4H80hAjHxdJIWndkOxkZcr0uBtevUOJoDlgi1
	BX+HdYYNJ1E0yrmZeX9WtvAl2HEJK7loTqXaAXZfx5aAxcCJXEZ3Zh53lmH5A0EmsYGGtkn+eIP7T
	2bprVXH6X66txWqGGaaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1PqE-00000001utX-16Pw;
	Sat, 14 Mar 2026 14:19:46 +0000
Received: from out-177.mta1.migadu.com ([95.215.58.177])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1PqB-00000001utA-21ND
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Mar 2026 14:19:45 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1773497976;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Xl+Uf18fqruXHqchg5arUmkQufHcl9O3lBTne7YsaaQ=;
	b=EGLEwi+WJkwvV8gz682AmrPTMD1U66aeOBTeWeosWn8TziuY17rzTDlXucPem7yuwUbLq7
	k3uD0kFRayntDssYJGY5sVuAI4wWbmSzOu41+ADPrUqBWx/pcBVOU/y3PRMs7gzvDGYPQp
	pAUXoiRHvDVg7A3RYc4ZIKtqh/wY2k3K/nqRwi0G2EU1+QwCIg9Yt9XjmSAnqGUL6Hxno4
	bUE/fjvSpd7TFrBVCvYoMrAD9BRmxj8kEs1IeCwDxG1FQZv8v6n0o9bdsXtqGvZM0FsP3S
	0NOxd6rWdW1wq8uXlM6U+ImQcs3Sb6OhNdv01nvwlWX2ZRas/1r+Da2eeYSf5w==
Date: Sat, 14 Mar 2026 15:19:22 +0100
Message-Id: <DH2KK4G8Y2K1.3VO7LIFPTGDV1@cknow-tech.com>
Subject: Re: [PATCH v2 0/3] media: rockchip: rkvdec: add support for the
 VDPU346 variant
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
Cc: "Christian Hewitt" <christianshewitt@gmail.com>, "Detlev Casanova"
 <detlev.casanova@collabora.com>, =?utf-8?q?Olivier_Cr=C3=AAte?=
 <olivier.crete@collabora.com>, "Ezequiel Garcia"
 <ezequiel@vanguardiasur.com.ar>, "Mauro Carvalho Chehab"
 <mchehab@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Heiko Stuebner" <heiko@sntech.de>, "Diederik de Haas"
 <diederik@cknow-tech.com>, "Dmitry Osipenko"
 <dmitry.osipenko@collabora.com>, "Thomas Gleixner" <tglx@linutronix.de>,
 "Dragan Simic" <dsimic@manjaro.org>, "Chukun Pan" <amadeus@jmu.edu.cn>,
 <linux-media@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
To: "Nicolas Dufresne" <nicolas@ndufresne.ca>
References: <20251226113140.573759-1-christianshewitt@gmail.com>
 <ee0fd1ecc6c940811cae743f087e96d348909c9a.camel@ndufresne.ca>
In-Reply-To: <ee0fd1ecc6c940811cae743f087e96d348909c9a.camel@ndufresne.ca>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260314_071944_115650_97C98AF1 
X-CRM114-Status: GOOD (  14.89  )
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

SGkgTmljb2xhcywKCk9uIFN1biBNYXIgOCwgMjAyNiBhdCAxMDo0MCBQTSBDRVQsIE5pY29sYXMg
RHVmcmVzbmUgd3JvdGU6Cj4gTGUgdmVuZHJlZGkgMjYgZMOpY2VtYnJlIDIwMjUgw6AgMTE6MzEg
KzAwMDAsIENocmlzdGlhbiBIZXdpdHQgYSDDqWNyaXTCoDoKPj4gVGhpcyBzZXJpZXMgZGVwZW5k
cyB1cG9uIERldGxldiBDYXNhbm92YSdzIGN1cnJlbnQgdjcgc2VyaWVzIGZvciBWRFBVMzgxIGFu
ZAo+PiBWRFBVMzgzIHN1cHBvcnQgWzBdLiBJdCBhZGRzIHN1cHBvcnQgZm9yIHRoZSBWRFBVMzQ2
IElQIGJsb2NrIHVzZWQgZm9yIEgyNjQsCj4+IEhFVkMgYW5kIChpbiBhY3RpdmUgd29yaykgVlA5
IG9uIHRoZSBSSzM1NlggYm9hcmRzLiBWRFBVMzQ2IGFwcGVhcnMgdG8gYmUgYQo+PiBjbG9zZSBy
ZWxhdGlvbiB0byBWRFBVMzgxIHVzZWQgd2l0aCBSSzM1ODgsIGV4Y2VwdCB3aXRoIGEgc2luZ2xl
IGNvcmUsIG91dHB1dAo+PiBsaW1pdGVkIHRvIDRLLCBhbmQgbWlub3IgZmVhdHVyZSBkaWZmZXJl
bmNlcywgZS5nLiBIRVZDIGxldmVsIDUuMSBvbiBWRFBVMzQ2Cj4+IHZzIDYuMSBvbiBWRFBVMzgx
LiBUbyBoYW5kbGUgZGlmZmVyZW5jZXMgd2UgZGVjbGFyZSBhIG5ldyBjb21wYXRpYmxlLgo+PiAK
Pj4gVGhlIGRldmljZS10cmVlIGNoYW5nZXMgYXJlIGRlcml2ZWQgZnJvbSBwcmlvci1hcnQgaW4g
RGV0bGV2J3MgcGF0Y2hlcyBmb3IKPj4gUkszNTc2IGFuZCBSSzM1ODgsIHRoZSB2ZW5kb3Iga2Vy
bmVsIFsxXSwgYW5kIHNvbWUgZWFybGllciBwYXRjaCBhdHRlbXB0cwo+PiBmcm9tIFBpb3RyIE9u
aXN6Y3p1ayBhbmQgRGllZGVyaWsgZGUgSGFhcy4KPj4gCj4+IFRoZSByZWdpc3RlciBkaWZmZXJl
bmNlcyBiZXR3ZWVuIFZEUFUzNDYgYW5kIFZEUFUzODEgYXBwZWFyIHRvIGJlIG1pbmltYWwgc28K
Pj4gd2UgY3VycmVudGx5IGFuZCBpbnRlbnRpb25hbGx5IHJldXNlIHRoZSBWRFBVMzgxIGgyNjQs
IGhldmMsIGFuZCByZWdzIGZpbGVzCj4+IHRvIGF2b2lkIGR1cGxpY2F0aW5nIGNvZGUuIFRoZXJl
IGlzIHNvbWUgZXZpZGVuY2Ugb2YgYnVmZmVyIHNpemUgY2hhbmdlcyBpbgo+PiB0ZXN0aW5nIHdo
aWNoIHN0aWxsIG5lZWQgdG8gYmUgZXhwbG9yZWQuIElmIGZ1cnRoZXIgcmVnaXN0ZXIgYW5hbHlz
aXMgbmVlZHMKPj4gc2VwYXJhdGUgZmlsZXMgZm9yIFZEUFUzNDYgdGhlIHJlZmFjdG9yaW5nIHdp
bGwgYmUgYmV5b25kIG15IGN1cnJlbnQgbjAwYgo+PiBjb2Rpbmcgc2tpbGxzIGFuZCBJIHdpbGwg
ZWl0aGVyIG5lZWQgc29tZSBjb2FjaGluZyBvciB3b3VsZCBiZSBoYXBweSB0byBwYXNzCj4+IHRo
ZSBzZXJpZXMgb3ZlciB0byBhIG1vcmUgZXhwZXJpZW5jZWQgZGV2ZWxvcGVyLgo+Cj4gQSBmbHVz
dGVyIHNjb3JlIGFuZCBleHBsYWluZWQgZXJyb3IgcmVwb3J0IGlzIG1pc3NpbmcgeW91ciB0aGlz
IGNvdmVyIGxldHRlci4gCj4gVGhpcyB3aWxsIHByb2JhYmx5IGhpZ2hsaWdodCBzb21lIG9mIHRo
ZSBpbnN0YWJpbGl0eSBpc3N1ZXMgcmVwb3J0ZWQgaW4gdGhpcwo+IHNlcmllcy4gSSdsbCBtYXJr
IHRoZSBzZXJpZXMgYXJlICJDaGFuZ2UgUmVxdWVzdCIsIGFzIHlvdSBoYXZlIGZldyByZXZpZXcK
PiBjb21tZW50cyBhbmQgbm93IHRoaXMgdGVzdC4KPgo+IE92ZXJhbGwsIEknZCBsaWtlIHRvIHNl
ZSBwcm9iYWJseSBpbnZlc3RpZ2F0aW9ucyBvZiB0aGUgcHJvYmxlbSBiZWZvcmUgZ29pbmcKPiBh
aGVhZC4KCkZUUjogWW91IHJlcGxpZWQgdG8gdjIgd2hpbGUgdGhlcmUgaXMgYSB2MyBoZXJlOgpo
dHRwczovL3BhdGNoLm1zZ2lkLmxpbmsvMjAyNjAxMTAwNTM3MjcuMjI5NTI2MC0xLWNocmlzdGlh
bnNoZXdpdHRAZ21haWwuY29tLwoKSXQgKHN0aWxsKSBkb2Vzbid0IGhhdmUgYSBmbHVzdGVyIHNj
b3JlLCBidXQgaXQgaXMgdGhlIGN1cnJlbnRseSBtb3N0CnJlY2VudCB2ZXJzaW9uIHBvc3RlZCBv
biB0aGUgTUxzLgoKQ2hlZXJzLAogIERpZWRlcmlrCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
