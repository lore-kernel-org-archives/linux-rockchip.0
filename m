Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0AB3C71141
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 13:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzMzpLMJfv7eEe9f6d9Iv+tIPcEbuqul60fJxWx87Gc=; b=p9VsFFhxFUyB1S
	7hjT0nsaEaGS8LubFIx/kwNqLSGLW2KGSzaEdDSFT1utEkPtnISkTDbHJUfVSzgTxmXnticywuczx
	gRf4pgMyU1LsAk04SdC2ynnqPJGAn80DHlhfUdJcPp2iRz3sKvQYJmyo6vig2b+/3vBaViWML1nkl
	WgnRL4F5EEOqXNxEZ4PgbjXKBR0ahFS9+RvlL9O6iLqiRSsMltWfC9eLwdWCnQidUIkgufzOeC7vL
	WU4ZQuCiRJiVPFckBsvKHnOeUgG9ZwzpUcaC0Px4JJitQdXD5bTzyIAJnytHbafHVQZIL4InXIdef
	nsMzG64YFiOwR+6UAKIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPhrG-0000000DPSG-0ozq;
	Thu, 12 Jun 2025 13:20:42 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPh3U-0000000DG0z-3rNi;
	Thu, 12 Jun 2025 12:29:17 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-ad883afdf0cso187153266b.0;
        Thu, 12 Jun 2025 05:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749731355; x=1750336155; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NEJs2y5lh32zGmKZ8Qzhu9KFrGD77yTrgBvMh7VvKkA=;
        b=Di3Ov1OeubLTypJEW8AJatj34sNFmqaFU38IOGz6poIZmoDCikdV1Z8WOKxahJWHmk
         B8QAJEknXNSySZk3cgb6uL8MljatUA8J7p9hb0gUhejyWgOwiHfjosDevAE/lcBvTp5T
         sY5VJOMOGsKBvOgVWOPTRUis/V/ZtNN6H+5rLQXEitdjdnrshGS207iS3BD3+iMWtaa+
         lxBklZJPpO4MNSjJRM6UuSCe6vjT4lFKrwVDGtqzYj9KfB/RAv/A1uDhhHdTQPjxaaZb
         sn9guF6SyTg4mqouygmBpogOtzq5z9IcvoXylK45z1uorECCPAp7cFoPky569WOvObD5
         2UUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749731355; x=1750336155;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NEJs2y5lh32zGmKZ8Qzhu9KFrGD77yTrgBvMh7VvKkA=;
        b=ubhTAn3U+h4TgHjcnUWb7MNB5hHyNLOtptd6iXxTkY5G9B/mfMwtdYPYAi/e7tT/wQ
         /nT3/hMVa4cx0aP8VnINzcCCrc1A3WaSFzrVbeomfsWcq+cWQNAF8138vFZ1vM35AM3q
         +pjmeEFouGfSILzFtH07bZbFhcTbL49sCXWifgglFRzxx2LhmTfCqMgPMWx9P1jnRidb
         4aKm8I+U60K4x6KD3UbPv1JAs/JQUaREt22WrjAPYBsDKDBXfNsiHq4NpCRSbp8vcgeW
         f4cHB5qPm65qa/Zprg9lL48kCO1Bbv1Us5kRAoPWrX8D51EP571jLhIuZycJIdF6niM0
         UEnQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9WNcHAIjnhxjL8hpmixMnSqKrKhRZEAsGAatXfdciuX5aNAt1dCq3v4i+BC0Dp1bom0vqW/hTLpuxwetlfr8F@lists.infradead.org, AJvYcCWe6an5WKwr8s8X1+o+NFFWPo8Qlee+w7xlxxqUfy4nRpuT/e5fw/HlfhtCuEANtmjZk53y01Nauh8UKGonZ6g=@lists.infradead.org, AJvYcCWrGRe+DS9U1YfHXJZTC4D3/bsnUWP91ovzcA8mpVlq+z+AWftk/bW/Yw+x1K61l5nlncwJT+GoaEeO3RjEbI4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyd1+jShpk/HAJ9BvKyQ3xNqCzk7dWehVZY6PcdmUFu+3XA7hUo
	JL9+2lj1mvbZ4T2j8IlYEE3pdt2ON5OQEcpJH31MbXcAk+mNXu4iWLUC7VgPf9IjGKcVFn04Uf+
	cyUrxHowxsB3YukrtFcvsJjCL+C3jJkY=
