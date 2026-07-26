Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 493B9C531F9
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Jul 2026 15:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yf+VQGIEMytnEZQvZxk6mNit4EesVJ+AoEsgZ4SMgWc=; b=hyknTL52nxXIOq
	zlqPS8lXwaCNykrw2xT341SxFCrE84Zpah287MlAjOIJWPqGvlRH83TcywQAnKqYgMy/Lvmp0YoWr
	sg6+e2t3IFPl7fgQuCiLcTuMNO42Jt4gPn6o6diSDQPEPJxU2SU8feVH3ZMizq9ClHqLP64Ad3fdf
	rEVpbXtb1RCSbPr5+K4+17RbqysSY0bhrswDL2iko7bapUU7/giKHaBt5IuTHw9z/11DtdN64Jt4Q
	V4AP6E+NrvxmwG+rxxXp0aKxJUmHXU3SwCJevBvgY+vpbPCoyJpp9B/aK1V+PiF/J/sOAlh8aFuqK
	255k1cqRmGmyMmiH9x4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo0XA-00000001I0D-2CGW;
	Sun, 26 Jul 2026 15:12:56 +0000
Received: from mail-yx1-xb133.google.com ([2607:f8b0:4864:20::b133])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo0X6-00000001Hyc-11Ev
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Jul 2026 15:12:54 +0000
Received: by mail-yx1-xb133.google.com with SMTP id 956f58d0204a3-667b9bee563so194641d50.3
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Jul 2026 08:12:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785078771; cv=none;
        d=google.com; s=arc-20260327;
        b=k6vyWWfa5bOhiuvvL2Ip/zDKQglwTyhcM3hi///bDP2Tb0aOnfPwvsFqRJ/nQBneNF
         KXUYZ+RFC+AmqkW9iB8l80JJgt8dltEuq+HFG+qe2kXoC1FHWGgz4ufsbneozHnbUAn+
         qrd3gZf0EUQ4Or7fncO1U97HPyXfYP5x5SH0tizs6Xwm7XxU2TY0AdlzFnLjz6nmClDK
         vKBilUlBKDHnLJy+n+YMrcNON5vln0cJbtEF+IdoiiVLiEE8NguW3+aKHo2wjXkpTGq7
         4k1de5cpTqXA4b2DdOrxC+wmVUTk0ZAvsi9KMMtEVWD+TvimZgqxVPRuDGbBoRumEhkF
         uhiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=WOuDrYfN3GLsqpf/rmh1B+LTpgsMcK+DLrhJbAcy2SA=;
        fh=XoJltSODzhPRu2KKCwMCavtghLD1ILNTJJVHUIeBX2E=;
        b=Si84q/KAv2M2hSNbCeHkJSkbykMXKPtpNIXWGecskVgjMxa0ePDtjmwT43uNS1krEQ
         wHuegABBALyyb3+wYK+QvIy+D0G3Eah9IudHpAOAzX54t+LSGAdJthazdZ8NVr/kPOPe
         vXwp9vpEGfvwjEetzvkubkkq+Z7aUUiNhsPbOCDiQAQ6LF0l/fboih2qxZIKtYGEl8kg
         i7pN+b9rAfxeekyh7jOG5Nf76BSWzeZedPvzcbityyYAygO8iTYoaaxne4KFcTKXMWlc
         ikkx/HoUNCD8Q0CiCC8qspqpQ3zXbzK/F3MBbW7x26A9eGSF2JDJ6bjJozcwnmwQYyJQ
         40Jw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785078771; x=1785683571; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=WOuDrYfN3GLsqpf/rmh1B+LTpgsMcK+DLrhJbAcy2SA=;
        b=FQ1gEfZGJXE8LO5O/NBD9ybIWaC+UUutTJ8oPFyYyNb1hcFUBEAQ6GgueiHon1jgei
         ld4Zblmc6ig4JBZ32xtHMI7P0A5836iIydKMBacu4saxjQtN8MKhMPRwxIYjt5SQGjSh
         3TiClZnzFS0eWC+f5brDcCclqFE/0m2mF/nPJ9zvw4vFm69UDFOOgESL7KbJo4m5DHsC
         Iz6a91e19C0cTvYjhu5ydtq7mIEEtvU8FoKOK5HYSc7tD28v+9CIrAYdyGxWwaLR127B
         x1nSMEgRX77YBK+CHFshkphL+hxgZDvM/33opEAMId0A4AZ9JfhOC336yzgR2t+FcwDa
         QU0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785078771; x=1785683571;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WOuDrYfN3GLsqpf/rmh1B+LTpgsMcK+DLrhJbAcy2SA=;
        b=AIYLyIvfVGtAl5E9/D9kicD9EDD+f3gbifsBp0GIDh30PDQAnwpglEsBJz1G/R4e0c
         49UaNoEXBOAbHkrZkUPj353DnCGgmfufimhMwOWdc56wfElCvxHbRQs4chDyhwEtB2dp
         QstMhC2Nwu2UCBOWWIaFC4tzRlqbU2WnbT/tfTXLcYQb7fsl1J0JU6ZL+yZsAhcCfokc
         KT7F2OhheXZaEJRgTWbHt0qceHizfHIIN5aU9kofD71m9mu3ZD/V1abb3kZE44yNfEJw
         27ieaAm3Ibev6YYfGrqMgeCLvOPGPJR7CMuhDUHTecDLT3tNwWaJHXK0u3U8xBRXjaoM
         tbtw==
