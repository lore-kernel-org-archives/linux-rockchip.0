Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FD31E9A02C
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Feb 2026 20:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vi4ifk30YmVe7prMgoBfkXPsZbPMiYRyg1dLWR0Mg+8=; b=FxRfKg3HeBkIk3
	i/YcN03Z7E3nSTtMW1u3j9p0JbgS7SCzodKkEiyek3b8G53m8uUhGxPYrFooD4Hjb5ar0jrR5hm83
	jdam4JZRoT2IesEnZN3UZqaL4/JTZZjlTpAmj9kUZ8kbHalde62YrP5+of3bCtH8UiSPuXVL8lI8Z
	o7HW95ft37Kmdy1sILzM8kXkWz5DSvcXBbRhwZfXOqBAg7PYAzOkjfh22111DMiyUd9PE2l10ciJ9
	BLUsa1eqc1tUBL4lbJ2EcgRo5edLJoYlKz5G+8ook9hgI/DsqWM5yD4ivQLXyu60izUKrxdJryYhX
	YWZREnwpbHbJIFw5pZ2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsoOr-0000000AOMj-11Zh;
	Wed, 18 Feb 2026 20:43:57 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsoOn-0000000AOLl-32kQ;
	Wed, 18 Feb 2026 20:43:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=online.de;
	s=s42582890; t=1771447403; x=1772052203; i=dubito@online.de;
	bh=1afskavYau0tl+Bj5qe1Nzh8LAXyKnFoV2P5EHw4w5c=;
	h=X-UI-Sender-Class:Message-ID:Subject:From:Reply-To:To:Date:
	 In-Reply-To:References:Content-Type:Content-Transfer-Encoding:
	 MIME-Version:cc:content-transfer-encoding:content-type:date:from:
	 message-id:mime-version:reply-to:subject:to;
	b=dsFiMleFXeEXQFg0w6XZfHpl38d8y3hl/NW0U/MH4rM0E4H9NVzSbG1rKo+FP9Ed
	 XcdqB1rhwvg6umAFKaNEgLaUNtiV/T5v7mgsAVVVkYzaN1pnGwHB3u+9hMO48PdoG
	 br+2asBQwkEq+etty3lu0XL4juNq+zSdYiJmeJq1Dpl/krqxqEmE4fuVZedvyH5J6
	 xND01F1EQo6KowY+4uPR8f8HiznXKv2iq9Jpi+usA5zCMglshr5CvUfc4ArTlvYdJ
	 8vpamKSryLhAm3nmABGM08OC7XXtyysXh9w8QtKV58vdbVjmXUlUsBFAMDuRoQbVW
	 WOvuAj8CpVY09M3MPg==
