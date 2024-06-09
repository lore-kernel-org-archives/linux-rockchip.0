Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51218C27C53
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Jun 2024 16:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luNlUDVoLuYVL3MjA8MH99v30w+0TXBrouRUAJSLObA=; b=cRAwFk5bqM7vHj
	s4NqiuFWyBR1VhG7yulgZVVUe1319vxCuzuGqMchzr1es4/ZRzwFyeSUFTKVWlhy2OVgtXp2wp8Xq
	0MJ1rgSEskcjBkDgcP1Banw4VmFz7Hgpwyad3IqgmhpcmBYoAaYUtWL2GeNm8wa/eD6Ppsox1OYRy
	uON6WwCPT6SIW2pXdYRw1ReuNFwjgfnLKGgokEgYPulk/YlgyPw9iwxZs+fBRlBY/zErHE1VNBpj8
	y6ZmwkvW23VqqunwPGtsW1j0TAY5RCen4/yCzEsPA7lN/kycnxyBnol+j3UDCEsghFJldriu/lmYm
	SAeaZloT+9YjC7rD2lFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGLgS-00000002u7Y-2Xsu;
	Sun, 09 Jun 2024 16:46:20 +0000
Received: from shout12.mail.de ([2001:868:100:600::f154])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGLgN-00000002u6W-4002;
	Sun, 09 Jun 2024 16:46:18 +0000
Received: from shout01.mail.de (unknown [10.0.120.221])
	by shout12.mail.de (Postfix) with ESMTPS id C2B7B2409FD;
	Sun,  9 Jun 2024 18:46:12 +0200 (CEST)
Received: from postfix01.mail.de (postfix01.bt.mail.de [10.0.121.125])
	by shout01.mail.de (Postfix) with ESMTP id 90618240B96;
	Sun,  9 Jun 2024 18:46:12 +0200 (CEST)
Received: from smtp01.mail.de (smtp02.bt.mail.de [10.0.121.212])
	by postfix01.mail.de (Postfix) with ESMTP id 6AD4580208;
	Sun,  9 Jun 2024 18:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1717951572;
	bh=jfyGvlGEvYiwFZvbfeRUSKsLW6JLidUM2IzOwSvkqQk=;
	h=Message-ID:Date:Subject:To:Cc:From:From:To:CC:Subject:Reply-To;
	b=hkHs631wRZz1GbWKIX3UpR9O1OykwtF24iobhVeHL1/2HnaQzh3XrqcBfaXByZ2gl
	 wSAfOPiJzuHv84dxGJ0rLkMZdvereVZO+myZ7FEY2ZHiAmKTFtpUZDbwFgit87eE60
	 krVRwg8LZIViCzNAg+7LpzptSCicGp9DZnUQM9fvpm8EP4qpytEtaorzPbBR5w2RS9
	 hyI6//dy+QnvitRz0lwsltlFRkRjDndc02KAf4rUCy7adjAYCwnKDe32VzIQQcmRfR
	 5hjfpAajtwoBjJYhRxqN1+ZSD40LzNQTWS7RL8ChoLFL9Zoqx9LqH5M3GBmdxC8sUW
	 CuPcQ5xFbGn5A==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id 80DE7240EBC;
	Sun,  9 Jun 2024 18:46:10 +0200 (CEST)
Message-ID: <9150cfa3-ab22-4b1e-a392-2cb9469f3821@mail.de>
Date: Sun, 9 Jun 2024 18:46:09 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add FriendlyElec CM3588 NAS
 board
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Space Meyer <me@the-space.agency>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240602211901.237769-1-seb-dev@mail.de>
 <11747652.CDJkKcVGEf@phil> <f5cfcf3e-27e5-464a-9adf-261753ad6de7@mail.de>
 <4035271.e99z0qppnp@diego>
From: Sebastian Kropatsch <seb-dev@mail.de>
In-Reply-To: <4035271.e99z0qppnp@diego>
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 3052
X-purgate-ID: 154282::1717951572-1AD2B878-FAB12F85/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240609_094616_800922_CF7313EF 
X-CRM114-Status: GOOD (  19.39  )
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

