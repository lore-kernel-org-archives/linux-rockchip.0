Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3DDBC77B73
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 09:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tcAhfa7xDFi8cwVGx/9SKZEX69Czv2twChy+fbB64PE=; b=01QpORKBwL0vpH
	K28wFZajVUcd2PF1yd7620yLmZJOBOsJOzHXdiMlYyOYiHfCE6KU5Wegjkto6YQAbI5FVR3cLpNcZ
	CyCDKmhp8My2yAyAaQX/m37Y/XsC0pfej8JdVRVxDaRhephjoSO2NNhaCbzeUTJkz4KS4AvD6Wmko
	o/G+2HdpIU3TZiX9WFQxPnn9HzgxNZiCA0mBGAZFb52bkZybx2/DwR557/Nn9zwhYVYkIBciw4KgQ
	mq2FJLHqqkHWJJr16ZQoslD/a/Xz7UDS/Tmv8lKEzw5MmN+LEgLRmyhGmQNvcyKe625Q46ECWTWT1
	O8ip0fFzhDOZFed7RpWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmiA-000po3-0l;
	Tue, 02 May 2023 09:54:18 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmi7-000pnC-0j;
	Tue, 02 May 2023 09:54:16 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-50bc3a2d333so3760709a12.0;
        Tue, 02 May 2023 02:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683021251; x=1685613251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fi6J4KktggFcxnTEbWmu1afVM0xa1hdx8FHvCQmU9C8=;
        b=aENdbdjcKslaPIybJGalRlEvwHOgbxCv3xJtL1zdiu0a4QAcNWsiypx6kZK+xoEgew
         Q/XeA0xdxsX5wDuy9IEXE3Na6+DisgJ/K1ixcD+g+Mq2b6t39czXtlksk2BKk67DI8kx
         OS1/Z2u2buAPoOD5oRW1iSesRc854xFkV5VcXP0n/D05BYBHJBiJq5+PYPx/cXAUlQnW
         w2RBaLZHbz2+rp53RxOZhUNu0FGxzXeQ/i98gZwOIuYH9hkj7TsQKA7frmO0tA1/+YH0
         3A5/jh3liPiucZW4YWAkRYnKtFOf0deXxaja6mwfBcv/SFi2UFcgT1ezaklewy0kzXNH
         d8Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683021251; x=1685613251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fi6J4KktggFcxnTEbWmu1afVM0xa1hdx8FHvCQmU9C8=;
        b=dVyW90hkDe4Scochv2fzGhs3iAqpGL3azGu/O9vEpdHyMv1p1032dTHkR7XdrVqYQw
         IFTHW9/wyTsFvdbYwNUz1SquBaXmNZkm4aXWSGhETIu37U/8nAevBKocvTU8a/+KrpaL
         nOrUa3vh/nMrLdOQYmXFsA9iG8JIJn3OAYaqksE6I/214/R+yiEB8bBYsnAzHewPmAoN
         BTS8EbjVTLfvhxT4NSq6ppClX+muLpuCe9khnhopQ00KBGhJz+gxhn/sEfetlAVJqJbr
         BVg13XBC7cjLp4luoWh2pq8NpKoNHE+ny7gA7UBziVzlvOSIYdqNXgND/e2c2axLzG2h
         hBtA==
X-Gm-Message-State: AC+VfDzECUK0QpeYmmJwquQo0doLjR6eJmW86eyuON89WKLUiEzBLrG4
	jHGUECE6l+YCk8wD41JkpssDom1nIVMx5dnNx2s=
X-Google-Smtp-Source: ACHHUZ7svlRvA55nkpdE794hBgL518IElYm2XPpx/QO5NG5LAo06fq1XPXcimfK5puW6XORWHdgIbu0atovrR1HJ4mg=
X-Received: by 2002:aa7:dc14:0:b0:506:bc26:d6a9 with SMTP id
 b20-20020aa7dc14000000b00506bc26d6a9mr7941344edu.8.1683021250531; Tue, 02 May
 2023 02:54:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230428013738.30735-1-cnsztl@gmail.com> <20230428013738.30735-2-cnsztl@gmail.com>
 <5782501.VdNmn5OnKV@diego> <4763863.6tgchFWduM@diego>
