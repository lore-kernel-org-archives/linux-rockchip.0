Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34450C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jun 2024 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vT+uD/thiIL6LVBx3Sh6iIbWewcwxKoLgSlguJUs53k=; b=MwXWMa6MlEup/iGaltG9Wx8gMP
	Cg5VS0djTCuoPCv42lqQ2EJh48Qbl6llF1kWyFUejPIM3kp4U3vLf+YE13490Bhxx5kB38V7/tUsu
	902CR2ffmZeLh5j4tI0tFq7O/fYHDfNy9iuN1N4TPhhSKrXc9QF6jhgr1KDa7KTyAQPyLXGkcYB1Z
	9AByr6xm2Cl1tTbXhfsnB9DvZqDcGiIiU2DstZkpTWbN/MwgbpsoT4mplXTMSrBT/5hkq+c4hZH1L
	bhiu3PmIPtGZ1FBka7uMGkmG95cRUoDvmoMTMZ7BEdOLYLJalQ04yYz5uA6PKcRGekhyFyIwU4KbO
	A1bQfJlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNaB0-0000000GbPu-1dD1;
	Sat, 29 Jun 2024 15:39:46 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNaAq-0000000GbOq-0p3X;
	Sat, 29 Jun 2024 15:39:37 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719675574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=waJk0JDcbLWa+5H3B25h3EW4Cq2sMa/N3FgnU9ZkX8E=;
	b=V4byZGACLv04ZtZJX0XW7hDYfYzQyfjHrsAxRhVnWkFGcZgnTvqQ7hsUZA/AUfZfXX68OX
	vvoR5lletgqIyYtMJZ65y7J92czOxX084lEEkSCAAWBhDRu3dr9zRXM/XWJ8WCkBNQzpBp
	rzvZy+UL3RezqvoEJy9V0LB/+6Bmj0gZ3VJh7QwrQqRZZenIzYkqEdxGgWHSYpB0TyozIh
	VFbYYOR997H3SNksm1WlcK/A4V/jb/1Zv51Iyn8hNr1nK7UM7nVO9v8ZXQmK2r0X/o7Gql
	wkTczVVuwjO4zHOazBz7iVFCQFTU0nhKR9WrIPhWkQtlVtn26mo7K6Lh1G+Q3w==
Date: Sat, 29 Jun 2024 17:39:34 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, Diederik de Haas <didi.debian@cknow.org>,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: Add optional GPU OPP voltage ranges
 to RK356x SoC dtsi
In-Reply-To: <f10d5a3c425c2c4312512c20bd35073c@manjaro.org>
References: <446399362bd2dbeeaecd8351f68811165429749a.1719637113.git.dsimic@manjaro.org>
 <7679413.EvYhyI6sBW@diego> <f10d5a3c425c2c4312512c20bd35073c@manjaro.org>
Message-ID: <36170f8485293b336106e92346478daa@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240629_083936_540976_F243AD3A 
X-CRM114-Status: GOOD (  22.40  )
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

