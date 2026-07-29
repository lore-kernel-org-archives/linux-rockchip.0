Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C0ADC53219
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 16:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PI6AbpxCz6rOUrJs8ecR1arx3qENyLqRAtBpJNWya20=; b=VCnhUsDznbVbsv
	qM/zqAYs3UyrGVOaiSarDEOBj1IfVDnvq7YLh5iikPbJZ/fwqCYPlleYtt0nFQUYDo+K34U8Icg2Y
	vNR4RNBxM+hCe3KP0xdUHklQPN5/J+Y36sQc0CKygrz7uuZxbnA2ctGl1qtgp3IlIW5QLkOh+5IHh
	iGF1wlcTJouD3gbns73jB6vtOHYxizHXiYsDnn2NlfiqyeqyF+a/0BshXs0SUF3ELYZdDeyRAS0bx
	x0TkSmpLJiq9o0YiwWkSNC1DQnPxSc0S1s8CPmL3avAKf8zSzUG+D7TcGFSQLAXtu6w5cEktOoRZv
	gP8vDfZ2PXpmbWxbHrow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp7Ci-00000008Yxc-1VFG;
	Wed, 29 Jul 2026 16:32:24 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp7Cf-00000008Ywp-2rlR
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 16:32:22 +0000
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-51c2b2c9eccso8162141cf.2
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 09:32:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785342740; cv=none;
        d=google.com; s=arc-20260327;
        b=WdZTAD22koU8pCSIRR9hVLl7dl4K1nihmhdIvZnFfGrm/sMLLtxfzONWOJXdxz9EQ2
         jz0GI9xXinKJMz2OHYeLWsrTzlYY/FiBnS/uy2CqdVJB8de1li8iN8e3EjVgsY6ATKMA
         TlmT4DLlgpvGmiQM7TrzcOJkaP1EKsr7RSp9CuSabrm+mm/DdSLhH+e8M2v3bxEn6mEy
         S9vzDxCR8JSr8dm60baDt2UZe9zv9pSqqf5NkX3j0cf4AxvlvIbfR7xwanI53cmiXXS5
         l8o9xDsbc/i6mhl6t1Z1PiKq5Hdwiv04fn5VqHzX8VdYa2mgOnQS4UVC6KWYYdKWEUg2
         vF7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Q7pTQ84ALbX/4r2igPejPxSAqnbe2d+NJmIUI1AGgJ0=;
        fh=AhAnsBS5Yk6K4aDiXOG5wGMExXHHGMKeQtS8HX0FQ0E=;
        b=hvdyNqGSgIdOzzwsorMxWCN+xS3NQJbRKoM5xEL3jHxWYh5z280NdIF9LuTigGGsSN
         xgsCbyg6E+uuDpWfPT/H7cOFO9pMUC3LxNnZTTtEZuWSFj8U7yVNcGvwDFegC2lC1K1v
         Y+gZidjhRotFGbMhsUu4bzbf36dr0nBhtX7vufLz24uztpizSyfwlGEb3hbey1jOeIvf
         ASq/U+5a6oK3kP+yGJQv4f7qChMJMQT3n2BKQK4Fm6voy7UCO+fCm+BXDcbHFNGVocpr
         8nhy0JQHsnG6lUg2Y1uaja9AU5aqkpPNw4Gx56A5fty/wq9dgPNP9saFlaSoRjilEDm6
         k4LQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785342740; x=1785947540; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Q7pTQ84ALbX/4r2igPejPxSAqnbe2d+NJmIUI1AGgJ0=;
        b=FkB2Puy9VhQbRNRAhkYbDkDatVwtKALGXX0zCKyYw0c9KJf58kE82nA2Nwoq6CnxOE
         V49p77C4gb4cv1wZc4zAX7PPzp2YQ2dEseX/eJdMptDMmpio7mfsVQXq1V2mlm7YKAp1
         4WsEaqR5vInDFtj7jeXccV2tpUvuWjub0Ha6LX04vrIACPwmtey97ORrZGCZbYqK0dsH
         k3pKIeC2H1UvExnNtOhxS7TOq/HiEcUpf4fxaBHFJaRBo6ChLgxsLVpz/C93x6CWz60+
         wxaHhHLuhnVGdomXtJmnPkwAY9NqLcHXpGtU7zmoZ6Xf8m5Il82KzUSnFxsDM2ocYFmf
         ebyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785342740; x=1785947540;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Q7pTQ84ALbX/4r2igPejPxSAqnbe2d+NJmIUI1AGgJ0=;
        b=gleFc06STMiZyg2NojVJMyME8orn/PupxAjmPBmsZUsJ+z8TTEtSyD35sO1G9FnXUO
         1VTPgngv5AEBfZP6WQGxBVnXpQ51onbhAt5j0art1YvUe+AlHFXLAYq98pZKNnCTDURX
         7aEPMxzCFQxGcOvc9ioHTLxboHUz1RnVvR8po8Z/ct/MQYf53UnVJ7gvzzU9y2ktA+xg
         kPFvHDPDH3sYEKPPEWUUyIFfKUJAEsF4QnEch9sCndNFyFTXrsRidQ6NSRbua+yFgIw5
         qPclTu/X7GY1Rs8cgz1I0l47CTbBYmcFXOGWgGXJwBw87JPr7ROLsY/MSCR5SRFBBXXE
         y58A==
