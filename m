Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA38CE77180
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 11:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDlmUDg1c0C96xEGjbaF4JVsK7H87zKDVhpt4o6iy7o=; b=txJgSBSM0cMnyQ
	LXod0lvNrfU0WX8JpWT34OTPwzl5ePB9A/SOsLzjiq/ETBuAAVcB9+eMfOoA2TCFyo/oX8HP2Y0El
	OtZdbXhN0VUzqkx9r6AINcehK7Szwcm2zo/XRXoNEiTgugESusHbvawH5s5UCWhSBWJIhxrE1XKZ+
	mU8me8OX/pJ8WzSj+gWjvsjXrgbdwuKyui6Noy9ZANE0d6+xt10+YhdaLbI5Lx2pf9OHpDIBueR4A
	7nZlVVpjjW91G/7FngvOJqiVtjWkd28cko2WOZAudWBv5qSAvDc014BFa16jGN7ItNzDIcOZL75EQ
	7gv/9Ri6jiigzLMK8h1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKyRb-0000000BJil-2l8D;
	Tue, 10 Dec 2024 11:30:23 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKyQX-0000000BJaX-3cm1;
	Tue, 10 Dec 2024 11:29:18 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5ceb03aadb1so7150807a12.0;
        Tue, 10 Dec 2024 03:29:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733830156; x=1734434956; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vsa+PCKL3nkjdlqJseBSn+MXW/M4bMK4clgKtZHb1eI=;
        b=KiCvvdxzY5tUWmi9m7553vRay80bZIda9Ng+QFLZMm3v90z4d/1NhkzLmpi5Q1gcC4
         /275dbxkqmWK8KeQOsB9dt8B+UYE+W05sn9bmE9Bq83dO7jAaOxyshNTnY07wp/0vXAW
         fN6xDm8QFJCIsVw0mY0Ag6ufba2vJxlQTcq1faJffrvrvwFpJXUptfNXziQFtYtBIV0T
         jI9jz1g/d/iwJA+EyJiZysxheBv4GZz0PJ/A6xqjtXYP5TNeOCxLL5Zk4v+x6Y4jPRg8
         T0QPKfGl5o56H9aDf2d0gK8KquNB/KiWycU2sGSBujRypdhuFe0AioAHoc77IY6TOUlv
         73dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733830156; x=1734434956;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vsa+PCKL3nkjdlqJseBSn+MXW/M4bMK4clgKtZHb1eI=;
        b=D5sk2SohOjbxNJigY0XkjrSBdEoOR9pR++Vr+ZBPXobEA4FDyUthPKGfp8qokbSs2Z
         KXDVkvjPxT8OZttT9pQjRlaTRv65vutK+e13GpHqWs7vS8VVE3Q85Lprs6YFq0Kk9ncy
         1/GCHEGpoDREjmiuxyuFRKstlucTPu6ta/oNyYYWsuCvFxgyB0OghGtkNQl8pAKzyrCg
         ScaVgBXPxifsxI0yNlL9+xcYoUDKYSV/DQVKufxhDmhVbg61FvaaWbMEh0FKpThX2CBJ
         NRBAwz/yH8GJkpR6nS0+qXganxRsE5cjBS4RAmnTOkmhChQcgsG49JfI7X52o2ykOPMD
         +LSw==
X-Forwarded-Encrypted: i=1; AJvYcCVMdHnWH075U4dH3cbQtCvi028xAT4S8wE8f+gzq62/YeTf8wz6Xe1jViePPozPKHTF5OllAMv75Z+QU+rUyoB+@lists.infradead.org, AJvYcCWStlOOH3qsffYmbU1AKkhmGJDF1mbzhlpT8zBoByPbAWK7fgRoBxBsLzMBp6ryiAeUqQOdpY5XPKCys/DbQow=@lists.infradead.org
X-Gm-Message-State: AOJu0YwyG8g5CF2Nl9ih9B9hPVKMzsUAhrGANfsE/oorf4Il05LVEA2q
	s7uzFqb3OE6kzwfC1QG0LY7R02Kh4HOfq3N+vmFPqeApLa09alH4X4U0JJhnA346ii559P1q2Qa
	Hnh0rv2K3o7jHPFMpa8MwJlFfIA8=
X-Gm-Gg: ASbGncuTi+Gh/I1+P6rRorSpYYV4M4kXzIwUm/pq4h0yeXZcVKfOm3CZWwBMBcuR+ka
	VD9OSXIyhcl2nl3H3zlh1AB+xyYwJVjZ/fnWw
X-Google-Smtp-Source: AGHT+IFH5n+zWAxeaP6Ebg2yPGAGyKrxuqKNK29gHMryFKRfiM7VSwvTxu54I6XWT3mw6cto3WCv6aezpiIGED9xMrI=
X-Received: by 2002:a05:6402:210f:b0:5d0:b60a:2ff6 with SMTP id
 4fb4d7f45d1cf-5d418612cffmr5077206a12.22.1733830155765; Tue, 10 Dec 2024
 03:29:15 -0800 (PST)
