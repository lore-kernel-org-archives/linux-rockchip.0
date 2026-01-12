Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E1E3D25059
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 09:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9JCGPdWdQqH59AoikYgZn6lYS0FL+Xy84/ER6CBEqo=; b=Q6VBf1MdDcxTg6
	rKW0p2f16jk3fHEmkayLfZRlv9CMJ+3a02y50UbHt00M/EmzQqzNL+HhJaC1M1aIICphxf1t2NBCz
	8CYKYr3UjoOgdd1mi9h/w+uLn/kfw800yG7TCg1QWwuEBLa2pzMj+FaBTFU6PCzY2fiZgb/p/+opd
	057H3VlBzrKgvzPT4lo4FDKdMLUKYCNHC9iC3Ns13dFKoqzekDCm7LdjcA0cdY4Zjj2RAnnD15Umj
	J7/+yJ1eaQtwcfGqwdLbi0CGbWQzdvBl/DfnJ5pADHyYWH0noK4BlGAUBYeTVePg2y17z5nOnK9uS
	qeOjV4TZVqJhRll2ICuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDum-000000053NX-2rLn;
	Mon, 12 Jan 2026 09:08:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDuk-000000053MM-05d2
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 09:08:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 38DDF44312
	for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 09:08:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DB39C2BCAF
	for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 09:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768208919;
	bh=aNusfbvcvvIrZ1GK6+N/BWnHjCznHNoKX1GEoskKxrw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=rdBWZ5KpxcbS00ewOLmz6VAc+OOKmUqd4MYWGLtm00Io/3Yei+jlv+kNP9Q0vdsOb
	 edfSASkvbc/gWY8nmaY2Jj0OjaSNAlRYniK/ApsqCWGIoSm1rSwQNomse/Y8kK9PwY
	 9fK1LpyqJng2uyWvtJoHtzXpxMoPWdWryEAxO+Drt6FRu+LeNlD4omI+l+jga+Y98t
	 gSNiUppaEZd8ROLEV1T8mUS3jQ2JcldlKpm941SCK3wzEcc+AiTU+s4dybHV9IxsSb
	 av8ri27WpDQhLEcGNkVC6sL707k1MmpdjObys2j7sl7neUqYOKqqqs4wn637/vDV15
	 tBfj/lw8836yw==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-38316d0c26eso29798211fa.2
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 01:08:39 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWS81kkNqOF2UM7XTIBaex/4tK5IxI9qrD15p+nN4LEyKlPaS4hsxsFAGiTkrPc5+1Ry4vvH9FMZ8me5NwT5w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxdRGg8MJFbLzbQMPuVOSl0S/KIu2DpcdCMnH6PHPBK1DFDRuq9
	qum0NI/HocfYdfbRfRkepNgPxcm4BH3fIlGvHeDEfkQkDN/APHtYNDEUyl01fbrinzgIpG74tQs
	sF8bE+dKGRXZmtXMewFahdN2Xw20dV/uTQXHeWEfa7Q==
X-Google-Smtp-Source: AGHT+IGTR9k5RSHNIpBJL834Ww0X8J1ZdzRZ6Hp2uk9hnACvGJbrlxz/VASX4yp2KTPlt556o88PPVY7jr7CQVZ9CaA=
X-Received: by 2002:a2e:a590:0:b0:383:213c:fc61 with SMTP id
 38308e7fff4ca-383213cff5cmr24069241fa.31.1768208917628; Mon, 12 Jan 2026
 01:08:37 -0800 (PST)