T24gMjAyNC0wNi0yOSAxNzoyNSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IE9uIDIwMjQtMDYtMjkg
MTc6MTAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBBbSBTYW1zdGFnLCAyOS4gSnVuaSAyMDI0
LCAwNzoxMToyNCBDRVNUIHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+PiAKPj4+ICsjaWZuZGVmIFJL
MzU2WF9HUFVfTlBVX1NIQVJFRF9SRUdVTEFUT1IKPj4gCj4+IGlzIHRoZXJlIHNvbWUgcmVhc29u
IGZvciB0aGlzIGR1cGxpY2F0aW5nIG9mIG9wcHM/Cj4+IAo+PiBUaGUgcmVndWxhdG9yIGZyYW1l
d29yayBzaG91bGQgcGljayB0aGUgbG93ZXN0IHN1cHBvcnRlZCB2b2x0YWdlCj4+IGFueXdheSwg
c28gaXQgc2VlbXMgeW91J3JlIGp1c3QgZXh0ZW5kaW5nIHRoZW0gdXB3YXJkcyBhIGJpdC4KPj4g
Cj4+IFNvIEkgcmVhbGx5IGRvbid0IHNvIHdoeSB3ZSdkIG5lZWQgdG8gc2V0cyBoZXJlLgo+IAo+
IFRoZSByZWFzb24gaXMgaW1wcm92ZWQgc3RyaWN0bmVzcy4gIEhhdmluZyB0aGUgZXhhY3QgR1BV
IE9QUCB2b2x0YWdlcwo+IHJlcXVpcmVkIGZvciB0aGUgYm9hcmRzIHdob3NlIEdQVSByZWd1bGF0
b3JzIGNhbiBwcm92aWRlIHRob3NlIGV4YWN0Cj4gdm9sdGFnZXMgbWFrZXMgaXQgcG9zc2libGUg
dG8gZGV0ZWN0IG1pc2NvbmZpZ3VyYXRpb25zIG11Y2ggZWFzaWVyLAo+IGp1c3QgbGlrZSBpdCB3
YXMgdGhlIGNhc2Ugd2l0aCB0aGUgYm9hcmQgZHRzIG1pc2NvbmZpZ3VyYXRpb24gdGhhdAo+IHJl
c3VsdGVkIGluIHRoZSByZWNlbnQgRENEQ19SRUcyIHBhdGNoLiBbMV0KPiAKPiBJZiB3ZSBoYWQg
R1BVIE9QUCB2b2x0YWdlIHJhbmdlcyBpbiBwbGFjZSBpbnN0ZWFkLCB0aGUgYWZvcmVtZW50aW9u
ZWQKPiBpc3N1ZSB3b3VsZCBwcm9iYWJseSByZW1haW4gdW5kZXRlY3RlZCBmb3Igc29tZSB0aW1l
LiAgSXQgd291bGRuJ3QgYmUKPiB0aGUgZW5kIG9mIHRoZSB3b3JsZCwgOikgb2YgY291cnNlLCBi
dXQgdGhlIHJlc3VsdGluZyBpbmNyZWFzZWQgcG93ZXIKPiBjb25zdW1wdGlvbiBpc24ndCBvbmUg
b2YgdGhlIGRlc2lyZWQgb3V0Y29tZXMuCj4gCj4gWzFdIAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LXJvY2tjaGlwL2U3MDc0MmVhMmRmNDMyYmY1N2IzZjdkZTU0MmQ4MWNhMjJiMGRh
MmYuMTcxNjIyNTQ4My5naXQuZHNpbWljQG1hbmphcm8ub3JnLwoKT24gc2Vjb25kIHRob3VnaHQs
IGFmdGVyIHNlZWluZyB0aGF0IHRoZSBSSzMzOTkgQ1BVIGFuZCBHUFUgT1BQcwphbHJlYWR5IHNw
ZWNpZnkgdm9sdGFnZSByYW5nZXMsIEkgdGhpbmsgaXQgd291bGQgYmUgYmV0dGVyIHRvIGRyb3AK
dGhlIGRpc3RpbmN0aW9uIGJldHdlZW4gdGhlIHNlcGFyYXRlIHN0cmljdCB2b2x0YWdlcyBhbmQg
dGhlIHZvbHRhZ2UKcmFuZ2VzIGluIHRoaXMgcGF0Y2gsIGFuZCB0byBhZGQgc29tZSBhZGRpdGlv
bmFsIGRlYnVnZ2luZyBtZXNzYWdlcwp0byBkcml2ZXJzL29wcC9vZi5jIHRoYXQgd291bGQgYWxs
b3cgYW55IG1pc2NvbmZpZ3VyYXRpb24gaXNzdWVzIHRvCmJlIHJhdGhlciBlYXNpbHkgZGV0ZWN0
ZWQuCgo+PiBBbHNvIHRoZSB2b2x0YWdlLXJhbmdlIHRoaW5nIG1ha2VzIHNlbnNlIGZvciBub24t
Z3B1LW5wdS1zaGFyaW5nCj4+IGJvYXJkcywgd2hlbiB0aGUgc3VwcGx5aW5nIHJlZ3VsYXRvciBk
b2VzIG5vdCBmdWxseSBzdXBwb3J0IHRoZQo+PiBkaXJlY3Qgc2luZ2xlLXZhbHVlIHZvbHRhZ2Uu
Cj4+IAo+PiAocmszMzk5LXB1bWEgd2FzIHN1Y2ggYSBjYXNlIGlmIEkgcmVtZW1iZXIgY29ycmVj
dGx5KQo+PiAKPj4gU28gSSByZWFsbHkgc2VlIG5vIHJlYXNvbiBmb3IgdGhpcyBkdXBsaWNhdGlv
bi4KPiAKPiBQZXJoYXBzIHdlIGNvdWxkIHJlbmFtZSB0aGUgUkszNTZYX0dQVV9OUFVfU0hBUkVE
X1JFR1VMQVRPUiBtYWNybwo+IGFjY29yZGluZ2x5IGluIHRoZSB2MiwgdG8gUkszNTZYX0dQVV9P
UFBfVk9MVEFHRV9SQU5HRVMsIGZvciBleGFtcGxlLAo+IHdpdGggc29tZSBhZGRpdGlvbmFsIGV4
cGxhbmF0aW9ucyBpbiB0aGUgcGF0Y2ggZGVzY3JpcHRpb24gYW5kIHRoZQo+IFJLMzU2eCBTb0Mg
ZHRzaSBmaWxlIGl0c2VsZi4KPiAKPj4+ICAJCW9wcC0yMDAwMDAwMDAgewo+Pj4gIAkJCW9wcC1o
eiA9IC9iaXRzLyA2NCA8MjAwMDAwMDAwPjsKPj4+ICAJCQlvcHAtbWljcm92b2x0ID0gPDgyNTAw
MD47Cj4+PiBAQCAtMjIyLDYgKzIyOSwzNyBAQCBvcHAtODAwMDAwMDAwIHsKPj4+ICAJCQlvcHAt
aHogPSAvYml0cy8gNjQgPDgwMDAwMDAwMD47Cj4+PiAgCQkJb3BwLW1pY3Jvdm9sdCA9IDwxMDAw
MDAwPjsKPj4+ICAJCX07Cj4+PiArI2Vsc2UKPj4+ICsJCW9wcC0yMDAwMDAwMDAgewo+Pj4gKwkJ
CW9wcC1oeiA9IC9iaXRzLyA2NCA8MjAwMDAwMDAwPjsKPj4+ICsJCQlvcHAtbWljcm92b2x0ID0g
PDgyNTAwMCA4MjUwMDAgMTAwMDAwMD47Cj4+PiArCQl9Owo+Pj4gKwo+Pj4gKwkJb3BwLTMwMDAw
MDAwMCB7Cj4+PiArCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDwzMDAwMDAwMDA+Owo+Pj4gKwkJCW9w
cC1taWNyb3ZvbHQgPSA8ODI1MDAwIDgyNTAwMCAxMDAwMDAwPjsKPj4+ICsJCX07Cj4+PiArCj4+
PiArCQlvcHAtNDAwMDAwMDAwIHsKPj4+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDQwMDAwMDAw
MD47Cj4+PiArCQkJb3BwLW1pY3Jvdm9sdCA9IDw4MjUwMDAgODI1MDAwIDEwMDAwMDA+Owo+Pj4g
KwkJfTsKPj4+ICsKPj4+ICsJCW9wcC02MDAwMDAwMDAgewo+Pj4gKwkJCW9wcC1oeiA9IC9iaXRz
LyA2NCA8NjAwMDAwMDAwPjsKPj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDgyNTAwMCA4MjUwMDAg
MTAwMDAwMD47Cj4+PiArCQl9Owo+Pj4gKwo+Pj4gKwkJb3BwLTcwMDAwMDAwMCB7Cj4+PiArCQkJ
b3BwLWh6ID0gL2JpdHMvIDY0IDw3MDAwMDAwMDA+Owo+Pj4gKwkJCW9wcC1taWNyb3ZvbHQgPSA8
OTAwMDAwIDkwMDAwMCAxMDAwMDAwPjsKPj4+ICsJCX07Cj4+PiArCj4+PiArCQlvcHAtODAwMDAw
MDAwIHsKPj4+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDgwMDAwMDAwMD47Cj4+PiArCQkJb3Bw
LW1pY3Jvdm9sdCA9IDwxMDAwMDAwIDEwMDAwMDAgMTAwMDAwMD47Cj4+PiArCQl9Owo+Pj4gKyNl
bmRpZiAvKiBSSzM1NlhfR1BVX05QVV9TSEFSRURfUkVHVUxBVE9SICovCj4+PiAgCX07Cj4+PiAK
Pj4+ICAJaGRtaV9zb3VuZDogaGRtaS1zb3VuZCB7Cj4+PiAKPj4gCj4+IAo+PiAKPj4gCj4+IAo+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
