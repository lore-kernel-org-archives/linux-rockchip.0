Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33084D42B9C
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 15:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CO/wO1WEI/T707jLMkP+e+wSEaQrIjWQCeoyHcZ7Vqs=; b=Un4wce0PLW9SCrM1oijFJAakEQ
	9wCKSJT+UsWRoWcRo/G4UFcePIILqNHmqGVG8gR3/ERSdt8s0MsmNtXg8Yx0N9p434lHlEOcWZLwU
	YlV8iztN/IinHC1Jp8CSumXiqI835lSrcb7pxVjYIgX5poOE4oNuSjNZPLFRFfYictY82tW5jSN+Q
	0YC9PeywTkaV/7AYFGq9MV4AewQIMbtRv9L7kNpmMOSNQDjHl/yfTRXUu3VeUW7hdSvtbMMbfddx/
	mvz9c2oxAa+eXCUUxfr/X0zt6WbasOLQWfrjk4SN1lYhzpd51nrGDVKIJbBeMSPmvlRetBhWMWtJE
	OrzqS7Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAsek-00000003vlj-0LIg;
	Tue, 12 Nov 2024 15:18:14 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAsc2-00000003uuZ-0UAr;
	Tue, 12 Nov 2024 15:15:28 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1731424523;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=I+T4tSwskXOccnMHjrQgT921+1/jkcnTnTZ1NbAhny8=;
	b=As8GlpHyj4QIfc0wiqwTGXTfMj1WhRthprGtIRGhtbFpPJgGHGutu0qGzKOPHPyJ2vqvnx
	BrUrIgTd0z/MWaPePRTUFoBdHJex4vZXbl2E0H0YMvPwmJRZcNpjD/hafUsz1rE22v8aKU
	W9pZz9NHd8ZueTSVpGPGs2WUMKVlyhVZT8WuTF3PXSqQYCCNXMDcIXq0ipy20Ko9/HrZsS
	NwLf61tktTX/blwvOCLEpg3OuYafMoTsinJ47BinZatfMEcbsKkzgi2yVW62wqnYlD+WhY
	5x6FhvpOrGNUb6W0UBEYWuTw08t4mB/oMXph8wUKBRZI4nSLxVDgulf5maU0OQ==
Date: Tue, 12 Nov 2024 16:15:23 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@linux.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki
 <naoki@radxa.com>, Chukun Pan <amadeus@jmu.edu.cn>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Enable sdmmc2 on rock-3b and
 set it up for SDIO devices
In-Reply-To: <CA+Gksr+WvS-S+jeYYG=Bo9cemvnJmjsmU4aj9YnD3t8-HY7wbw@mail.gmail.com>
References: <20241111181807.13211-1-tszucs@linux.com>
 <20241111181807.13211-3-tszucs@linux.com>
 <9fbdf05c-42e6-4ac5-9542-805200bc8c87@kwiboo.se>
 <260af427ae64d6f3b02a1579ee83eb3b@manjaro.org>
 <CA+Gksr+WvS-S+jeYYG=Bo9cemvnJmjsmU4aj9YnD3t8-HY7wbw@mail.gmail.com>
Message-ID: <303ad3910668e852d6670d1c79dc22e0@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_071526_473839_22B7170A 
X-CRM114-Status: GOOD (  29.21  )
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

