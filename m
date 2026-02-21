Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C9CBC5AD7B
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Feb 2026 15:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdRescdQR9JXrw5tJ+407/uzkFMNcKN85k8UvJZLR74=; b=CtjpYvdqz6vd40
	Xjc+CB/OqzHAUduCpFTHysJDomBG8Jm/gjQbnFzbm0DD0RUyMYR2JtdI46i/aNM8vA0rWFfhmDaBC
	j7U5SqEIFovrgoxNCG7FOyFzAAP4rot2r2CGUe7EIIh0sh9oJ3HcxMhXMfLBPWali906t3WQKDziv
	35NydzJaxe2zdMhHDpGerh5MPh1qZ4+euBmT8N0LSo+wdYRven7aNNdNs+P6aa3jlleJA3RaGp13L
	8szRb3SMpKig/mUkxfZjlFU6BsuhiApG+7AQ5Q5IaFmy6Uj3l1L2Pz1F2MSOYvIbfzJdbBAGhXC1g
	SoxL+qiXZ7V3Rrxj8esg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtoYK-0000000G7k7-1p7V;
	Sat, 21 Feb 2026 15:05:52 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtoYG-0000000G7jI-4Ae7;
	Sat, 21 Feb 2026 15:05:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=online.de;
	s=s42582890; t=1771686343; x=1772291143; i=dubito@online.de;
	bh=l8qR+hrpB4PvPYq3Ypso3qPSLmB4Te3SmIhkNNMiHXk=;
	h=X-UI-Sender-Class:Message-ID:Subject:From:Reply-To:To:Date:
	 In-Reply-To:References:Content-Type:Content-Transfer-Encoding:
	 MIME-Version:cc:content-transfer-encoding:content-type:date:from:
	 message-id:mime-version:reply-to:subject:to;
	b=jEp6QxvWChMG6Ud89DVe0Lx4KB9wzmgMyscvp2RWh6KMjHwX4/pX1cf0MyK7/V1H
	 CbCtl7bvhPEigK45gEySQegtbg8w3TPkgaBtjmuaLScnJ2jiXea/zlSWF+kcwstub
	 Hmg8Gymr0tOCLkbHqJqAeNZdS9iSSf6hK1i+xkUebUVFhUlE99gwsNwd1hYVooLgi
	 BuypNYtXhAU7K/6jbgw3IuQ1RxtA2h6L5TQUv6D0/hUZ6vsPaHyDjTGcuwDTuOjRW
	 MkCbY94NDW79UgpITozboN9VpDDCY31R1rf7jL+fYpOhyHLH9jqddrQHhIYLBsHiu
	 EIBsHrGXuGLdUDnHdA==
