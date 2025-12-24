Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7DE2E74906
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 02:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7l0jH1rXzSmXOVV9nRuuVAzM7s8oVaQZ0ItM2TBIE8=; b=aJV98zthms8riQ
	yhbHl/IAZ8omXLUd+lUjKu0a7a7Vzm+Nqgm48440wmyf6OJD6vljXAT/76s7121tEsTNBEtPBjP6X
	c4gLpj8bWOlENujqjK14qt1KoHwxVyR0NHYMk0vDYN2ww08L01Rpt1+oDO48ACvKxFWD+xoRptEu7
	j6ZBioJ/dnGedmLtZ3XCtexlQ3tw7W9GyJ2rDOvVVVFYk+UhLtmmDWrqZmAqh1hq3BONmlgNAo2LE
	vFVRdsAhqM17xuWkcxlNV19FKmUgBSACRlQroCD5DX//1GQbPGcadifAFbM5ee98ru4I/LZTc/XIX
	qJAw6MsEo0rnwa3GMwZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYEY9-0000000GJjZ-3icZ;
	Wed, 24 Dec 2025 02:24:29 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYEY6-0000000GJi3-2UrA
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 02:24:28 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-597c83bb5c2so4413512e87.3
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Dec 2025 18:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766543064; x=1767147864; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1loIAAfZi3ARrBea2GD590U569CMRnH53n7SJVQ+fYg=;
        b=jMBde3ZwF2FAi9CyrDulW0iUuJPxfpMKKC7A5rtnDZ3va6OsiHMw6f/y7SVpJvFEdG
         TH5EceQeyRnt8iOxnQTEvBdhrwchvAo3sO5VnWJznuAlFQqccwVKPlW3oi2+yjBBJTeq
         DB9BCucpJGRDqDHXu2f4zeQK6ZvnadD8rp1DXL0RBZfkJk4Lbq/coqJ0di9Sc3c4w2Ee
         B06cIwlKleKGJBdrapF+grgjW/JITkVOYmxiK9iAdiyEji3cb74mIv8YSxZcZaJizShT
         jPPqBxEDcF9rHH7UxueC/vbz/LvNhV/QuDz5g+TMjNEx+qbq90qYOEFjqTKz0fBn0XoI
         jyZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766543064; x=1767147864;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1loIAAfZi3ARrBea2GD590U569CMRnH53n7SJVQ+fYg=;
        b=nT9YdpnDf+ObpeWdL7YlP34kvXuexyI2u7E8/rCMkLfKPhRLkAbU6dtKJn7/29wd7y
         y+r/Bb4bMdx+Dy7b/gG1b7EfnHY6Xp56tHrBgLRhylkmeJQWq9ZxdvG8R51PBTlb/hNq
         EpoirH/FSKnnTS+XpxKO+QDOfbjrBq1X0mdKiV64x3MW9/AB8jji+cb3e9lwZ1yMXvEV
         wIO3878WgR3e2IdxMBeyZlOX+pYnGuqOT7f9PHdzNgce2ocbMAvNqQ/kvP+dxgOK696K
         lO2uGHddiBbd4mfJCEBzvvHFKh+mfHuAA9HS4cL0sUUrzHvmRJiKaE4QivwB/rPopTAe
         xftg==
X-Forwarded-Encrypted: i=1; AJvYcCU0gxTgWRc2K4ofbuZyFGDOaGmp7Y2xHf4guDTQHX8/uz7xarKBGNlad7c1xMYu7lbG/6tElBDxsWwoxWOfbw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyEOV5IEpzx43Nu9CAGXGpPGXsAJIhZewFjU532LD5S627ps15m
	vGxCgWLo2lCa4cUCTdF6rzilW642VzKvSICERG80RnTPCJ6iyXLUnY7KPaj9rF8dEF1p/Sx7TX3
	IlTWAvnirJBcwuaCU6myyrxTUX0DaWaw=
X-Gm-Gg: AY/fxX5Cn5z+wcaBjx2qukYT/sacSXVsHultCJBSKMVOsQxSbU8REmw9U0DFObkUNpT
	19r2kzUkvn2s+QYJN4Gv1TA1aSXboUgva+6EAoRIRqx+9DKVnxIcwwWitPOBWf6W5glskv7hUJk
	2hzKzmbVoQjneiqLnR5tWq8JSBbmkTdCP0id5RNGAnepBGwnjd+JRPz9thBEI0fRrpmoU5tlHIy
	Wqiw+XpCEp+GuxyAsfsM2fDhs3RqTt8o8GcmxfqceHG5RtsjOREfZ6BtPAfQKjApaDi/jc5
