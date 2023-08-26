Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAE36C83F11
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Aug 2023 21:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSTVHNrYNfTVTqJdnEYfWdB/1mQ4j60F70Fk+RNt1WM=; b=uE5hHsNUwM+8We
	im7F2kfHbHWj4pO5RB4NntrBfg93vv13XtNzKwZJKZNv5BNTYbnajsXkCMHr2Y2gScNeZ9LW19ph3
	CXzi2xho6csCX9Y/s7l35nZArsp0Tr1oyTb+CpBDca9RGYZs7qh+e6bu1mL9nHCJflHB7SEXrCm3J
	PFeISNp48LtMzeEwidQWDk+Zyc3UrNxzC3qAqnUZ1XiAMXHYiir1VvPZUbf0mQQdyK4Y4QnlzFNDu
	t3nui/WnKZ1G4bM8OAwjzyEvlyyisGk6n2tk+p5lP2e8HQV6OFSnWw/CPMiiBCwm7FFZAFROFMpjA
	oxFvvgABsYmn0zA7YA9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qa15m-007Fcl-0f;
	Sat, 26 Aug 2023 21:45:14 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qa15j-007Fbm-01
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Aug 2023 21:45:12 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 7A6A78074B;
	Sat, 26 Aug 2023 23:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1693086296;
	bh=9w5vHfYJfVpzFUbEm+Pr/OXfVnO1yU4X4m/H/OgXlHs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DVgm2WubEGCsDeDCJIdEUQi0dESpOX1sQ54u9e8fI0fJ2DtuJqKKUYJkJYkZK1Rgs
	 NI003kX1QJ4Z5QdhXDkWsOhDtgDj7lllTP5EvM3bRhzGRkfTdBQj49+i3VEeynVIIX
	 XIBaznJANPc0GWvmqBXGysE9RkN2X+XZGrkVJ/zBlJgFrScUyv1Wt8nJ7wN4HJ46by
	 /mBjbMjweF2AZ93WKWqLUzScXQDZjjf9xWL8+4D5B3aUlp/7gNerp6pCgrc2h7n5kJ
	 xTBji+sBpQ8dxETbQvCQTnecVVo1P7ddHtcDX2KROAAGSLZPbB943YpuiWCUFlx/sA
	 oDkmCr6P/O49g==
Message-ID: <a445f1fc-6b38-e58b-a3ca-81c05e19f66e@denx.de>
Date: Sat, 26 Aug 2023 23:44:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] media: hantro: Check whether reset op is defined before
 use
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Adam Ford <aford173@gmail.com>, linux-media@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org
References: <20230824013858.303105-1-marex@denx.de>
 <CAHCN7xLDmMv7T_fT7vY3iq+KMWuPM9tBP_2AJ-X04L7ZTRWPOw@mail.gmail.com>
 <80d9a66f-c703-6057-e084-1a6d2214d775@denx.de>
 <CAGXv+5GQFtCAYbfSbEJeHA4Os0O6WuD64V-xcZ9uDD33HbuhhQ@mail.gmail.com>
 <f6f55f46-bd6e-4dde-4484-86d1c385c8fe@denx.de>
 <CAGXv+5EJ1asWymfjNcyLANSgQdJPcjT6MXUVwTYOEQ3PtVtXBQ@mail.gmail.com>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <CAGXv+5EJ1asWymfjNcyLANSgQdJPcjT6MXUVwTYOEQ3PtVtXBQ@mail.gmail.com>
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230826_144511_356066_B81A4034 
X-CRM114-Status: GOOD (  21.53  )
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

