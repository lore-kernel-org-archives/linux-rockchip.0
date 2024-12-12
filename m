Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9244BE7717F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 12:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctHsvEnEezS/JOjXwzk9YKJmCmV0BRt1PT8dn4pt0q0=; b=lDT4WIQtIpIJ76
	w/nqyjn4LnGCgnn/UwD3iW9Wj057gjS381T8Xvc3FM9LWK5/7f0/l6uYx7H/IwSULo/sl8pk5cmiH
	yGxU23D7BtlP7GkENVRMfxSzEOHEWWWU3X3ic4nohRn+13swfUDQ5lkV6i3HiFjm+imMf9QivcIwN
	KhvGegABbdSowbyQjPDBKce0LGkZwbXvkABWXSDJbTohpTNbHE8/a+8ghiwU3EiTPMqkjWXLzSCUE
	m3UnRUxW9DH8hPO00Ug3cP0wh5kCl5nhtJw8og5SjcC1+S9uIUSZ9XDSxvz1YGNvEoDzOByOHYRJz
	Y+/sH+MDcawwUf1xyyag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLi3b-00000000Ktb-1RS6;
	Thu, 12 Dec 2024 12:12:39 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLi3Y-00000000Ksz-1pro
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Dec 2024 12:12:37 +0000
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-4678f681608so5280191cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Dec 2024 04:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734005554; x=1734610354; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lXBYqqkxTKyqsNdkJcECoBSVSlVnIpf2sYAgLseM4lY=;
        b=Aou/tFmUOP8lKAQsdC3IiRbi2wwpDxqA36QPTqxJhQ3HM2QRF0a4GCNf9wplEU44K6
         ksBX76XVGj3Akuj98pt5W8DF26Yw4remxxXsCx2oUDPixMk/IrKlOOaKdNgEA0oIjgq7
         n8dKKUh2qZKI0QHsk9ptKfOzCAGaIrvLemcIhv7REadxeGf8JBQ5XaK6Uj+tKkZ33LUm
         KiAM1w2GV8s2NQ6mQLBOidxTWK/Q8HV43PMQjF56yj9wTs01dCqs25Uxq5/XkNxf+ngh
         JoV9EQx26WqXOV7ah5bYBRzrZlYBeoQ+Tgi+P93JPvEzO9rA+qp3J6Nz5xainjnKV7s1
         g6Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734005554; x=1734610354;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lXBYqqkxTKyqsNdkJcECoBSVSlVnIpf2sYAgLseM4lY=;
        b=kQ2isV/a4JyddxH89O7+yU7SiEDRFo+FP99qtFIWTczz21F9uxH/zsp671ZWC5kdhW
         9H6cnCUfUiADC8pdxHy6SYnS6aY4PgS2O10XjQXRxK3H3UMfT8bIF07R97U+FKkjiYkW
         /5z3RO9It8yY2sBGVfejunoiNbgva1Hix/IFa60TVuulS9833AwV4Y29kth5QtIKmHfS
         gV5RS2sygedOjHtlJOi1oYp/ZbAz3K/Rvv6C0bdtTs5Mg+zNZBhbrGm40BKBt9Qr0f79
         E2phRJC1NPSb/jVOnHTCi6kklfakaLmQn+182tky9EF4NEGep+Mpfcrbw3jPboQGbtsP
         p6ew==
X-Gm-Message-State: AOJu0YxErFsvCgef/ZWx331s0n7i+wTtn/iAL8tlJVAGlAhmKdyVfgEi
	QodPWv1yVENUJX/VGfigaJpvKzndx589vZjPa5zZdSbjQjFrUbAt1CIzyTkWKzRnJLW4p9aIFH7
	WUPrPTxfx4+l/EEqA1+tOjVnLa9U=
X-Gm-Gg: ASbGncswrpA36s/jgffCWe690gqz2PQyMElJbbR+N7q3MHuXRjz71Ee5ifLNK5KbVg0
	BPPfQ1IAV5M1zdLewEHAJJiHikY0t7VoYOxkYDw==
