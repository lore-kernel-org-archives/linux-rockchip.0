Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25AB3C021B5
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Feb 2025 04:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSxsvqyjt4O3eUaqIn90T3NKKWn9BmALjakNnxj6/dg=; b=bwbKxf+/C1JYqL
	21OU3/AwXyo2CheJ/7onG75xb943+yRA/xR88Ql+nuc7Bmx4F++rZVUiIGk0KGoaYM5a5DTKUwLWY
	aCE0SNyOrGqaGzwjeXbwfR8LYnrLYA407XF4iHlMUqyHYrMm4dGnPXIcXhpystShx+lsllrEQlHJC
	VfPndSathwR0qX1KTb+phjVdZ3lvIaJqT0Tw/M8icOi36p0aCF3D3ntIB125LrjquVoURJe4V/fo5
	iFCrMyUFc4197b4AoVQjBhbRW2qdFqmbjob5j3kfunU7/1lHFoz7cYQEn4mc6pJPWO2M0nRjxzNUr
	WIHneRm7h/I+PCmujEeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlhHI-00000007RsG-3goC;
	Sat, 22 Feb 2025 04:38:12 +0000
Received: from out.bound.email ([141.193.244.10])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlhFp-00000007RkB-1e9n;
	Sat, 22 Feb 2025 04:36:42 +0000
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id 6B4318A0A03;
	Fri, 21 Feb 2025 20:31:38 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id 53B7B160036F; Fri, 21 Feb 2025 20:31:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740198698;
	bh=JVPXaGswn6h9CQME9YRi+phZaOE/13SLpDLogchJANM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E/dlZ6D1Arf0WodgxXqPt7bEWnIj0uZOjyg5MC8RpBmWOdzP+vhBPGysfC826Lk6c
	 CR/F3LJo6ghe6xix0waGz2pVBrcmgBBZ4ZCLo7r7o4PGUvANoq5eX+UhShO0yp9HzY
	 10uZfly67E3E8fptEz2mMXBCggsZshbeEPq9JA50=
Date: Fri, 21 Feb 2025 20:31:38 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH UNTESTED v5 0/4] Orange Pi 5 Ultra
Message-ID: <20250222043138.GT16911@sventech.com>
References: <20250220041010.3801-1-honyuenkwun@gmail.com>
 <20250221231340.GS16911@sventech.com>
 <CALWfF7KW8_vAx49nNygKpLHNJQVpjvVdVpzYiTAWgQvSopHikw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALWfF7KW8_vAx49nNygKpLHNJQVpjvVdVpzYiTAWgQvSopHikw@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_203641_553856_DBE42E88 
X-CRM114-Status: GOOD (  23.04  )
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