MIME-Version: 1.0
References: <20241210013010.81257-1-pgwipeout@gmail.com> <20241210013010.81257-7-pgwipeout@gmail.com>
 <2b68c2dd3618e5904a4eac1ec87d29a7@manjaro.org>
In-Reply-To: <2b68c2dd3618e5904a4eac1ec87d29a7@manjaro.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 10 Dec 2024 06:29:02 -0500
Message-ID: <CAMdYzYpj3d7Rq0O0QjV4r6HEf_e07R0QAhPT2NheZdQV3TnQ6g@mail.gmail.com>
Subject: Re: [PATCH 6/6] arm64: dts: rockchip: Remove address aligned beats
 from rk3328-roc
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>, 
	Diederik de Haas <didi.debian@cknow.org>, Johan Jonker <jbx6244@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_032917_902775_C66C96C9 
X-CRM114-Status: GOOD (  28.42  )
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

T24gVHVlLCBEZWMgMTAsIDIwMjQgYXQgNTo0NeKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIFBldGVyLAo+Cj4gVGhhbmtzIGZvciB0aGUgcGF0
Y2guICBQbGVhc2UsIHNlZSBzb21lIGNvbW1lbnRzIGJlbG93Lgo+Cj4gT24gMjAyNC0xMi0xMCAw
MjozMCwgUGV0ZXIgR2VpcyB3cm90ZToKPiA+IFNpbmNlIGNvbW1pdCA4YTQ2OWVlMzU2MDYgKCJh
cm02NDogZHRzOiByb2NrY2hpcDogQWRkIHR4cGJsIG5vZGUgZm9yCj4gPiBSSzMzOTkvUkszMzI4
IiksIHRoZSBzbnBzLGFhbCwgc25wcyx0eHBibCwgYW5kIHNucHMscnhwYmwgbm9kZXMgaGF2ZQo+
ID4gYmVlbiB1bm5lY2Vzc2FyeSBpbiB0aGUgc2VwYXJhdGUgZGV2aWNlIHRyZWVzLiBUaGVyZSBp
cyBhbHNvIGEKPiA+IHBlcmZvcm1hbmNlIGxvc3MgdG8gdXNpbmcgc25wcyxhYWwuIFJlbW92ZSB0
aGVzZSBmcm9tIHRoZSByazMzMjgtcm9jCj4gPiBkZXZpY2UgdHJlZS4KPiA+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPgo+ID4KPiA+IC0tLQo+ID4K
PiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2MuZHRzaSB8IDMgLS0t
Cj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvYy5kdHNpCj4gPiBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvYy5kdHNpCj4gPiBpbmRleCA2OTg0Mzg3
ZmY4YjMuLjBkNDc2Y2MyMTQ0ZCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzI4LXJvYy5kdHNpCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzMyOC1yb2MuZHRzaQo+ID4gQEAgLTE1NSwxMiArMTU1LDkgQEAgJmdtYWMyaW8g
ewo+ID4gICAgICAgcGh5LW1vZGUgPSAicmdtaWkiOwo+ID4gICAgICAgcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKPiA+ICAgICAgIHBpbmN0cmwtMCA9IDwmcmdtaWltMV9waW5zPjsKPiA+IC0g
ICAgIHNucHMsYWFsOwo+Cj4gSHVoLCBJIHNlZSB0aGF0IHF1aXRlIGEgZmV3IFJLMzMyOCBib2Fy
ZCBkdHMgZmlsZXMgc3BlY2lmeQo+IHRoZSBzbnBzLGFhbCBub2RlLiAgSSB3b25kZXIgd2FzIGl0
IGEgImNhcmdvIGN1bHQiIGFwcHJvYWNoCj4gYXQgcGxheSwgOikgb3Igd2FzIHRoZXJlIHNvbWUg
cmVhbCBuZWVkIGZvciBpdD8KPgo+IEFjdHVhbGx5LCBJIHNlZSBub3cgdGhhdCB5b3UgYWRkZWQg
c25wcyxhYWwgdG8gcmszMzI4LXJvYy0KPiBjYy5kdHMgaW4gdGhlIGNvbW1pdCAzOTNmMzg3NWMz
ODUgKCJhcm02NDogZHRzOiByb2NrY2hpcDoKPiBpbXByb3ZlIHJrMzMyOC1yb2MtY2MgcmdtaWkg
cGVyZm9ybWFuY2UuIiksIHNvIEkgZ3Vlc3MgdGhhdAo+IHlvdXIgZnVydGhlciByZXNlYXJjaCBh
bmQgdGVzdGluZyBzaG93ZWQgdGhhdCBpdCBhY3R1YWxseQo+IGlzbid0IG5lZWRlZCBmb3IgRXRo
ZXJuZXQgc3RhYmlsaXR5Pwo+Cj4gPiAgICAgICBzbnBzLHJlc2V0LWdwaW8gPSA8JmdwaW8xIFJL
X1BDMiBHUElPX0FDVElWRV9MT1c+Owo+ID4gICAgICAgc25wcyxyZXNldC1hY3RpdmUtbG93Owo+
ID4gICAgICAgc25wcyxyZXNldC1kZWxheXMtdXMgPSA8MCAxMDAwMCA1MDAwMD47Cj4gPiAtICAg
ICBzbnBzLHJ4cGJsID0gPDB4ND47Cj4gPiAtICAgICBzbnBzLHR4cGJsID0gPDB4ND47Cj4KPiBV
bmxlc3MgSSdtIG1pc3Npbmcgc29tZXRoaW5nLCB0aGUgY29tbWl0IDhhNDY5ZWUzNTYwNiAoImFy
bTY0Ogo+IGR0czogcm9ja2NoaXA6IEFkZCB0eHBibCBub2RlIGZvciBSSzMzOTkvUkszMzI4Iikg
ZG9lc24ndCBhZGQKPiB0aGUgc25wcyxyeHBibCBub2RlIHRvIHRoZSBSSzMzMjggU29DIGR0c2ks
IGFuZCB0aGUgcmVzcGVjdGl2ZQo+IGRyaXZlciBkb2VzIG5vdGhpbmcgYWJvdXQgaXQgd2hlbiB0
aGUgc25wcyx0eHBibCBub2RlIGlzIGZvdW5kLgo+Cj4gVGhvdWdoLCBJIHNlZSB0aGF0IHJrMzMy
OC1yb2NrLXBpLWUuZHRzIGlzIHRoZSBvbmx5IG90aGVyCj4gUkszMzI4IGJvYXJkIGR0cyBmaWxl
IHRoYXQgc3BlY2lmaWVzIHRoZSBzbnBzLHJ4cGJsIG5vZGUsIHNvCj4gaXQgc2VlbXMgdGhhdCBy
ZW1vdmluZyB0aGUgc25wcyxyeHBibCBub2RlIGhlcmUgc2hvdWxkIGJlIHNhZmUsCj4gZXNwZWNp
YWxseSBiZWNhdXNlIGl0IHdhcyB5b3Ugd2hvIGFkZGVkIGl0IGluIHRoZSBzYW1lIGNvbW1pdAo+
IG1lbnRpb25lZCBhYm92ZS4gIElmIHRoZXJlIHdlcmUgc29tZSBTb0MtbGV2ZWwgaXNzdWVzLCBh
bGwKPiBSSzMzMjggYm9hcmRzIHdvdWxkJ3ZlIG5lZWRlZCBpdC4KCkdvb2QgTW9ybmluZywKCllv
dSdsbCBub3RpY2UgdGhlIGF1dGhvciBvZiB0aGF0IHBhdGNoIHdhcyBtZS4gU2V0dGluZyBhYWws
IHR4cGJsLCBhbmQKcnhwYmwgd2FzIHRoZSBvcmlnaW5hbCBmaXggSSBjYW1lIHVwIHdpdGggZm9y
IHRoZSByazMzMjgsIHdoaWNoIEkKYXBwbGllZCB0byB0aGUgb25seSBib2FyZCBJIGhhZC4gU29t
ZW9uZSBlbHNlIGxhdGVyIG9uIGlzb2xhdGVkIGl0CnNwZWNpZmljYWxseSBpc29sYXRlZCBpdCB0
byBqdXN0IHRoZSB0eHBibCBhbmQgYXBwbGllZCBpdCB0byBib3RoIHRoZQpyazMzMjggYW5kIHJr
MzM5OSBkaXJlY3RseS4KClRoaXMgd2FzIGp1c3Qgc29tZXRoaW5nIHRoYXQgd2FzIGxlZnQgaGFu
Z2luZyBhZnRlciB0aGF0IHJlc3VsdC4KCkxvb2tpbmcgYXQgaG93IHJrMzU2eCB3YXMgZG9uZSwg
SSBzdXNwZWN0IHRoZXJlJ3MgYW4gZXZlbiBtb3JlIGVsZWdhbnQKc29sdXRpb24uIEhvd2V2ZXIg
SSBkb24ndCBoYXZlIHRoZSBkZWVwIGxldmVsIGtub3dsZWRnZSBub3IKZG9jdW1lbnRhdGlvbiB0
byBpbXBsZW1lbnQgaXQuCgpWZXJ5IFJlc3BlY3RmdWxseSwKUGV0ZXIgR2Vpcwo+Cj4gPiAgICAg
ICB0eF9kZWxheSA9IDwweDI0PjsKPiA+ICAgICAgIHJ4X2RlbGF5ID0gPDB4MTg+Owo+ID4gICAg
ICAgc3RhdHVzID0gIm9rYXkiOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