X-UI-Sender-Class: 6003b46c-3fee-4677-9b8b-2b628d989298
Received: from [192.168.0.209] ([91.66.193.45]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MacWq-1vIp2b3CA6-00cf5E; Sat, 21 Feb 2026 16:05:43 +0100
Message-ID: <e18fce6a3216427d26bd10ebd837e9152c0c8b60.camel@online.de>
Subject: Re: [REGRESSION] HDMI monitor not working on Radxa Rock 5B after
 phy rockchip samsung hdptx HDMI 2.1 FRL patchset
From: Thomas =?ISO-8859-1?Q?Niederpr=FCm?= <dubito@online.de>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Vinod Koul	
 <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Heiko
 Stuebner	 <heiko@sntech.de>, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, regressions@lists.linux.dev
Date: Sat, 21 Feb 2026 16:05:42 +0100
In-Reply-To: <a662745a-1b2a-47b3-a66d-7c1c5c8af525@collabora.com>
References: <b32164001947ba922aefb6ca86a8dc59e9323d2b.camel@online.de>
	 <8e410a11-bd7b-4a12-a711-0514a59409c0@collabora.com>
	 <1859c940219a4dbfdf0497afbf333e627ab0ba25.camel@online.de>
	 <98e46dbb-c8e2-451f-accb-ea48f63f9408@collabora.com>
	 <4544ec4ccfa49cbdffee098878df7806223935a0.camel@online.de>
	 <08369c90-fbab-477d-9ac6-388deddfd3b1@collabora.com>
	 <26e31b3b-484f-433b-833f-c639ee437f63@collabora.com>
	 <03b5f3d1-6db4-4835-b2a5-c22c1aa63825@collabora.com>
	 <a3c3964e9e13c82d944fa1ee0acbb1a7806dd382.camel@online.de>
	 <a662745a-1b2a-47b3-a66d-7c1c5c8af525@collabora.com>
User-Agent: Evolution 3.58.2 
MIME-Version: 1.0
X-Provags-ID: V03:K1:A6DOSPbkG2a8W4AayFyZ/jjeSuVWCTyazX1+j+t31ZRKWxK/Pnc
 jLMRbuZsxFP7h8H8PF9hN8AVg7yCgLue0dTFe0hgTC4trdPFQ3MODOKKMZL3ebiQggmISvz
 hFNAR1T8gWd+byqq4g//CIgMDld7Xp0bNA+UFbCaVVMKh3I2iMKjtAiBlfI+lLYpQbKjE1K
 NBXvLCM6oJ/at7jC+v/uQ==
UI-OutboundReport: notjunk:1;M01:P0:J+JveUSkW8c=;Fm+X29IM1PZd1HVmkootEQNq8v5
 muHpXDJtmk4rr6WAr+yyr9f0j/zB4r3EW5upJeqF0mL0Y94RUPIwk5RbfXHeHfKRPIJC677Ta
 OjqvArzHWsR4aMrah5R/k95Z3mKB/JKp6pGkcu2LEFPvlkuQ5Qb5xJ4UZnXCkroe7pBddEnwP
 dCjnQeHPIX5CNrOUokkcctvWJo7iOoToNlCMs9hDiOpR11Y8HAouRyxiOyfbxjb1/x9W607/z
 byx8GRO/ByWOwkGnRIJxQ3vXXWtslf1SA3l1bRfLPN6D2Fvrrr1RvCljX94CeriCLyI0f2Fho
 hls5rLYmgY4DhLKdRMuZrk/fQEVpwwtoJiFk6M6nfTMGVABiRF/BVUD755vh6HNAfssPilHkW
 FiDLwp3dYIsjkhouIC1YSjdsp8aEoMgSWqVkY6ryDT5VB5OV0CFpi2AwT8A8yjnhs3U9uyyf8
 HnhNJZtzu9L4FtDKzGFnhUuBQqTUA9TS50Vi7mFex2hfep4zZ21zzr6hdlambw9nWOMmpj7+R
 cBobrK/FyiY7BBT2JMhABNDViHBxxbs6fR7tPV/YbO6U2efpIz6Q9UE+3lKimI0hh46+LoBct
 Aibf35j6/fUVwYrpPFjDnTajC2piOkkw/25ZRUQS93ed9B4ILzbw2rET3zNj6/3Sz9bNKA05k
 Bfow53WDJ7Mx9S98sgRU1hB4DqiVW+8Wk1bVul7KIQ1kz9WOCeD3Q8WWxMNHUJ4HoWSNBE/ya
 O3moInk05QwWdwpBUvXmIDPcqDbcs3gukIMMy7KATZFA2H6WsHUSoxxlWyHVqvl8GfnjUsHLH
 fCBEUmkNSFCjM30lJDfJM8Zer+plRkr8woxdwN5XFWe7UiTvWKyrijvMdwHr4BXQNQCLwpTJw
 e/JGsa4tZt6MSfTIFcib/Lz2/Pmclv2Clwhowj2Yggz4VDBa/JEa8HaAEVqySrNLqH7x0sTVC
 Jh5E6RrSi/oK7Af6mW4ZVdGf3wLIj0X2hroLPiypiQPvC2vPeCkQKFX824Nfbe1CJoYrxfFs7
 DOGz7NMesHagDdMe4gLBVFZnH5MbfEXmXFgMgvVxlTv3e7zHOpZRgkbSpnE5dhbyWPbm9dPXT
 aDjC9aaIIu1SiWl52nNFwPO/AFabpkwBKLlBdstjy+nKQEZu6GPRwtyCqHDvxB3VxAC2iiT4E
 vZsqBa4Lz78P59NoQm1uTqNk4EpRJ3g4tDVZftz12Zztj6oqx7mxN8KrSJlD6hMUHfyqvv9Do
 OaTTupZtx8LRbrluJVkTDdkRC3Rpj15if5A8cJgf6j/sbWhZPhFPwZGU4su2uPHTZoagKdxzj
 hnJwiu1Sesl5itpZ00vjd5hw/0f9NzQ3+2GXBBpy7qGPKyAt6KYUPFifUQR/XjGngBUtx9a2x
 ccSGfhUQKj6Yp20NGa/oWqRWvCDiP2cmuAS9KTsahXz42/d25kaadKXk4IBB0e7Y2izzc4yuL
 7sJ92E9xYGXpX9/3yjT7Em9qbmssyE1aqSz5nhu6N5qbTJdTY4BSudrozpg40KC7Zo0r/xICc
 RC0wFX2fyUoM5F22LGwxnu3DDgPGz00VdDciVNe8/xEoruYBv8FoMCkgXJr2jrz+0ttxVvNS0
 jZldS7DfsEi4wKAi9sRowMIG4HAs+1kRiofZ7Vc8V64dllBwMsaFTyRSy0xcE0H13EGJctOXV
 39NiBSaVQxEhyPhm991O8fMbkJQpy/OhamZnYll6DDyYRgOOqZe2FPTD/aCCbHQ4aM0pyGBrO
 IW/1iOEwwCf5PpLh7AVUjOsQZ5C/Kkrm3nx2kBnQUD41GTArtraTt/kuzGawM4h/kQdz86PLz
 e2wh
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260221_070549_392072_8B73B25C 
X-CRM114-Status: GOOD (  27.96  )
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
Reply-To: dubito@online.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQ3Jpc3RpYW4sCgpBbSBNaXR0d29jaCwgZGVtIDE4LjAyLjIwMjYgdW0gMjI6NTYgKzAyMDAg
c2NocmllYiBDcmlzdGlhbiBDaW9jYWx0ZWE6Cj4gSGkgVGhvbWFzLAo+IAo+IE9uIDIvMTgvMjYg
MTA6NDMgUE0sIDF1bmQxIHdyb3RlOgo+ID4gSGkgQ3Jpc3RpYW4sCj4gPiAKPiA+IAo+ID4gQW0g
TWl0dHdvY2gsIGRlbSAxOC4wMi4yMDI2IHVtIDIyOjE1ICswMjAwIHNjaHJpZWIgQ3Jpc3RpYW4g
Q2lvY2FsdGVhOgo+ID4gPiBPbiAyLzE4LzI2IDM6MjIgQU0sIENyaXN0aWFuIENpb2NhbHRlYSB3
cm90ZToKPiA+ID4gPiBPbiAyLzE4LzI2IDI6NTIgQU0sIENyaXN0aWFuIENpb2NhbHRlYSB3cm90
ZToKPiA+ID4gPiA+IEhpIFRob21hcywKPiA+ID4gPiBbLi4uXQo+ID4gPiA+IAo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiBTb3JyeSwgSSBzb21laG93IG1pc3NlZCB0aGUgZm9sbG93aW5nIHdhcm5pbmcg
bWVzc2FnZSwgdGhvdWdoIGl0IGhhcwo+ID4gPiA+ID4gYmVlbgo+ID4gPiA+ID4gYWxyZWFkeSBw
cmVzZW50IGluIGFsbCB0aGUgbG9ncyB5b3UndmUgc2VudCB0byBtZSBzbyBmYXI6Cj4gPiA+ID4g
PiAKPiA+ID4gPiA+IMKgIHJvY2tjaGlwLWhkcHR4LXBoeSBmZWQ2MDAwMC5waHk6IFBMTCBsb2Nr
ZWQgYnkgdW5rbm93biBjb25zdW1lciEKPiA+ID4gPiA+IAo+ID4gPiA+ID4gVGhhdCBpbmRpY2F0
ZXMgdGhlIFBIWSBoYXMgYmVlbiBwcmVjb25maWd1cmVkIGJ5IGFuIGV4dGVybmFsIGNvbXBvbmVu
dAo+ID4gPiA+ID4gKGUuZy4gdGhlCj4gPiA+ID4gPiBib290bG9hZGVyKSwgd2hpY2ggaXMgYWN0
dWFsbHkgYSBzY2VuYXJpbyB0aGF0IEkgZGlkbid0IHZlcmlmeS4KPiA+ID4gPiA+IAo+ID4gPiA+
ID4gSG93ZXZlciwgdGhpcyBqdXN0IGFub3RoZXIgd2F5IHRvIGV4cG9zZSBhIGxpbWl0YXRpb24g
b2YgdGhlIGN1cnJlbnQKPiA+ID4gPiA+IGFwcHJvYWNoCj4gPiA+ID4gPiBmb3IgbWFuYWdpbmcg
dGhlIFRNRFMgY2hhcmFjdGVyIHJhdGU6IGRvbmUgdmlhIHRoZSBDb21tb24gQ2xvY2sKPiA+ID4g
PiA+IEZyYW1ld29yawo+ID4gPiA+ID4gQVBJCj4gPiA+ID4gPiBpbnN0ZWFkIG9mIHRoZSBIRE1J
IFBIWSBjb25maWd1cmF0aW9uIEFQSS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gQXMgYSBtYXR0ZXIg
b2YgZmFjdCwgaXQgd2FzIGFjdHVhbGx5IGFuIGl0ZW0gb24gbXkgVE9ET3MgbGlzdCBmb3IKPiA+
ID4gPiA+IHF1aXRlIGEKPiA+ID4gPiA+IHdoaWxlLAo+ID4gPiA+ID4gYnV0IGJsb2NrZWQgdW50
aWwgcmVjZW50bHkgZHVlIHRvIHNldmVyYWwgZGVwZW5kZW5jaWVzIHdhaXRpbmcgdG8gYmUKPiA+
ID4gPiA+IG1lcmdlZAo+ID4gPiA+ID4gdXBzdHJlYW0uCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEhl
bmNlIEkgdG9vayB0aGUgb3Bwb3J0dW5pdHkgdG8gZmluYWxpemUgdGhpcyB0YXNrIC0gcGxlYXNl
IGdpdmUgdGhlCj4gPiA+ID4gPiBmb2xsb3dpbmcKPiA+ID4gPiA+IGNvbW1pdHMgaW4gbXkgcmsz
NTg4LWhkbWktZGVidWcgYnJhbmNoIFsyXSBhIHRyeToKPiA+ID4gPiAKPiA+ID4gPiBJJ3ZlIGp1
c3QgcmVhbGl6ZWQgSSBpbnRyb2R1Y2VkIGEgcmVncmVzc2lvbiB3aGlsZSBkb2luZyBzb21lIGNs
ZWFudXAKPiA+ID4gPiB3b3JrLAo+ID4gPiA+IGhlbmNlCj4gPiA+ID4gcGxlYXNlIGlnbm9yZSB0
aGlzIHVudGlsIGZ1cnRoZXIgbm90aWNlLgo+ID4gPiAKPiA+ID4gSSB0aGluayBJIGdvdCB0aGlz
IHdvcmtpbmcgcHJvcGVybHkgbm93LCBhdCBsZWFzdCBpdCBwYXNzZXMgYWxsIHRoZSB0ZXN0cwo+
ID4gPiBJCj4gPiA+IGNvdWxkIHJ1bi7CoCBUaGUgdXBkYXRlZCBjb21taXRzIGluIFsyXSBhcmU6
Cj4gPiA+IAo+ID4gPiDCoCBmYTdjZDFlNzVhYWEgKCJwaHk6IHJvY2tjaGlwOiBzYW1zdW5nLWhk
cHR4OiBGaXggcmF0ZSByZWNhbGN1bGF0aW9uIGZvcgo+ID4gPiBoaWdoCj4gPiA+IGJwYyIpCj4g
PiA+IMKgIDgwNDhkYjU1NDRkYSAoInBoeTogcm9ja2NoaXA6IHNhbXN1bmctaGRwdHg6IEV4Y2x1
c2l2ZWx5IHVzZSBQSFkgY29uZmlnCj4gPiA+IEFQSQo+ID4gPiBmb3IgUExMIGNoYW5nZXMiKQo+
ID4gPiDCoCAwMDg1YTM4MmRmZDAgKCJbREVCVUddIGRybS9yb2NrY2hpcDogQWRkIEhETUkgdmVy
Ym9zZSBsb2dnaW5nIikKPiA+ID4gCj4gPiAKPiA+IGFwcGx5aW5nIHRoZXNlIGNvbW1pdHMgc29s
dmVzIG15IHByb2JsZW1zLiBJIHRlc3RlZCAxOTIweDEwODBANjAsCj4gPiAxOTIweDEwODBANTAK
PiA+IGFuZCAxOTIweDEwODBAMzAuIEFsbCB3b3JrIG5vdy4gVGhhbmtzIGZvciB0aGUgcXVpY2sg
Zml4ISAKPiAKPiBUaGFua3MgZm9yIHRoZSBxdWljayB0ZXN0IQo+IAo+IEkgY2FuIGFkZCB5b3Ug
dG8gY2M6IHdoZW4gSSBzdWJtaXQgdGhlIHNlcmllcywgc28gdGhhdCB5b3UgbWF5IHByb3ZpZGUg
eW91cgo+IFRlc3RlZC1ieSB0YWcgaWYgeW91J2QgbGlrZSB0by4KCnN1cmUsIEkgd291bGQgYmUg
aGFwcHkgdG8uCgo+IAo+ID4gQW5kIHRoZSBwb3NpdGl2ZSBzaWRlPiBlZmZlY3Qgc2VlbXMgdG8g
YmUgdGhhdCB5b3UgY2FuIG5vdyB0YWtlIG9uZSBvZiB5b3VyCj4gPiBvbGQgdG9kb3MgZnJvbSB5
b3VyIGxpc3QuCj4gCj4gSW5kZWVkLiA6LSkKPiAKPiBSZWdhcmRzLAo+IENyaXN0aWFuCgpCZXN0
IHJlZ2FyZHMsCgpUaG9tYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
