Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4577FCCF9EE
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 19:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3fJ7GAgmsOfAsGLu0Bzisk2nnMtu8Q1xbzY/Sr5aWbc=; b=fxFxnOl9YYAC1r
	UNf/Jb7svsvHDxGRll6dByx04hgFSO2vMheEWrDhZRsQg06Ypdd6Z6StOp/7ID/e3KZfGzNVdVlWP
	FMWfqVFqmJNS9NWNdB2IbJ85uulfxhv8U6gbj+OFKHAHaxpsMAX0EP15Wk0deIoTfpV81githDkn4
	urJXFhFekcWLN4WIRKRn+5OZAvRwabgKZsdPktR20UyUq2Z3K9wSWSTT+JThDcjUL0PUDX2fbTW3/
	YYdc7irZr+K4jH6rAUsy3HLzT1zTChOBs4aTF7hDiRaqnPxRoVBRp4MMJVbm9Gb9GSFnx9uTMB+S3
	x4h5FdSr2sBQf5Ds2FUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDTIU-0000000EhCg-0KCU;
	Mon, 27 Oct 2025 19:54:30 +0000
Received: from out-181.mta1.migadu.com ([95.215.58.181])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDTIQ-0000000EhBe-15PA;
	Mon, 27 Oct 2025 19:54:28 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1761594862;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mJGBCui9T7s9JULkvZa2s1Wi4QfFt1yczMpraKYJAME=;
	b=C0xNo0EFD6UEQdlWe0ijdWjenik7ULzrIRTSe20MEiLs+pXDBzYjh2kgjj67gd8uIBZUXj
	Z0bFrzY7O7rChk/7aI2P3bdi1GmBIVG+36rn78DBrnu3Wp5R0NAJWGLoVEQuJDlUHhAK0k
	3FJu7W02FH2rDhWcwdKYAaSo+PQSW/7kJGYySM3mDexxDPxKhDWfVHXjHYy5zy5xHVlFN0
	EulFcXVM23+s800M7vtbRCg/y6WZMaoVXYJE4JNO/F3/95QrcPLT2BbBmvL8YF+3YOo7fM
	CjxYhkgu7N7BoxtEk7JN+QUpBw2ei2u1FUp1Ncx3Ijprz/3Kjo9xh3DyuhR6WQ==
Date: Mon, 27 Oct 2025 20:54:17 +0100
Message-Id: <DDTD9DGY2LEK.1XF49J28I22SZ@cknow-tech.com>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Dragan Simic" <dsimic@manjaro.org>, "Johan Jonker" <jbx6244@gmail.com>,
 "Jonas Karlman" <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: Harmonize regulator formatting
 for Pine64 rk3566 devices
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Heiko Stuebner" <heiko@sntech.de>, "Diederik de Haas"
 <diederik@cknow-tech.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
References: <20251026153805.107774-1-diederik@cknow-tech.com>
 <DDSFVM1TXN8C.3JNX2M8XX04IF@cknow-tech.com> <5054965.31r3eYUQgx@phil>
In-Reply-To: <5054965.31r3eYUQgx@phil>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_125426_774696_76BADFBB 
X-CRM114-Status: GOOD (  15.76  )
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

SGkgSGVpa28gKGFuZCBEcmFnYW4gYW5kIEpvbmFzKSwKCk9uIE1vbiBPY3QgMjcsIDIwMjUgYXQg
NTo0NiBQTSBDRVQsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+IEFtIFNvbm50YWcsIDI2LiBPa3Rv
YmVyIDIwMjUsIDE4OjQ0OjQyIE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIg
RGllZGVyaWsgZGUgSGFhczoKPj4gT24gU3VuIE9jdCAyNiwgMjAyNSBhdCA0OjM3IFBNIENFVCwg
RGllZGVyaWsgZGUgSGFhcyB3cm90ZToKPj4gPiBUaGUgcmVndWxhdG9yIG5vZGUgcHJvcGVydGll
cyBpbiBQaW5lNjQgcmszNTY2IGRldmljZXMgd2VyZSBmb3JtYXR0ZWQKPj4gPiByYXRoZXIgaW5j
b25zaXN0ZW50bHkuIFRvIG5hbWUgYSBmZXc6Cj4+ID4KPj4gPiBTbyBoYXJtb25pemUgdGhlIGZv
cm1hdHRpbmcgYnkgbWFraW5nIGFsbCBwcm9wZXJ0aWVzIHNvcnRlZAo+PiA+IGFscGhhYmV0aWNh
bGx5L25hdHVyYWxseS4gQW5kIGhhcm1vbml6ZSB0aGUgZm9ybWF0dGluZyBvZiB0aGUKPj4gPiAn
c3RhdGUtbWVtJyBub2RlcyBzbyB0aGV5IGFsbCBoYXZlIGEgcHJlY2VkaW5nIGJsYW5rIGxpbmUu
IFdoaWxlIGF0IGl0LAo+PiA+IGFsc28gZml4IDIgaW5jb3JyZWN0bHkgaW5kZW50ZWQgbm9kZXMu
Cj4KPiBPcmlnaW5hbGx5LCBJIGFsd2F5cyBsaWtlZCByZWd1bGF0b3ItbmFtZSB0byBiZSBvbiB0
b3AsIGlkZW50aWZ5aW5nCj4gdGhlIHJlZ3VsYXRvciwgc2ltaWxhciB0byBob3cgY29tcGF0aWJs
ZSB3b3Jrcy4KClRoYXQgbWFrZXMgYSBsb3Qgb2Ygc2Vuc2UgdG8gbWUgYW5kIEkgaGFkIGFjdHVh
bGx5IHRob3VnaHQgYWJvdXQgZG9pbmcKdGhhdC4gQnV0IEkgZGlkbid0IGhhdmUgYSBqdXN0aWZp
Y2F0aW9uIGZvciBpdCwgd2hpbGUgcmVmZXJyaW5nIHRvIHRoZQpEVFMgc3R5bGUgZ3VpZGUgaXMg
YSBqdXN0aWZpY2F0aW9uLiBNeSBhbm5veWFuY2Ugd2FzIHdpdGggdGhlCmluY29uc2lzdGVuY3ks
IHNvIGNvbnNpc3RlbnRseSBwdXR0aW5nICduYW1lJyBvbiB0b3Agd291bGQgYmUgZmluZSB0b28u
Cgo+IFRoZSBvdGhlciBpc3N1ZSB3aXRoIG1vdmluZyBzdHVmZiBhcm91bmQgaXMsIHRoYXQgaXQg
bWFrZXMgaXQgaGFyZGVyCj4gdG8gZm9sbG93IGdpdCBoaXN0b3J5LCBiZWNhdXNlIGdpdCBibGFt
ZSB0aGVuIHJlcG9ydHMgdGhlIHNvcnQtY29tbWl0LgoKVGhlbiBpdCdzIG5vdCB3b3J0aCBpdCAu
Li4KCj4gSSBndWVzcyBpdCBpcyBvayBmb3IgaW5kaXZpZHVhbCBmaWxlcywgc29tZW9uZSBkb2Vz
IHRha2UgY2FyZSBvZiwKPiBsaWtlIERpZWRlcmlrIGZvciB0aGUgUGluZXRhYiwgYnV0IHBsZWFz
ZSBkb24ndCBzdGFydCByZXNvcnRpbmcgYWxsIHRoZQo+IGV4aXN0aW5nIGRldmljZXRyZWVzIDot
KSAuCgouLi4gYW5kIEknbGwgZmlsZSBpdCB1bmRlciBQRUJLQUMuCgpDaGVlcnMsCiAgRGllZGVy
aWsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
