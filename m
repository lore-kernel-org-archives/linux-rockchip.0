Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 135C7C38A2D
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 20:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-version:References:Subject:
	In-Reply-To:Cc:To:From:Message-Id:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7hucJRKSCLYGMEO4ZPdpkdQRyW63du/hLN4/rGNjut4=; b=eLo68zwqoC7ph//zyFoEOqFvIY
	UuUNwwwGz6PRoo2Nk96O7iu4YfD94UaGNph8WAEF09DTmqHZfAK+1keqfzP384hSwLJzHbqqY2Iww
	qV1jnYPnje0/hWd5ya7f1ASQkAjg8LeXh9LkwshIo+dLSR/P10yEY5McBNuZhantmVPu5PudcRqQs
	KeaqtFrcbM2jQeSJHVWv4GSkcoMEkZq2iRMsSoVUR4yNmEjtwvANK+Ii2QBMP+9rqrQMPzc3zEGzv
	8gxTzuWnsN9e681JZCFBEpYoP3lVKoxvK3T3GFo5ldTcPDCOWixNmAeyzJax9y9wnMkZFq2MTTy95
	nEHFARDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olz0w-009u7K-ER; Fri, 21 Oct 2022 20:53:10 +0000
Received: from ewsoutbound.kpnmail.nl ([195.121.94.170])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olz0g-009txw-II
	for linux-rockchip@lists.infradead.org; Fri, 21 Oct 2022 20:52:58 +0000
X-KPN-MessageId: 5141e0bc-5182-11ed-8a67-005056ab378f
Received: from smtp.kpnmail.nl (unknown [10.31.155.38])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 5141e0bc-5182-11ed-8a67-005056ab378f;
	Fri, 21 Oct 2022 22:52:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xs4all.nl; s=xs4all01;
	h=content-type:mime-version:subject:to:from:message-id:date;
	bh=gN+fxEN+sI/NM9jJbo91XIBZLZT4vKCHuLcB2qD6MVo=;
	b=Ljpjv8U02EhEC/Cz3VWqjtUs0I3JGdXrIPYpjKWBzgrolb9eUn4nZSlJDkC1xsMAULRnNW9pUokbp
	 V0+epNxT/HDMJFo2Stmp3vubE0Cp+hk4QNeQCE7nUBMyqjUpHk++bDMqyHC/WenjTGGQYrlfVE7908
	 t4dnCoG6q/LYEyXLKFzJ6/ydKqzVN3Mo8RXlhIH05UpbJjxNHaurP99XKbkTW1JAMeFgX56PMsaon5
	 /8C9IBXWccJbS2dvf8yd6lTT3VVnNnk8gG0rLM2iJzCWFJdNxywp9ctjEoNoK8GYdfYKsbScacy0QZ
	 C2j7BY7dsGeZRrceOdDK6g3a3oavI/Q==
X-KPN-MID: 33|KlB70Ow8e96GD2fMt7pjAYIBoWqSpfAbAfU198rm/0dSwdliylQpIf89vYH9kJQ
 PsedXMVchG7vhOHMu5WNMSmoH6qZ1UmnP/k40eKTp7+Q=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|7Wl3ZcTNWw2GmmE/SSdk6KmExqOyZVnkzGrB/DxcaNPfmnKDOzIAIZH02OVXhfp
 iFSSApn31rti9KrDH2FuZvA==
X-Originating-IP: 80.61.163.207
Received: from bloch.sibelius.xs4all.nl (80-61-163-207.fixed.kpn.net [80.61.163.207])
	by smtp.xs4all.nl (Halon) with ESMTPSA
	id 5140ca99-5182-11ed-b5e8-005056abf0db;
	Fri, 21 Oct 2022 22:52:47 +0200 (CEST)
Date: Fri, 21 Oct 2022 22:52:46 +0200
Message-Id: <87edv0sxup.fsf@bloch.sibelius.xs4all.nl>
From: Mark Kettenis <mark.kettenis@xs4all.nl>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: megi@xff.cz, pgwipeout@gmail.com, heiko@sntech.de,
	linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	michael.riesch@wolfvision.net, frattaroli.nicolas@gmail.com,
	s.hauer@pengutronix.de, frank-w@public-files.de,
	ezequiel@vanguardiasur.com.ar, yifeng.zhao@rock-chips.com,
	jbx6244@gmail.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
In-Reply-To: <20221021193248.2he6amnj7knk4biu@core> (message from
 =?utf-8?Q?Ond=C5=99ej?=
	Jirman on Fri, 21 Oct 2022 21:32:48 +0200)
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk356x: Fix PCIe register map
 and ranges