X-Forwarded-Encrypted: i=1; AHgh+RrTLR1fUwl9Yv1BAj3zNNPOdu949/7bmD0xPuoCQDtV6V5dsJfi5sWHtMl1+jm6/yDm9oyCqcdUTI72t2ltyQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxbQbE4RO0tbVM/N0r1L8JAVLbJcquA2dCbw9UTEd+deu3H9HN2
	FVgBw1srCq0FDfiRn98wlMI41k095ozlHs/l+YuU3cAE+tOLGzRaVn67P7aSwQpN/btG/2rYOvx
	NZp/5q/TM9W0+oGEijo3twdmfJV90+sg=
X-Gm-Gg: AR+sD102FRixPs9H4EPjSUImtboPIAhDU3I3ebMxzRRb4fdqrVplM7aCTqMRzG9X0hV
	cU5k6bkGNrMERQroS9O4YbB+nGjqQ04PSK0WeAdEDrYXFaN5GSKpralHAivWmg6zw33TwuYQNdQ
	ettFPJ41wvyDlOY70M+K6g508019NtZ5MLZ3p3c7uXUrFwXquM9WVf15/4wTz+2Zm0qBBmOKNeB
	kslnzB32qX9guwheorzAf7Wf30hlgFFws2FeyUc818R7JEQENFHZo02t6Z7KLOkzeMH9tv9n1P+
	bBG9hKpAE/R6orLBq9D5r4mThtoKcPtn1RKTjFOItMAL6i3wBDR/Zaasu98QjJVH79MjD3nnJSg
	=
X-Received: by 2002:ac8:5747:0:b0:51c:19af:6341 with SMTP id
 d75a77b69052e-529d713873fmr69349981cf.36.1785342739913; Wed, 29 Jul 2026
 09:32:19 -0700 (PDT)
MIME-Version: 1.0
References: <20250925-rk3576-evb1-dsi-v1-1-c76fc3740abc@gmail.com>
 <748fd61a-31fb-436f-b028-b47807a4860c@gmail.com> <12339028.CDJkKcVGEf@phil> <29759328.czjnFlTdjD@diego>
In-Reply-To: <29759328.czjnFlTdjD@diego>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 29 Jul 2026 20:32:08 +0400
X-Gm-Features: AUfX_mzBEaSdgIsBEYN7VZbYtoGsNzcTEENadfy3YmzUtDsOgmQlt3t77sIoNTw
Message-ID: <CABjd4Yy7kzPFxSakaGqY18hyJCfQf5neCoHBdm4DueFrfnda0A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add DSI LCD display on rk3576-evb1
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_093221_732350_6BF6F982 
X-CRM114-Status: GOOD (  35.32  )
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

