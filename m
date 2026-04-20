Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66380F55810
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Apr 2026 11:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rmz3IN5t5vHS2DIzO6LTIVRhzgJdqSPD8DTKI2m9E34=; b=kVp8jTv1KNN2Bl
	NPLvRO64PtYDwiwmUDQCUjgE2xECyI8By3zbf16M1DQGHBQ6TwtoYnZGVOJOtrNPJMPdMHWmgTyY/
	oim2f71B8RiqqsNw2V1zStQEygQ5RgbHb5XclRwtjAtttTqffZ9e9UHeEHsaMQafKIZEy5VIF5HKh
	r0ZqtvaCYnsaIftyc8BfrkObkio79i+5yNdk/VnUo36Lr9f2n5HmYw4D4ZmsrgySgZi+8HpsjPOaw
	nWRgBmVgDWSasv2YCKelbKP7pCVbmRDUbCtRvzEkckz+BnuFKErCm/1Qb4O1D2TTfefoMoHl6a/pJ
	4zwjBzCorQh5BtG9Cksg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmWQ-00000006lyx-0nps;
	Mon, 20 Apr 2026 11:10:34 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmWM-00000006lxz-2RzX;
	Mon, 20 Apr 2026 11:10:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776683428;
	bh=Z8VXFLlJoWE07bJb3Qbu/RqEB+C1PaoPjkKJ6JTdIvE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bHtv37ohJyNm91PWYAMTHaClPZy0Qbjyc490uOLIh7JS8wl3Yc6BxKPNc0krtv8qZ
	 Zk9qpjPqQR0TnN/DqiuN3J+Xmc4i3TOn+1ncLIbOWgHdHtSI2LXu8pBwrzrhCFeLYr
	 J2m5jpvmkc1+2AfOITp4QpNIFxAJ4auOSV7eygJ5XDeVU7aN4SeLq2oZBU8h8KzsWM
	 ArngXbRl2wX523SOe/Zl/8e2SY9CK6farGUHT2ufeQLQKthCp2u+VM4UEcq5J/ho8I
	 P+zGZ6zwYm2CEi6csbsynPhj1DiOIuLioC5tFDS6YTZT2XYjjlYqi9z1adIDZhZoEi
	 OsN4R+x0R1RJg==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 01A9C17E0595;
	Mon, 20 Apr 2026 13:10:27 +0200 (CEST)
Message-ID: <66f9574c-8dff-4de2-bf54-20f1c1e64c24@collabora.com>
Date: Mon, 20 Apr 2026 14:10:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/40] arm64: dts: rockchip: Wire up frl-enable-gpios for
 RK3576/RK3588 boards
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
 <2297365.1BCLMh4Saa@phil>
 <70e9a8a0-414d-428f-8da8-9b65cc764849@collabora.com>
 <2435759.n0HT0TaD9V@phil>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <2435759.n0HT0TaD9V@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_041030_770269_D7414081 
X-CRM114-Status: GOOD (  16.00  )
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

