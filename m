Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6BD0C77B76
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 14:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k48uTz1axq36bZsUu4KE4tsOgapNRg23dAfqvV3odpY=; b=oXKP5b7PSdQyRQ
	0AbsmFMYvG0ZajdNnyeuEFBE6+l+ATJiG7S5taLupI8QhX6KNH49bjew6bxt7zThF+7Q6Hbie8fNF
	7/Xr6JzJWzli4DGi+d+3fNBPo/SqWdbJYPrGy+CyMF8oNpdlhbFOb/LltnV/q9Z7LAqc/Dn/zFBSY
	T04mcWJ1ZLmX6PlWqQGs1AbeLY3DHWXZWmJibjOU/X2nB7NYWjiPlFUBPpCvoYzYkEpVEXO01wxgN
	hEyNKDxF51WqdSmcAKAjLtbnHc7JOdW0HPan691PJyzzAp6NC2Z8+mxLcuL+ZN87Je3ikQAxS9gN0
	gMkC4/opAfiE2xVP+SPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poQ9s-00GgeH-29;
	Mon, 17 Apr 2023 14:48:44 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poQ9o-00GgbQ-0c;
	Mon, 17 Apr 2023 14:48:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1681742913; bh=4HgJy/9pgR5i7nOeu9T/kRgJucpwOG5H6WnHdafmXds=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=F2+V25Y/lcgTUJ0TSehImQO5zuQDt7mjzOFAoz1skMM+7Vv2weeCPDLWZzN1l0HrZ
	 XwpGoXe1CD6rjWAP/G//ZQDCFYxu96PFlGDGMBHqJtE4NIzlvs2vfY4D6RsyA3VI8q
	 t2t1ffBRRrfFOkz85jyNg8Wkv4QAoD8I29qDvFjc=
Date: Mon, 17 Apr 2023 16:48:33 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Peter Robinson <pbrobinson@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Martijn Braam <martijn@brixit.nl>,
	Caleb Connolly <kc@postmarketos.org>,
	Jarrah Gosbell <kernel@undef.tools>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rk3399-pinephone-pro: Add support for volume
 keys
Message-ID: <20230417144833.gqvzaqurpgi7rbof@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	Peter Robinson <pbrobinson@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Martijn Braam <martijn@brixit.nl>,
	Caleb Connolly <kc@postmarketos.org>,
	Jarrah Gosbell <kernel@undef.tools>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20230405123813.2272919-1-pbrobinson@gmail.com>
 <4152389.RUnXabflUD@diego>
 <20230417123716.c23izju4ezjrzytn@core>
 <3377280.SvYEEZNnvj@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3377280.SvYEEZNnvj@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_074840_689489_6E295B0A 
X-CRM114-Status: GOOD (  30.45  )
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