T24gV2VkLCBKdWwgMjksIDIwMjYgYXQgNjo0NuKAr1BNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gQW0gTW9udGFnLCAyMC4gT2t0b2JlciAyMDI1LCAxNDozMTox
MiBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEhlaWtvIFN0dWVibmVyOgo+
ID4gQW0gTW9udGFnLCAyMC4gT2t0b2JlciAyMDI1LCAxMDo1MDo1OCBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIEFsZXhleSBDaGFya292Ogo+ID4gPgo+ID4gPiBPbiBNb24s
IE9jdCAyMCwgMjAyNSBhdCAxMjozMeKAr1BNIEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gQW0gTW9udGFnLCAyMC4gT2t0b2JlciAyMDI1LCAx
MDoxOTo1MSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEFsZXhleSBDaGFy
a292Ogo+ID4gPiA+ID4gT24gVGh1LCBTZXAgMjUsIDIwMjUgYXQgMTI6MzjigK9BTSBBbGV4ZXkg
Q2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4g
PiBBZGQgc3VwcG9ydCBmb3IgdGhlIFJvY2tjaGlwIFc1NTI3OTNEQkEtVjEwIExDRCt0b3VjaHNj
cmVlbiBhc3NlbWJseSB3aGljaAo+ID4gPiA+ID4gPiBjb21lcyBwaHlzaWNhbGx5IGF0dGFjaGVk
IHRvIFJvY2tjaGlwIFJLMzU3NiBFVkIxIGJvYXJkcy4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4g
VGhlIGRpc3BsYXkgcGFydCBpcyBkcml2ZW4gYnkgdGhlIG9uLWNoaXAgTUlQSSBEU0kgY29udHJv
bGxlciwgYW5kIHRoZQo+ID4gPiA+ID4gPiB0b3VjaHNjcmVlbiBpcyBjb25uZWN0ZWQgb3ZlciBJ
MkMuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBDaGFya292
IDxhbGNoYXJrQGdtYWlsLmNvbT4KPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+IE5vdGUgdGhh
dCBiYWNrbGlnaHQgc3VwcG9ydCBpcyBsZWZ0IG91dCBmb3Igbm93LCBhcyBpdCBkZXBlbmRzIG9u
IFBXTQo+ID4gPiA+ID4gPiBzdXBwb3J0IFswXSB3aGljaCBoYXMgbm90IHlldCBiZWVuIG1lcmdl
ZC4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gQSB3b3JrYXJvdW5kIGlzIHNpbXBseSBgZ3Bpb3Nl
dCAtYyAwIDEzPTFgIHRvIHNldCB0aGUgcmVzcGVjdGl2ZSBHUElPCj4gPiA+ID4gPiA+IHBpbiBo
aWdoIGFuZCB0aHVzIHRvIGxpZ2h0IHVwIHRoZSBkaXNwbGF5IHVuY29uZGl0aW9uYWxseS4KPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAy
NTA2MDItcmszNTc2LXB3bS12Mi0wLWE2NDM0YjBjZTYwY0Bjb2xsYWJvcmEuY29tLwo+ID4gPiA+
ID4gPiAtLS0KPiA+ID4gPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2
LWV2YjEtdjEwLmR0cyB8IDg5ICsrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiA+ID4gPiAg
MSBmaWxlIGNoYW5nZWQsIDg5IGluc2VydGlvbnMoKykKPiA+ID4gPiA+Cj4gPiA+ID4gPiBIaSBI
ZWlrbywKPiA+ID4gPiA+Cj4gPiA+ID4gPiBBbnkgdGhvdWdodHMgYWJvdXQgdGhpcyBvbmU/IENh
biB3ZSBwZXJoYXBzIGdldCBpdCBtZXJnZWQgZm9yIC1uZXh0Pwo+ID4gPiA+Cj4gPiA+ID4gRG9l
cyB0aGUgZ3Bpby1iYWNrbGlnaHQgd29yayBvbiB0aGF0IGRldmljZT8KPiA+ID4gPiBUaGF0IHdv
dWxkIG1ha2UgdGhlIGdwaW9zZXQgaGFjayB1bm5lY2Vzc2FyeS4KPiA+ID4KPiA+ID4gSSd2ZSBn
b3QgYSBsb2NhbCBwYXRjaCB1c2luZyBwd20tZ3BpbyBhbmQgcHdtLWJhY2tsaWdodCBhcyBhIHN0
b3AtZ2FwCj4gPiA+IHNvbHV0aW9uLCBidXQgSSBkb24ndCB0aGluayBpdCdzIHdvcnRoIG1lcmdp
bmcgdXBzdHJlYW0sIGJlY2F1c2UgdGhlCj4gPiA+IGJhY2tsaWdodCBpcyBzdXBwb3NlZCB0byBi
ZSBkcml2ZW4gYnkgdGhlIGhhcmR3YXJlIFBXTSBvbiB0aGUgc2FtZSBwaW4KPiA+ID4gKG5vdCBi
aXQtYmFuZ2luZyB0aGUgR1BJTyBsaW5lKS4gQWZ0ZXIgYWxsLCBOaWNvbGFzIGhhcyBiZWVuIHdv
cmtpbmcgb24KPiA+ID4gYWRkaW5nIGEgcHJvcGVyIGhhcmR3YXJlIFBXTSBkcml2ZXIgZm9yIFJL
MzU3Ni4KPiA+ID4KPiA+ID4gVGhlIGRpc3BsYXkgaXRzZWxmIHdvcmtzIHdpdGhvdXQgUFdNIHN1
cHBvcnQsIGFuZCBzbyBkb2VzIHRoZSB0b3VjaHNjcmVlbi4KPiA+Cj4gPiBSaWdodCBub3csIEkg
ZG9uJ3QgdGhpbmsgd2UgaGF2ZSBhbiBhY3R1YWwgdGltZWxpbmUgaWYvd2hlbiBOaWNvbGFzIHdp
bGwKPiA+IGJlIGFibGUgdG8gd29yayBvbiB0aGUgcHdtIGFnYWluLiBTbyBteSBpZGVhIHdhcyBp
ZiB3ZSB3YW50IHRvCj4gPiBpbnRlZ3JhdGUgdGhlIGJhY2xpZ2h0IGFzIHlvdSBkZXNjcmliZWQg
YmVsb3csIHRvIGhhdmUgYW4gYWN0dWFsIHVzYWJsZQo+ID4gZGlzcGxheSBhbmQgdGhlbiB3aGVu
IHRoZSBuZXcgcHdtIGhhcyBsYW5kZWQgc3dpdGNoIG92ZXIgdG8gdGhhdCBvbmU/Cj4KPiBXaXRo
IHRoZSBFTENFIGFyb3VuZCB0aGUgY29ybmVyIHdlJ3JlIG5lYXJpbmcgdGhlIHllYXItbWFyayBo
ZXJlIDstKQo+IChBbmQgSSdtIHN1cnByaXNlZCwgSSByZW1lbWJlcmVkIHRoaXMgcGVuZGluZyBw
YXRjaCkKCkkndmUgYmVlbiBob3BpbmcgdGhhdCBOaWNvbGFzJyBQV00gc2VyaWVzIGdldHMgZnVy
dGhlciBhbG9uZyBpbiB0aGUgbWVhbnRpbWUgOikKCj4gU28gaG93IGFib3V0IGludGVncmF0aW5n
IHlvdXIgZ3Bpby1wd20gYmFja2xpZ2h0IGZvciB0aGUgdGltZSBiZWluZz8KCkNvdWxkIGRvIHRo
YXQsIGJ1dCBJJ20gd29ycmllZCBpZiBpdCB3b3VsZCBpbW1lZGlhdGVseSBiZWNvbWUgc2V0IGlu
CnN0b25lIGJlY2F1c2UgRFQgaXMgQUJJLCBtYWtpbmcgaXQgaGFyZCB0byBzd2l0Y2ggdG8gYSAi
cHJvcGVyIgpoYXJkd2FyZS1kcml2ZW4gUFdNIG9uY2UgTmljb2xhcycgc2VyaWVzIGxhbmRzLgoK
PiBPciBhbHRlcm5hdGl2ZWx5IGp1c3QgZ29pbmcgd2l0aCBhIGdwaW8tYmFja2xpZ2h0LCBsaWtl
IHRoZSBBbmJlcm5pYyBWaXRhIGRpZDoKPgo+ICAgICAgICAgLyoKPiAgICAgICAgICAqIExFRHMg
YW5kIEJhY2tsaWdodHMgY2FuIGJlIGNvbnRyb2xsZWQgYXMgYSBQV00sIGJ1dCBQV00KPiAgICAg
ICAgICAqIHN1cHBvcnQgaXMgbm90IHlldCBhdmFpbGFibGUuCj4gICAgICAgICAgKi8KPiAgICAg
ICAgIGdwaW9fYmFja2xpZ2h0OiBiYWNrbGlnaHQgewo+ICAgICAgICAgICAgICAgICBjb21wYXRp
YmxlID0gImdwaW8tYmFja2xpZ2h0IjsKPiAgICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8y
IFJLX1BDNCBHUElPX0FDVElWRV9ISUdIPjsKPiAgICAgICAgICAgICAgICAgcGluY3RybC0wID0g
PCZsZWRfYmFja2xpZ2h0X2g+Owo+ICAgICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwo+ICAgICAgICAgfTsKCkluIHRoZSBjYXNlIG9mIFJLMzU3NiBFVkIxIGVuYWJsaW5n
IGl0IGF0IGZ1bGwgcG93ZXIgaXMgZXllLWJ1cm5pbmcKYnJpZ2h0LCBzbyBzb21lIHNvcnQgb2Yg
UFdNIGlzIGRlZmluaXRlbHkgd2FycmFudGVkLgoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