X-Google-Smtp-Source: AGHT+IEgZRQou3qok5X3atxOS3/ckyZVWUXxSTdKIJnf/gUZ+7KXxjlRlEPmRu01i+CqOJOAWqT3paMY+DGHSatZL28=
X-Received: by 2002:a05:622a:488:b0:467:6710:bbf5 with SMTP id
 d75a77b69052e-467962619b2mr60814491cf.41.1734005554433; Thu, 12 Dec 2024
 04:12:34 -0800 (PST)
MIME-Version: 1.0
References: <CAAMcf8DL27-PYdEJ4eX1-PJnQDWB0osgHR0gbHAcr_oRniWOOg@mail.gmail.com>
 <4929144.F8r316W7xa@diego> <CAAMcf8A8Y1js5Xt5FDOwq=dTw82UuZar0P6DVsJDgngRxPmtBw@mail.gmail.com>
 <2855083.6YUMPnJmAY@diego> <CAAMcf8Bf_iD8qpE3FqRUTweHFAk-5HuDsA3Q56POVtOtqpa4NQ@mail.gmail.com>
In-Reply-To: <CAAMcf8Bf_iD8qpE3FqRUTweHFAk-5HuDsA3Q56POVtOtqpa4NQ@mail.gmail.com>
From: Vicente Bergas <vicencb@gmail.com>
Date: Thu, 12 Dec 2024 13:12:22 +0100
Message-ID: <CAAMcf8AahTpHBoMjK=bdBQFfuiat0Nefhr1DKENbEi147OnTEA@mail.gmail.com>
Subject: Re: PCIe missing on RK3399
To: Johan Jonker <jbx6244@gmail.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_041236_474561_22424F32 
X-CRM114-Status: GOOD (  29.21  )
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