X-Google-Smtp-Source: AGHT+IE/+50K3afhfndy8OOQCaT5Jx8UIeiRvbJr4DL0U3mNPbecM/23tUIstTpZgAeJvbIu4PB7SOkqEOl5NRqK1zg=
X-Received: by 2002:a05:6512:128c:b0:59a:10d9:72d with SMTP id
 2adb3069b0e04-59a17d498fbmr6776183e87.45.1766543063511; Tue, 23 Dec 2025
 18:24:23 -0800 (PST)
MIME-Version: 1.0
References: <cover.1763415705.git.geraldogabriel@gmail.com>
 <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com>
 <qncj72c3owrw7rvnj6jit2sbn4ojyr3kztcjailfxtdboan6sy@ddh5g7v4fcvt>
 <3ea8ac20-6332-0c0c-645b-36ca4231c109@manjaro.org> <DF197NIRHLIJ.3LIG9GJGJQLQX@cknow-tech.com>
 <656e9b4e-c350-f808-701e-e49e8dad7062@manjaro.org>
In-Reply-To: <656e9b4e-c350-f808-701e-e49e8dad7062@manjaro.org>
From: Geraldo Nascimento <geraldogabriel@gmail.com>
Date: Tue, 23 Dec 2025 23:24:12 -0300
X-Gm-Features: AQt7F2qM7hLDFS0yoRUqiACBfHqK5NSRbS9YoOFtrIx5Y1oXB1EP6whymdD-2I8
Message-ID: <CAEsQvcv_8HnWNHAQGKs3pzBqrO_9+HsMr9w-F=pZJ1oEXeC=Bw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] PCI: rockchip: limit RK3399 to 2.5 GT/s to prevent damage
To: Dragan Simic <dsimic@manjaro.org>
Cc: Diederik de Haas <diederik@cknow-tech.com>, Manivannan Sadhasivam <mani@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_182426_668286_D3F28947 
X-CRM114-Status: GOOD (  27.48  )
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