X-Forwarded-Encrypted: i=1; AHgh+Rpfn/wVQo/wXZ169/bSYtKf0uvpsEWnuKCM/vGfe5wE8d5dvFpIdbhtzd8SzXfhg6ZcYf+SNIwNHlZbiqYUoA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+2UYfEeGeyjah1BYnsf9uHDvg2MbfqG++tT+/RZZur36xx/2M
	zn59E96NxO91uJOnBoZMXo3x5ECrnNt+O0RMLdT3qQdLbTIuQCaDV0L4n0MVqaDmAT1ceeO5lg7
	xFq5QXZsY01dKLSYX9HEu+8W2b1qluII=
X-Gm-Gg: AR+sD12GC9Fg/XjeUIM5Ly+bVdl4CUMJiNTD6V7diQs0yEyoubJxlW6rVq03M4y+uM+
	AO+NAGozWTej07E0RcZg+yKRfy4KIK1BWEem2qpOob56T12L7P7L56xgXGqAuf7UJCwF/ZUBK/R
	0bhioG2YlPYGI1PmFR8+50V0ulxbz2f9k1jyu4qthBdI/8+WygjUiTuAEW7zPnAje8mt3/7xM6+
	Sb/zl0X2tSpb8mMbPAKSRImfG9Ejwlp1Rj+/7L+p1XC+ybvIT7gldnhMHhWWZ9nz2UbS1xHk6UB
	RQEqgb0HvnwmlVNoLP8=
X-Received: by 2002:a05:690c:f07:b0:7fd:6d19:5a8d with SMTP id
 00721157ae682-81f69ee7e19mr14494537b3.8.1785078770663; Sun, 26 Jul 2026
 08:12:50 -0700 (PDT)
MIME-Version: 1.0
References: <20260718085728.6797-1-royalnet026@gmail.com> <20260718085728.6797-3-royalnet026@gmail.com>
 <25922edc-4ff1-4d28-9a64-2c28b2b690cb@collabora.com> <CAEWPSH70FecQRuGtA=S8+_CnLY5sMyf1j57Uwzwv54zceS1HZg@mail.gmail.com>
 <b8d63f61-b73e-412e-8119-ced1afdd4551@collabora.com> <CAEWPSH5j3tYNb1JKRGwa00PVnYAgCKS+B-Qz07D8Z7TJea5cMw@mail.gmail.com>
 <1ac66aab-8985-4441-8ce1-07e2ea5183bd@collabora.com> <CAEWPSH4aB4KZsrLx2TESjPvUG0+A_Z_7uuO=5Rd-VidKU9U3eg@mail.gmail.com>
 <e1034df6-3801-424a-ba1e-a03d61b37222@collabora.com>
In-Reply-To: <e1034df6-3801-424a-ba1e-a03d61b37222@collabora.com>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Sun, 26 Jul 2026 17:12:38 +0200
X-Gm-Features: AUfX_mxNMnv89FtlmOLwDPjkbtQHb2ya9M8N3iwV5LPYpxZcnxB0jJS_Wey_JPA
Message-ID: <CAEWPSH6BaPL+65Or+kVHGCdzRHrhaYSbZNfRwNTJQGWYvjnY5g@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] media: synopsys: hdmirx: add HDMI audio capture support
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_081252_322128_0C5DE121 
X-CRM114-Status: GOOD (  31.57  )
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