T24gOC8yNS8yMyAxMDo1MiwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+IE9uIEZyaSwgQXVnIDI1LCAy
MDIzIGF0IDQ6MzPigK9QTSBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4gd3JvdGU6Cj4+Cj4+
IE9uIDgvMjUvMjMgMDk6MDksIENoZW4tWXUgVHNhaSB3cm90ZToKPj4+IE9uIFRodSwgQXVnIDI0
LCAyMDIzIGF0IDk6MDjigK9QTSBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4gd3JvdGU6Cj4+
Pj4KPj4+PiBPbiA4LzI0LzIzIDEyOjM5LCBBZGFtIEZvcmQgd3JvdGU6Cj4+Pj4+IE9uIFdlZCwg
QXVnIDIzLCAyMDIzIGF0IDg6MznigK9QTSBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4gd3Jv
dGU6Cj4+Pj4+Pgo+Pj4+Pj4gVGhlIGkuTVg4TU0vTi9QIGRvZXMgbm90IGRlZmluZSB0aGUgLnJl
c2V0IG9wIHNpbmNlIHJlc2V0IG9mIHRoZSBWUFUgaXMKPj4+Pj4+IGRvbmUgYnkgZ2VucGQuIENo
ZWNrIHdoZXRoZXIgdGhlIC5yZXNldCBvcCBpcyBkZWZpbmVkIGJlZm9yZSBjYWxsaW5nIGl0Cj4+
Pj4+PiB0byBhdm9pZCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UuCj4+Pj4+Pgo+Pj4+Pj4gTm90
ZSB0aGF0IHRoZSBGaXhlcyB0YWcgaXMgc2V0IHRvIHRoZSBjb21taXQgd2hpY2ggcmVtb3ZlZCB0
aGUgcmVzZXQgb3AKPj4+Pj4+IGZyb20gaS5NWDhNIEhhbnRybyBHMiBpbXBsZW1lbnRhdGlvbiwg
dGhpcyBpcyBiZWNhdXNlIGJlZm9yZSB0aGlzIGNvbW1pdAo+Pj4+Pj4gYWxsIHRoZSBpbXBsZW1l
bnRhdGlvbnMgZGlkIGRlZmluZSB0aGUgLnJlc2V0IG9wLgo+Pj4+Pgo+Pj4+PiBJIGFtIHN1cnBy
aXNlZCBJIGRpZG4ndCBoYXZlIGlzc3VlcyB3aGVuIEkgd2FzIHRlc3RpbmcgdGhlIDhNUSBhbmQK
Pj4+Pj4gOE1NLCBidXQgdGhpcyBtYWtlcyBzZW5zZS4KPj4+Pgo+Pj4+IFlvdSBuZWVkIHRvIHRy
aWdnZXIgdGhlIFZQVSB3YXRjaGRvZyB0byB0cmlnZ2VyIHRoZSBjcmFzaCwgdGhhdCBtZWFucwo+
Pj4+IHlvdSBoYXZlIHRvIGdldCB0aGUgVlBVIGludG8gc29tZSB3ZWlyZCBzdGF0ZSB3aGVyZSBp
dCBmYWlscyB0byBkZWNvZGUKPj4+PiBmcmFtZS4gVGhlbiBpdCB0cmlnZ2VycyB0aGUgcmVzZXQg
YW5kIC4uLiBib29tLgo+Pj4+Cj4+Pj4gU2VlIHRoaXMgcGF0Y2gsIHRoYXQgY29udGFpbnMgYSBn
c3RyZWFtZXIgaW52b2NhdGlvbiB0byBnZW5lcmF0ZSBzdWNoCj4+Pj4gdHJpZ2dlciBjb25kaXRp
b24gaW5wdXQgZGF0YToKPj4+Pgo+Pj4+IFtQQVRDSF0gbWVkaWE6IHZlcmlzaWxpY29uOiBEbyBu
b3QgZW5hYmxlIEcyIHBvc3Rwcm9jIGRvd25zY2FsZSBpZgo+Pj4+IHNvdXJjZSBpcyBuYXJyb3dl
ciB0aGFuIGRlc3RpbmF0aW9uCj4+Pj4KPj4+PiAiCj4+Pj4gVG8gZ2VuZXJhdGUgaW5wdXQgdGVz
dCBkYXRhIHRvIHRyaWdnZXIgdGhpcyBidWcsIHVzZSBlLmcuOgo+Pj4+ICQgZ3N0LWxhdW5jaC0x
LjAgdmlkZW90ZXN0c3JjICEKPj4+PiB2aWRlby94LXJhdyx3aWR0aD0yNzIsaGVpZ2h0PTI1Nixm
b3JtYXQ9STQyMCAhIFwKPj4+PiAgICAgICAgICAgICAgICAgICAgIHZwOWVuYyAhIG1hdHJvc2th
bXV4ICEgZmlsZXNpbmsgbG9jYXRpb249L3RtcC90ZXN0LnZwOQo+Pj4+IFRvIHRyaWdnZXIgdGhl
IGJ1ZyB1cG9uIGRlY29kaW5nIChub3RlIHRoYXQgdGhlIE5WMTIgbXVzdCBiZSBmb3JjZWQsIGFz
Cj4+Pj4gdGhhdCBhc3N1cmVzIHRoZSBvdXRwdXQgZGF0YSB3b3VsZCBwYXNzIHRoZSBHMiBwb3N0
cHJvYyk6Cj4+Pj4gJCBnc3QtbGF1bmNoLTEuMCBmaWxlc3JjIGxvY2F0aW9uPS90bXAvdGVzdC52
cDkgISBtYXRyb3NrYWRlbXV4ICEKPj4+PiB2cDlwYXJzZSAhIFwKPj4+PiAgICAgICAgICAgICAg
ICAgICAgIHY0bDJzbHZwOWRlYyAhIHZpZGVvL3gtcmF3LGZvcm1hdD1OVjEyICEgdmlkZW9jb252
ZXJ0Cj4+Pj4gISBmYmRldnNpbmsKPj4+PiAiCj4+Pgo+Pj4gRG9lcyBpdCBjb21wbGV0ZWx5IHJl
Y292ZXIgYWZ0ZXJ3YXJkcz8gSW4gbXkgcHJldmlvdXMgdHJpYWxzIHRoZSBoYXJkd2FyZQo+Pj4g
ZW5kZWQgdXAgaW4gc29tZSBiaXp6YXJlIHN0YXRlOiB3aGlsZSBkZWNvZGluZyBzdWNjZWVkcywg
dGhlIG91dHB1dCdzIG1kNXN1bQo+Pj4gZGlkbid0IG1hdGNoIHVwLgo+Pgo+PiBIYXZlIHlvdSBn
b3QgYSB0ZXN0Y2FzZSB0aGF0IHRyaWdnZXJzIHRoaXMsIG9uZSBJIGNhbiB0cnkgPwo+Pgo+PiBJ
IGFtIG5vdCBlbnRpcmVseSBzdXJlIHdoZXRoZXIgdGhpcyBpcyBoYXBwZW5pbmcgaGVyZSBhcyB3
ZWxsIG9yIG5vdCwKPj4gYnV0IEkgY2FuIGltYWdpbmUgdGhhdCB0aGUgcG93ZXIgZG9tYWluIHdl
bnQgZG93biBhbmQgYmFjayB1cCBiZXR3ZWVuCj4+IHRlc3RzLCBzbyB0aGUgVlBVIHdvdWxkIGJl
IHBvd2VyIGN5Y2xlZCAoYW5kIHRoZXJlZm9yZSByZXNldCkgdGhhdCB3YXkuCj4+IFNvLCBJIHRo
aW5rIGl0IGlzIHdvcnRoIHRlc3RpbmcgdGhhdC4KPiAKPiBUaGlzIHdhcyBsYXN0IHllYXIgd2hp
bGUgSSB3YXMgd3JpdGluZyBIRVZDIGRlY29kaW5nIGNvZGUgZm9yIENocm9taXVtLgo+IElJUkMg
dGhlIFNBT0RCTEtfQV9NYWluQ29uY2VwdF80IHRlc3QgdmVjdG9yIGZyb20gdGhlIG9mZmljaWFs
IEhFVkMgdGVzdAo+IHN1aXRlIGRvZXMgY2F1c2Ugb3VyIHN0YWNrIHRvIGNyYXNoLCBidXQgR3N0
cmVhbWVyIHNlZW1lZCB0byBoYW5kbGUgaXQKPiBPSy4gSXQgY291bGQgYmUgdGhhdCB0aGUgQ2hy
b21pdW0gZGVjb2RlciBzdGFjayBpcyBwYXNzaW5nIGJhZCB2YWx1ZXMgdG8KPiB0aGUgZGVjb2Rl
ci4KClRoYXQgY2FuIGJlIGVhc2lseSB0ZXN0ZWQgd2l0aCBmdHJhY2UgZW5hYmxlZC4gSSB3YXMg
anVzdCB0cmFja2luZyBkb3duIAphbiBpc3N1ZSB3aXRoIGdzdHJlYW1lciBhbmQgYWRkZWQgdGhl
IGZvbGxvd2luZyBwYXRjaCB0byB0aGUgaGFudHJvIApkcml2ZXIuIFRoZW46CgplY2hvID4gL3N5
cy9rZXJuZWwvZGVidWcvdHJhY2luZy90cmFjZQo8cnVuIGZhaWwgdGVzdD4KY2F0IC9zeXMva2Vy
bmVsL2RlYnVnL3RyYWNpbmcvdHJhY2UgPiAvdG1wL2ZhaWwudHJhY2UKZWNobyA+IC9zeXMva2Vy
bmVsL2RlYnVnL3RyYWNpbmcvdHJhY2UKPHJ1biBwYXNzIHRlc3Q+CmNhdCAvc3lzL2tlcm5lbC9k
ZWJ1Zy90cmFjaW5nL3RyYWNlID4gL3RtcC9wYXNzLnRyYWNlCiMgcmVtb3ZlIHRpbWUgc3RhbXBz
IGV0Yy4KZGlmZiAvdG1wL3tmYWlsLHBhc3N9LnRyYWNlCgpZb3Ugc2hvdWxkIHNlZSB3aGV0aGVy
IHNvbWUgcmVnaXN0ZXIgcHJvZ3JhbW1pbmcgZGlmZmVycyBiZXR3ZWVuIApnc3RyZWFtZXIgYW5k
IGNocm9taXVtLgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGlj
b24vaGFudHJvLmggCmIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8u
aAppbmRleCBkZWEzNWE1MDFiYTMwLi41MjlmMWFiNDc4ZWM4IDEwMDY0NAotLS0gYS9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyby5oCisrKyBiL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvLmgKQEAgLTM1Myw4ICszNTMsNyBAQCBleHRlcm4g
aW50IGhhbnRyb19kZWJ1ZzsKCiAgI2RlZmluZSB2cHVfZGVidWcobGV2ZWwsIGZtdCwgYXJncy4u
LikgICAgICAgICAgICAgICAgICAgICAgICAgXAogICAgICAgICBkbyB7ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKLSAgICAgICAgICAgICAgIGlm
IChoYW50cm9fZGVidWcgJiBCSVQobGV2ZWwpKSAgICAgICAgICBcCi0gICAgICAgICAgICAgICAg
ICAgICAgIHByX2luZm8oIiVzOiVkOiAiIGZtdCwgICAgICAgICAgICAgICAgICBcCisgICAgICAg
ICAgICAgICB0cmFjZV9wcmludGsoIiVzOiVkOiAiIGZtdCwgICAgICAgICAgICAgICAgICAgICBc
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBfX2Z1bmNfXywgX19MSU5FX18sICMj
YXJncyk7ICAgXAogICAgICAgICB9IHdoaWxlICgwKQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
