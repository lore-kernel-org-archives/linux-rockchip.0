Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 849F0CFD641
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 14:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPi94uSdb2tUBKgsCme3rqU4FE7SFYr43ZT4LVWBEGc=; b=GPdtFtYHJyxiqj
	y+z2tNYNZlkJ3OP6xM3e50VZ7XLOq86SUTHPul1Ny+0trwFcIbExRPOj0h+4iqsnqEgRF1pBGfUf8
	m/qoe7ZI1RSl9mDS4kjhgQIZHHnEVtPeV5BB9SBNK0swLDzMkgVoEnHHGCJEaQe/mg9QKcnUZ0WOg
	trmU7wnd8WGbyAevRT8lnO+3t+ib/4lpGQu3dgY0zG72GcfWMXOgqOhptMCZxfbv16XQogYnjW2Be
	IcpHMmRyZSlbX8GKTNqTTyuv9WX77Ut9QVwf82t0//vFMZyGoREksO9SnjAfPvNUKxOj3Hw1kGVzL
	BSSR91KhvXCoJQ6X8Geg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdUxo-0000000F8XB-3fBu;
	Wed, 07 Jan 2026 14:56:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdUxm-0000000F8W4-2LqA;
	Wed, 07 Jan 2026 14:56:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=hOJKf63ci0E2lOe7oWIa3IAL+UO+d20xkV6A9YbWmpE=; b=yB/rgB+5GKbzLTz+D1ec0L1Hxx
	iIrnYXxjDvUdlw4FhLC7p9ZIXz/zlKvKciuBK/xtj/5zqYgOLmEHgwMC+i/CQ+ArmmmPcJIhBb1ZH
	GsD5zmsfjsY2aes5ZaiYwcO6pcerokwY9Epd4iKfPxeDVGbbJpDpb4gDFgdfyOJbjaUu2Bugk9Llb
	bxvCPmlfmhNowbFvHXOn1YuLRoWOr5zkLVZ2mCBevaZpzbseGJPpYQM1pVhnQwdIqrglUOAW4hPGd
	VonhyPv5MJVJ3eJe0c+3rYtI+HJGjOa7B375+xBu3qzSrg6Ae4f7zr0hhTOlqTGt5C7a8sHDvIb7g
	jIy1qgzw==;
