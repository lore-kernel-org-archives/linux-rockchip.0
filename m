Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CE18C25B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 23:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBFjCI5QnJ1DzlAToN7lCIuCyccwWh1Pn7fexH7np0w=; b=A1DWWoGxGwd+hL
	IJ1axOA5cr8o/ugQWFwALLihQ5iRgQGYFilh0EXPEbJss0pIAZOMEScpKpF2ICwyW0+AcKYwThRi9
	uwS6m5x5nrkceONXYHiR5r5XrY/DqwtNT+a0ln0OHSqSuTRaipTjnfJFxdE/tgzauVtDithdNIaJB
	ufQa7k7AXC9MyxtJ3mxqFE1em5hMPI/Zgz9VE++kTEUQ5EcDK5NaRMJK47QeAS8hN5RlUKUOdVMP8
	41JdlzFP1sicjVNhqKmZcyY9BShlbOqimYWuKQ/Vk54fKT1ZYwL7ENqw+rq0QbGO3uCVUOmAngHHH
	3J/UQvKobq8/cXqpcwIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDBkT-0000000Bg0u-2sdC;
	Fri, 31 May 2024 23:33:25 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDBkK-0000000Bfyw-3jdm
	for linux-rockchip@lists.infradead.org;
	Fri, 31 May 2024 23:33:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1717198356;
 bh=/k1PnOZIBQq7/TC/41KnYN6gtYkoZOfq1Q0coM4QxJ4=;
 b=RProvbfYPLHpgXwrA3df5NcfroFVLMKAs6uNyjYk0r7k8VTdrS671fp3euyopiFiQk0GOssP2
 9HkRYTVycv92+sI9XfCERO8CbIjUzoa+8KH+cLGeOaCCQSlPYivx2KZsFRxejQSs5a8yrOI5J2n
 sVo0YCMZrKLMgO2IsGaP69CDD2B5ab51f2E02EVeBHXW+A58bjXa3MliNEIct15F17hzrVGKWU6
 M5dDRPyBdcnwB9cS9bSwh2W6/zt1/jgY2MeII9GcQVCmhRZ4GYAkp29e1mLigWLDZPHtJxS19AI
 IktfvYbsOkGVgyQahBKpxhOtKpDRcFCmKZcfoNawXdow==
Message-ID: <e4e0c2a4-0d63-434f-ba52-6aaf571e30a5@kwiboo.se>
Date: Sat, 1 Jun 2024 01:32:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] arm64: dts: rockchip: Make preparations for
 per-RK3588-variant OPPs
To: Alexey Charkov <alchark@gmail.com>
Cc: Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org,
 heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org,
 quentin.schulz@cherry.de, wens@kernel.org, daniel.lezcano@linaro.org,
 didi.debian@cknow.org, krzysztof.kozlowski+dt@linaro.org,
 viresh.kumar@linaro.org
References: <673dcf47596e7bc8ba065034e339bb1bbf9cdcb0.1716948159.git.dsimic@manjaro.org>
 <CABjd4YxD41DEkBCZfkznLboEY9ZVOfTCLcj4S_kkcsVswbANyQ@mail.gmail.com>
 <8f8623e29a479c4108141302e708dc3b@manjaro.org>
 <CABjd4Yy4RMg+6-4ygV0MSwJj5LReY-ymbctq4PPfVZ6L+c1tsw@mail.gmail.com>
 <166cc4e46f31644a50306625b2ab18a6@manjaro.org>
 <CABjd4YzDNQa45=KC_t0xnTDrH+g-oUrcpgP55oOj7JcAuu7uFw@mail.gmail.com>
 <82db817a908b761d8c3d73ea04714314@manjaro.org>
 <607f4da8-99b2-4379-9567-4bfd2744eab3@kwiboo.se>
 <CABjd4YxdM+cM+z7ou3=DF2SrFM0235DSTZ45o0NsKBwGrgW8Bg@mail.gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <CABjd4YxdM+cM+z7ou3=DF2SrFM0235DSTZ45o0NsKBwGrgW8Bg@mail.gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 665a5e1290b1ee9784da9536
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_163321_328928_81CB165B 
X-CRM114-Status: GOOD (  28.60  )
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