SGkgRG1pdHJ5LAoKVGhhdCdzIHJlYWxseSBoZWxwZnVsLCB0aGFuayB5b3UuIFRoZSBnZXRfZWxk
KCkgcm91dGUgbWFrZXMgc2Vuc2UgLS0KcmV1c2luZyB0aGUgRUxEIHBhdGggdG8gYWR2ZXJ0aXNl
IHRoZSBzaW5nbGUgd2lyZSByYXRlIChlaXRoZXIgYnkKZ2VuZXJhdGluZyBhbiBFTEQgaW4gdGhl
IGRyaXZlciBvciB0ZWFjaGluZyB0aGUgQ09ERUMgYW4gZXhwbGljaXQgUlgKcmF0ZSByZXN0cmlj
dGlvbikgaXMgY2xlYW5lciB0aGFuIHdoYXQgSSBoYWQgaW4gbWluZCwgYW5kIGhhdmluZwp1c2Vy
c3BhY2Ugc2VlIGV4YWN0bHkgb25lIGNhcHR1cmUgcmF0ZSBhbmQgcmVzYW1wbGUgb24gaXRzIG93
biBzaWRlIGlzCnRoZSByaWdodCBiZWhhdmlvci4KCkknbGwgZm9sbG93IHRoYXQgZmxvdyAtLSBw
bHVnIGV2ZW50IC0+IHNpZ25hbCBzdGFibGUgLT4gcmF0ZSBmcm9tIEFDUiAtPgpyZWdpc3RlciBD
T0RFQyAtPiBnZXRfZWxkKCkgLS0gd2hlbiBJIGdldCB0byB0aGUgZm9sbG93LXVwLCBhbmQgSSds
bCBydW4KdGhlIGhkbWktY29kZWMgc2lkZSBvZiBpdCBieSB0aGUgQVNvQyBsaXN0IHNpbmNlIGl0
IGV4dGVuZHMgdGhlIHNoYXJlZApDT0RFQyBkcml2ZXIuIEknbGwga2VlcCB5b3UgY2MnZCB3aGVu
IEkgcG9zdCBpdC4KClRoYW5rcyBhZ2FpbiBmb3IgdGhlIHBvaW50ZXIsIGFuZCBmb3IgdGhlIHJl
dmlld3MgYW5kIHRlc3Rpbmcgb24gdGhpcwpzZXJpZXMuCgpJZ29yCgpPbiBTYXQsIEp1bCAyNSwg
MjAyNiBhdCA3OjU44oCvUE0gRG1pdHJ5IE9zaXBlbmtvCjxkbWl0cnkub3NpcGVua29AY29sbGFi
b3JhLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIDcvMjQvMjYgMDI6NDcsIElnb3IgUGF1bm92
aWMgd3JvdGU6Cj4gPiBIaSBEbWl0cnksCj4gPgo+ID4gVGhhbmsgeW91IC0tIGFuZCB0aGFuayB5
b3UgZm9yIHJldmlld2luZyB0aGUgd2hvbGUgc2VyaWVzIGFuZCB0ZXN0aW5nCj4gPiAyLzQuIEl0
IHdlbnQgdGhyb3VnaCBhIGxvdCBvZiBiYWNrLWFuZC1mb3J0aCBzaW5jZSB0aGUgUkZDLCBzbyBo
YXZpbmcKPiA+IGl0IGxhbmQgd2l0aCB5b3VyIFRlc3RlZC1ieSBtZWFucyBhIGxvdC4KPiA+Cj4g
PiBJJ2xsIHByZXBhcmUgdGhlIGZvbGxvdy11cHMgYXMgc2VwYXJhdGUgcGF0Y2hlcyBvbmNlIHRo
aXMgc2VyaWVzIGlzIGluOgo+ID4KPiA+IC0gVGhlIHZpZGVvX2RldmljZSBsaWZldGltZSBpc3N1
ZSBvbiB0aGUgVjRMMiBzaWRlICh0aGUgZGV2bS1hbGxvY2F0ZWQKPiA+ICAgc3RydWN0IHdpdGgg
dmlkZW9fZGV2aWNlX3JlbGVhc2VfZW1wdHkgdGhhdCB0aGUgYXV0b21hdGVkIHJldmlldwo+ID4g
ICBmbGFnZ2VkKSAtLSBhcyBhIHN0YW5kYWxvbmUgZml4IGZvciB0aGUgZXhpc3RpbmcgZHJpdmVy
LCBzaW5jZSBpdCdzCj4gPiAgIGluZGVwZW5kZW50IG9mIHRoZSBhdWRpbyBzdXBwb3J0Lgo+ID4g
LSBBbiBhdG9taWNpdHkgZml4IGZvciB0aGUgR0xPQkFMX1NXRU5BQkxFIHJlYWQtbW9kaWZ5LXdy
aXRlLCBub3cgdGhhdAo+ID4gICB0aGUgYXVkaW8gcGF0aCBhZGRzIGEgc2Vjb25kIHdyaXRlciB0
byB0aGF0IHJlZ2lzdGVyIGFsb25nc2lkZSB0aGUKPiA+ICAgQ0VDIGNvZGUuCj4gPgo+ID4gVGhl
IHJlcGVhdGVkLXN1c3BlbmQgd2VkZ2UgSSBtZW50aW9uZWQgaW4gdGhlIGNvdmVyIGxldHRlciBJ
J2QgcmF0aGVyCj4gPiBzZW5kIG9ubHkgb25jZSBJIGhhdmUgYSBjbGVhbiwgcmVwcm9kdWNpYmxl
IHRyaWdnZXIgZm9yIGl0IC0tIGl0J3MKPiA+IHN0aWxsIHVuZGVyIGludmVzdGlnYXRpb24gYW5k
IEkgZG9uJ3Qgd2FudCB0byBzZW5kIGEgZml4IGFoZWFkIG9mIGEKPiA+IHNvbGlkIHJlcHJvLgo+
ID4KPiA+IFRoZSBkeW5hbWljIGNvZGVjIHJlZ2lzdHJhdGlvbiB5b3Ugc3VnZ2VzdGVkIChiaW5k
IG9uIHRoZSBwbHVnIGV2ZW50LAo+ID4gcmVhZCB0aGUgYWN0dWFsIHdpcmUgc2FtcGxlIHJhdGUg
YW5kIHJlc3RyaWN0IHRoZSBjb2RlYydzIHJhdGUpIGlzIHRoZQo+ID4gZGlyZWN0aW9uIEknZCBs
aWtlIHRvIGV4cGxvcmUgYWZ0ZXIgdGhlc2UsIG9uY2UgSSd2ZSBsb29rZWQgYXQgd2hhdCBpdAo+
ID4gbmVlZHMgZnJvbSBoZG1pX2NvZGVjX29wcy4KPgo+IEdvb2QgcGxhbgo+Cj4gUkUgdGhlIHNh
bXBsZSByYXRlIHJlc3RyaWN0aW9uLCBoZG1pX2NvZGVjX29wcyBoYXMgZ2V0X2VsZCgpIHRoYXQK
PiByZXN0cmljdHMgcmF0ZSBiYXNlZCBvbiBIRE1JIEVMRCBbMV0uIEZvciBSWCB3ZSBjb3VsZCB0
ZWxsIHRoZSBleGFjdAo+IHJhdGUgdG8gQ09ERUMgd2l0aG91dCBFTEQgb3Igd2UgY291bGQgZ2Vu
ZXJhdGUgRUxEIGluIHRoZSBkcml2ZXIsIGVpdGhlcgo+IHdheSBzaG91bGQgcmVxdWlyZSBleHRl
bnNpb24gb2YgQ09ERUMgZHJpdmVyIHdpdGggc3VwcG9ydCBvZiBSWCByYXRlCj4gcmVzdHJpY3Rp
b24uIFRoaXMgd2F5IHVzZXJzcGFjZSB3aWxsIHNlZSB0aGF0IHRoZXJlIGlzIG9ubHkgb25lIHJh
dGUKPiBhdmFpbGFibGUgZm9yIGNhcHR1cmUsIHNvIGl0IHdvbid0IGJlIGFibGUgdG8gY2hvb3Nl
IHdyb25nIHJhdGUgYW5kIHdpbGwKPiByZXNhbXBsZSBhdWRpbyBpdHNlbGYgYXMgaXQgbmVlZHMu
Cj4KPiBIRE1JIHBsdWcgZXZlbnQgLT4gc2lnbmFsIHN0YWJsZSAtPiBnYXRlIGF1ZGlvIHJhdGUg
ZnJvbSBBQ1IgLT4gcmVnaXN0ZXIKPiBDT0RFQyBkZXZpY2UgLT4gb3BzLmdldF9lbGQoKSByZXR1
cm5zIG91ciBFTEQKPgo+IFsxXQo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y3
LjEuMy9zb3VyY2Uvc291bmQvc29jL2NvZGVjcy9oZG1pLWNvZGVjLmMjTDQ3Nwo+Cj4gLS0KPiBC
ZXN0IHJlZ2FyZHMsCj4gRG1pdHJ5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