References: <20221005085439.740992-1-megi@xff.cz>
 <CAMdYzYrEXEqOmMeozGBbAAvrujZcOxLh4VYOmu5DSjPWTS-5zQ@mail.gmail.com>
 <20221005220812.4psu6kckej63yo2z@core>
 <4679102.Wku2Vz74k6@phil>
 <CAMdYzYq3S2rR3Kb61irpV9xHYijNiJY0mkVnJwPrpXzxg_Zh9g@mail.gmail.com>
 <20221021153913.l5ry6v4mcnzcmj2v@core>
 <CAMdYzYpYC6ME_ZYE65UWq__i+rit6_os-+do+JLmEL7y-jKr9g@mail.gmail.com> <20221021193248.2he6amnj7knk4biu@core>
MIME-version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_135255_225880_37D3B6FC 
X-CRM114-Status: GOOD (  29.10  )
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

PiBEYXRlOiBGcmksIDIxIE9jdCAyMDIyIDIxOjMyOjQ4ICswMjAwCj4gRnJvbTogT25kxZllaiBK
aXJtYW4gPG1lZ2lAeGZmLmN6Pgo+IAo+IE9uIEZyaSwgT2N0IDIxLCAyMDIyIGF0IDEyOjQ4OjE1
UE0gLTA0MDAsIFBldGVyIEdlaXMgd3JvdGU6Cj4gPiBPbiBGcmksIE9jdCAyMSwgMjAyMiBhdCAx
MTozOSBBTSBPbmTFmWVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+IHdyb3RlOgo+ID4gPgo+ID4gPiBP
biBGcmksIE9jdCAyMSwgMjAyMiBhdCAwOTowNzo1MEFNIC0wNDAwLCBQZXRlciBHZWlzIHdyb3Rl
Ogo+ID4gPiA+IEdvb2QgTW9ybmluZyBIZWlrbywKPiA+ID4gPgo+ID4gPiA+IEFwb2xvZ2llcyBm
b3IganVzdCBnZXR0aW5nIHRvIHRoaXMsIEknbSBzdGlsbCBpbiB0aGUgbWlkZGxlIG9mIG1vdmlu
Zwo+ID4gPiA+IGFuZCBqdXN0IGdvdCBteSBsYWIgc2V0IGJhY2sgdXAuCj4gPiA+ID4KPiA+ID4g
PiBJJ3ZlIHRlc3RlZCB0aGlzIHBhdGNoIHNlcmllcyBhbmQgaXQgbGVhZHMgdG8gdGhlIHNhbWUg
cmVncmVzc2lvbiB3aXRoCj4gPiA+ID4gTlZNZSBkcml2ZXMuIEEgbG9vcCBvZiBtZDVzdW0gb24g
dHdvIGlkZW50aWNhbCA0R0IgcmFuZG9tIGZpbGVzCj4gPiA+ID4gcHJvZHVjZXMgdGhlIGZvbGxv
d2luZyByZXN1bHRzOgo+ID4gPiA+IGQxMWNmMGNhYTU0MWI3MjU1MWNhMjJkYzViZWYyZGUwICB0
ZXN0LXJhbmQuaW1nCj4gPiA+ID4gZmFkOTdlOTFkYThkNGZkNTU0Yzg5NWNhZmE4OTgwOWIgIHRl
c3QtcmFuZDIuaW1nCj4gPiA+ID4gMmQ1NmE3YmFhMDVjMzg1MzVmNGMxOWEyYjM3MWY5MGEgIHRl
c3QtcmFuZC5pbWcKPiA+ID4gPiA3NGU4ZTZmOTNkN2MzZGMzYWQyNTBlOTExNzZmNTkwMSAgdGVz
dC1yYW5kMi5pbWcKPiA+ID4gPiAyNWNmY2ZlY2Y0ZGQ1MjllNGU5ZmJiZTJiZTQ4MjA1MyAgdGVz
dC1yYW5kLmltZwo+ID4gPiA+IDc0ZThlNmY5M2Q3YzNkYzNhZDI1MGU5MTE3NmY1OTAxICB0ZXN0
LXJhbmQyLmltZwo+ID4gPiA+IGI5NjM3NTA1YmY4OGVkNzI1ZjZkMDNkZWI3MDY1ZGFiICB0ZXN0
LXJhbmQuaW1nCj4gPiA+ID4gZjc0MzdlODhkNTI0ZWE5MmUwOTdkYjUxZGNlMWM2MGQgIHRlc3Qt
cmFuZDIuaW1nCj4gPiA+ID4KPiA+ID4gPiBCZWZvcmUgdGhpcyBwYXRjaCBzZXJpZXM6Cj4gPiA+
ID4gZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJlZjJkZTAgIHRlc3QtcmFuZC5pbWcKPiA+ID4g
PiBkMTFjZjBjYWE1NDFiNzI1NTFjYTIyZGM1YmVmMmRlMCAgdGVzdC1yYW5kMi5pbWcKPiA+ID4g
PiBkMTFjZjBjYWE1NDFiNzI1NTFjYTIyZGM1YmVmMmRlMCAgdGVzdC1yYW5kLmltZwo+ID4gPiA+
IGQxMWNmMGNhYTU0MWI3MjU1MWNhMjJkYzViZWYyZGUwICB0ZXN0LXJhbmQyLmltZwo+ID4gPiA+
IGQxMWNmMGNhYTU0MWI3MjU1MWNhMjJkYzViZWYyZGUwICB0ZXN0LXJhbmQuaW1nCj4gPiA+ID4g
ZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJlZjJkZTAgIHRlc3QtcmFuZDIuaW1nCj4gPiA+ID4g
ZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJlZjJkZTAgIHRlc3QtcmFuZC5pbWcKPiA+ID4gPiBk
MTFjZjBjYWE1NDFiNzI1NTFjYTIyZGM1YmVmMmRlMCAgdGVzdC1yYW5kMi5pbWcKPiA+ID4gPgo+
ID4gPiA+IFRob3VnaCBJIGRvIGxvdmUgd2hlcmUgdGhpcyBwYXRjaCBpcyBnb2luZyBhbmQgd291
bGQgbGlrZSB0byBzZWUgaWYgaXQKPiA+ID4gPiBjYW4gYmUgbWFkZSB0byB3b3JrLCBpbiBpdHMg
Y3VycmVudCBmb3JtIGl0IGRvZXMgbm90Lgo+ID4gPgo+ID4gPiBUaGFua3MgZm9yIHRoZSB0ZXN0
LiBDYW4geW91IHBsZWFzZSBhbHNvIHRlc3QgdjE/IEFsc28gcGxlYXNlIHNoYXJlIGxzcGNpIC12
dnYKPiA+ID4gb2YgeW91ciBudm1lIGRyaXZlLCBzbyB0aGF0IHdlIGNhbiBzZWUgYWxsb2NhdGVk
IGFkZHJlc3MgcmFuZ2VzLCBldGMuCj4gPiAKPiA+IEdvb2QgY2F0Y2gsIHdpdGggeW91ciBwYXRj
aCBhcyBpcywgdGhlIGZvbGxvd2luZyBpc3N1ZSBjcm9wcyB1cDoKPiA+IFJlZ2lvbiAwOiBNZW1v
cnkgYXQgMzAwMDAwMDAwICg2NC1iaXQsIG5vbi1wcmVmZXRjaGFibGUpIFtzaXplPTE2S10KPiA+
IFJlZ2lvbiAyOiBJL08gcG9ydHMgYXQgMTAwMCBbZGlzYWJsZWRdIFtzaXplPTI1Nl0KPiA+IAo+
ID4gSG93ZXZlciwgd2l0aCBhIHNpbXBsZSBmaXgsIHdlIGNhbiBnZXQgdGhpczoKPiA+IFJlZ2lv
biAwOiBNZW1vcnkgYXQgMzAwMDAwMDAwICg2NC1iaXQsIG5vbi1wcmVmZXRjaGFibGUpIFt2aXJ0
dWFsXSBbc2l6ZT0xNktdCj4gPiBSZWdpb24gMjogSS9PIHBvcnRzIGF0IDEwMDAgW3ZpcnR1YWxd
IFtzaXplPTI1Nl0KPiA+IAo+ID4gYW5kIHdpdGggaXQgYSB3b3JraW5nIE5WTWUgZHJpdmUuCj4g
PiAKPiA+IENoYW5nZSB0aGUgZm9sbG93aW5nIHJhbmdlOgo+ID4gMHgwMjAwMDAwMCAweDAgMHg0
MDAwMDAwMCAweDMgMHgwMDAwMDAwMCAweDAgMHg0MDAwMDAwMD47Cj4gPiB0bwo+ID4gMHgwMjAw
MDAwMCAweDAgMHgwMDAwMDAwMCAweDMgMHgwMDAwMDAwMCAweDAgMHg0MDAwMDAwMD47Cj4gCj4g
SSd2ZSBhbHJlYWR5IHRyaWVkIHRoaXMsIGJ1dCB0aGlzIHVuZnJvdHVuYXRlbHkgYnJlYWtzIHRo
ZSB3aWZpIGNhcmRzLgo+ICh0aG9zZSBvbmx5IHVzZSB0aGUgSS9PIHNwYWNlKSBNYXliZSBiZWNh
dXNlIEkvTyBhbmQgbWVtb3J5IGFkZHJlc3Mgc3BhY2VzCj4gbm93IG92ZXJsYXAsIEkgZG9uJ3Qg
a25vdy4gVGhhdCdzIHdoeSBJIHVzZWQgdGhlIDFHaUIgb2Zmc2V0IGZvciBtZW1vcnkKPiBzcGFj
ZS4KCk1lYW53aGlsZSwgSSBoYXZlIGFuIE5WTWUgZHJpdmUgdGhhdCBvbmx5IHdvcmtzIGlmIG1t
aW8gaXMgY29tcGxldGVseQp1bnRyYW5zbGF0ZWQuICBUaGlzIGlzIGFuIEFEQVRBIFNYODAwME5Q
IGRyaXZlLCB3aGljaCB1c2VzIGEgU2lsaWNvbgpNb3Rpb24gU00yMjYwIGNvbnRyb2xsZXIuCgpT
byBmb3IgbWUsIGEgd29ya2luZyBjb25maWd1cmF0aW9uIGhhcyB0aGUgZm9sbG93aW5nICJyYW5n
ZXMiOgoKcmFuZ2VzID0gPDB4MDEwMDAwMDAgMHgwIDB4MDAwMDAwMDAgMHgzIDB4M2ZmZjAwMDAg
MHgwIDB4MDAwMTAwMDA+LAogICAgICAgICA8MHgwMjAwMDAwMCAweDAgMHhmNDAwMDAwMCAweDAg
MHhmNDAwMDAwMCAweDAgMHgwMjAwMDAwMD4sCiAgICAgICAgIDwweDAzMDAwMDAwIDB4MyAweDEw
MDAwMDAwIDB4MyAweDEwMDAwMDAwIDB4MCAweDJmZmYwMDAwPjsKClRoaXMgYWxzbyBuZWVkcyBj
aGFuZ2VzIHRvIHRoZSAicmVnIiBwcm9wZXJ5OgoKcmVnID0gPDB4MyAweGMwMDAwMDAwIDB4MCAw
eDAwNDAwMDAwPiwKICAgICAgPDB4MCAweGZlMjYwMDAwIDB4MCAweDAwMDEwMDAwPiwKICAgICAg
PDB4MyAweDAwMDAwMDAwIDB4MCAweDEwMDAwMDAwPjsKCk5vdyBhZG1pdHRlZGx5LCB0aGlzIGlz
IHdpdGggT3BlbkJTRCBydW5uaW5nIG9uIEVESzIgVUVGSSBmaXJtd2FyZQpmcm9tCgogIGh0dHBz
Oi8vZ2l0aHViLmNvbS9qYXJlZG1jbmVpbGwvcXVhcnR6NjRfdWVmaQoKdGhhdCBJIG1vZGlmaWVk
IHRvIHBhc3MgdGhyb3VnaCB0aGUgZGV2aWNlIHRyZWUgYW5kIG1vZGlmeSB0aGUgcmFuZ2VzCmFz
IGFib3ZlLiAgQnV0IHRoZSB3YXkgbXkgT3BlbkJTRCBkcml2ZXIgc2V0cyB1cCB0aGUgYWRkcmVz
cwp0cmFuc2xhdGlvbiB3aW5kb3dzIG1hdGNoZXMgd2hhdCB0aGUgbWFpbmxpbmUgTGludXggZHJp
dmVyIGRvZXMuCgpJIHBpY2tlZCB0aGUgcmFuZ2VzIGFib3ZlIHRvIG1hdGNoIHRoZSBFREsyIGNv
bmZpZ3VyYXRpb24uICBCdXQgaXQgaXMKYSBzZXR1cCB0aGF0IG1heGltaXplcyB0aGUgMzItYml0
IG1taW8gd2luZG93LgoKQ2hlZXJzLAoKTWFyawoKPiA+IEkgc3RpbGwgaGF2ZW4ndCB0ZXN0ZWQg
dGhpcyB3aXRoIG90aGVyIGNhcmRzIHlldCwgYW5kIGFub3RoZXIgcGF0Y2gKPiA+IHRoYXQgZG9l
cyBzaW1pbGFyIHdvcmsgSSd2ZSB0ZXN0ZWQgc3VjY2Vzc2Z1bGx5IGFzIHdlbGwgd2l0aCBOVk1l
Cj4gPiBkcml2ZXMuIEknbGwgaGF2ZSB0byBnZXQgYmFjayB0byB5b3Ugb24gdGhlIHJlc3VsdHMg
b2YgZ3JlYXRlcgo+ID4gdGVzdGluZy4KPiA+IAo+ID4gVmVyeSBSZXNwZWN0ZnVsbHksCj4gPiBQ
ZXRlciBHZWlzCj4gPiAKPiA+ID4KPiA+ID4ga2luZCByZWdhcmRzLAo+ID4gPiAgICAgICAgIG8u
Cj4gPiA+Cj4gPiA+ID4gVmVyeSBSZXNwZWN0ZnVsbHksCj4gPiA+ID4gUGV0ZXIgR2Vpcwo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