X-UI-Sender-Class: 6003b46c-3fee-4677-9b8b-2b628d989298
Received: from [192.168.0.208] ([91.66.193.45]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MKbXu-1wBaEB0VS8-00KRXO; Wed, 18 Feb 2026 21:43:23 +0100
Message-ID: <a3c3964e9e13c82d944fa1ee0acbb1a7806dd382.camel@online.de>
Subject: Re: [REGRESSION] HDMI monitor not working on Radxa Rock 5B after
 phy rockchip samsung hdptx HDMI 2.1 FRL patchset
From: 1und1 <dubito@online.de>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Vinod Koul	
 <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Heiko
 Stuebner	 <heiko@sntech.de>, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, regressions@lists.linux.dev
Date: Wed, 18 Feb 2026 21:43:18 +0100
In-Reply-To: <03b5f3d1-6db4-4835-b2a5-c22c1aa63825@collabora.com>
References: <b32164001947ba922aefb6ca86a8dc59e9323d2b.camel@online.de>
	 <8e410a11-bd7b-4a12-a711-0514a59409c0@collabora.com>
	 <1859c940219a4dbfdf0497afbf333e627ab0ba25.camel@online.de>
	 <98e46dbb-c8e2-451f-accb-ea48f63f9408@collabora.com>
	 <4544ec4ccfa49cbdffee098878df7806223935a0.camel@online.de>
	 <08369c90-fbab-477d-9ac6-388deddfd3b1@collabora.com>
	 <26e31b3b-484f-433b-833f-c639ee437f63@collabora.com>
	 <03b5f3d1-6db4-4835-b2a5-c22c1aa63825@collabora.com>
User-Agent: Evolution 3.58.2 
MIME-Version: 1.0
X-Provags-ID: V03:K1:JMj2ed6H9IIYLIPXvd8SrffsvicDqBIhjEAHIteAk7Dz2GW8xam
 MHD2A8GOYDQtPVrUmFk7balTR4AdJsrIprV0SdPAfAqb86kqagLOcE4YEyGf63xJzfjENSN
 WM7iG2kgah0GtfhLMOffxdkA0/6hIzVWt0HjUYCKLc9iuX5AItt58A/yk/j/i6b1ekL/VHZ
 knELWnr9Bs36cWMQEgDkQ==
UI-OutboundReport: notjunk:1;M01:P0:ZIft8d4dnN8=;LoNduLw4rESE8Sqte/WndwUtxC1
 e+x6oQDHiwn85JeF9Qi/pDvviEg4nZWVouiVZ0oDYIXX9Ze2E9RHDulJf4+xWApogA13z0BL3
 FGjRuB05rZpZThu4bzFYlWl1eznAVX/FdiA2AHYosRZzkJZCSKJ+xgDAlpJ6HAx1jF0iVzN+t
 oXhii1jolnqROUJcvvrNWeZX6KQgGYsp/Lf4+o2Wwh2eXa+T4CzY+vwDTIG9U4Rx0jAUbPWlQ
 A8aSt8FG46yZIOjQg8wIJYtpYdF/uAPO/9u4gA2kSAZ/n7s37xxjQ8BSI8U6tKQzhQB3aGdLw
 9V5i3lT9PO2F4BgRKbAha9O0H8e+31BXIz/oDAzSPTNofC77SaIb0CkrQFa43FWTtcp9Fo03G
 mxLpjI4eA+PgmNHRhZhCXimZQEVRhFlEUxkWanUAbtE2d7+HrHntDMCz4kmGxRBT5vA4hs6lO
 jvliKangOLTSQl2/igvvpPG1cdCWty80P+Y7x0mt9767oYWKGvtzJ6VttkXaik8Tr5uncyF73
 T7wEv6mU5AHIRBRDn/hR0/J8E/uUrN6a1UltyN6rd+CcMYPsZMI7vSt0tAj8+HU0d5pUq3+El
 lyRdMDZiFR9k+aTJ/2BDGTXrhX4ZgEBEaMYrY1W+3Z0LLJGCPXfewN2mM4V6jvXA0UsvcG6SD
 tSY/NI/rvxAC4IEVpVcgReJjHoWkK96oxQw769tQGdEW0JFPoeNtgHwtG5W5QMSV04hNdK/Y6
 99KLnEa4TZBaIGFUkLfP60iWHrMTWkkfkk7FIuq9lDlWdlaWgHOojkS+KU3MtTCGpVuaCpmJ4
 pHGjediehHO0bhcbGKPUCB9iVJaq4wgzeK6lvg1TzSRLSCH8GgpoSQOZZkka+JjX6d+n5W/11
 YagakHkWnypgSGOqXjD4MSJlrGrXWeZq8CyRQ/ckqsp8ozuOhcFT+D0eZ4t6PTaijIg2vzsUt
 HzqJMIQvCxbilzsK5Zft8+5QiiXtsdriu8+/tAOScZUQPpkF/WFeYJUVSnGEQ7KxPlgSM8d7B
 1rTJvqVZYhFe2e29MpfC1u9nNXZ3etA/3HOoUskfnoWlxey3El1ANyinv31egxvUA8CrKHAeu
 U1kpMtzmrXLFBA+kA65TBzot6pfkg6cy/eallzbEJzATh7ko2hTLJbHjLMpQtGSMeTehRhiUz
 NOibW97dWZq/b4XdrrO1mcksmQuIByrA3rYJKXtMlDmzE2IZ0EzU+oa6cgQVDDCvENbRrxZ6q
 uIWUxn5a2VmRKJcljZ3uYOg6msGtkpLgXkOiRq6dniPX0Ntqx+yb+HCsln2+qH4bR+onjmwQy
 WnIcjVEn6Or0lUogHgsLTEFMGSvGqLcJBTRteJq58NkRQSqf4P+MrzPBmmCTNPQB+zCzbp+FF
 5fIknEkuAM7/k/KjM1gKegVzaVHEyqecxwyok5acNKQdVrOnC+i7h5jWKX7iN7NGLbwYpEMQn
 3qDG+qKBWgkf/rcPdg+C04imV0KkpijphU+fvobNZRffI/XK0QYn+R0ddqCAIM6gqqr5TEBVw
 IpmONM25REfkWX5jSNDFKOYC/9peCvKosmQ+md44Ex6npxUsFVLhwAt6oeqBWnHmfS0S/tOjk
 oH7ak3tlQnjZZRaqCKoGkrP75r6RKdFFV/4Ds6BnizGjvjQuw5Yxc+EV+d53NsXn7Fnts7Utv
 qXU1/BXeEt5qra2Lsef8WLfZKpb7OcRfYkAHqM7ajQpjVagin9xMJZO69IkRWCvLmjFTSb1oD
 BHFasaRvAf+cbQsJlySOovyYjEyNsyjdwTdffFsjnAQHK5bbnUpfDJIo21lN3KL+MAMSBWRwm
 BUBF
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260218_124354_145164_8779312E 
X-CRM114-Status: GOOD (  21.86  )
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

SGkgQ3Jpc3RpYW4sCgoKQW0gTWl0dHdvY2gsIGRlbSAxOC4wMi4yMDI2IHVtIDIyOjE1ICswMjAw
IHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+IE9uIDIvMTgvMjYgMzoyMiBBTSwgQ3Jpc3Rp
YW4gQ2lvY2FsdGVhIHdyb3RlOgo+ID4gT24gMi8xOC8yNiAyOjUyIEFNLCBDcmlzdGlhbiBDaW9j
YWx0ZWEgd3JvdGU6Cj4gPiA+IEhpIFRob21hcywKPiA+IFsuLi5dCj4gPiAKPiA+ID4gCj4gPiA+
IFNvcnJ5LCBJIHNvbWVob3cgbWlzc2VkIHRoZSBmb2xsb3dpbmcgd2FybmluZyBtZXNzYWdlLCB0
aG91Z2ggaXQgaGFzIGJlZW4KPiA+ID4gYWxyZWFkeSBwcmVzZW50IGluIGFsbCB0aGUgbG9ncyB5
b3UndmUgc2VudCB0byBtZSBzbyBmYXI6Cj4gPiA+IAo+ID4gPiDCoCByb2NrY2hpcC1oZHB0eC1w
aHkgZmVkNjAwMDAucGh5OiBQTEwgbG9ja2VkIGJ5IHVua25vd24gY29uc3VtZXIhCj4gPiA+IAo+
ID4gPiBUaGF0IGluZGljYXRlcyB0aGUgUEhZIGhhcyBiZWVuIHByZWNvbmZpZ3VyZWQgYnkgYW4g
ZXh0ZXJuYWwgY29tcG9uZW50Cj4gPiA+IChlLmcuIHRoZQo+ID4gPiBib290bG9hZGVyKSwgd2hp
Y2ggaXMgYWN0dWFsbHkgYSBzY2VuYXJpbyB0aGF0IEkgZGlkbid0IHZlcmlmeS4KPiA+ID4gCj4g
PiA+IEhvd2V2ZXIsIHRoaXMganVzdCBhbm90aGVyIHdheSB0byBleHBvc2UgYSBsaW1pdGF0aW9u
IG9mIHRoZSBjdXJyZW50Cj4gPiA+IGFwcHJvYWNoCj4gPiA+IGZvciBtYW5hZ2luZyB0aGUgVE1E
UyBjaGFyYWN0ZXIgcmF0ZTogZG9uZSB2aWEgdGhlIENvbW1vbiBDbG9jayBGcmFtZXdvcmsKPiA+
ID4gQVBJCj4gPiA+IGluc3RlYWQgb2YgdGhlIEhETUkgUEhZIGNvbmZpZ3VyYXRpb24gQVBJLgo+
ID4gPiAKPiA+ID4gQXMgYSBtYXR0ZXIgb2YgZmFjdCwgaXQgd2FzIGFjdHVhbGx5IGFuIGl0ZW0g
b24gbXkgVE9ET3MgbGlzdCBmb3IgcXVpdGUgYQo+ID4gPiB3aGlsZSwKPiA+ID4gYnV0IGJsb2Nr
ZWQgdW50aWwgcmVjZW50bHkgZHVlIHRvIHNldmVyYWwgZGVwZW5kZW5jaWVzIHdhaXRpbmcgdG8g
YmUKPiA+ID4gbWVyZ2VkCj4gPiA+IHVwc3RyZWFtLgo+ID4gPiAKPiA+ID4gSGVuY2UgSSB0b29r
IHRoZSBvcHBvcnR1bml0eSB0byBmaW5hbGl6ZSB0aGlzIHRhc2sgLSBwbGVhc2UgZ2l2ZSB0aGUK
PiA+ID4gZm9sbG93aW5nCj4gPiA+IGNvbW1pdHMgaW4gbXkgcmszNTg4LWhkbWktZGVidWcgYnJh
bmNoIFsyXSBhIHRyeToKPiA+IAo+ID4gSSd2ZSBqdXN0IHJlYWxpemVkIEkgaW50cm9kdWNlZCBh
IHJlZ3Jlc3Npb24gd2hpbGUgZG9pbmcgc29tZSBjbGVhbnVwIHdvcmssCj4gPiBoZW5jZQo+ID4g
cGxlYXNlIGlnbm9yZSB0aGlzIHVudGlsIGZ1cnRoZXIgbm90aWNlLgo+IAo+IEkgdGhpbmsgSSBn
b3QgdGhpcyB3b3JraW5nIHByb3Blcmx5IG5vdywgYXQgbGVhc3QgaXQgcGFzc2VzIGFsbCB0aGUg
dGVzdHMgSQo+IGNvdWxkIHJ1bi7CoCBUaGUgdXBkYXRlZCBjb21taXRzIGluIFsyXSBhcmU6Cj4g
Cj4gwqAgZmE3Y2QxZTc1YWFhICgicGh5OiByb2NrY2hpcDogc2Ftc3VuZy1oZHB0eDogRml4IHJh
dGUgcmVjYWxjdWxhdGlvbiBmb3IgaGlnaAo+IGJwYyIpCj4gwqAgODA0OGRiNTU0NGRhICgicGh5
OiByb2NrY2hpcDogc2Ftc3VuZy1oZHB0eDogRXhjbHVzaXZlbHkgdXNlIFBIWSBjb25maWcgQVBJ
Cj4gZm9yIFBMTCBjaGFuZ2VzIikKPiDCoCAwMDg1YTM4MmRmZDAgKCJbREVCVUddIGRybS9yb2Nr
Y2hpcDogQWRkIEhETUkgdmVyYm9zZSBsb2dnaW5nIikKPiAKCmFwcGx5aW5nIHRoZXNlIGNvbW1p
dHMgc29sdmVzIG15IHByb2JsZW1zLiBJIHRlc3RlZCAxOTIweDEwODBANjAsIDE5MjB4MTA4MEA1
MAphbmQgMTkyMHgxMDgwQDMwLiBBbGwgd29yayBub3cuIFRoYW5rcyBmb3IgdGhlIHF1aWNrIGZp
eCEgQW5kIHRoZSBwb3NpdGl2ZSBzaWRlCmVmZmVjdCBzZWVtcyB0byBiZSB0aGF0IHlvdSBjYW4g
bm93IHRha2Ugb25lIG9mIHlvdXIgb2xkIHRvZG9zIGZyb20geW91ciBsaXN0LgoKQmVzdCByZWdh
cmRzLAoKVGhvbWFzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