QW0gMDkuMDYuMjAyNCB1bSAxODowNSBzY2hyaWViIEhlaWtvIFN0w7xibmVyOgo+IEFtIFNhbXN0
YWcsIDguIEp1bmkgMjAyNCwgMTk6MjI6MDEgQ0VTVCBzY2hyaWViIFNlYmFzdGlhbiBLcm9wYXRz
Y2g6Cj4+IEFtIDA4LjA2LjIwMjQgdW0gMTY6Mzggc2NocmllYiBIZWlrbyBTdHVlYm5lcjoKPj4+
IEFtIERvbm5lcnN0YWcsIDYuIEp1bmkgMjAyNCwgMTU6MTM6MjAgQ0VTVCBzY2hyaWViIFNwYWNl
IE1leWVyOgo+Pj4+IE9uIDAyLjA2LjIwMjQgMjI6MjAsIFNlYmFzdGlhbiBLcm9wYXRzY2ggd3Jv
dGU6Cj4+Pj4+ICsJdmNjXzN2M19wY2llMzA6IHJlZ3VsYXRvci12Y2MtM3YzLXBjaWUzMCB7Cj4+
Pj4+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPj4+Pj4gKwkJcmVndWxhdG9y
LW5hbWUgPSAidmNjXzN2M19wY2llMzAiOwo+Pj4+PiArCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+
Pj4+PiArCQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4+Pj4gKwkJcmVndWxhdG9yLW1pbi1taWNyb3Zv
bHQgPSA8MzMwMDAwMD47Cj4+Pj4+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAw
MDA+Owo+Pj4+PiArCQl2aW4tc3VwcGx5ID0gPCZ2Y2NfNXYwX3N5cz47Cj4+Pj4+ICsJfTsKPj4+
Pgo+Pj4+IFRoZXNlIGFyZSA0IHNlcGVyYXRlIHJlZ3VsYXRvcnMgYWNjb3JkaW5nIHRvIHRoZSBz
Y2hlbWF0aWMuIEhvd2V2ZXIsIGFzCj4+Pj4gdGhleSBhcmUgYWxsIGZpeGVkLCBpZGsgaWYgdGhl
eSBzaG91bGQgYmUgc3BsaXQgb3Iga2VwdCBsaWtlIHRoaXMuCj4+Pgo+Pj4gcGVyc29uYWxseSwg
SSByZWFsbHkgbGlrZSB0aGUgcG93ZXItZGlhZ3JhbSB0byBtYXRjaCBzY2hlbWF0aWNzLgo+Pj4g
SS5lLiAkZGVidWdmcy9yZWd1bGF0b3IvcmVndWxhdG9yX3N1bW1hcnkgd2lsbCBwcm9kdWNlIGEg
cmVhbGx5IG5pY2UKPj4+IGdyYXBoIG9mIGFsbCB0aGUgc3lzdGVtJ3MgcmVndWxhdG9ycywgc28g
aXQncyBkZWZpbml0bHkgbmljZSBpZiB0aGUKPj4+IGhpcmFyY2h5IG1hdGNoZXMuIEFsc28gcHJl
dmVudHMgaGVhZC1zY3JhdGNoaW5nIGxhdGVyIG9uIDstKQo+Pgo+PiBUaGVzZSBhcmUgaW5kZWVk
IDQgZGlmZmVyZW50IHJlZ3VsYXRvcnMgYWNjb3JkaW5nIHRvIHRoZSBzY2hlbWF0aWMuWzFdCj4+
IEJ1dCB0aGV5IGRvbid0IGhhdmUgYW55IHBpbiB0byBjb250cm9sIHRoZW0gc2VwYXJhdGVseS4g
SSBjYW4KPj4gZHVwbGljYXRlIHRoZW0gNCB0aW1lcyBpZiB0aGF0J3MgdGhlIHByZWZlcnJlZCBw
cmFjdGljZS4KPj4KPj4gQnV0IG1hdGNoaW5nIHRoZSBzY2hlbWF0aWNzIHdvbid0IGJlIHBvc3Np
YmxlIGVpdGhlciB3YXksIHNpbmNlCj4+IGUuZy4gdGhlcmUgaXMgb25seSBvbmUgc2luZ2xlIDV2
IHJlZ3VsYXRvciBhY2MuIHRvIHRoZSBzY2hlbWF0aWMKPj4gKHZjY181djBfc3lzKSwgYnV0IHZj
Y181djBfaG9zdF8yMCwgdmNjXzV2MF9ob3N0XzMwLCB2YnVzXzV2MF90eXBlYwo+PiBhbmQgc28g
b24gYXJlIG5lZWRlZCBzaW5jZSBlYWNoIGRldmljZSBoYXMgYSBkaWZmZXJlbnQgY29udHJvbCBw
aW4KPj4gdG8gZW5hYmxlIGl0cyBwb3dlci4gT3IgaXMgdGhlcmUgYSBiZXR0ZXIgd2F5IHRvIHNv
bHZlIHRoaXMgd2hpbGUKPj4gaGF2aW5nIG9ubHkgb25lIDV2IHJlZ3VsYXRvciBub2RlIGJ1dCBz
dGlsbCBiZWluZyBhYmxlIHRvIHNldCB0aGUKPj4gY29udHJvbCBwaW5zIHNlcGFyYXRlbHkgZm9y
IHRoZSBkaWZmZXJlbnQgVVNCIHBvcnRzPwo+IAo+IFRoZSBvdGhlciBvcHRpb24gd2Ugb2Z0ZW4g
dXNlIGlzIHRvIGRlZmluZSBtdWx0aXBsZSBwaGFuZGxlcwo+IGZvciBhIHJlZ3VsYXRvci4gRm9y
IGV4YWN0bHkgdGhhdCBjYXNlIHdoZXJlIG9uZSBncGlvIGNvbnRyb2xzCj4gYSBzZXQgb2YgcmVn
dWxhdG9ycy4KPiAKPiBTbyB5b3UgaGF2ZSBvbmUgcmVndWxhdG9yCj4gCj4gdmNjXzV2MF9ob3N0
XzIwOiB2Y2NfNXYwX2hvc3RfMzA6IHZidXNfNXYwX3R5cGVjOiByZWd1bGF0b3ItdmNjLXdoYXRl
dmVyIHsKPiAJZm9vOwo+IH0KPiAKPiBTbyBpbiBzaG9ydCB0aGVyZSBpcyBub3Qgc2V0IHJ1bGUs
IGJ1dCBtb3JlIGxpa2UgYSBiZXN0LWVmZm9ydCB0byBnZXQgYXMKPiBjbG9zZSB0byB0aGUgc2No
ZW1hdGljcyBhcyBwb3NzaWJsZS4gSS5lLiBzb21lb25lIGdvaW5nIGZyb20gZHQKPiB0byBzY2hl
bWF0aWNzIHNob3VsZCBiZSBhYmxlIHRvIGp1c3Qgc2VhcmNoIGZvciBhbiBpZGVudGlmaWVyCj4g
KG9mIGNvdXJzZSBzYW1lIGZvciB0aGUgb3RoZXIgZGlyZWN0aW9uKS4KCkkgc2VlLiBBbmQgdGhl
biBsYXRlciBpbiB0aGUgZmlsZSBoYXZlIHNvbWV0aGluZyBsaWtlIHRoaXM/CgomdmNjXzV2MF9o
b3N0XzIwewoJZ3Bpb3MgPSA8JmdwaW8xIFJLX1BBNCBHUElPX0FDVElWRV9ISUdIPjsKfTsKCiZ2
Y2NfNXYwX2hvc3RfMzB7CglncGlvcyA9IDwmZ3BpbzQgUktfUEIwIEdQSU9fQUNUSVZFX0hJR0g+
Owp9OwoKJnZidXNfNXYwX3R5cGVjewoJZ3Bpb3MgPSA8JmdwaW8xIFJLX1BEMiBHUElPX0FDVElW
RV9ISUdIPjsKfTsKCldpbGwgdGhpcyB3b3JrPyBJIHRob3VnaHQgdGhlc2UgZ3Bpb3Mgd291bGQg
dGhlbiBhbGwganVzdCBnbyBpbnRvCnRoZSBhYm92ZSBtZW50aW9uZWQgInJlZ3VsYXRvci12Y2Mt
d2hhdGV2ZXIiIG5vZGUsIG92ZXJ3cml0aW5nCmVhY2ggb3RoZXIuIElmIHNvLCBJIHRoaW5rIHRo
ZSBzb2x1dGlvbiBvZiBrZWVwaW5nIHRoZW0gYXMgc2VwYXJhdGUKcmVndWxhdG9ycyB3b3VsZCBz
dGlsbCBiZSBmaW5lLCBzaW5jZSBhcyBTcGFjZSBNZXllciBtZW50aW9uZWQgdGhhdCwKYWx0aG91
Z2ggYWxsIFVTQnMgYXJlIGNvbm5lY3RlZCB0byB0aGUgc2FtZSByZWd1bGF0b3IsIHRoZXkgaGF2
ZSBvbmUKU1k2MjgwQUFDIHBvd2VyIHN3aXRjaCBlYWNoIGFuZCB0aGVzZSBzd2l0Y2hlcyBoYXZl
IGVuYWJsZSBwaW5zICh3aGljaAphcmUgc2VlbiBhYm92ZSBpbiB0aGUgZ3Bpb3MpLgoKCkNoZWVy
cywKU2ViYXN0aWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