SGVsbG8gTWFuaSwgRHJhZ2FuLCBEaWVkZXJpaywgYW5kIGFsbCwKCkknbSBjdXJyZW50bHkgZmFj
aW5nIGJhbmtpbmcgaXNzdWVzIGluIEJyYXppbCB3aGljaCBtZWFucyBJJ20KcmVmcmFpbmluZyBm
cm9tIGZldGNoaW5nIG15IGVtYWlsIHRocm91Z2ggUE9QMyB3aXRoIG11dHQgdG8gZG8gcHJvcGVy
Cmtlcm5lbCBkZXZlbG9wbWVudC4KSSB1c3VhbGx5IGZldGNoIG15IG1haWwgdGhyb3VnaCBQT1Az
IGFuZCBoYXZlIHRoZSBzZXJ2ZXIgZGVsZXRlIGl0LCB0bwpzYXZlIHNwYWNlIG9uIG15IGZyZWUg
dGllci4KQnV0IEkgZm91bmQgb3V0IEkgaGF2ZSBhIDIwLXllYXIgb2xkIGJhbmsgYWNjb3VudCBv
cGVuIHRoYXQgSSBoYWQKZm9yZ290IGFib3V0LCBhbmQgd2l0aCB0aGlzIGJ1cmVhdWNyYWN5IGhl
bGwgSSBjYW4ndCBoYXZlIHRoZSBzZXJ2ZXIKZGVsZXRlIHRoZSBtZXNzYWdlcyBmb3Igbm93LgpJ
J2xsIHNlbmQgdjMgd2l0aCBtb3JlIHByb3BlciBhbmQgaWxsdXN0cmF0aXZlIHdvcmRpbmcgb25j
ZSBJIGdldCB0aGlzIGRvbmUuCgpUaGFua3MsCkdlcmFsZG8gTmFzY2ltZW50bwoKT24gVGh1LCBE
ZWMgMTgsIDIwMjUgYXQgNzoxM+KAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3Jn
PiB3cm90ZToKPgo+IEhlbGxvIERpZWRlcmlrLAo+Cj4gT24gVGh1cnNkYXksIERlY2VtYmVyIDE4
LCAyMDI1IDExOjAxIENFVCwgIkRpZWRlcmlrIGRlIEhhYXMiIDxkaWVkZXJpa0Bja25vdy10ZWNo
LmNvbT4gd3JvdGU6Cj4gPiBPbiBUaHUgRGVjIDE4LCAyMDI1IGF0IDEwOjQ3IEFNIENFVCwgRHJh
Z2FuIFNpbWljIHdyb3RlOgo+ID4gPiBPbiBUaHVyc2RheSwgRGVjZW1iZXIgMTgsIDIwMjUgMDk6
MDUgQ0VULCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbmlAa2VybmVsLm9yZz4gd3JvdGU6Cj4g
PiA+PiBPbiBNb24sIE5vdiAxNywgMjAyNSBhdCAwNjo0NzowNVBNIC0wMzAwLCBHZXJhbGRvIE5h
c2NpbWVudG8gd3JvdGU6Cj4gPiA+PiA+IFNoYXduIExpbiBmcm9tIFJvY2tjaGlwIGhhcyByZWl0
ZXJhdGVkIHRoYXQgdGhlcmUgbWF5IGJlIGRhbmdlciBpbiB1c2luZwo+ID4gPj4gPiB0aGVpciBQ
Q0llIHdpdGggNS4wIEdUL3Mgc3BlZWRzLiBXYXJuIHRoZSB1c2VyIGlmIHRoZXkgbWFrZSBhIERU
IGNoYW5nZQo+ID4gPj4gPiBmcm9tIHRoZSBkZWZhdWx0IGFuZCBkcml2ZSBhdCAyLjUgR1QvcyBv
bmx5LCBldmVuIGlmIHRoZSBEVAo+ID4gPj4gPiBtYXgtbGluay1zcGVlZCBwcm9wZXJ0eSBpcyBp
bnZhbGlkIG9yIGluZXhpc3RlbnQuCj4gPiA+PiA+Cj4gPiA+PiA+IFRoaXMgY2hhbmdlIGlzIGNv
cnJvYm9yYXRlZCBieSBSSzMzOTkgb2ZmaWNpYWwgZGF0YXNoZWV0IFsxXSwgd2hpY2gKPiA+ID4+
ID4gc2F5cyBtYXhpbXVtIGxpbmsgc3BlZWQgZm9yIHRoaXMgcGxhdGZvcm0gaXMgMi41IEdUL3Mu
Cj4gPiA+PiA+Cj4gPiA+PiA+IFsxXSBodHRwczovL29wZW5zb3VyY2Uucm9jay1jaGlwcy5jb20v
aW1hZ2VzL2QvZDcvUm9ja2NoaXBfUkszMzk5X0RhdGFzaGVldF9WMi4xLTIwMjAwMzIzLnBkZgo+
ID4gPj4gPgo+ID4gPj4gPiBGaXhlczogOTU2Y2Q5OWIzNWE4ICgiUENJOiByb2NrY2hpcDogU2Vw
YXJhdGUgY29tbW9uIGNvZGUgZnJvbSBSQyBkcml2ZXIiKQo+ID4gPj4gPiBMaW5rOiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9hbGwvZmZkMDUwNzAtOTg3OS00NDY4LTk0ZTMtYjg4OTY4YjRjMjFi
QHJvY2stY2hpcHMuY29tLwo+ID4gPj4gPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+ID4g
Pj4gPiBSZXBvcnRlZC1ieTogRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4gPiA+
PiA+IFJlcG9ydGVkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiA+
ID4+ID4gUmV2aWV3ZWQtYnk6IERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPgo+ID4g
Pj4gPiBTaWduZWQtb2ZmLWJ5OiBHZXJhbGRvIE5hc2NpbWVudG8gPGdlcmFsZG9nYWJyaWVsQGdt
YWlsLmNvbT4KPiA+ID4+ID4gLS0tCj4gPiA+PiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3Bj
aWUtcm9ja2NoaXAuYyB8IDEwICsrKysrKysrLS0KPiA+ID4+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+PiA+Cj4gPiA+PiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYyBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jCj4gPiA+PiA+IGluZGV4IDBmODhkYTM3ODgwNS4u
OTkyY2NmNGIxMzllIDEwMDY0NAo+ID4gPj4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L3BjaWUtcm9ja2NoaXAuYwo+ID4gPj4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3Bj
aWUtcm9ja2NoaXAuYwo+ID4gPj4gPiBAQCAtNjYsOCArNjYsMTQgQEAgaW50IHJvY2tjaGlwX3Bj
aWVfcGFyc2VfZHQoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQo+ID4gPj4gPiAgICAg
ICAgICB9Cj4gPiA+PiA+Cj4gPiA+PiA+ICAgICAgICAgIHJvY2tjaGlwLT5saW5rX2dlbiA9IG9m
X3BjaV9nZXRfbWF4X2xpbmtfc3BlZWQobm9kZSk7Cj4gPiA+PiA+IC0gICAgICAgIGlmIChyb2Nr
Y2hpcC0+bGlua19nZW4gPCAwIHx8IHJvY2tjaGlwLT5saW5rX2dlbiA+IDIpCj4gPiA+PiA+IC0g
ICAgICAgICAgICAgICAgcm9ja2NoaXAtPmxpbmtfZ2VuID0gMjsKPiA+ID4+ID4gKyAgICAgICAg
aWYgKHJvY2tjaGlwLT5saW5rX2dlbiA8IDAgfHwgcm9ja2NoaXAtPmxpbmtfZ2VuID4gMikgewo+
ID4gPj4gPiArICAgICAgICAgICAgICAgIHJvY2tjaGlwLT5saW5rX2dlbiA9IDE7Cj4gPiA+PiA+
ICsgICAgICAgICAgICAgICAgZGV2X3dhcm4oZGV2LCAiaW52YWxpZCBtYXgtbGluay1zcGVlZCwg
c2V0IHRvIDIuNSBHVC9zXG4iKTsKPiA+ID4+ID4gKyAgICAgICAgfQo+ID4gPj4gPiArICAgICAg
ICBlbHNlIGlmIChyb2NrY2hpcC0+bGlua19nZW4gPT0gMikgewo+ID4gPj4gPiArICAgICAgICAg
ICAgICAgIHJvY2tjaGlwLT5saW5rX2dlbiA9IDE7Cj4gPiA+PiA+ICsgICAgICAgICAgICAgICAg
ZGV2X3dhcm4oZGV2LCAiNS4wIEdUL3MgaXMgZGFuZ2Vyb3VzLCBzZXQgdG8gMi41IEdUL3NcbiIp
Owo+ID4gPj4KPiA+ID4+IFdoYXQgZG9lcyAnZGFuZ2VyJyByZWFsbHkgbWVhbiBoZXJlPyBMaW5r
IGluc3RhYmlsaXR5IG9yIHNvbWV0aGluZyBlbHNlPwo+ID4gPj4gRXJyb3IgbWVzc2FnZXMgc2hv
dWxkIGJlIHByZWNpc2UgYW5kIG5vdCBmZWFybW9uZ2VyaW5nLgo+ID4gPgo+ID4gPiBJIGFncmVl
IHRoYXQgdGhlIG9yaWdpbmFsIHdvcmRpbmcgaXMgYSBiaXQgc3Vib3B0aW1hbCwgYW5kIEknZCBz
dWdnZXN0Cj4gPiA+IHRvIEdlcmFsZG8gdGhhdCB0aGUgcHJvZHVjZWQgd2FybmluZyBtZXNzYWdl
IGlzIGNoYW5nZWQgdG8KPiA+ID4KPiA+ID4gICAiNS4wIEdUL3MgbWF5IGNhdXNlIGRhdGEgY29y
cnVwdGlvbiwgbGltaXRlZCB0byB0byAyLjUgR1Qvc1xuIgo+ID4gPgo+ID4gPiBvciBzb21ldGhp
bmcgc2ltaWxhciwgdG8gYmV0dGVyIHJlZmxlY3QgdGhlIGFjdHVhbCB1bmRlcmx5aW5nIGlzc3Vl
Lgo+ID4KPiA+IHMvbGltaXRlZCB0byB0by90aGVyZWZvcmUgbGltaXQgc3BlZWQgdG8vID8KPgo+
IFRoYXQgd291bGQgd29yayB3ZWxsIGluIGEgYm9vayBvciBhbiBhcnRpY2xlLCB3aGlsZSBzbGln
aHRseSB0ZXJzZQo+IHdvcmRpbmcgaXMgdXN1YWxseSBwcmVmZXJyZWQgaW4gdGhlIG1lc3NhZ2Vz
IHByb2R1Y2VkIGJ5IHRoZSBrZXJuZWwsCj4gb3IgaW4gbG9nIG1lc3NhZ2VzIGluIGdlbmVyYWwu
ICBTdWNoIGFuIGFwcHJvYWNoIGNvbXBhY3RzIGFzIG11Y2gKPiBpbmZvcm1hdGlvbiBhcyBwb3Nz
aWJsZSBpbiBhcyBmZXcgd29yZHMgYXMgcG9zc2libGUsIHdoaWxlIHN0aWxsCj4gcmVtYWluaW5n
IChtb3N0bHkpIGdyYW1tYXRpY2FsbHkgY29ycmVjdC4KPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