In-Reply-To: <4763863.6tgchFWduM@diego>
From: Tianling Shen <cnsztl@gmail.com>
Date: Tue, 2 May 2023 17:53:58 +0800
Message-ID: <CAOP2_TgrPwvkXayyWkb5H-+X-Nr85G65YoAfs4_+zUfK=_+VHA@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Add Lunzn Fastrhino R66S
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jagan Teki <jagan@amarulasolutions.com>, 
	Peter Geis <pgwipeout@gmail.com>, Andy Yan <andyshrk@163.com>, 
	Chris Morgan <macromorgan@hotmail.com>, Brian Norris <briannorris@chromium.org>, 
	Andrew Lunn <andrew@lunn.ch>, Shawn Guo <shawnguo@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Maya Matuszczyk <maccraft123mc@gmail.com>, Michael Riesch <michael.riesch@wolfvision.net>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Vasily Khoruzhick <anarsoul@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_025415_284698_D37793C7 
X-CRM114-Status: GOOD (  23.24  )
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

SGkgSGVpa28sCgpPbiBUdWUsIE1heSAyLCAyMDIzIGF0IDU6MzDigK9QTSBIZWlrbyBTdMO8Ym5l
ciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPgo+IEFtIERpZW5zdGFnLCAyLiBNYWkgMjAyMywg
MTE6Mjg6MjIgQ0VTVCBzY2hyaWViIEhlaWtvIFN0w7xibmVyOgo+ID4gSGksCj4gPgo+ID4gQW0g
RnJlaXRhZywgMjguIEFwcmlsIDIwMjMsIDAzOjM3OjM3IENFU1Qgc2NocmllYiBUaWFubGluZyBT
aGVuOgo+ID4gPiBMdW56biBGYXN0cmhpbm8gUjY2UyBpcyBhIGhpZ2gtcGVyZm9ybWFuY2UgbWlu
aSByb3V0ZXIuCj4gPiA+Cj4gPiA+IFNwZWNpZmljYXRpb246Cj4gPiA+IC0gUm9ja2NoaXAgUksz
NTY4Cj4gPiA+IC0gMS8yR0IgTFBERFI0IFJBTQo+ID4gPiAtIFNEIGNhcmQgc2xvdAo+ID4gPiAt
IE0uMiBDb25uZWN0b3IKPiA+ID4gLSAyeCBVU0IgMy4wIFBvcnQKPiA+ID4gLSAyeCAyNTAwIEJh
c2UtVCAoUENJZSwgcjgxMjViKQo+ID4gPiAtIDEydiBEQyBKYWNrCj4gPiA+Cj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IFRpYW5saW5nIFNoZW4gPGNuc3p0bEBnbWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4g
PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgIHwgICAxICsK
PiA+ID4gIC4uLi9kdHMvcm9ja2NoaXAvcmszNTY4LWZhc3RyaGluby1yNjZzLmR0cyAgICB8ICAy
NyArCj4gPiA+ICAuLi4vZHRzL3JvY2tjaGlwL3JrMzU2OC1mYXN0cmhpbm8tcjY2cy5kdHNpICAg
fCA1MDcgKysrKysrKysrKysrKysrKysrCj4gPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDUzNSBpbnNl
cnRpb25zKCspCj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjgtZmFzdHJoaW5vLXI2NnMuZHRzCj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtZmFzdHJoaW5vLXI2NnMuZHRz
aQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9N
YWtlZmlsZSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+ID4gaW5k
ZXggMmQ1ODViYmI4ZjNhLi4xNTA4OWE3ODU1NWEgMTAwNjQ0Cj4gPiA+IC0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+ID4gPiBAQCAtODUsNiArODUsNyBAQCBkdGItJChDT05G
SUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY2LWJveC1kZW1vLmR0Ygo+ID4gPiAgZHRiLSQoQ09O
RklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU2Ni1sdWJhbmNhdC0xLmR0Ygo+ID4gPiAgZHRiLSQo
Q09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU2OC1icGktcjItcHJvLmR0Ygo+ID4gPiAgZHRi
LSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU2OC1ldmIxLXYxMC5kdGIKPiA+ID4gK2R0
Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1NjgtZmFzdHJoaW5vLXI2NnMuZHRiCj4g
PiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LWx1YmFuY2F0LTIuZHRi
Cj4gPiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LW5hbm9waS1yNWMu
ZHRiCj4gPiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LW5hbm9waS1y
NXMuZHRiCj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU2OC1mYXN0cmhpbm8tcjY2cy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU2OC1mYXN0cmhpbm8tcjY2cy5kdHMKPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+ID4g
aW5kZXggMDAwMDAwMDAwMDAwLi5mYzllMWJkYWIxMjgKPiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4g
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1mYXN0cmhpbm8tcjY2
cy5kdHMKPiA+ID4gQEAgLTAsMCArMSwyNyBAQAo+ID4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIgT1IgTUlUCj4gPiA+ICsKPiA+ID4gKyNpbmNsdWRlICJy
azM1NjgtZmFzdHJoaW5vLXI2NnMuZHRzaSIKPiA+ID4gKwo+ID4gPiArLyB7Cj4gPiA+ICsgICBt
b2RlbCA9ICJMdW56biBGYXN0Umhpbm8gUjY2UyI7Cj4gPiA+ICsgICBjb21wYXRpYmxlID0gImx1
bnpuLGZhc3RyaGluby1yNjZzIiwgInJvY2tjaGlwLHJrMzU2OCI7Cj4gPiA+ICsKPiA+ID4gKyAg
IGFsaWFzZXMgewo+ID4gPiArICAgICAgICAgICBtbWMwID0gJnNkbW1jMDsKPiA+ID4gKyAgIH07
Cj4gPiA+ICt9Owo+ID4gPiArCj4gPiA+ICsmc2RtbWMwIHsKPiA+Cj4gPiB0aGF0IHdob2xlIGVs
ZW1lbnQgc2VlbXMgdG8gYmUgZHVwbGljYXRlZCBmcm9tIHJrMzU2OC1mYXN0cmhpbm8tcjY2cy5k
dHNpPwo+ID4gSSBkb24ndCB0aGluayB3ZSBuZWVkIHRvIGRlY2xhcmUgdGhhdCB0d2ljZS4gSWYg
c29tZXRoaW5nIHJlYWxseSBjaGFuZ2VzLAo+ID4gcGxlYXNlIG9ubHkgZGVjbGFyZSB0aGUgbmV3
IHByb3BlcnRpZXMgd2hlbiBnb2luZyBmcm9tIGR0c2kgdG8gZHRzLgo+Cj4gTG9va2luZyBhdCBw
YXRjaDMgSSBzZWUgdGhlIGV4cGxhbmF0aW9uIDotKSAuCj4KPiBUaGUgYmFzZSBkdHNpIHNob3Vs
ZCBub3QgY29udGFpbiB0aGUgJnNkbW1jMCBub2RlLCBhbmQgaXQgc2hvdWxkCj4gb25seSBiZSBp
bmNsdWRlZCBpbiB0aGUgcmszNTY4LWZhc3RyaGluby1yNjZzLmR0cywgcmlnaHQ/Cj4KClllcywg
bmljZSBjYXRjaCEKCkFuZCBJIGZvdW5kIGFub3RoZXIgZXJyb3IgaW4gdGhlIFI2OFMgZHRzIGZp
bGUgKGdtYWMgcGNmZyBwdWxsIHR5cGUpLgpVbmZvcnR1bmF0ZWx5IEkgZG9uJ3QgaGF2ZSB0aGlz
IGJvYXJkIHJpZ2h0IG5vdywgYW5kIEknbSBzdGlsbCB3YWl0aW5nCmZvciB0aGUgdGVzdCByZXN1
bHQgZnJvbSBteSBmcmllbmQuIFN1cHBvc2Ugc2VuZGluZyB2MiBpbiB0aGUgbmV4dCBmZXcKZGF5
cy4KClRoYW5rcywKVGlhbmxpbmcuCgo+Cj4gSGVpa28KPgo+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