MIME-Version: 1.0
References: <20260106090011.21603-1-bartosz.golaszewski@oss.qualcomm.com> <aWGSQYCXP4R08koQ@venus>
In-Reply-To: <aWGSQYCXP4R08koQ@venus>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Mon, 12 Jan 2026 10:08:25 +0100
X-Gmail-Original-Message-ID: <CAMRc=Mf0tRxRrh7tn5OaDn3a47N_qvUcjO=zqbTi-GhY-Y9hOg@mail.gmail.com>
X-Gm-Features: AZwV_QhDDYd3G5smy1ZRDQbejdmCu0WGBNa60Ja3hID1ca2J3AnWia5Ug7Yy3bU
Message-ID: <CAMRc=Mf0tRxRrh7tn5OaDn3a47N_qvUcjO=zqbTi-GhY-Y9hOg@mail.gmail.com>
Subject: Re: [PATCH] gpio: rockchip: mark the GPIO controller as sleeping
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, Linus Walleij <linusw@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_010842_091131_9523C9AA 
X-CRM114-Status: GOOD (  27.89  )
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

T24gU2F0LCBKYW4gMTAsIDIwMjYgYXQgMTI6NTXigK9BTSBTZWJhc3RpYW4gUmVpY2hlbAo8c2Vi
YXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIFR1ZSwg
SmFuIDA2LCAyMDI2IGF0IDEwOjAwOjExQU0gKzAxMDAsIEJhcnRvc3ogR29sYXN6ZXdza2kgd3Jv
dGU6Cj4gPiBUaGUgR1BJTyBjb250cm9sbGVyIGlzIGNvbmZpZ3VyZWQgYXMgbm9uLXNsZWVwaW5n
IGJ1dCBpdCB1c2VzIGdlbmVyaWMKPiA+IHBpbmN0cmwgaGVscGVycyB3aGljaCB1c2UgYSBtdXRl
eCBmb3Igc3luY2hyb25pemF0aW9uLgo+ID4KPiA+IFRoaXMgY2FuIGNhdXNlIHRoZSBmb2xsb3dp
bmcgbG9ja2RlcCBzcGxhdCB3aXRoIHNoYXJlZCBHUElPcyBlbmFibGVkIG9uCj4gPiBib2FyZHMg
d2hpY2ggaGF2ZSBtdWx0aXBsZSBkZXZpY2VzIHVzaW5nIHRoZSBzYW1lIEdQSU86Cj4gPgoKW3Nu
aXBdCgo+ID4KPiA+IEZpeGVzOiA5MzZlZTI2NzVlZWUgKCJncGlvL3JvY2tjaGlwOiBhZGQgZHJp
dmVyIGZvciByb2NrY2hpcCBncGlvIikKPiA+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4g
PiBSZXBvcnRlZC1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29t
Pgo+ID4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvZDAzNWZjMjktM2IwMy00
Y2Q2LWI4ZWMtMDAxZjkzNTQwYmM2QHNhbXN1bmcuY29tLwo+ID4gU2lnbmVkLW9mZi1ieTogQmFy
dG9zeiBHb2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pld3NraUBvc3MucXVhbGNvbW0uY29tPgo+
ID4gLS0tCj4gPiAgZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYyB8IDEgKwo+ID4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
aW8vZ3Bpby1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwo+ID4gaW5k
ZXggNDcxNzRlYjNiYTc2Li5iYWUyMDYxZjE1ZmMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dw
aW8vZ3Bpby1yb2NrY2hpcC5jCj4gPiArKysgYi9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5j
Cj4gPiBAQCAtNTkzLDYgKzU5Myw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZ3Bpb2xpYl9yZWdp
c3RlcihzdHJ1Y3Qgcm9ja2NoaXBfcGluX2JhbmsgKmJhbmspCj4gPiAgICAgICBnYy0+bmdwaW8g
PSBiYW5rLT5ucl9waW5zOwo+ID4gICAgICAgZ2MtPmxhYmVsID0gYmFuay0+bmFtZTsKPiA+ICAg
ICAgIGdjLT5wYXJlbnQgPSBiYW5rLT5kZXY7Cj4gPiArICAgICBnYy0+Y2FuX3NsZWVwID0gdHJ1
ZTsKPgo+IFRoaXMgbWVhbnMgYWxsIG9wZXJhdGlvbnMgYXJlIG1hcmtlZCBhcyBjYW5fc2xlZXAs
IGV2ZW4gdGhvdWdoCj4gcGluY3RybCBvcGVyYXRpb25zIGFyZSBvbmx5IHVzZWQgZm9yIHRoZSBk
aXJlY3Rpb24gc2V0dGluZy4KPiBJLmUuIHRoZSBjb21tb24gZ2V0L3NldCBvcGVyYXRpb25zIGFs
d2F5cyB3b3JrZWQgaW4gYXRvbWljIG1vZGUsCj4gYnV0IG5vdyBjb21wbGFpbi4gU2VlIGZvciBl
eGFtcGxlOgo+Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwMTA4LW1lZGlhLXN5
bm9wc3lzLWhkbWlyeC1maXgtZ3Bpby1jYW5zbGVlcC12MS0xLTM1NzA1MThkOGJhYkBrZXJuZWwu
b3JnLwo+Cj4gSXQncyBub3QgYSBiaWcgaXNzdWUgZm9yIHRoZSBoZG1pcnggZHJpdmVyIHNwZWNp
ZmljYWxseSwgYnV0IEkgd29uZGVyCj4gaG93IG1hbnkgbW9yZSAobGVzcyBvZnRlbiB0ZXN0ZWQp
IHJvY2tjaGlwIGRyaXZlcnMgdXNlIEdQSU9zIGZyb20gdGhlaXIKPiBJUlEgaGFuZGxlci4KPgo+
IENvbnNpZGVyaW5nIHNldHRpbmcgb3IgZ2V0dGluZyB0aGUgR1BJTyBmcm9tIGF0b21pYyBjb250
ZXh0IGlzIG11Y2gKPiBtb3JlIGNvbW1vbiB0aGFuIGNoYW5naW5nIHRoZSBkaXJlY3Rpb24gLSBp
cyB0aGVyZSBzb21lIHdheSB0bwo+IGRlc2NyaWJlIHRoZSBzbGVlcCBiZWhhdmlvciBpbiBhIG1v
cmUgc3BlY2lmaWMgd2F5IGluIHRoZSBHUElPCj4gY29udHJvbGxlcj8KPgoKTm8sIHRoZXJlJ3Mg
bm8gc3VjaCBzd2l0Y2ggYXQgdGhlIG1vbWVudC4gVGhpcyBpcyBiZWNhdXNlIHRoZXJlIGFyZQpw
YXRocyB0aGF0IHdlIGNhbiB0YWtlLCB3aGVyZSB3ZSAqZG8qIGVuZCB1cCBzZXR0aW5nIGRpcmVj
dGlvbiBmcm9tCmdwaW9kX3NldF92YWx1ZSgpLiBGb3IgaW5zdGFuY2U6CgpncGlvZF9zZXRfdmFs
dWUoKQogIGdwaW9kX3NldF92YWx1ZV9ub2NoZWNrKCkKICAgIGdwaW9fc2V0X29wZW5fZHJhaW5f
dmFsdWVfY29tbWl0KCkKICAgICAgZ3Bpb2NoaXBfZGlyZWN0aW9uX291dHB1dCgpCgpJJ20gYWZy
YWlkLCBmb3IgY29ycmVjdG5lc3MsIGl0IGhhcyB0byBiZSBlaXRoZXIgc2xlZXBpbmcsIG9yIG5v
dC4gSQp3b3VsZCBsb3ZlIC0gYXQgc29tZSBwb2ludCAtIHRvIG1ha2UgcGluY3RybCBtb3N0bHkg
bG9ja2xlc3Mgd2l0aApTUkNVLCBsaWtlIHdlIGRpZCB3aXRoIEdQSU8uIFRoYXQgd291bGQgc29s
dmUgdGhpcyBpc3N1ZSBjb3JyZWN0bHkuCkJ1dCB1bnRpbCB0aGVuLCBJJ20gYWZyYWlkIHdlIG5l
ZWQgdG8ga2VlcCBhIGNoaXAtZ2xvYmFsIHN3aXRjaCBmb3IKc2xlZXBpbmcuCgpCYXJ0b3N6Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