T24gRnJpLCBGZWIgMjEsIDIwMjUsIEppbW15IEhvbiA8aG9ueXVlbmt3dW5AZ21haWwuY29tPiB3
cm90ZToKPiBPbiBGcmksIEZlYiAyMSwgMjAyNSBhdCA1OjEz4oCvUE0gSm9oYW5uZXMgRXJkZmVs
dCA8am9oYW5uZXNAZXJkZmVsdC5jb20+IHdyb3RlOgo+ID4gSG93ZXZlciwgbmVpdGhlciBvZiB0
aGUgVVNCIDMuMCBwb3J0cyB3b3JrLiBUaGVyZSBhcmUgbm8gWEhDSSBtZXNzYWdlcwo+ID4gZHVy
aW5nIGJvb3QuIEkgY29uZmlybWVkIG15IGtlcm5lbCBjb25maWcgZG9lcyBidWlsZCBYSENJLiBJ
IGhhdmVuJ3QKPiA+IHJ1bGVkIG91dCBhIG1pc3Rha2Ugb24gbXkgZW5kIHlldC4KPiAKPiBEb2Vz
IHlvdXIga2VybmVsIGNvbmZpZyBoYXZlIENPTkZJR19QSFlfUk9DS0NISVBfVVNCRFA/Cj4gQm90
aCBVU0IgMyBwb3J0cyBvbiB0aGUgTWF4L1VsdHJhIHBvcnRzIGFyZSB3aXJlZCB0byB0aGUgdXNi
ZHAKPiBjb250cm9sbGVyIGFuZCBub3QgY29tYnBoeTJfcHN1IGNvbnRyb2xsZXIuCj4gSXQnbGwg
YmUgc2V0IGlmIHlvdSdyZSB1c2luZyB0aGUgYXJtNjQgZGVmY29uZmlnLgoKWWVhaCwgd2UgY2Ft
ZSB0byB0aGUgc2FtZSBjb25jbHVzaW9uLiBJIG5vdGljZWQgdGhpcyB3YXMgZGlzYWJsZWQgaW4g
bXkKY29uZmlnIHdoZW4gSSB3YXMgbG9va2luZyBmb3IgcG90ZW50aWFsIG1pc3Rha2VzIEkgbWF5
IGhhdmUgbWFkZS4KCkVuYWJsaW5nIGl0IGZpeGVzIHRoZSBVU0IgMy4wIHBvcnQgcHJvYmxlbS4K
Cj4gPiBBbHNvLCB0aGUgZ3JlZW4gTEVEIGlzIGNvbnN0YW50bHkgbGl0IGV2ZW4gd2hlbiB0aGUg
dHJpZ2dlciBpcyBzZXQgdG8KPiA+IG5vbmUgYW5kIHRoZSBicmlnaHRuZXNzIGlzIHNldCB0byAw
LiBUaGlzIG1hZGUgaXMgYSBiaXQgaGFyZGVyIHRvCj4gPiBjb25maXJtIHRoYXQgdGhlIGJsdWUg
TEVEIHdhcyB3b3JraW5nLiBJIGhhdmVuJ3QgcnVsZWQgb3V0IGEgbWlzdGFrZSBvbgo+ID4gbXkg
ZW5kIGZvciB0aGlzIG9uZSB5ZXQgZWl0aGVyLgo+IAo+IENoZWNraW5nIHRoZSBzY2hlbWF0aWMg
Zm9yIHRoZSBNYXggYW5kIHRoZSBVbHRyYSwgdGhleSBib3RoIHVzZQo+IFBXTTRfTTAgYW5kIFBX
TTVfTTEgdG8gY29udHJvbCB0aGUgYmx1ZSBhbmQgZ3JlZW4gTEVEcy4KClNvbWUgYnJpZWYgdGVz
dGluZyBtYWtlcyBpdCBzZWVtIGxpa2UgdGhlIExFRHMgYXJlIGludmVydGVkLgoKSWYgSSBzZXQg
dGhlIHRyaWdnZXIgZm9yIGVhY2ggTEVEIHRvICJkZWZhdWx0LW9uIiwgdGhlbiB0aGV5IHR1cm4g
b2ZmLgpJZiBib3RoIGFyZSBzZXQgdG8gImRlZmF1bHQtb24iLCB0aGVuIG9ubHkgdGhlIHJlZCBM
RUQgaXMgbGl0LgoKQWxzbywgImhlYXJ0YmVhdCIgYXBwZWFycyB0byBiZSBpbnZlcnRlZC4KCkkg
dHJpZWQgYSBuZXcgRFQgd2l0aCB0aGlzIHBhdGNoIGFuZCBpdCBhcHBlYXJzIHRvIHdvcmsgY29y
cmVjdGx5IG9uIHRoZQpVbHRyYSBJIGhhdmUuIEhvd2V2ZXIsIGl0IHJhaXNlcyB0aGUgcXVlc3Rp
b24gd2h5IHRoZSBNYXggYmVoYXZlcwpkaWZmZXJlbnRseSBmcm9tIHRoZSBVbHRyYS4KCmRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LWNv
bXBhY3QuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBp
LTUtY29tcGFjdC5kdHNpCmluZGV4IDg3MDkwY2I5ODAyMC4uZWQ1MWE0NzYzMzE4IDEwMDY0NAot
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LWNvbXBh
Y3QuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2Vw
aS01LWNvbXBhY3QuZHRzaQpAQCAtNCw2ICs0LDcgQEAKIAogI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L2dwaW8vZ3Bpby5oPgogI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAuaD4K
KyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9wd20vcHdtLmg+CiAjaW5jbHVkZSAicmszNTg4LW9yYW5n
ZXBpLTUuZHRzaSIKIAogLyB7CkBAIC02MiwxMyArNjMsMTMgQEAgJmh5bTg1NjMgewogCiAmbGVk
X2JsdWVfcHdtIHsKIAkvKiBQV01fTEVEMSAqLwotCXB3bXMgPSA8JnB3bTQgMCAyNTAwMCAwPjsK
Kwlwd21zID0gPCZwd200IDAgMjUwMDAgUFdNX1BPTEFSSVRZX0lOVkVSVEVEPjsKIAlzdGF0dXMg
PSAib2theSI7CiB9OwogCiAmbGVkX2dyZWVuX3B3bSB7CiAJLyogUFdNX0xFRDIgKi8KLQlwd21z
ID0gPCZwd201IDAgMjUwMDAgMD47CisJcHdtcyA9IDwmcHdtNSAwIDI1MDAwIFBXTV9QT0xBUklU
WV9JTlZFUlRFRD47CiB9OwogCiAvKiBwaHkyICovCgpKRQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