SGkgQWxleGV5LAoKT24gMjAyNC0wNS0zMSAxMzo0NCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4g
SGkgSm9uYXMsCj4gCj4gT24gRnJpLCBNYXkgMzEsIDIwMjQgYXQgMzoyN+KAr1BNIEpvbmFzIEth
cmxtYW4gPGpvbmFzQGt3aWJvby5zZT4gd3JvdGU6Cj4+Cj4+IEhpIEFsZXhleSBhbmQgRHJhZ2Fu
LAo+Pgo+PiBPbiAyMDI0LTA1LTMwIDIxOjMxLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+PiBIZWxs
byBBbGV4ZXksCj4+Pgo+Pgo+PiBbc25pcF0KPj4KPj4+Pj4+PiBUaGF0IHdheSB3ZSdsbCBoYXZl
IG5vIHJvYWRibG9ja3MgaWYsIGF0IHNvbWUgcG9pbnQsIHdlIGVuZCB1cCB3aXRoCj4+Pj4+Pj4g
aGF2aW5nCj4+Pj4+Pj4gZGlmZmVyZW50IE9QUHMgZGVmaW5lZCBmb3IgdGhlIFJLMzU4OCBhbmQg
dGhlIFJLMzU4OFMgdmFyaWFudHMuICBPcgo+Pj4+Pj4+IG1heWJlCj4+Pj4+Pj4gZXZlbiBmb3Ig
dGhlIFJLMzU4Miwgd2hpY2ggd2UgZG9uJ3Qga25vdyBtdWNoIGFib3V0IHlldC4KPj4+Pj4+Cj4+
Pj4+PiBHdWVzcyB3ZSdsbCBkZWFsIHdpdGggdGhhdCBvbmUgb25jZSB3ZSBzdHVtYmxlIHVwb24g
YW4gYWN0dWFsIFJLMzU4Mgo+Pj4+Pj4gYm9hcmQgb3V0IGluIHRoZSB3aWxkIGFuZCBoZWFkaW5n
IHRvIHRoZSBtYWlubGluZSBrZXJuZWwgdHJlZSA6KQo+Pj4+Pgo+Pj4+PiBPZiBjb3Vyc2UsIHRo
YXQgd2FzIGp1c3QgYW4gZXhhbXBsZSBmb3IgdGhlIGZ1dHVyZSB1c2UuCj4+Pj4KPj4+PiBJbiBm
YWN0LCBJJ3ZlIGp1c3QgZGlzY292ZXJlZCB0aGF0IFJhZHhhIGhhcyByZWNlbnRseSByZWxlYXNl
ZCBSb2NrIDVDCj4+Pj4gTGl0ZSB3aGljaCBpcyBiYXNlZCBvbiBSSzM1ODIsIGFuZCBzdGFydHMg
YXQganVzdCAkMjkgZm9yIHRoZSAxR0IKPj4+PiB2ZXJzaW9uLCBtYWtpbmcgaXQgaW50ZXJlc3Rp
bmcgZm9yIHRpbmtlcmluZy4gRXNwZWNpYWxseSBnaXZlbiB0aGF0Cj4+Pj4gaXRzIEdQVSwgb25l
IG9mIHRoZSBiaWctY29yZSBjbHVzdGVycyBhbmQgb25lIG9mIHRoZSBWUFUgY29yZXMgc2VlbSB0
bwo+Pj4+IGJlIGRpc2FibGVkIGluIHNvZnR3YXJlICh1LWJvb3QpIHJhdGhlciB0aGFuIGluIGhh
cmR3YXJlLCB3aGljaCBtZWFucwo+Pj4+IHRoZXJlIGlzIHNvbWUgY2hhbmNlIHRoYXQgYSBwYXJ0
aWN1bGFyIFNvQyBzcGVjaW1lbiB3b3VsZCBhY3R1YWxseQo+Pj4+IGhhdmUgdGhlbSBpbiBhIHdv
cmtpbmcgY29uZGl0aW9uIGFuZCBwb3NzaWJsZSB0byByZS1lbmFibGUgYXQgbm8gY29zdC4KPj4+
PiBPcmRlcmVkIG15c2VsZiBvbmUgdG8gaW52ZXN0aWdhdGUgOikKPj4+Cj4+PiBZZXMsIEkgYWxz
byBzYXcgdGhlIFJLMzU4Mi1iYXNlZCBST0NLIDVDIExpdGUgYSBjb3VwbGUgb2YgZGF5cyBhZ28u
IDopCj4+PiBJdCBzZWVtcyB0aGF0IHRoZSBkaXNhYmxlZCBJUCBibG9ja3MgYXJlIGRldGVjdGVk
IGFzIGRlZmVjdGl2ZSBkdXJpbmcKPj4+IHRoZSBtYW51ZmFjdHVyaW5nLCB3aGljaCBtZWFucyB0
aGF0IHRoZXkgbWlnaHQgd29yayBjb3JyZWN0bHksIG9yIG1pZ2h0Cj4+PiBhY3R1YWxseSBtaXNi
ZWhhdmUuICBJdCBzZWVtcyBzaW1pbGFyIHRvIHRoZSB3YXkgb2xkIHRocmVlLWNvcmUgQU1ECj4+
PiBQaGVub20gSUkgQ1BVcyBjb3VsZCBzb21ldGltZXMgYmUgbWFkZSBxdWFkLWNvcmUuCj4+Pgo+
Pgo+PiBJIGNhbiBjb25maXJtIHRoYXQgdGhlIFJLMzU4MiBpbmNsdWRlIGlwLXN0YXRlIGluIE9U
UCBpbmRpY2F0aW5nCj4+IHVudXNhYmxlIGNvcmVzLCBhbnkgdW51c2FibGUgY3B1IGNvcmUgY2Fu
bm90IGJlIHRha2VuIG9ubGluZSBhbmQgc3RhbGxzCj4+IExpbnV4IGtlcm5lbCBhIGZldyBleHRy
YSBzZWNvbmRzIGR1cmluZyBib290Lgo+Pgo+PiBTdGFydGVkIHdvcmtpbmcgb24gYSBwYXRjaCBm
b3IgVS1Cb290IHRvIHJlbW92ZSBhbnkgYnJva2VuIGNwdSBjb3JlCj4+IGFuZC9vciBjbHVzdGVy
IG5vZGVzLCBzaW1pbGFyIHRvIHdoYXQgdmVuZG9yIFUtQm9vdCBkb2VzLCBhZG9wdGVkIHRvCj4+
IHdvcmsgd2l0aCBhIG1haW5saW5lIERUIGZvciBSSzM1ODguCj4gCj4gU3VwZXJiIC0gaXQncyBn
cmVhdCB0byBoYXZlIGEgcGF0Y2ggZm9yIGl0IGFscmVhZHksIHRoYW5rIHlvdSBmb3Igd29ya2lu
ZyBvbiBpdCEKPiAKPj4gT24gb25lIG9mIG15IFJPQ0sgNUMgTGl0ZSBib2FyZCBvbmUgb2YgdGhl
IGNwdSBjb3JlcyBpcyB1bnVzYWJsZSwgVS1Cb290Cj4+IHJlbW92ZXMgdGhlIHJlbGF0ZWQgY3B1
IGNsdXN0ZXIgbm9kZXMuIE9uIGFub3RoZXIgUk9DSyA1QyBMaXRlIGJvYXJkIG9uZQo+PiBya3Zk
ZWMgY29yZSBpcyBvbmx5IG1hcmtlZCB1bnVzYWJsZSBhbmQgYWxsIGNwdSBjb3JlcyBjYW4gYmUg
dGFrZW4KPj4gb25saW5lLCBVLUJvb3QgZG9lcyBub3RoaW5nIGluIHRoaXMgY2FzZS4gR3Vlc3Np
bmcgd2Ugc2hvdWxkIGFwcGx5Cj4+IHNpbWlsYXIgcG9saWN5IGFzIHZlbmRvciBVLUJvb3QgYW5k
IGRpc2FibGUgY29yZXMgYW55d2F5Lgo+IAo+IElzIHRoZXJlIGFueSBtaXNiZWhhdmlvciAvIGlu
c3RhYmlsaXR5IGlmIHlvdSBqdXN0IGtlZXAgYWxsIHRoZQo+IHVubWFya2VkIGNvcmVzIG9ubGlu
ZT8KCkkgd2lsbCBydW4gc29tZSB0ZXN0cyBkdXJpbmcgdGhlIHdlZWtlbmQgYW5kIGdldCBiYWNr
IHdpdGggcmVzdWx0cyBsYXRlci4KCj4gCj4gSSB0aGluayBmcm9tIGFuIGVuZC11c2VyIHBlcnNw
ZWN0aXZlIGl0IHdvdWxkIGJlIGJldHRlciB0byBqdXN0IGVuYWJsZQo+IGV2ZXJ5dGhpbmcgdGhh
dCB3b3JrcywgYXMgdGhlIHJlYXNvbiB0byB1bmNvbmRpdGlvbmFsbHkgZGlzYWJsZSBzb21lCj4g
SVAgYmxvY2tzIGV2ZW4gd2hlbiB0aGV5IGFyZSAiZ29vZCIgaXMgcXVpdGUgbGlrZWx5IG5vdCBh
IHRlY2huaWNhbAo+IG9uZSBidXQgcmF0aGVyIGEgbWFya2V0aW5nIG9uZS4gSXQncyBoYXJkIHRv
IGp1c3RpZnkgc2VsbGluZyBjaGlwcwo+IHdpdGggZGlmZmVyZW50IHNldHMgb2Ygd29ya2luZyBJ
UCBibG9ja3MgdW5kZXIgdGhlIHNhbWUgbGFiZWwgYW5kIHRoZQo+IHNhbWUgcHJpY2UsIG1ha2lu
ZyBpdCBlYXNpZXIgdG8ganVzdCB0cmltIHRoZW0gYWxsIHRvIGEgbG93ZXN0IGNvbW1vbgo+IGRl
bm9taW5hdG9yLiBPbiB0aGUgb3RoZXIgaGFuZCwgb25jZSBhIHBlcnNvbiBoYXMgYWxyZWFkeSBi
b3VnaHQgYQo+IGRldmljZSB3aGVyZSBzb21lIElQIGJsb2NrcyB3b3JrIGV2ZW4gaWYgdGhleSBh
cmUgbm90IHN1cHBvc2VkIHRvLCB3aHkKPiBub3QgbWFrZSB1c2Ugb2YgdGhlbT8gSXQgY29zdHMg
bm90aGluZywgaHVydHMgbm9vbmUuLi4KCkkgYWdyZWUsIGl0IGlzIHByb2JhYmx5IG1vcmUgcmVs
YXRlZCB0byBtYXJrZXRpbmcsIGxpY2Vuc2luZyBhbmQvb3IKd2hhdCBpcyB0ZXN0ZWQuCgpWZW5k
b3IgVS1Cb290IGFwcGx5IGZvbGxvd2luZyBsb2dpYy9wb2xpY3kgZm9yIHJrMzU4MiAoYW5kIHJr
MzU4MykuCgpSSzM1ODIgcG9saWN5OgotIGFsd2F5cyByZW1vdmUgZ3B1Ci0gYWx3YXlzIHJlbW92
ZSBib3RoIHJrdmRlYyBjb3JlcwotIHJlbW92ZSBiYWQgcmt2ZW5jIGNvcmUsIGlmIGJvdGggYXJl
IG5vcm1hbCwgcmVtb3ZlIHJrdmVuYzEgYW55d2F5CgpSSzM1ODMgcG9saWN5OgotIGFsd2F5cyBr
ZWVwIGdwdQotIHJlbW92ZSBiYWQgcmt2ZGVjIGNvcmUsIGlmIGJvdGggYXJlIG5vcm1hbCwgcmVt
b3ZlIHJrdmRlYzEgYW55d2F5Ci0gcmVtb3ZlIGJhZCBya3ZlbmMgY29yZSwgaWYgYm90aCBhcmUg
bm9ybWFsLCByZW1vdmUgcmt2ZW5jMSBhbnl3YXkKCkNQVSBjb3JlIHBvbGljeToKLSByZW1vdmUg
Ym90aCBjb3JlcyB3aXRoaW4gYSBjbHVzdGVyIGhhdmluZyBhIGJhZCBjb3JlCi0gaWYgY29yZTR+
NyBhcmUgYWxsIG5vcm1hbCwgcmVtb3ZlIGNvcmU2IGFuZCBjb3JlNyBhbnl3YXkKClJlZ2FyZHMs
CkpvbmFzCgo+IAo+IEJlc3QgcmVnYXJkcywKPiBBbGV4ZXkKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