T24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgNjozMeKAr1BNIFZpY2VudGUgQmVyZ2FzIDx2aWNlbmNi
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIERlYyAxMSwgMjAyNCBhdCA0OjM14oCvUE0g
SGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gPgo+ID4gQW0gTWl0dHdv
Y2gsIDExLiBEZXplbWJlciAyMDI0LCAxNjoxMDoyMSBDRVQgc2NocmllYiBWaWNlbnRlIEJlcmdh
czoKPiA+ID4gT24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgMjozNuKAr1BNIEhlaWtvIFN0w7xibmVy
IDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gSGkgVmljZW50ZSwKPiA+
ID4KPiA+ID4gSGkgSGVpa28sCj4gPiA+IHRoYW5rcyBmb3IgdGFraW5nIGEgbG9vayBhdCBpdCEK
PiA+ID4KPiA+ID4gPiBBbSBNaXR0d29jaCwgMTEuIERlemVtYmVyIDIwMjQsIDEzOjU1OjAxIENF
VCBzY2hyaWViIFZpY2VudGUgQmVyZ2FzOgo+ID4gPiA+ID4gaSd2ZSB0ZXN0ZWQgdGhlIExpbnV4
IGtlcm5lbCA2LjEzLXJjMSBhbmQgcmMyIGFuZCBpbiBib3RoIGNhc2VzIFBDSWUKPiA+ID4gPiA+
IGlzIG5vdCBkZXRlY3RlZCBvbiB0aGUgUkszMzk5IHBsYXRmb3JtIChyazMzOTktZ3J1LWtldmlu
KSwgd2hlcmVhcyB0aGUKPiA+ID4gPiA+IGtlcm5lbCB2ZXJzaW9uIDYuMTIuMyB3b3JrcyBmaW5l
Lgo+ID4gPiA+ID4KPiA+ID4gPiA+IDYuMTMgY29uZmlndXJhdGlvbiBpcyBiYXNlZCBvbiB0aGUg
c2FtZSBvbmUgYXMgNi4xMiBhbmQgdGhlcmUgYXJlbid0Cj4gPiA+ID4gPiBhbnkgc2lnbmlmaWNh
bnQgUENJLXJlbGF0ZWQgZGlmZmVyZW5jZXMuCj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhlIG1lc3Nh
Z2VzIGZyb20gZG1lc2cgb24gNi4xMyBkb24ndCBzaG93IGFueSBQQ0ktcmVsYXRlZCBlcnJvcnMu
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gRG9lcyBzb21lYm9keSBrbm93IHdoYXQgaXMgZ29pbmcgb24/
Cj4gPiA+ID4KPiA+ID4gPiBzbyBJIGp1c3QgYm9vdGVkIGEgcmszMzk5LXB1bWEtaGFpa291IHdp
dGggYSBwY2ktbnZtZS1hZGFwdGVyIGluIHRoZQo+ID4gPiA+IHBjaWUgc2xvdC4gQW5kIEkgZ2V0
Ogo+ID4gPiA+Cj4gPiA+ID4gWyAgICAwLjAwMDAwMF0gQm9vdGluZyBMaW51eCBvbiBwaHlzaWNh
bCBDUFUgMHgwMDAwMDAwMDAwIFsweDQxMGZkMDM0XQo+ID4gPiA+IFsgICAgMC4wMDAwMDBdIExp
bnV4IHZlcnNpb24gNi4xMy4wLXJjMi0wMDEwMS1nMjYwYWU2MzczNGZmLWRpcnR5IChoc3R1ZWJu
ZXJAcGhpbCkgKGFhcmNoNjQtbGludXgtZ251LWdjYyAoRGViaWFuIDE0LjIuMC02KSAxNC4yLjAs
IEdOVSBsZCAoR05VIEJpbnV0aWxzIGZvciBEZWJpYW4pIDIuNDMuMSkgIzExMzQgU01QIFBSRUVN
UFQgVHVlIERlYyAxMCAyMTowNjozNCBDRVQgMjAyNAo+ID4gPiA+IC4uLgo+ID4gPiA+IFsgICAg
My40MjgxMTRdIHJvY2tjaGlwLXBjaWUgZjgwMDAwMDAucGNpZTogaG9zdCBicmlkZ2UgL3BjaWVA
ZjgwMDAwMDAgcmFuZ2VzOgo+ID4gPiA+IFsgICAgMy40MzU5NzhdIHJvY2tjaGlwLXBjaWUgZjgw
MDAwMDAucGNpZTogICAgICBNRU0gMHgwMGZhMDAwMDAwLi4weDAwZmJkZmZmZmYgLT4gMHgwMGZh
MDAwMDAwCj4gPiA+ID4gWyAgICAzLjQ0NTQ3OF0gcm9ja2NoaXAtcGNpZSBmODAwMDAwMC5wY2ll
OiAgICAgICBJTyAweDAwZmJlMDAwMDAuLjB4MDBmYmVmZmZmZiAtPiAweDAwZmJlMDAwMDAKPiA+
ID4gPiBbICAgIDMuNDU1Mjk4XSByb2NrY2hpcC1wY2llIGY4MDAwMDAwLnBjaWU6IHVzaW5nIERU
ICcvcGNpZUBmODAwMDAwMCcgZm9yICdlcCcgR1BJTyBsb29rdXAKPiA+ID4gPgo+ID4gPiA+IFNv
IHRoZXJlIHNlZW1zIHRvIGJlIG5vdCBzb21lIGdlbmVyYWwgZmFpbHVyZS4KPiA+ID4gPgo+ID4g
PiA+IERvZXMKPiA+ID4gPiAgICAgICAgICMgbHMgL3N5cy9kZXZpY2VzL3BsYXRmb3JtL2Y4MDAw
MDAwLnBjaWUKPiA+ID4gPiBsaXN0IHNvbWUgIndhaXRpbmdfZm9yX3N1cHBsaWVzIiBvciBzb21l
dGhpbmc/Cj4gPiA+Cj4gPiA+IHllcywgaW5kZWVkIHRoZXJlIGlzIHN1Y2ggYSBmaWxlIGluIHRo
ZXJlOgo+ID4gPgo+ID4gPiAjIyMgNi4xMy1yYzIKPiA+ID4gJCBscyAvc3lzL2RldmljZXMvcGxh
dGZvcm0vZjgwMDAwMDAucGNpZQo+ID4gPiBwb3dlcgo+ID4gPiBkcml2ZXJfb3ZlcnJpZGUKPiA+
ID4gbW9kYWxpYXMKPiA+ID4gb2Zfbm9kZQo+ID4gPiBzdWJzeXN0ZW0KPiA+ID4gc3VwcGxpZXI6
cGxhdGZvcm06ZmY3MjAwMDAuZ3Bpbwo+ID4gPiBzdXBwbGllcjpwbGF0Zm9ybTpmZjc3MDAwMC5z
eXNjb246cGNpZS1waHkKPiA+ID4gc3VwcGxpZXI6cGxhdGZvcm06ZmY3ODAwMDAuZ3Bpbwo+ID4g
PiBzdXBwbGllcjpwbGF0Zm9ybTpwaW5jdHJsCj4gPiA+IHN1cHBsaWVyOnBsYXRmb3JtOnJlZ3Vs
YXRvci1wcDMzMDAtd2lmaS1idAo+ID4gPiBzdXBwbGllcjpwbGF0Zm9ybTpyZWd1bGF0b3Itd2xh
bi1wZC1uCj4gPiA+IHVldmVudAo+ID4gPiB3YWl0aW5nX2Zvcl9zdXBwbGllcgo+ID4gPgo+ID4g
PiAkIGNhdCAvc3lzL2RldmljZXMvcGxhdGZvcm0vZjgwMDAwMDAucGNpZS93YWl0aW5nX2Zvcl9z
dXBwbGllcgo+ID4gPiAxCj4gPiA+Cj4gPiA+ICMjIyA2LjEyLjMKPiA+ID4gJCBscyAvc3lzL2Rl
dmljZXMvcGxhdGZvcm0vZjgwMDAwMDAucGNpZQo+ID4gPiBwY2kwMDAwOjAwCj4gPiA+IHBvd2Vy
Cj4gPiA+IGRyaXZlcgo+ID4gPiBkcml2ZXJfb3ZlcnJpZGUKPiA+ID4gbW9kYWxpYXMKPiA+ID4g
b2Zfbm9kZQo+ID4gPiBzdWJzeXN0ZW0KPiA+ID4gc3VwcGxpZXI6cGh5OnBoeS1mZjc3MDAwMC5z
eXNjb246cGNpZS1waHkuNQo+ID4gPiBzdXBwbGllcjpwaHk6cGh5LWZmNzcwMDAwLnN5c2Nvbjpw
Y2llLXBoeS42Cj4gPiA+IHN1cHBsaWVyOnBoeTpwaHktZmY3NzAwMDAuc3lzY29uOnBjaWUtcGh5
LjcKPiA+ID4gc3VwcGxpZXI6cGh5OnBoeS1mZjc3MDAwMC5zeXNjb246cGNpZS1waHkuOAo+ID4g
PiBzdXBwbGllcjpwbGF0Zm9ybTpmZjc3MDAwMC5zeXNjb246cGNpZS1waHkKPiA+ID4gc3VwcGxp
ZXI6cGxhdGZvcm06ZmY3ODAwMDAuZ3Bpbwo+ID4gPiBzdXBwbGllcjpwbGF0Zm9ybTpwaW5jdHJs
Cj4gPiA+IHN1cHBsaWVyOnBsYXRmb3JtOnBwMzMwMC13aWZpLWJ0Cj4gPiA+IHN1cHBsaWVyOnBs
YXRmb3JtOnBwOTAwLWFwCj4gPiA+IHN1cHBsaWVyOnBsYXRmb3JtOndsYW4tcGQtbgo+ID4gPiBz
dXBwbGllcjpyZWd1bGF0b3I6cmVndWxhdG9yLjE3Cj4gPiA+IHN1cHBsaWVyOnJlZ3VsYXRvcjpy
ZWd1bGF0b3IuMjMKPiA+ID4gc3VwcGxpZXI6cmVndWxhdG9yOnJlZ3VsYXRvci4yNQo+ID4gPiB1
ZXZlbnQKPiA+ID4KPiA+ID4gV2hhdCBkb2VzIHRoYXQgbWVhbj8KPiA+Cj4gPiB3YWl0aW5nX2Zv
cl9zdXBwbGllciBtZWFucyB0aGF0IHNvbWUgc3VwcGxpZXIgaGFzIG5vdCB5ZXQgcHJvYmVkCj4g
PiBhbmQgdGh1cyB0aGUgZHJpdmVyIGFsc28gY2Fubm90IHByb2JlIHlldC4KPiA+Cj4gPiBCdXQg
eW91ciA2LjEzLXJjMiBzdXBwbGllciBsaXN0IGRvZXMgbG9vayB3YXkgdG9vIHNob3J0LiBJbiBt
eSBib290IG9uCj4gPiByazMzOTktcHVtYS1oYWlrb3UgYWJvdmUsIEkgZ290Ogo+ID4KPiA+ICQg
bHMgL3N5cy9kZXZpY2VzL3BsYXRmb3JtL2Y4MDAwMDAwLnBjaWUKPiA+IGRyaXZlcgo+ID4gZHJp
dmVyX292ZXJyaWRlCj4gPiBtb2RhbGlhcwo+ID4gb2Zfbm9kZQo+ID4gcGNpMDAwMDowMAo+ID4g
cG93ZXIKPiA+IHN1YnN5c3RlbQo+ID4gc3VwcGxpZXI6cGh5OnBoeS1mZjc3MDAwMC5zeXNjb246
cGNpZS1waHkuMgo+ID4gc3VwcGxpZXI6cGh5OnBoeS1mZjc3MDAwMC5zeXNjb246cGNpZS1waHku
Mwo+ID4gc3VwcGxpZXI6cGh5OnBoeS1mZjc3MDAwMC5zeXNjb246cGNpZS1waHkuNAo+ID4gc3Vw
cGxpZXI6cGh5OnBoeS1mZjc3MDAwMC5zeXNjb246cGNpZS1waHkuNQo+ID4gc3VwcGxpZXI6cGxh
dGZvcm06ZmY3NzAwMDAuc3lzY29uOnBjaWUtcGh5Cj4gPiBzdXBwbGllcjpwbGF0Zm9ybTpmZjc5
MDAwMC5ncGlvCj4gPiBzdXBwbGllcjpwbGF0Zm9ybTpwaW5jdHJsCj4gPiBzdXBwbGllcjpwbGF0
Zm9ybTpyZWd1bGF0b3ItZGMtMTJ2Cj4gPiBzdXBwbGllcjpwbGF0Zm9ybTpyZWd1bGF0b3ItdmNj
M3YzLWJhc2Vib2FyZAo+ID4gc3VwcGxpZXI6cGxhdGZvcm06cmVndWxhdG9yLXZjY2EtMHY5Cj4g
PiBzdXBwbGllcjpwbGF0Zm9ybTpyZWd1bGF0b3ItdmNjYS0xdjgKPiA+IHN1cHBsaWVyOnJlZ3Vs
YXRvcjpyZWd1bGF0b3IuMTAKPiA+IHN1cHBsaWVyOnJlZ3VsYXRvcjpyZWd1bGF0b3IuMTEKPiA+
IHN1cHBsaWVyOnJlZ3VsYXRvcjpyZWd1bGF0b3IuMjkKPiA+IHN1cHBsaWVyOnJlZ3VsYXRvcjpy
ZWd1bGF0b3IuMwo+ID4gdWV2ZW50Cj4KPiBKdXN0IHRlc3RlZCA2LjEzLXJjMiB3aXRoIHRoZSBE
VEIgZnJvbSA2LjEyLjMgYW5kIGl0IHdvcmtzIGZpbmUuIFNvLAo+IGl0IGlzIGEgRFQgaXNzdWUu
Cj4gSSBzdXNwZWN0IHRoaXMgY29tbWl0IG1heSBiZSB0aGUgcm9vdCBjYXVzZToKPiA1Yzk2ZTYz
MzAxOTc4ZjQ2NTdjOTA4MmM1NWEwNjY3NjNjOGRiN2IxCj4gYXJtNjQ6IGR0czogcm9ja2NoaXA6
IGFkYXB0IHJlZ3VsYXRvciBub2RlbmFtZXMgdG8gcHJlZmVycmVkIGZvcm0KCihBZGRlZDogSm9o
YW4gSm9ua2VyKQoKVGhlIDYuMTMtcmMyIGtlcm5lbCB3aXRoIDVjOTZlNjMzMDE5NzhmNDY1N2M5
MDgyYzU1YTA2Njc2M2M4ZGI3YjEKcmV2ZXJ0ZWQgd29ya3MgZmluZSwgaSd2ZSBqdXN0IHRlc3Rl
ZCB0aGF0IHRvIGNvbmZpcm0uCgpSZWdhcmRzLAogVmljZW50ZS4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