X-Gm-Gg: ASbGncvwu8LPe3Mw0J4gz62duAB36ep3AcV4/lSUBvVY0hppGI07TFYc5u+a9NcfOT9
	ZyM+CNQgbtgXh61+K+TA99Plt2Cow04NHfoQxpJS9BEFpd/SEmtK+hxKp0H6opo9DtPTHpMGtkQ
	3/aF64qqGtyH6FX+gqAIwAgGEkvlqWIZuxlraxT2Dy85w=
X-Google-Smtp-Source: AGHT+IGlkqMkspvLMpeTjF8aN4KiUGRrevrrBMyqe/WGI6YMF5fU2+dVwFdEvs12L1YJUL60yY3huaWNWMMfCo5r7oM=
X-Received: by 2002:a17:907:1c9e:b0:ade:5ba:40e1 with SMTP id
 a640c23a62f3a-adea270e2f5mr330585366b.0.1749731354468; Thu, 12 Jun 2025
 05:29:14 -0700 (PDT)
MIME-Version: 1.0
References: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-0-ebb2d0a24302@baylibre.com>
 <aEqbQPvz0FsLXt0Z@duo.ucw.cz> <2243943.irdbgypaU6@workhorse>
In-Reply-To: <2243943.irdbgypaU6@workhorse>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 12 Jun 2025 15:28:37 +0300
X-Gm-Features: AX0GCFscYljXh7LJwJGoGDo8-EH4wvCa4kp802_hSw1Ko3S3oAJ3o3w3MKMG3Hc
Message-ID: <CAHp75VdVB1OogZay+FDYVY0XajxcOx6t8T8LJSs+zSZg8TkaDQ@mail.gmail.com>
Subject: Re: [PATCH 00/28] iio: zero init stack with { } instead of memset()
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: David Lechner <dlechner@baylibre.com>, linux-rockchip@lists.infradead.org, 
	Michael Hennerich <michael.hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Jonathan Cameron <jic23@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Heiko Stuebner <heiko@sntech.de>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Francesco Dolcini <francesco@dolcini.it>, 
	=?UTF-8?Q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <jpaulo.silvagoncalves@gmail.com>, 
	=?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>, 
	kernel@pengutronix.de, Oleksij Rempel <o.rempel@pengutronix.de>, 
	Roan van Dijk <roan@protonic.nl>, Tomasz Duszynski <tomasz.duszynski@octakon.com>, 
	Jacopo Mondi <jacopo@jmondi.org>, Jean-Baptiste Maneyrol <jean-baptiste.maneyrol@tdk.com>, 
	Mudit Sharma <muditsharma.info@gmail.com>, 
	Javier Carrasco <javier.carrasco.cruz@gmail.com>, =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>, 
	Andreas Klinger <ak@it-klinger.de>, Petre Rodan <petre.rodan@subdimension.ro>, 
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, Pavel Machek <pavel@ucw.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_052916_960098_5E349C54 
X-CRM114-Status: GOOD (  30.21  )
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