Received: from i53875b57.versanet.de ([83.135.91.87] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdUxb-001OK7-Jx; Wed, 07 Jan 2026 15:56:32 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chaoyi Chen <kernel@airkyi.com>, Alexey Charkov <alchark@gmail.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
Date: Wed, 07 Jan 2026 15:56:31 +0100
Message-ID: <1907895.QZUTf85G27@diego>
In-Reply-To: <1956308.1xdlsreqCQ@diego>
References: <20260107070322.323-1-kernel@airkyi.com>
 <daa61083-ddc6-4454-9bea-d4ea2a4a9d91@rock-chips.com>
 <1956308.1xdlsreqCQ@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_065642_600198_6814B2D6 
X-CRM114-Status: GOOD (  28.70  )
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

QW0gTWl0dHdvY2gsIDcuIEphbnVhciAyMDI2LCAxNTo1NDo0NyBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIEhlaWtvIFN0w7xibmVyOgo+IEFtIE1pdHR3b2NoLCA3LiBKYW51
YXIgMjAyNiwgMTE6MDQ6NDIgTWl0dGVsZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBD
aGFveWkgQ2hlbjoKPiA+IE9uIDEvNy8yMDI2IDU6NTcgUE0sIENoYW95aSBDaGVuIHdyb3RlOgo+
ID4gPiBPbiAxLzcvMjAyNiA0OjIxIFBNLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+ID4+IEFt
IE1pdHR3b2NoLCA3LiBKYW51YXIgMjAyNiwgMDg6NTY6MDQgTWl0dGVsZXVyb3DDpGlzY2hlIE5v
cm1hbHplaXQgc2NocmllYiBBbGV4ZXkgQ2hhcmtvdjoKPiA+ID4+PiBPbiBXZWQsIEphbiA3LCAy
MDI2IGF0IDExOjA04oCvQU0gQ2hhb3lpIENoZW4gPGtlcm5lbEBhaXJreWkuY29tPiB3cm90ZToK
PiAKPiBbLi4uXQo+IAo+ID4gPj4+PiArICAgICAgIHZjYzN2M19odWJyZXNldDogdmNjM3YzLWh1
YnJlc2V0IHsKPiA+ID4+Pj4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9y
LWZpeGVkIjsKPiA+ID4+Pj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjYzN2
M19odWJyZXNldCI7Cj4gPiA+Pj4+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItYm9vdC1vbjsK
PiA+ID4+Pj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4gPiA+Pj4KPiA+
ID4+PiBJZiB0aGlzIHJlZ3VsYXRvciBzdXBwbGllcyBhIHNvbGRlcmVkLW9uIGRpc2NyZXRlIGh1
YiBhbmQgaXMgcmVxdWlyZWQKPiA+ID4+PiB0byBwb3dlciBpdCB1cCwgd29uJ3QgaXQgYmUgYmV0
dGVyIHRvIGRlc2NyaWJlIHRoZSBodWIgaW4gdGhlIGRldmljZQo+ID4gPj4+IHRyZWUgKHNlZSBi
aW5kaW5nIGF0IFsxXSksIG1ha2UgdGhlIHJlZ3VsYXRvciBpdHMgc3VwcGx5LCBhbmQgcGVyaGFw
cwo+ID4gPj4+IGRyb3AgdGhlICJyZWd1bGF0b3ItYm9vdC1vbi9yZWd1bGF0b3ItYWx3YXlzLW9u
IiBhbm5vdGF0aW9uIGhlcmUsCj4gPiA+Pj4gbGV0dGluZyB0aGUgcmVndWxhdG9yIGNvcmUgZGVh
bCB3aXRoIGl0cyBlbmFibGluZyBpbnN0ZWFkPwo+ID4gPj4+Cj4gPiA+Pj4gWzFdIGh0dHBzOi8v
Z2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9ibG9iL21hc3Rlci9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvdXNiL3VzYi1kZXZpY2UueWFtbAo+ID4gPj4KPiA+ID4+IFllcCwgaXQg
d291bGQgYmUgbmljZXIgdG8gaXQgdGhpcyB3YXkuCj4gPiA+PiBBIGxpdmUgZXhhbXBsZSBjYW4g
YmUgZm91bmQgaW4gdGhlIFJvY2sgNSBJVFggWzJdCj4gPiA+Pgo+ID4gPj4gWzJdIGh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4Lmdp
dC90cmVlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNS1pdHguZHRz
I24xMjY2Cj4gPiA+IAo+ID4gPiBUaGFuayB5b3UgZm9yIHRoZSBncmVhdCBleGFtcGxlLiBCVFcg
dGhlIGh1YiB1c2VkIGhlcmUgaXMgQ0gzNDQuIEl0Cj4gPiA+IGxvb2tzIGxpa2Ugd2UgbmVlZCB0
byBhZGQgYSBuZXcgYmluZGluZyA6KQo+ID4gPgo+ID4gCj4gPiBUeXBvLi4uIEl0IGlzIFdDSCBD
SDMzNC4KPgo+IEkgZG9uJ3QgdGhpbmsgeW91IG5lZWQgYSBuZXcgY29tcGF0aWJsZSBhdCBhbGwg
Oi0pIAoKUGxlYXNlIGlnbm9yZSBldmVyeXRoaW5nIEkgd3JvdGUgOi0pCgpJIGp1c3QgbG9va2Vk
IGZhcnRoZXIgaW50byB0aGUgdXNiIGJpbmRpbmdzLgpTbyB5ZXMgeW91J2xsIHByb2JhYmx5IG5l
ZWQgYSBiaW5kaW5nIGZvciB5b3VyIGh1Yi4KCgpTb3JyeSBhYm91dCB0aGUgbm9pc2UKSGVpa28K
CgoKPiBXaGVuIHlvdSBsb29rIGF0IHRoZSB1c2ItZGV2aWNlLnlhbWwgbGlua2VkIGFib3ZlIHlv
dSdsbCB0aGUgY29tcGF0aWJsZQo+IGFscmVhZHkgZGVmaW5lZCBhcyBhIHBhdHRlcm46Cj4gCj4g
ICBjb21wYXRpYmxlOgo+ICAgICBjb250YWluczoKPiAgICAgICBwYXR0ZXJuOiAiXnVzYlswLTlh
LWZdezEsNH0sWzAtOWEtZl17MSw0fSQiCj4gICAgIGRlc2NyaXB0aW9uOiBEZXZpY2Ugbm9kZXMg
b3IgY29tYmluZWQgbm9kZXMuCj4gICAgICAgInVzYlZJRCxQSUQiLCB3aGVyZSBWSUQgaXMgdGhl
IHZlbmRvciBpZCBhbmQgUElEIHRoZSBwcm9kdWN0IGlkLgo+ICAgICAgIFRoZSB0ZXh0dWFsIHJl
cHJlc2VudGF0aW9uIG9mIFZJRCBhbmQgUElEIHNoYWxsIGJlIGluIGxvd2VyIGNhc2UKPiAgICAg
ICBoZXhhZGVjaW1hbCB3aXRoIGxlYWRpbmcgemVyb2VzIHN1cHByZXNzZWQuIFRoZSBvdGhlciBj
b21wYXRpYmxlCj4gICAgICAgc3RyaW5ncyBmcm9tIHRoZSBhYm92ZSBzdGFuZGFyZCBiaW5kaW5n
IGNvdWxkIGFsc28gYmUgdXNlZCwKPiAgICAgICBidXQgYSBkZXZpY2UgYWRoZXJpbmcgdG8gdGhp
cyBiaW5kaW5nIG1heSBsZWF2ZSBvdXQgYWxsIGV4Y2VwdAo+ICAgICAgIGZvciAidXNiVklELFBJ
RCIuCj4gCj4gV2hpY2ggd2lsbCBtYXRjaCBldmVyeXRoaW5nIFZJRCArIFBJRCBjb21iaW5hdGlv
biwgc28geW91IGp1c3QgbmVlZAo+IHRvIHVzZSB0aGUgVklEK1BJRCBmcm9tIHlvdXIgaHViLgo+
IAo+IAo+IEhlaWtvCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