SGVsbG8gVGFtYXMsCgpPbiAyMDI0LTExLTEyIDE1OjM1LCBUYW3DoXMgU3rFsWNzIHdyb3RlOgo+
IEkgdGhpbmsgaXQgd2FzIHRvdGFsbHkgZmluZSB0byBkaXNhYmxlIHNkbW1jMiBhdCBmaXJzdCwg
ZXNwZWNpYWxseSBpZgo+IGl0IGNvdWxkbuKAmXQgYmUgdGVzdGVkIG9yIHdhc27igJl0IG5lZWRl
ZCByaWdodCBhd2F5LiBGcm9tIHdoYXQgSeKAmXZlCj4gc2VlbiwgdGhpcyBib2FyZCB3b3JrcyBn
cmVhdCBldmVuIGF0IGhpZ2hlciBjbG9jayBzcGVlZHMgdGhhbiB3aGF0Cj4gcmszNTZ4LWJhc2Uu
ZHRzaSBzdWdnZXN0cy4gSSBkb27igJl0IGhhdmUgYWNjZXNzIHRvIHRoZSBSSzM1NjggZXJyYXRh
LAo+IGFuZCB0aGVyZSBkb27igJl0IHNlZW0gdG8gYmUgYW55IGxpbWl0cyBtZW50aW9uZWQgaW4g
dGhlIFRSTSBlaXRoZXIuCj4gT3ZlcmFsbCwgdGhpcyBib2FyZCBpcyBkb2luZyBqdXN0IGZpbmUg
YXMgaXQgaXMuCgpTb3JyeSwgSSdtIG1pc3NpbmcgdGhlIHBvaW50IG9mIG1lbnRpb25pbmcgc29t
ZSBjbG9jayBzcGVlZHM/ICBBbnkKY2hhbmNlcywgcGxlYXNlLCB0byBjbGFyaWZ5IHRoYXQgYSBi
aXQ/Cgo+IFJlZ2FyZGluZyBkZXZpY2UgdHJlZSBvdmVybGF5cywgdGhleSB3b3VsZCBiZSBpZGVh
bCBmb3IgaW1wbGVtZW50aW5nCj4gc2Vjb25kYXJ5IGZ1bmN0aW9ucywgc3VjaCBhcyBQQ0llIGVu
ZHBvaW50IG1vZGUgZm9yIHVzZXJzIHdpdGgKPiBzcGVjaWZpYyByZXF1aXJlbWVudHMuIEhvd2V2
ZXIsIHRoZSBwcmltYXJ5IGZ1bmN0aW9ucyBmb3IgUENJZSBvbiB0aGUKPiBNMkUgd2lsbCBiZSBy
b290IGNvbXBsZXggbW9kZSwgYWxvbmcgd2l0aCBTRElPIGhvc3QsIGV0Yy4gSW4gbXkgdmlldywK
PiB0aGUgaGFyZHdhcmUgaXMgd2VsbC1kZXNpZ25lZCBhbmQgaW50ZXJjb25uZWN0ZWQuIFVzZXJz
IGhhdmUgYQo+IHJlYXNvbmFibGUgZXhwZWN0YXRpb24gdGhhdCB0aGVzZSBwcmltYXJ5IGZ1bmN0
aW9ucyBzaG91bGQgd29yawo+IHNlYW1sZXNzbHkgd2l0aG91dCBhZGRpdGlvbmFsIGNvbmZpZ3Vy
YXRpb24sIHJpZ2h0IG91dCBvZiB0aGUgYm94LgoKVGhhdCdzIGJhc2ljYWxseSB3aGF0IEkgcmVm
ZXJyZWQgdG8gaW4gbXkgZWFybGllciByZXNwb25zZSwgYW5kIGluIG15CnByZXZpb3VzIHJlc3Bv
bnNlIHJlZ2FyZGluZyB0aGUgVUFSVC4gIFVzZXJzIHdvdWxkIGV4cGVjdCB0aGUgQmx1ZXRvb3Ro
CnBhcnQgdG8gd29yayBhcyB3ZWxsLCBidXQgdGhlIGVycm9yIG1lc3NhZ2VzIEkgbWVudGlvbmVk
IGxvb2sgbmFzdHksIHNvCnBlcmhhcHMgc29tZXRoaW5nIHNob3VsZCBiZSBkb25lIGFib3V0IHRo
YXQgZmlyc3QuCgo+IERyYWdhbiwgd2hhdCBkaWQgeW91IG1lYW4gYnkgU0RJTyByZWxhdGVkIHBv
d2VyIHRpbWluZyByZXF1aXJlbWVudHM/CgpXaGVuZXZlciB0aGVyZSdzIGFuIFNESU8gbW9kdWxl
LCB0aGVyZSdzIHVzdWFsbHkgc29tZSByZXF1aXJlZCB0aW1pbmcKb2YgdGhlIHBvd2VyIHJhaWxz
LiAgVGhvdWdoLCBJIGRvbid0IGtub3cgd2hhdCdzIHRoYXQgbGlrZSB3aXRoIHRoZQpub24tc3Rh
bmRhcmQgTS4yIFNESU8gbW9kdWxlcyB0aGF0IFJhZHhhIHNlbGxzLCB3aGljaCBhcmUgaW50ZW5k
ZWQgdG8KYmUgdXNlZCBvbiBSYWR4YSBib2FyZHMgd2l0aCAiaHlicmlkIiBNLjIgc2xvdHMuCgpP
bmNlIGFnYWluLCBwbGVhc2UgdXNlIGlubGluZSByZXBseWluZy4gWypdCgpbKl0gaHR0cHM6Ly9l
bi53aWtpcGVkaWEub3JnL3dpa2kvUG9zdGluZ19zdHlsZQoKPiBPbiBUdWUsIE5vdiAxMiwgMjAy
NCBhdCA1OjQx4oCvQU0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IAo+IHdyb3Rl
Ogo+PiAKPj4gSGVsbG8gSm9uYXMgYW5kIFRhbWFzLAo+PiAKPj4gT24gMjAyNC0xMS0xMSAyMDow
NiwgSm9uYXMgS2FybG1hbiB3cm90ZToKPj4gPiBPbiAyMDI0LTExLTExIDE5OjE3LCBUYW3DoXMg
U3rFsWNzIHdyb3RlOgo+PiA+PiBFbmFibGUgU0RJTyBvbiBSYWR4YSBST0NLIDMgTW9kZWwgQiBN
LjIgS2V5IEUuIEFkZCBhbGwgc3VwcG9ydGVkIFVIUy1JCj4+ID4+IHJhdGVzIGFuZAo+PiA+PiBl
bmFibGUgMjAwIE1IeiBtYXhpbXVtIGNsb2NrLiBBbHNvLCBhbGxvdyBob3N0IHdha2V1cCB2aWEg
U0RJTyBJUlEuCj4+ID4+Cj4+ID4+IFNpZ25lZC1vZmYtYnk6IFRhbcOhcyBTesWxY3MgPHRzenVj
c0BsaW51eC5jb20+Cj4+ID4+IC0tLQo+PiA+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1Njgtcm9jay0zYi5kdHMgfCA4ICsrKysrKystCj4+ID4+ICAxIGZpbGUgY2hhbmdlZCwg
NyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+ID4+Cj4+ID4+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cwo+PiA+PiBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4+ID4+IGluZGV4
IDI0MmFmNTMzN2NkZi4uYjc1MjdiYTQxOGY3IDEwMDY0NAo+PiA+PiAtLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cwo+PiA+PiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cwo+PiA+PiBAQCAtNjg4LDE0
ICs2ODgsMjAgQEAgJnNkbW1jMiB7Cj4+ID4+ICAgICAgY2FwLXNkLWhpZ2hzcGVlZDsKPj4gPj4g
ICAgICBjYXAtc2Rpby1pcnE7Cj4+ID4+ICAgICAga2VlcC1wb3dlci1pbi1zdXNwZW5kOwo+PiA+
PiArICAgIG1heC1mcmVxdWVuY3kgPSA8MjAwMDAwMDAwPjsKPj4gPj4gICAgICBtbWMtcHdyc2Vx
ID0gPCZzZGlvX3B3cnNlcT47Cj4+ID4+ICAgICAgbm9uLXJlbW92YWJsZTsKPj4gPj4gICAgICBw
aW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiA+PiAgICAgIHBpbmN0cmwtMCA9IDwmc2RtbWMy
bTBfYnVzNCAmc2RtbWMybTBfY2xrICZzZG1tYzJtMF9jbWQ+Owo+PiA+PiArICAgIHNkLXVocy1z
ZHIxMjsKPj4gPj4gKyAgICBzZC11aHMtc2RyMjU7Cj4+ID4+ICsgICAgc2QtdWhzLXNkcjUwOwo+
PiA+Cj4+ID4gSSB0aG91Z2h0IHRoYXQgbG93ZXIgc3BlZWRzIHdhcyBpbXBsaWVkIGJ5IHVocy1z
ZHIxMDQ/Cj4+IAo+PiBMYXN0IHRpbWUgSSB3ZW50IHRocm91Z2ggdGhlIE1NQyBkcml2ZXJzLCB0
aGV5IHdlcmUgaW1wbGllZC4gIElJUkMsCj4+IHN1Y2ggYmFja3dhcmQgbW9kZSBjb21wYXRpYmls
aXR5IGlzIGFjdHVhbGx5IGEgcmVxdWlyZW1lbnQgbWFkZSBieQo+PiB0aGUgTU1DIHNwZWNpZmlj
YXRpb24uCj4+IAo+PiA+PiAgICAgIHNkLXVocy1zZHIxMDQ7Cj4+ID4+ICsgICAgc2QtdWhzLWRk
cjUwOwo+PiA+PiAgICAgIHZtbWMtc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzMj47Cj4+ID4+ICAgICAg
dnFtbWMtc3VwcGx5ID0gPCZ2Y2NfMXY4PjsKPj4gPj4gLSAgICBzdGF0dXMgPSAiZGlzYWJsZWQi
Owo+PiA+PiArICAgIHdha2V1cC1zb3VyY2U7Cj4+ID4+ICsgICAgc3RhdHVzID0gIm9rYXkiOwo+
PiA+Cj4+ID4gVGhpcyBzaG91bGQgcHJvYmFibHkgYmUgZW5hYmxlZCB1c2luZyBhbiBkdC1vdmVy
bGF5LCB0aGVyZSBpcyBubwo+PiA+IFNESU8gZGV2aWNlIGVtYmVkZGVkIG9uIHRoZSBib2FyZCBh
bmQgdGhlIHJlYXNvbiBJIGxlZnQgaXQgZGlzYWJsZWQKPj4gPiBpbiBvcmlnaW5hbCBib2FyZCBE
VCBzdWJtaXNzaW9uLgo+PiAKPj4gSnVzdCB3ZW50IHRocm91Z2ggdGhlIFJPQ0sgM0Igc2NoZW1h
dGljLCB2ZXJzaW9uIDEuNTEsIGFuZCBJIHRoaW5rCj4+IHRoZXJlIHNob3VsZCBiZSBubyBuZWVk
IGZvciBhIHNlcGFyYXRlIG92ZXJsYXksIGJlY2F1c2Ugc2RtbWMyIGdvZXMKPj4gdG8gdGhlIE0u
MiBzbG90IG9uIHRoZSBib2FyZCwgd2hpY2ggYW55IHVzZXIgY2FuIHBsdWcgYW4gTS4yIG1vZHVs
ZQo+PiBpbnRvLCBhbmQgdGhlIFNESU8gaW50ZXJmYWNlIGlzIGtpbmQtb2Ygc2VsZi1kaXNjb3Zl
cmFibGUuCj4+IAo+PiBPZiBjb3Vyc2UsIGFsbCB0aGF0IHVubGVzcyB0aGVyZSBhcmUgc29tZSBo
b3JyaWJseSBsb29raW5nIDopIGVycm9yCj4+IG1lc3NhZ2VzIGVtaXR0ZWQgdG8gdGhlIGtlcm5l
bCBsb2cgd2hlbiBub3RoaW5nIGlzIGFjdHVhbGx5IGZvdW5kLAo+PiBpbiB3aGljaCBjYXNlIHRo
ZSBTRElPL01NQyBkcmllcnMgc2hvdWxkIGJlIGZpeGVkIGZpcnN0LiAgQWxzbywgSSdtCj4+IG5v
dCBzdXJlIHdoYXQgZG8gd2UgZG8gd2l0aCB0aGUgcG9zc2libGUgU0RJTy1yZWxhdGVkIHBvd2Vy
IHRpbWluZwo+PiByZXF1aXJlbWVudHM/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