T24gVGh1LCBKdW4gMTIsIDIwMjUgYXQgMzoxMuKAr1BNIE5pY29sYXMgRnJhdHRhcm9saQo8bmlj
b2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+IHdyb3RlOgoKPiBJIHRob3VnaHQgSSdkIGNo
aW1lIGluIGFzIHNvbWVvbmUgdW5pbnZvbHZlZCBiZWNhdXNlIHRoaXMgc2VlbWVkCj4gaW50ZXJl
c3RpbmcuCgpXZWxjb21lISBPdGhlciBvcGluaW9ucyBvbiBzdWNoIGEgdG9waWMgYXJlIGFsd2F5
cyBhcHByZWNpYXRlZC4KCj4gT24gVGh1cnNkYXksIDEyIEp1bmUgMjAyNSAxMToxNzo1MiBDZW50
cmFsIEV1cm9wZWFuIFN1bW1lciBUaW1lIFBhdmVsIE1hY2hlayB3cm90ZToKPiA+Cj4gPiA+IEpv
bmF0aGFuIG1lbnRpb25lZCByZWNlbnRseSB0aGF0IGhlIHdvdWxkIGxpa2UgdG8gZ2V0IGF3YXkg
ZnJvbSB1c2luZwo+ID4gPiBtZW1zZXQoKSB0byB6ZXJvLWluaXRpYWxpemUgc3RhY2sgbWVtb3J5
IGluIHRoZSBJSU8gc3Vic3lzdGVtLiBBbmQgd2UKPiA+ID4gaGF2ZSBpdCBvbiBnb29kIGF1dGhv
cml0eSB0aGF0IGluaXRpYWxpemluZyBhIHN0cnVjdCBvciBhcnJheSB3aXRoID0geyB9Cj4gPiA+
IGlzIHRoZSBwcmVmZXJyZWQgd2F5IHRvIGRvIHRoaXMgaW4gdGhlIGtlcm5lbCBbMV0uIFNvIGhl
cmUgaXMgYSBzZXJpZXMKPiA+ID4gdG8gdGFrZSBjYXJlIG9mIHRoYXQuCj4gPgo+ID4gMSkgSXMg
aXQgd29ydGggdGhlIGNodXJuPwo+ID4KPiA+IDIpIFdpbGwgdGhpcyBmYWlsIHRvIGluaXRpYWxp
emUgcGFkZGluZyB3aXRoIHNvbWUgb2JzY3VyZSBjb21waWxlcj8KPgo+IGFzIG9mIHJpZ2h0IG5v
dywgdGhlIG9ubHkgdHdvIEMgY29tcGlsZXJzIHRoYXQgYXJlIHN1cHBvcnRlZCBhcmUKPiBHQ0Mg
Pj0gOC4xLCBhbmQgQ2xhbmcgPj0gMTMuMC4xLiBJZiBhbnlvbmUgZXZlbiBtYW5hZ2VzIHRvIGdl
dCB0aGUga2VybmVsCj4gdG8gZmluaXNoIGEgYnVpbGQgd2l0aCBzb21ldGhpbmcgZWxzZSwgSSB0
aGluayB0aGUgY29tcGlsZXIgbm90Cj4gaW1wbGVtZW50aW5nIHRoZSBDIHN0YW5kYXJkIGNvcnJl
Y3RseSBpcyB0aGUgbGVhc3Qgb2YgdGhlaXIgd29ycmllcy4KPgo+IE15IGJpZ2dlciB3b3JyeSBp
cyB0aGF0ID0geyB9IGlzIG9ubHkgZ3VhcmFudGVlZCB0byBiZSBhcyBjb3JyZWN0IGFzCj4gbWVt
c2V0IG9uIEMyMywgYW5kIHRoZSBrZXJuZWwncyBzdGFuZGFyZCByaWdodCBub3cgaXMgQzExLiBG
b3IgdGhhdAo+IHJlYXNvbiBhbG9uZSwgSSBkb24ndCB0aGluayBtZW1zZXQgc2hvdWxkIGJlIG1v
dmVkIGF3YXkgZnJvbSBmb3Igbm93LAo+IHVubGVzcyBzb21lb25lIGNhbiB2ZXJpZnkgdGhhdCBl
dmVyeSBHQ0MgcmVsZWFzZSA+PSA4LjEgYW5kIGV2ZXJ5Cj4gQ2xhbmcgcmVsZWFzZSA+PSAxMy4w
LjEgZG9lcyB0aGUgcmlnaHQgdGhpbmcgaGVyZSByZWdhcmRsZXNzLgo+Cj4gPgo+ID4gMykgV2h5
IGRvIHlvdSBiZWxpZXZlIHRoYXQge30gaXMgdGhlIHByZWZmZXJlZCB3YXk/IEFsbCB3ZSBoYXZl
IGlzCj4gPiBLZWVzJyBlbWFpbCB0aGF0IGV4cGxhaW5zIHRoYXQgPSB7fSBtYXliZSB3b3JrcyBp
biBjb25maWdzIGhlIHRlc3RlZC4KPgo+ID0geyB9IGlzIGd1YXJhbnRlZWQgdG8gd29yayBpbiBD
MjMsIGFzIHBlciB0aGUgc3RhbmRhcmQsIGJ1dCBhZ2FpbiB3ZSdyZQo+IG5vdCBvbiBDMjMuCj4K
PiBUaGUgcmVhc29uIHRvIHByZWZlciB0aGlzIGlzIGxpa2VseSB0aGF0IGl0J3MgZWFzaWVyIGZv
ciBzdGF0aWMgYW5hbHlzaXMKPiB0byBzZWUgdGhlIHN0cnVjdCBhcyBpbml0aWFsaXNlZCwgYnV0
IHRoYXQncyBtZSBtYWtpbmcgYXNzdW1wdGlvbnMgaGVyZS4KPgo+IEEgbW9yZSBodW1hbi1jZW50
cmljIGFyZ3VtZW50IGlzIHRoYXQgb25jZSB3ZSdyZSBvbiBhIEMgc3RhbmRhcmRzIHZlcnNpb24K
PiB3aGVyZSA9IHsgfSBpcyBndWFyYW50ZWVkIHRvIGJlIGNvcnJlY3QsIHRoZW4gPSB7IH0gaXMg
bXVjaCBtb3JlIG9idmlvdXNseQo+IGNvcnJlY3QgdG8gYSByZWFkZXIgdGhhbiBhIG1lbXNldCB3
aXRoIGEgdmFsdWUgYW5kIGEgc2l6ZSBzb21ld2hlcmUgbGF0ZXIKPiBpbiB0aGUgY29kZS4gVGhp
cyBhcmd1bWVudCBpcyBldmlkZW50IGZyb20gdGhlIG51bWJlciBvZiBwYXRjaGVzIGluIHRoaXMK
PiBzZXJpZXMgd2hlcmUgdGhlIG1lbXNldCBhbmQgdGhlIGRlY2xhcmF0aW9uIGFyZSBub3QgaW4g
dGhlIHNhbWUgaHVuay4KPiBUaGF0J3MgdGhlIGtpbmQgb2Ygc3R1ZmYgdGhhdCBrZWVwcyBtZSBh
d2FrZSBhdCBuaWdodCwgc3dlYXRpbmcgcHJvZnVzZWx5LgoKV2hpbGUgYWxsIHlvdSBzYWlkIHNl
ZW1zIHRydWUgYW5kIEkgYWdyZWUgd2l0aCwgdGhlIHBlZGFudGlzbSBoZXJlIGlzCm5vdCBuZWVk
ZWQgYXMgaW4gdGhlIExpbnV4IGtlcm5lbCB3ZSBoYXZlIHt9IHVzZWQgZm9yIGFnZXMgaW4gdG9u
cyBvZgpjb2RlIGFuZCBpZiBzb21ldGhpbmcgd2VudCB3cm9uZyB3aXRoIHRoYXQgd2Ugc2hvdWxk
IGhhdmUgaGFkIGJ1ZwpyZXBvcnRzIGFscmVhZHkuIEFyZSB5b3UgYXdhcmUgb2Ygc3VjaD8gUGVy
c29uYWxseSBJIGhhdmVuJ3QgaGVhcmQKZXZlbiBvbmUgcmVsYXRlZCB0byB0aGlzLiBCdXQgaWYg
eW91IGtub3csIEkgYW0gcmVhbGx5IG1vcmUgdGhhbgppbnRlcmVzdGVkIHRvIHJlYWQgYWJvdXQg
KHBsZWFzZSwgZ2l2ZSBwb2ludGVycyB0byBzdWNoIGEgZGlzY3Vzc2lvbikuCgotLSAKV2l0aCBC
ZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