T24gNC8xOC8yNiAyOjE4IEFNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBIaSBDcmlzdGFuLAo+
IAo+IEFtIEZyZWl0YWcsIDE3LiBBcHJpbCAyMDI2LCAxOTo1NToxNyBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToKPj4gT24gNC8xNy8yNiAy
OjM0IFBNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPj4+IEFtIEZyZWl0YWcsIDE3LiBBcHJpbCAy
MDI2LCAxMToyNDozNCBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIENyaXN0
aWFuIENpb2NhbHRlYToKPj4+Cj4+PiBbLi4uXQo+Pj4KPj4+PiBDcmlzdGlhbiBDaW9jYWx0ZWEg
KDQwKToKPj4+PiAgICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIGZybC1lbmFibGUtZ3Bp
b3MgdG8gcmszNTc2LTEwMGFzay1kc2hhbnBpLWExCj4+Pj4gICAgICAgYXJtNjQ6IGR0czogcm9j
a2NoaXA6IEFkZCBmcmwtZW5hYmxlLWdwaW9zIHRvIHJrMzU3Ni1hcm1zb20tc2lnZTUKPj4+PiAg
ICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIGZybC1lbmFibGUtZ3Bpb3MgdG8gcmszNTc2
LWV2YjEtdjEwCj4+Pj4gICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBmcmwtZW5hYmxl
LWdwaW9zIHRvIHJrMzU3Ni1ldmIyLXYxMAo+Pj4+ICAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlw
OiBBZGQgZnJsLWVuYWJsZS1ncGlvcyB0byByazM1NzYtbHVja2ZveC1jb3JlMzU3Ngo+Pj4+ICAg
ICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgZnJsLWVuYWJsZS1ncGlvcyB0byByazM1NzYt
bmFub3BpLW01Cj4+Pj4gICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBmcmwtZW5hYmxl
LWdwaW9zIHRvIHJrMzU3Ni1uYW5vcGktcjc2cwo+Pj4+ICAgICAgIGFybTY0OiBkdHM6IHJvY2tj
aGlwOiBBZGQgZnJsLWVuYWJsZS1ncGlvcyB0byByazM1NzYtcm9jLXBjCj4+Pj4gICAgICAgYXJt
NjQ6IGR0czogcm9ja2NoaXA6IEFkZCBmcmwtZW5hYmxlLWdwaW9zIHRvIHJrMzU3Ni1yb2NrLTRk
Cj4+Pgo+Pj4gSSBkbyB0aGluayBvbmUgcGF0Y2ggcGVyIFNvQyAocmszNTc2LCByazM1ODgsIHJr
MzU4OHMpIHdvdWxkIG1ha2UgbW9yZQo+Pj4gc2Vuc2UsIGJlY2F1c2UgdGhlc2UgcGF0Y2hlcyBy
ZWFsbHkgYXJlIG1vc3RseSBpZGVudGljYWwgOi0pCj4+Cj4+IFllYWgsIGFwb2xvZ2llcyBmb3Ig
dGhlIGxhcmdlIG51bWJlciBvZiBwYXRjaGVzLCBJIHdlbnQgdGhpcyB3YXkgdG8gYWxsb3cKPj4g
cGVyLWJvYXJkIHJldmlld3MuICBBcyBwcmV2aW91c2x5IG5vdGVkLCBJIHRyaWVkIHRvIGlkZW50
aWZ5IHRoZSBHUElPIHBpbnMgZnJvbQo+PiBtdWx0aXBsZSBzb3VyY2VzLCBzbyBJJ20gbm90IGVu
dGlyZWx5IHN1cmUgYWJvdXQgdGhlIGFjY3VyYWN5IGluIGV2ZXJ5IGNhc2UuCj4+Cj4+IFdvdWxk
IGl0IGJlIHByZWZlcmFibGUgdG8gc3F1YXNoIHRoZSBwYXRjaGVzIHBlciBTb0MgYW5kIGJvYXJk
IHZlbmRvciwgaW5zdGVhZD8KPiAKPiBJIHJlYWxseSB3b3VsZCBqdXN0IGRvIGl0IHBlciBzb2Mg
Li4gc28gMyBwYXRjaGVzLiBUaGF0IGlzIGEgc2l6ZSB0aGF0IGlzCj4gc3RpbGwgcmV2aWV3YWJs
ZSBmb3IgcGVvcGxlLCB3aG8gY2FuIHRoZW4gY2hlY2sgZm9yIHRoZWlyIGJvYXJkLgo+IAo+IElm
IHRoZSBwYXRjaCBpcyBsYWJlbGVkICJBZGQgZnJsLWVuYWJsZS1ncGlvcyBmb3IgYWxsIFJLMzU4
OHMgYm9hcmRzIiwgSQo+IGRvIGV4cGVjdCBwZW9wbGUgdG8gbm90aWNlIGl0IHRoZSBzYW1lIGFz
ICJvaCBfbXlfIGJvYXJkIGdldHMgY2hhbmdlZCIuCj4gKCJhbGwiIGNvdWxkIGFsc28gYmUgIm1v
c3QiIDotKSApLgoKQWNrLiAgCgpJIHdvdWxkIHN0aWxsIGtlZXAgdGhlIG1vcmUgaW52YXNpdmUg
Y2hhbmdlcyDigJQgc3VjaCBhcyB0aG9zZSB0b3VjaGluZwp0aGUgcmVndWxhdG9yIGhhY2tzIOKA
lCBpbiBzZXBhcmF0ZSBwYXRjaGVzLCB0aG91Z2guCgpUaGFua3MsCkNyaXN0aWFuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
