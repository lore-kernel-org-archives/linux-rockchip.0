Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 368EFCA6001
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 16:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUAQAbIvr2CSMXHn4fR6HbLG3/EU371tp9R5ZBuXx8w=; b=IIryHznkh3nKVV
	stOUw/qw3n+q1fmNN/zdCztUtC4l0bWDv5Pm3NRLrMVWbNZG4c9NHAuVhE7BtCYiAe4p81JeT54lY
	DPAnb9WNb3hahxJTDBPfNWfuLG8UC8WQTAIjfoZEmkB6jHNp7Pus1/Qfb9ROqllqSzVG0nRQ6Tmmp
	ws3cz7y4+ZM+Aojvig6YIoZd0RlgcNmjA9M/A8zs8jv0ikfOFBIK4KeUNfg4YMf7oru4gmzUfQOL6
	D2zMsxVR2kADk+x0hczsofjJhMSCyARLkgaIhUJGS55bJRHE1p9WVzG5gwbZl0E9cDtLtdJc6Odn4
	pYcXqQvsEZHCuHHvpe0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE83k-0000000191z-2Ddn;
	Tue, 06 Oct 2026 16:30:32 +0000
Received: from mail-ej2-x07.google.com ([2a00:1450:4864:34::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE83g-0000000190i-2e6q
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Oct 2026 16:30:31 +0000
Received: by mail-ej2-x07.google.com with SMTP id a640c23a62f3a-c2e22754212so168498266b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Oct 2026 09:30:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791304227; cv=none;
        d=google.com; s=arc-20260327;
        b=D2Febt6NLtPKcOQbkJCZBEJOPP1mcR/BqVNi7hzFssZbXJe33+7vj/9CLFqWgYLgiS
         f0YssRXZJAbQV0ckS7wCLMU0f1+qE13PyzqKC9VMVpIRAl/V3Q6y/cjpX1TBtbqrPX4N
         vopC+r5jY+oeOfvJfLUat6cvvbW8M6ImGrNtHe7NvDVjD8lcxMeJVd559IdM4Mvmcafu
         UEirErIvT/szFlhFkjhpk4aK6xypITIPS+jOs0UWZKTKDjKwDfUVvsV/R+/DHJOnyZl5
         /vArAlstAKUD0GAjNI//Xtr5pMK7P7BXNDRKSXS9iq77Oe7IqQRRtWhN9yLtexyvYtEl
         aj1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=74ooKafJysXOQ8/oYCK0iAifCQLvUBwaTgwQCS1kaLE=;
        fh=jK8giTEv4RKAd14PEYGvnf25//qhGHXbvNMlypyrCoU=;
        b=omExAYiHvWkhKpuSk2nAz9htRvvcdgph/UjC8IN9I/xJTIlf2obO6Y+ltiljYzL/YR
         zLWNGz9Az4w/FvrVypLCsJE2rKri7WBhKAaEEUliniYTsEx2uWXuPt5mX7eMgfBj4tAQ
         WzYxAQwuhZF2hkyMrcWofXmPLIzrt+qIk6ZeYSJHa3IguVJTE/sNpSRP4rPTB8AdGFiG
         +g0DKCr5Rbm+DCydtqjp5rhR2JPeE7R9bCDZP2s7dY0L7lmAslZuVgVfDOCejLucPk5R
         7cPPgUs7go+mH2C6K0VIZ7Oz2h2vieyGhHbZKJo63c2fkjGJY6FP5N+ZKULIr2j3Unv6
         HRfw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791304226; x=1791909026; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=74ooKafJysXOQ8/oYCK0iAifCQLvUBwaTgwQCS1kaLE=;
        b=NKeULLwLoe0ww9rJWk6IJ7hGKgKuRFlCghATKK0ACpnn5LCsHhZJ2Fbth5bocXgjIJ
         n937J74DlhUND1VQeNiNzxbJ77EReiHPtad8t/kV/qGq9hbN82U9lMUAQN+1H6p3Gawr
         xukUUkgziSsELWArdKOcb8gum3fhkiQGe9pr49Pi/cn+UZ/bWewkZb0zda3KwwGlWT5W
         jVDmpejYo/PKPUk551sC7Dc4P45XeqYvOO+k1P356o3IZRh+A1h2qXcaa3Md/VcCfoY2
         pV4LIwp9UkrmYQxz9TzXjO/3C5ukWaDwn81uXHjFlBI7n2apCABwuig1SkdkaRVpNibq
         26qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791304226; x=1791909026;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=74ooKafJysXOQ8/oYCK0iAifCQLvUBwaTgwQCS1kaLE=;
        b=tPGtjavyEgi4K4GDxdR2Le+RYyZ/QPQ/KBYzaPQg7oFBkYn5Y8ofPrq/jGiHQ35xzL
         5au9oBKsH9ATnKTYQXANRrhugjOaKWzQSaNdYFGndhn42OWcJ0oFq65HfD9jAnMP581c
         5mQe/WoLEMhtAgXstVdFwX0uOhIp0I9HFD0cD0hIsJp3mp+TESxG/TXpQe42I1AaxQgc
         V77ngVUDaHuSBuQEbk78oU7W6ksWQ1pxGjJ+dFa+qnOf5zF6EOXJ0/T8nqJBmIkdj8FX
         0uvyLe7nkbh0QQFFVsfUYltt13E3dmwqY+1OqVchpB8VfM0jRztUI7Jbg3wECAINBdyu
         9LMw==
X-Forwarded-Encrypted: i=1; AKwUvBwWBqpc80A+1zq7jQ9dtdklsLdVAtkVv8fAvW+JYntgzIpcxq1YLF9Ar3y8NPLiaX+Rz5SJx5nxovtr3xFheQ==@lists.infradead.org
X-Gm-Message-State: AFuF++knQNX1seL2dOhjRRZSeFMZLh2cUGf7e3bJlcBphlp78ehYhZGl
	1TmMk0ucNmgoh2X359slCb8f6DOg+8wQNRu1FH/MzA5xbxioYXJERWvISUFwVwWoPTd9WAN1S15
	DpI1icOWCdOmzNDYTunl3S1l22yknGOs=
X-Gm-Gg: AYBFou25uI6anrgu+1fafmTxteMvJiuwqz4sAhQjcB60N/bt2fQjJX0N1RjHHpRme/l
	DH31ZHE50gDzlFvQGQVc9qVbTMYL1eSToW8Q9M9mp6+upMiZWvUG3Ok9jDBm2N8mQebmggSbjHN
	hZMk0M2IpDqNnreeWw1aWSyOr2jFcjPZbK6rUbIUv45Wxg/DLWj6C+3/I4E5+sy2yNrqvrr4snK
	Nj3RoUhlt9/ne3YKQANvovh0n3/hneoyKBqltH+d3SEFDyjzucXJVoYtWwZDI+x7eC5nIOtY6ig
	ZHS6925zOUryn5kmM+W1/SaSO8bTBYyul8NY2Bm+kplQAMrsOmqHaKy4Fw==
X-Received: by 2002:a17:907:944d:b0:c2a:fd39:f231 with SMTP id
 a640c23a62f3a-c2e6ed68303mr1020357266b.26.1791304226334; Tue, 06 Oct 2026
 09:30:26 -0700 (PDT)
MIME-Version: 1.0
References: <20261006074749.2010233-1-coiaprant@gmail.com> <20261006074749.2010233-3-coiaprant@gmail.com>
 <08736f4d-a728-4b1e-a28e-882648a412e0@rock-chips.com> <20261006161403.GA2469169-robh@kernel.org>
In-Reply-To: <20261006161403.GA2469169-robh@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 7 Oct 2026 00:30:14 +0800
X-Gm-Features: AclHuK_1XvsTomk5pZfZ6KjwFLcu1GrCsrDj9BN4LAny9Xe_1QYEOW_C3FucYAs
Message-ID: <CALj3r0haEf-oGo3QW5XVaz_F=oTNX14PFs31Owkq+79Vb8qjVQ@mail.gmail.com>
Subject: Re: [PATCH v12 2/2] phy: rockchip: naneng-combphy: add SGMII MAC
 selection for RK3568
To: Rob Herring <robh@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_093028_698036_3B54AB66 
X-CRM114-Status: GOOD (  32.08  )
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

Um9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDEw5pyIN+aXpeWRqOS4iSAw
MDoxNOWGmemBk++8mgo+Cj4gT24gVHVlLCBPY3QgMDYsIDIwMjYgYXQgMTA6NTM6MjJQTSArMDgw
MCwgU2hhd24gTGluIHdyb3RlOgo+ID4gSGkgQ29pYQo+ID4KPiA+IOWcqCAyMDI2LzEwLzA2IOaY
n+acn+S6jCAxNTo0NywgQ29pYSBQcmFudCDlhpnpgZM6Cj4gPiA+IE9uIFJLMzU2OCwgdGhlIFNH
TUlJIGludGVyZmFjZSBjYW4gYmUgcm91dGVkIHRvIGVpdGhlciBHTUFDMCBvcgo+ID4gPiBHTUFD
MSB2aWEgdGhlIEdSRiByZWdpc3RlciBwaXBlX3NnbWlpX21hY19zZWwuCj4gPiA+Cj4gPiA+IEFk
ZCBzdXBwb3J0IGZvciB0aGlzIHNlbGVjdGlvbiBieSBpbnRyb2R1Y2luZwo+ID4gPiB0aGUgInJv
Y2tjaGlwLHNnbWlpLW1hYy1zZWwiIERUIHByb3BlcnR5Lgo+ID4gPgo+ID4gPiAgRnJvbSB0aGUg
UkszNTY4IFRSTSAoUGFydDEsIFBhZ2UgMjI5KSwgdGhlIFBJUEVfR1JGX1hQQ1NfQ09OMAo+ID4g
PiBiaXQgMSAocGlwZV9zZ21paV9tYWNfc2VsKSBpcyBkZWZpbmVkIGFzOgo+ID4gPgo+ID4gPiAg
ICAgIDA6IFNHTUlJIHJvdXRlZCB0byBHTUFDMAo+ID4gPiAgICAgIDE6IFNHTUlJIHJvdXRlZCB0
byBHTUFDMQo+ID4gPgo+ID4gPiBUaGUgaGFyZHdhcmUgcmVzZXQgdmFsdWUgaXMgMSAoR01BQzEp
LiBJZiB0aGUgcHJvcGVydHkgaXMgc2V0IHRvIDAsCj4gPiA+IHRoZSBkcml2ZXIgcm91dGVzIFNH
TUlJIHRvIEdNQUMwOyBpZiBzZXQgdG8gMSAob3Igb21pdHRlZCksIGl0Cj4gPiA+IHJlbWFpbnMg
YXQgR01BQzEuCj4gPiA+Cj4gPgo+ID4gVGhhbmtzIGZvciB5b3VyIHBhdGNoLiBJIGhhdmUgYSBx
dWVzdGlvbiBiZWxvdywgcGxlYXNlIGhhdmUgYSBsb29rLgo+ID4KPiA+ID4gVGhpcyBpcyBuZWNl
c3NhcnkgZm9yIGJvYXJkcyBzdWNoIGFzIHRoZSBBcmlhYm9hcmQgUGhvdG9uaWNhdCwgd2hpY2gK
PiA+ID4gdXNlcyB0aGUgU0dNSUkgaW50ZXJmYWNlIGNvbm5lY3RlZCB0byBHTUFDMC4KPiA+ID4K
PiA+ID4gT3V0LW9mLXJhbmdlIHZhbHVlcyBhcmUgcmVqZWN0ZWQgYnkgZHRzY2hlbWEsIHNvIHRo
ZSBkcml2ZXIgZG9lcyBub3QKPiA+ID4gZHVwbGljYXRlIHRoZSByYW5nZSBjaGVjay4KPiA+ID4K
PiA+ID4gTGluazogaHR0cHM6Ly9kbC5yYWR4YS5jb20vcm9jazMvZG9jcy9ody9kYXRhc2hlZXQv
Um9ja2NoaXAlMjBSSzM1NjglMjBUUk0lMjBQYXJ0MSUyMFYxLjEtMjAyMTAzMDEucGRmIChQYWdl
IDIyOSkKPiA+ID4gU2lnbmVkLW9mZi1ieTogQ29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNv
bT4KPiA+ID4gLS0tCj4gPiA+ICAgZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5h
bmVuZy1jb21icGh5LmMgfCA4ICsrKysrKysrCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5z
ZXJ0aW9ucygrKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+ID4gPiBpbmRleCA3ODQzMzU2YTRkZDQ3Li43Yjg2
N2U3NTIwMDY0IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+ID4gPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+ID4gPiBAQCAtMTg2LDYgKzE4Niw3IEBAIHN0
cnVjdCByb2NrY2hpcF9jb21icGh5X2dyZmNmZyB7Cj4gPiA+ICAgICBzdHJ1Y3QgY29tYnBoeV9y
ZWcgcGlwZV94cGNzX3BoeV9yZWFkeTsKPiA+ID4gICAgIHN0cnVjdCBjb21icGh5X3JlZyBwaXBl
X3BjaWUxbDBfc2VsOwo+ID4gPiAgICAgc3RydWN0IGNvbWJwaHlfcmVnIHBpcGVfcGNpZTFsMV9z
ZWw7Cj4gPiA+ICsgICBzdHJ1Y3QgY29tYnBoeV9yZWcgcGlwZV9zZ21paV9tYWNfc2VsOwo+ID4g
PiAgICAgc3RydWN0IGNvbWJwaHlfcmVnIHUzb3RnMF9wb3J0X2VuOwo+ID4gPiAgICAgc3RydWN0
IGNvbWJwaHlfcmVnIHUzb3RnMV9wb3J0X2VuOwo+ID4gPiAgIH07Cj4gPiA+IEBAIC0yMTIsNiAr
MjEzLDcgQEAgc3RydWN0IHJvY2tjaGlwX2NvbWJwaHlfcHJpdiB7Cj4gPiA+ICAgICBib29sIGVu
YWJsZV9zc2M7Cj4gPiA+ICAgICBib29sIGV4dF9yZWZjbGs7Cj4gPiA+ICAgICBzdHJ1Y3QgY2xr
ICpyZWZjbGs7Cj4gPiA+ICsgICB1MzIgc2dtaWlfbWFjX3NlbDsKPiA+ID4gICB9Owo+ID4gPiAg
IHN0YXRpYyB2b2lkIHJvY2tjaGlwX2NvbWJwaHlfdXBkYXRlbChzdHJ1Y3Qgcm9ja2NoaXBfY29t
YnBoeV9wcml2ICpwcml2LAo+ID4gPiBAQCAtMzc1LDYgKzM3Nyw5IEBAIHN0YXRpYyBpbnQgcm9j
a2NoaXBfY29tYnBoeV9wYXJzZV9kdChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCByb2NrY2hp
cF9jb21icGh5Cj4gPiA+ICAgICBwcml2LT5leHRfcmVmY2xrID0gZGV2aWNlX3Byb3BlcnR5X3By
ZXNlbnQoZGV2LCAicm9ja2NoaXAsZXh0LXJlZmNsayIpOwo+ID4gPiArICAgcHJpdi0+c2dtaWlf
bWFjX3NlbCA9IDE7Cj4gPgo+ID4gQmVmb3JlIHRoaXMgcGF0Y2gsIFNHTU1JIHdhcyByb3V0ZWQg
dG8gR01BQ1ggZGVwZW5kcyBvbiBib290bG9hZGVyKGlmCj4gPiBzZXR0aW5nKSwgb3Igcm91dGVk
IHRvIEdNQUMxIGJ5IGNoaXAgZGVmYXVsdC4gV2l0aG91dCBrbm93aW5nIGFueQo+ID4gcG90ZW50
aWFsIGNhbmRpZGF0ZXMgc2V0dGluZyBpdCB2aWEgYm9vdGxvYWRlciwgeW91IG1pZ2h0IG5vdCBm
b3JjZSBhbnkKPiA+IERUUyBmaWxlcyB3aXRob3V0ICJyb2NrY2hpcCxzZ21paS1tYWMtc2VsIiB0
byBwaWNrIEdNQUMxIGFzIGZhbGxiYWNrLgo+ID4KPiA+IE1heWJlIHlvdSBjb3VsZCBqdXN0IGtl
ZXAgdGhlIFNHTUlJIHJvdXRlIGFzLWl0IGlmIHRoZSBwcm9wZXJ0eSBpcyBub3QKPiA+IHByZXNl
bnQuIE1lYW53aGlsZSwgc2hvdWxkIHZhbGlkYXRlIHJvY2tjaGlwLHNnbWlpLW1hYy1zZWwgaXMg
YSB2YWxpZAo+ID4gdmFsdWUgcGFzc2luZyBmcm9tIERULgo+Cj4gVGhhdCBpcyB0aGUgdHlwaWNh
bCB3YXkgdHJpLXN0YXRlIHByb3BlcnRpZXMgd29yayAoYXMgb3Bwb3NlZCB0byB1c2luZyBhCj4g
Ym9vbGVhbikuIEluIHRoYXQgY2FzZSwgbm8gJ2RlZmF1bHQnIGluIHRoZSBzY2hlbWEgd291bGQg
dGhlbiBiZQo+IGFwcHJvcHJpYXRlLgo+Cj4gUm9iCgpIaSBTaGF3biwgUm9iLAoKVGhhbmtzIGZv
ciB0aGUgcmV2aWV3IGFuZCBmZWVkYmFjay4gSSd2ZSBqdXN0IHBvc3RlZCB2MTMsIHdoaWNoIGFk
ZHJlc3Nlcwpib3RoIHBvaW50czoKCi0gVGhlIGRyaXZlciBubyBsb25nZXIgZm9yY2VzIEdNQUMx
IHdoZW4gdGhlIHByb3BlcnR5IGlzIGFic2VudDsgaXQKICBsZWF2ZXMgdGhlIHJvdXRpbmcgYXMt
aXMuCi0gVGhlIGRyaXZlciB2YWxpZGF0ZXMgdGhlIHZhbHVlIGFuZCByZWplY3RzIGFueXRoaW5n
IG90aGVyIHRoYW4gMCBvciAxLgotIFRoZSBiaW5kaW5nIGRyb3BzICdkZWZhdWx0Jywgc2luY2Ug
dGhlIHByb3BlcnR5IGlzIHRyaS1zdGF0ZS4KCkknbGwgYXZvaWQgcmVwbHlpbmcgdG8gZWFjaCBj
b21tZW50IGluZGl2aWR1YWxseSB0byBrZWVwIHRoZSB0aHJlYWQKY2xlYW4sIGJ1dCBwbGVhc2Ug
bGV0IG1lIGtub3cgaWYgYW55dGhpbmcgaXMgc3RpbGwgb2ZmLgoKVGhhbmtzLApDb2lhCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