T24gTW9uLCBBcHIgMTcsIDIwMjMgYXQgMDQ6MzY6NTVQTSArMDIwMCwgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gQW0gTW9udGFnLCAxNy4gQXByaWwgMjAyMywgMTQ6Mzc6MTYgQ0VTVCBzY2hyaWVi
IE9uZMWZZWogSmlybWFuOgo+ID4gSGVsbG8gSGVpa28sCj4gPiAKPiA+IE9uIE1vbiwgQXByIDE3
LCAyMDIzIGF0IDEwOjM0OjIwQU0gKzAyMDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+ID4gPiBI
aSBQZXRlciwgT25kcmVqLAo+ID4gPiAKPiA+ID4gQW0gTWl0dHdvY2gsIDUuIEFwcmlsIDIwMjMs
IDE1OjUzOjM5IENFU1Qgc2NocmllYiBPbmTFmWVqIEppcm1hbjoKPiA+ID4gPiBbLi4uXQo+ID4g
PiA+Cj4gPiA+ID4gKEkgaGF2ZSB0byBwcmVzcyBxdWl0ZSBoYXJkIHRvIGdldCBiZWxsb3cgMzAw
IGFuZCB0byBnZXQgcmVsaWFibGUgZGV0ZWN0aW9uCj4gPiA+ID4gb2Ygdm9sdW1lIGRvd24ga2V5
IHByZXNzKQo+ID4gPiA+IAo+ID4gPiA+IE9uIGRldmVsb3BtZW50IHZlcnNpb24gb2YgdGhlIHBo
b25lLCB0aGUgdmFsdWUgcmV0dXJuZWQgYnkgc2FyZGFjIGlzIGxlc3MKPiA+ID4gPiB2YXJpYWJs
ZS4gQmFzaWNhbGx5IGVpdGhlciAyOTguODI4MTI1IG9yIDMwMC41ODU5Mzc1IGJ1dCBpdCdzIGFs
c28gb24KPiA+ID4gPiB0aGUgZWRnZS4KPiA+ID4gPiAKPiA+ID4gPiBJIHN1Z2dlc3QgcmFpc2lu
ZyB0aGUgdGhyZXNob2xkIHRvIHNvbWV0aGluZyBsaWtlIDYwMCBhbmQgdG8gZG8geW91ciBvd24K
PiA+ID4gPiB0ZXN0aW5nLCB0byBnZXQgbW9yZSBkYXRhIHBvaW50cy4gVW5wcmVzc2VkIHZhbHVl
IGlzIH4xNzkxLjIxMDkzNzUgb24gYm90aAo+ID4gPiA+IHBob25lcywgc28gNDAwIHN0aWxsIGdl
dHMgYSBsb3Qgb2YgaGVhZHJvb20uIEFuZCB2b2x1bWUgdXAgaXMgYWx3YXlzIDwgMTUKPiA+ID4g
PiBpbiBteSB0ZXN0cy4KPiA+ID4gCj4gPiA+IGRpZCB0aGlzIGdldCBtb3JlIGF0dGVudGlvbiBt
ZWFud2hpbGU/Cj4gPiA+IAo+ID4gPiBJIGRvbid0IGhhdmUgYSBQaW5lcGhvbmUgUHJvIG15c2Vs
Ziwgc28geW91J2xsIG5lZWQgdG8gZGVjaWRlIGJldHdlZW4geW91Cj4gPiA+IGFib3V0IHRoZSB2
YWx1ZSBhbmQgdGhlIGNvbmNlcm4gT25kcmVqIHJhaXNlZCBoZXJlIGZvciB0aGUgdmFsdWUuCj4g
PiAKPiA+IEl0J3Mgc2FmZSBhbmQgbmVlZGVkIHRvIHVzZSBhIGhpZ2hlciB2YWx1ZS4KPiAKPiBz
byBpbiBhIG51dHNoZWxsLCBpZiBJIGNoYW5nZSAiVm9sdW1lIERvd24iIHRvIHNheSA0MDAwMDAg
aW5zdGVhZCBvZiB0aGUKPiBjdXJyZW50IDMwMDAwMCwgdGhlIHBhdGNoIGlzIGdvb2QgdG8gZ28/
CgpNeSBzdWdnZXN0aW9uIHdhcyA2MDAgbVYgc28gNjAwMDAwLiA6KSBPdGhlcndpc2UsIHllcy4K
CmtpbmQgcmVnYXJkcywKCW8uCgo+IEkuZS4gdGhhdCB3YXMgbXkgbWFpbiBxdWVzdGlvbiA6LSks
IGFzIHlvdSByYWlzZWQgdGhlIG9iamVjdGlvbiB0byB0aGUgdmFsdWUKPiBpbiB5b3VyIGluaXRp
YWwgcmVwbHkKPiAKPiBUaGFua3MKPiBIZWlrbwo+IAo+IAo+IAo+ID4gU0FSIEFEQyBpbnB1dCBp
cyBwdWxsZWQgaGlnaCB0byAxLjhWIHVubGVzcyBzb21lIGtleSBpcyBwcmVzc2VkLCBzbyB1bnBy
ZXNzZWQKPiA+IHZhbHVlIHdpbGwgYWx3YXlzIGJlIGFyb3VuZCAxODAwIG9uIGFsbCBQaW5lcGhv
bmVzLCBhbmQgcHJlc3NlZCB2YWx1ZSB3aWxsCj4gPiBkZXBlbmQgb24gY29udGFjdCBxdWFsaXR5
IGFuZCB0b2xlcmFuY2VzLiBGb3Igdm9sdW1lIGRvd24sIFNBUiBBREMgaW5wdXQgaXMgZmVkCj4g
PiBmcm9tIGEgcmVzaXN0b3IgZGl2aWRlciBvZiAoMTBrT2htICsgMmtPaG0pIGZyb20gMS44ViBw
b3dlciByYWlsLiBTbyB0aGF0IGdpdmVzCj4gPiAyLzEyKjEuOCA9IDAuM1YuIFdlIGNhbid0IGhh
dmUgdGhlIHByZXNzIGRldGVjdGlvbiB0aHJlc2hvbGQgcmlnaHQgYXQgdGhpcwo+ID4gdm9sdGFn
ZSwgYmVjYXVzZToKPiA+IAo+ID4gMSkgdGhlc2UgcmVzaXN0b3JzIGhhdmUgdG9sZXJhbmNlcyB0
aGF0IHdpbGwgcmFuZG9tbHkgcmVzdWx0IGluIG1lYXN1cmVkIHZvbHRhZ2UKPiA+ICAgIGJlaW5n
IGFib3ZlIG9yIGJlbG93IHRoZSAwLjNWIG9uIHJlYWwgZGV2aWNlcyAoLTElIG9uIDEwayBhbmQg
KzElIG9uIDJrID0KPiA+ICAgIDIqMS4wMS8oMTAqMC45OSsyKjEuMDEpKjEuOCA9IDMwNSBtViAt
IGFscmVhZHkgdG9vIGhpZ2ggZXZlbiB3aXRob3V0Cj4gPiAgICBjb25zaWRlcmluZyBzd2l0Y2gg
Y29udGFjdCBxdWFsaXR5KSwgYW5kCj4gPiAKPiA+IDIpIHRob3NlIHBpZGRseSBtZW1icmFuZSBz
d2l0Y2hlcyBhcHBhcmVudGx5IGhhdmUgdGhlaXIgb3duIHJhbmRvbSByZXNpc3RhbmNlCj4gPiAg
ICB0aGF0IGlzIGFkZGVkIHRvIHRoZSBib3R0b20gbGVnIG9mIHRoZSByZXNpc3RvciBkaXZpZGVy
LCBhbmQgZGVwZW5kcyBvbgo+ID4gICAgc3RyZW5naHQgb2YgdGhlIHByZXNzIG9uIHNvbWUgZGV2
aWNlcyAoYW5kIHN3aXRjaGVzIG1heSBkZXZlbG9wIGhpZ2hlcgo+ID4gICAgcmVzaXN0YW5jZSB3
aXRoIGFnZS91c2UpLgo+ID4gCj4gPiBTY2hlbWF0aWM6IGh0dHBzOi8vbWVnb3VzLmNvbS9kbC90
bXAvMTEyNWQ5MjQ4YTgyMTNiMy5wbmcKPiA+IAo+ID4ga2luZCByZWdhcmRzLAo+ID4gCW8uCj4g
PiAKPiA+ID4gVGhhbmtzCj4gPiA+IEhlaWtvCj4gPiAKPiAKPiAKPiAKPiAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
