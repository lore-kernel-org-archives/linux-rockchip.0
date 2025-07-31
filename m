Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9CEEC83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Jul 2025 08:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NhLdzjnlnT4B0RAjUXsVGGCoBVxzQ4Xut8qHVQ2GjdQ=; b=c1EdfukM5Q8IHc
	ufa4QfCdx8Y/aR7KmD0PioywGQNlKchOrJS+2W5iC1e13sQ7hYMkYKwwuELtc0uC3hkfU+i+tf1Kx
	KJjpjLtJeCTWd6Wxxk4eH8xRjWcDjR7mnB2ANlwHoLtbZlDjOg/zymZmo6Ff2F4f0dk5eVCux5y50
	SbpieHmN3fDCHjzzjcQ/z2uNoR4ax9PRYwJVv9iCCycCpkIWXiNQWNEd9tl7L3JQjkVXZWWRzeN5i
	/UfG50BZooDJFXJEkd3VnQRDwuEMckR4RUNywIOBWjvZY+hI9E0mEp6Y6er7lgisuPRS3DZqcj4oo
	VnmH1A1jCiVA7r7Vv18A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhOiU-00000003AWe-3mZl;
	Thu, 31 Jul 2025 08:32:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhOO6-000000038Og-23lV;
	Thu, 31 Jul 2025 08:11:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=SnN4gkK7hnqg+1fHPpMhKULH0EAOxYwzimcsaqGrHpI=; b=nt67wWbOozmrdStei2uDKou0oi
	JUfbs/YtFvbvyk0xU/vIThKDjzbAlY6JA9O1a+EPymvZSvddO6Mz7yr/HalubI8+LNMRstAnxihEP
	QRub/dVXS0103625DIbhimZn4sE7hRrW/RYhU1gYaLTP7vdn2zpitPTK4m5KHC8LSZoNNuU4KMRKB
	Nqrn1vuZpL/WOEthSFsRqK1KIC14a3cNt82X9xxc4kRtFN+Ujb8zodPWsxCcVX6ZnzBlhK5YekXv2
	4Ja3ws0DG/RitZoSgAWbfT+vtQKM4B5JNzxB+ey8/jqk28U5hf3Ghjfo9VFlNMiUO/gSm2bdTsEDd
	qEI8bSEw==;
Received: from i53875bde.versanet.de ([83.135.91.222] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uhONo-0006X8-Jv; Thu, 31 Jul 2025 10:11:24 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Alexey Charkov <alchark@gmail.com>
Subject: Re: [PATCH v6 0/7] RK3576 thermal sensor support,
 including OTP trim adjustments
Date: Thu, 31 Jul 2025 10:11:23 +0200
Message-ID: <3560770.QJadu78ljV@diego>
In-Reply-To: <CABjd4YzJeNf0Qq9qFeMcoYQV5erZGUeOpmJynRW88AeL9dJNhQ@mail.gmail.com>
References: <20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com>
 <14c91ee4-3a09-4ec9-966f-0d563d7c8966@linaro.org>
 <CABjd4YzJeNf0Qq9qFeMcoYQV5erZGUeOpmJynRW88AeL9dJNhQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_011142_687437_F50E5697 
X-CRM114-Status: GOOD (  35.02  )
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
Cc: Ye Zhang <ye.zhang@rock-chips.com>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>, kernel@collabora.com, Krzysztof Kozlowski <krzk+dt@kernel.org>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGV5IEFsZXhleSwKCkFtIERvbm5lcnN0YWcsIDMxLiBKdWxpIDIwMjUsIDA5OjMzOjMyIE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQWxleGV5IENoYXJrb3Y6Cj4gT24gVGh1
LCBKdWwgMTcsIDIwMjUgYXQgMTI6MjDigK9QTSBEYW5pZWwgTGV6Y2Fubwo+IDxkYW5pZWwubGV6
Y2Fub0BsaW5hcm8ub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiA3LzE3LzI1IDA5OjIxLCBIZWlrbyBT
dMO8Ym5lciB3cm90ZToKPiA+ID4gSGkgRGFuaWVsLAo+ID4gPgo+ID4gPiBBbSBNaXR0d29jaCwg
MTYuIEp1bGkgMjAyNSwgMjI6MTI6NTMgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2No
cmllYiBEYW5pZWwgTGV6Y2FubzoKPiA+ID4+IE9uIFR1ZSwgSnVuIDEwLCAyMDI1IGF0IDAyOjMy
OjM2UE0gKzAyMDAsIE5pY29sYXMgRnJhdHRhcm9saSB3cm90ZToKPiA+ID4+PiBUaGlzIHNlcmll
cyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBSSzM1NzYncyB0aGVybWFsIHNlbnNvci4KPiA+ID4+Pgo+
ID4gPj4+IFRoZSBzZW5zb3IgaGFzIHNpeCBjaGFubmVscywgcHJvdmlkaW5nIG1lYXN1cmVtZW50
cyBmb3IgdGhlIHBhY2thZ2UKPiA+ID4+PiB0ZW1wZXJhdHVyZSwgdGhlIHRlbXBlcmF0dXJlIG9m
IHRoZSBiaWcgY29yZXMsIHRoZSB0ZW1wZXJhdHVyZSBvZiB0aGUKPiA+ID4+PiBsaXR0bGUgY29y
ZXMsIGFuZCB0aGUgR1BVLCBOUFUgYW5kIEREUiBjb250cm9sbGVyLgo+ID4gPj4+Cj4gPiA+Pj4g
SW4gYWRkaXRpb24gdG8gYWRkaW5nIHN1cHBvcnQgZm9yIHRoZSBzZW5zb3IgaXRzZWxmLCB0aGUg
c2VyaWVzIGFsc28KPiA+ID4+PiBhZGRzIHN1cHBvcnQgZm9yIHJlYWRpbmcgdGhlcm1hbCB0cmlt
IHZhbHVlcyBvdXQgb2YgdGhlIGRldmljZSB0cmVlLgo+ID4gPj4+IE1vc3Qgb2YgdGhpcyBmdW5j
dGlvbmFsaXR5IGlzIG5vdCBzcGVjaWZpYyB0byB0aGlzIFNvQywgYnV0IG5lZWRlZCB0byBiZQo+
ID4gPj4+IGltcGxlbWVudGVkIHRvIG1ha2UgdGhlIHNlbnNvcnMgYSBsaXR0bGUgbW9yZSBhY2N1
cmF0ZSBpbiBvcmRlciB0bwo+ID4gPj4+IGludmVzdGlnYXRlIHdoZXRoZXIgdGhlIFRSTSBzd2Fw
cGVkIEdQVSBhbmQgRERSIG9yIGRvd25zdHJlYW0gc3dhcHBlZAo+ID4gPj4+IEdQVSBhbmQgRERS
IGluIHRlcm1zIG9mIGNoYW5uZWwgSURzLCBhcyBkb3duc3RyZWFtIGRpc2FncmVlcyB3aXRoIHdo
YXQncwo+ID4gPj4+IGluIHRoZSBUUk0sIGFuZCB0aGUgZGlmZmVyZW5jZSBpcyBzbyBzbWFsbCBh
bmQgaGFyZCB0byBwaW4gZG93biB3aXRoCj4gPiA+Pj4gdGVzdGluZyB0aGF0IHRoZSBjb25zdGFu
dCBvZmZzZXQgYmV0d2VlbiB0aGUgdHdvIHNlbnNvcnMgd2FzIGEgbGl0dGxlCj4gPiA+Pj4gYW5u
b3lpbmcgZm9yIG1lIHRvIGRlYWwgd2l0aC4KPiA+ID4+Pgo+ID4gPj4+IEkgZW5kZWQgdXAgZ29p
bmcgd2l0aCB0aGUgY2hhbm5lbCBhc3NpZ25tZW50IHRoZSBUUk0gbGlzdHMsIGFzIEkgc2VlIHRo
ZQo+ID4gPj4+IEREUiBzZW5zb3IgZ2V0IGEgbGFyZ2VyIGRldmlhdGlvbiBmcm9tIGJhc2VsaW5l
IHRlbXBlcmF0dXJlcyBkdXJpbmcgbWVtb3J5Cj4gPiA+Pj4gc3RyZXNzIHRlc3RzIChzdHJlc3Mt
bmcgLS1tZW1yYXRlIDggLS1tZW1yYXRlLWZsdXNoKSB0aGFuIHdoYXQgdGhlIFRSTQo+ID4gPj4+
IGNsYWltcyBpcyB0aGUgR1BVIHNlbnNvciBidXQgZG93bnN0cmVhbSBjbGFpbXMgaXMgdGhlIERE
UiBzZW5zb3IuIElucHV0Cj4gPiA+Pj4gZnJvbSBSb2NrY2hpcCBlbmdpbmVlcnMgb24gd2hldGhl
ciB0aGUgVFJNIGlzIHJpZ2h0IG9yIHdyb25nIHdlbGNvbWUuCj4gPiA+Pj4KPiA+ID4+PiBUaGUg
dHJpbSBmdW5jdGlvbmFsaXR5IGlzIG9ubHkgdXNlZCBieSBSSzM1NzYgYXQgdGhlIG1vbWVudC4g
Q29kZSB0bwo+ID4gPj4+IGhhbmRsZSBvdGhlciBTb0NzIGNhbiByZWx5IG9uIHRoZSBzaGFyZWQg
b3RwIHJlYWRpbmcgYW5kIHBlcmhhcHMgZXZlbgo+ID4gPj4+IHRoZSBJUCByZXZpc2lvbiBzcGVj
aWZpYyBmdW5jdGlvbiwgYnV0IG1heSBuZWVkIGl0cyBvd24gSVAgcmV2aXNpb24KPiA+ID4+PiBz
cGVjaWZpYyBmdW5jdGlvbnMgYWRkZWQgYXMgd2VsbC4gQWJzZW50IHRyaW0gZnVuY3Rpb25hbGl0
eSBpbiBvdGhlcgo+ID4gPj4+IFNvQ3Mgc2hvdWxkIG5vdCBpbnRlcmZlcmUgd2l0aCB0aGUgbW9k
aWZpZWQgY29tbW9uIGNvZGUgcGF0aHMuCj4gPiA+Pj4KPiA+ID4+PiBQYXRjaCAxIGlzIGEgY2xl
YW51cCBwYXRjaCBmb3IgdGhlIHJvY2tjaGlwIHRoZXJtYWwgZHJpdmVyLCB3aGVyZSBhCj4gPiA+
Pj4gZnVuY3Rpb24gd2FzIGNvbmZ1c2luZ2x5IG5hbWVkLgo+ID4gPj4+Cj4gPiA+Pj4gUGF0Y2gg
MiBhZGRzIHRoZSBSSzM1NzYgY29tcGF0aWJsZSB0byB0aGUgYmluZGluZ3MuCj4gPiA+Pj4KPiA+
ID4+PiBQYXRjaCAzIGFkZHMgc3VwcG9ydCBmb3IgdGhpcyBTb0MncyB0aGVybWFsIGNoaXAgdG8g
dGhlIGRyaXZlci4gSXQgaXMgYQo+ID4gPj4+IHBvcnQgb2YgdGhlIGRvd25zdHJlYW0gY29tbWl0
IGFkZGluZyBzdXBwb3J0IGZvciB0aGlzLgo+ID4gPj4+Cj4gPiA+Pj4gUGF0Y2ggNCBhZGRzIHNv
bWUgZG9jdW1lbnRhdGlvbiBmb3IgaW1taW5lbnQgYWRkaXRpb25hbCBmdW5jdGlvbmFsaXR5IHRv
Cj4gPiA+Pj4gdGhlIGJpbmRpbmcsIG5hbWVseSB0aGUgdHJpbSB2YWx1ZSBzdHVmZi4KPiA+ID4+
Pgo+ID4gPj4+IFBhdGNoIDUgYWRkcyBzdXBwb3J0IGZvciByZWFkaW5nIHRoZXNlIE9UUCB2YWx1
ZXMgaW4gdGhlCj4gPiA+Pj4gcm9ja2NoaXBfdGhlcm1hbCBkcml2ZXIsIGFuZCBtYWtlcyB1c2Ug
b2YgdGhlbS4gVGhlIGNvZGUgaXMgbW9zdGx5IG5ldwo+ID4gPj4+IHVwc3RyZWFtIGNvZGUgd3Jp
dHRlbiBieSBtZSwgdXNpbmcgZG93bnN0cmVhbSBjb2RlIGFzIHJlZmVyZW5jZS4KPiA+ID4+Cj4g
PiA+PiBSZXBsYWNlZCBwcmV2aW91c2x5IGFwcGxpZWQgdmVyc2lvbiBWNSB3aXRoIHRoaXMgVjYg
cGF0Y2hlcyAxLTUKPiA+ID4KPiA+ID4gYXJlIHRoZXNlIGNvbW1pdHMgYXZhaWxhYmxlIHNvbWV3
aGVyZT8KPiA+ID4KPiA+ID4gQmVjYXVzZSBnaXQua2VybmVsLm9yZyByZXBvcnRzIHRoYXQKPiA+
ID4gICAgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdGhl
cm1hbC9saW51eC5naXQKPiA+ID4gaGFzIG5vdCBzZWVuIGFjdGl2aXR5IGluIGEgd2hpbGU/Cj4g
PiA+Cj4gPgo+ID4gSSBqdXN0IHB1c2hlZCB0aGUgYmxlZWRpbmctZWRnZSBicmFuY2gKPiAKPiBK
dXN0IHdvbmRlcmluZyBpZiBwYXRjaGVzIDYtNyBmcm9tIHRoaXMgc2VyaWVzIGFyZSBvbiB5b3Vy
IHJhZGFyPwo+IERyaXZlciBjaGFuZ2VzIGFyZSBpbiAtbmV4dCBBRkFJQ1QsIGJ1dCBub3QgRFRT
LiBDYW4ndCB3YWl0IHRvIGdldCB0aGUKPiB0ZW1wZXJhdHVyZSBtb25pdG9yaW5nIHdvcmtpbmcg
b24gUkszNTc2IHdpdGhvdXQgb3V0LW9mLXRyZWUgcGF0Y2hlcwo+IDstKQoKdGhleSBhcmUgOi0p
IC4KClJpZ2h0IG5vdyB3ZSdyZSBpbiB0aGUgbWlkZGxlIG9mIHRoZSBtZXJnZS13aW5kb3cgdGhv
dWdoLCBzbyBldmVyeXRoaW5nCkkgYXBwbHkgbm93LCBJJ2QgbmVlZCB0byByZWJhc2Ugb250byAt
cmMxIGluIHNsaWdodGx5IG1vcmUgdGhhbiBhIHdlZWssCmludmFsaWRhdGluZyBhbGwgdGhvc2Ug
bmljZSBjb21taXQgaGFzaGVzIHRoYXQgZW5kIHVwIGluIHRoZSAiYXBwbGllZCIgbWFpbHMuCgpT
byBJJ20gc3RydWdnbGluZyB3aXRoIG15c2VsZiBvbiBldmVyeSBtZXJnZSB3aW5kb3cgYWJvdXQg
dGhhdC4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
