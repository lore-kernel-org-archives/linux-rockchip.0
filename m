Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CDF9C77B61
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Apr 2023 01:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AacmE9uCpu5rTmdju9NTaWFcsz9TeUvmNYPjeRHEbhQ=; b=WyLC+xMGX4oAWY
	khXMjKIb1ThD47EBgkLTtgEe62dyvnckHXcw4lMnc+6QYHpj8zpwdMcOzFssQuC/eOJKfkvhOUJmt
	y1q+9YPyirrDRkQCR57o/V5CMo4f9kbk251p6FykiN/TwkCJ3ZKXiwyN4E4ivi2trcAjYDnA5ouT4
	t9XT3Ikr6CZoy/n3zMgmL2CQ0fXdmus0dzTscJPZsiebGLXCbALMm7XDwbGKhHS1qBKZaawcVazYT
	Dn6jtirK+taGAZ+ikCwZnETTppy1QkReqqa0KbnK8Vv3zyth3ZbPyo7Q40vjjoCsn4nxjb5e99tQ+
	+aMHERMUeWbfLCZvyTmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1psZPc-00C3j2-0l;
	Sat, 29 Apr 2023 01:30:08 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1psZPY-00C3hd-0U;
	Sat, 29 Apr 2023 01:30:05 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-957dbae98b4so67933666b.1;
        Fri, 28 Apr 2023 18:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682731800; x=1685323800;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w/mrCSfSQUswJQokY5CKe1DjsNNVB/tC9yPgcDgjPVo=;
        b=Cp4k0SnPzmRX1iwhjYK30jpCdKDz57EBRJZZYFlktyGQWgBSy6nlL8hURnvSx4dEyB
         Q+N7Qi0fX/m2buLh2I0molv6vsrWhZC8/VHB50IcESuVgAEmKInA9EP0T7Ehfpu4FKjb
         0gKDGqUe6aXE6+ZxqRJ/ljudqP5f9xSCZ8yRsizxXrpiLp1R8czlkEFQcAQuB1V1hiKu
         wzvJg0gck0puRog6789hw7gK1KVM0AAYWPixExdBeLYBDuKqJgWRvjVbfAVt+XxZiChR
         67N1Q5nSB3FQKAg2iyEGpoZL9HGyeq7IrX1eIWOjzlj0qHqHtcJ6KdeXA772jcBCQ0zA
         d0Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682731800; x=1685323800;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w/mrCSfSQUswJQokY5CKe1DjsNNVB/tC9yPgcDgjPVo=;
        b=e3pk4AHaVOLOAI4KCPafsgNRloj46h9lnJ4H8veH3/SNo2J8qf31to9RFILlPdLdpl
         65+ybj5hr0KtdCWjdrLK/y/LgZ9TcnYxLq5ztk8ZIWc0GrgXHAQYb/OsHlwWJemIEHGY
         W/vbWx+kRmN8FBmqChq2OIpU9FNCV/SEr4GQBD6DWQ45Em57WZHltPphAqi6kYmZavOq
         H2UZx2UesbSwqQ1mGlDPYg4sBH9Ey2UHo8QbEMlq/nq7QA12z0wSv5hUcQiVJg2K/zKv
         ucwwuXVuukwN8QUaOOYufr7mTYfl2gvvY2zYVmRo+TSol9A+PljP9IGSUPMNVXNRAGvT
         MPoA==
X-Gm-Message-State: AC+VfDzowH9dVLoRfbp85CLcePxZOtMzuQDtiu6Vfci9JqApkP/iZXoy
	SCmtHlfmN5cIJ+hWgxamo3mfNmN0e5u50cV/S3E=
X-Google-Smtp-Source: ACHHUZ4tn3uoqQTzU663ftvRQvBpWuwX1A024mthR/ReUBQJwotPmbEgI8aqQv/HHmfQY9f/171eYQMnKj9G4RB+bT4=
X-Received: by 2002:a17:907:a40d:b0:94e:f969:fb3e with SMTP id
 sg13-20020a170907a40d00b0094ef969fb3emr6848366ejc.43.1682731799969; Fri, 28
 Apr 2023 18:29:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230428013738.30735-1-cnsztl@gmail.com> <20230428013738.30735-2-cnsztl@gmail.com>
 <32911b1c-7f32-7078-27e8-7b168d295993@linaro.org>
In-Reply-To: <32911b1c-7f32-7078-27e8-7b168d295993@linaro.org>
From: Tianling Shen <cnsztl@gmail.com>
Date: Sat, 29 Apr 2023 09:29:47 +0800
Message-ID: <CAOP2_TjXKk8KrD7Ur2pAGa-8pCMJcZjbw1opKYzFEfO4weJzhw@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Add Lunzn Fastrhino R66S
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jagan Teki <jagan@amarulasolutions.com>, Peter Geis <pgwipeout@gmail.com>, 
	Andy Yan <andyshrk@163.com>, Chris Morgan <macromorgan@hotmail.com>, 
	Brian Norris <briannorris@chromium.org>, Andrew Lunn <andrew@lunn.ch>, 
	Shawn Guo <shawnguo@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Maya Matuszczyk <maccraft123mc@gmail.com>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Vasily Khoruzhick <anarsoul@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230428_183004_232349_F7887EAB 
X-CRM114-Status: GOOD (  18.38  )
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

SGkgS3J6eXN6dG9mLAoKT24gRnJpLCBBcHIgMjgsIDIwMjMgYXQgOTozNOKAr1BNIEtyenlzenRv
ZiBLb3psb3dza2kKPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBP
biAyOC8wNC8yMDIzIDAzOjM3LCBUaWFubGluZyBTaGVuIHdyb3RlOgo+ID4gTHVuem4gRmFzdHJo
aW5vIFI2NlMgaXMgYSBoaWdoLXBlcmZvcm1hbmNlIG1pbmkgcm91dGVyLgo+ID4KPiA+IFNwZWNp
ZmljYXRpb246Cj4gPiAtIFJvY2tjaGlwIFJLMzU2OAo+ID4gLSAxLzJHQiBMUEREUjQgUkFNCj4g
PiAtIFNEIGNhcmQgc2xvdAo+ID4gLSBNLjIgQ29ubmVjdG9yCj4gPiAtIDJ4IFVTQiAzLjAgUG9y
dAo+ID4gLSAyeCAyNTAwIEJhc2UtVCAoUENJZSwgcjgxMjViKQo+ID4gLSAxMnYgREMgSmFjawo+
ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFRpYW5saW5nIFNoZW4gPGNuc3p0bEBnbWFpbC5jb20+Cj4g
PiAtLS0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAg
fCAgIDEgKwo+ID4gIC4uLi9kdHMvcm9ja2NoaXAvcmszNTY4LWZhc3RyaGluby1yNjZzLmR0cyAg
ICB8ICAyNyArCj4gPiAgLi4uL2R0cy9yb2NrY2hpcC9yazM1NjgtZmFzdHJoaW5vLXI2NnMuZHRz
aSAgIHwgNTA3ICsrKysrKysrKysrKysrKysrKwo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgNTM1IGlu
c2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjgtZmFzdHJoaW5vLXI2NnMuZHRzCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LWZhc3RyaGluby1yNjZzLmR0c2kK
PiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmls
ZSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+IGluZGV4IDJkNTg1
YmJiOGYzYS4uMTUwODlhNzg1NTVhIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9NYWtlZmlsZQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9NYWtlZmlsZQo+ID4gQEAgLTg1LDYgKzg1LDcgQEAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NI
SVApICs9IHJrMzU2Ni1ib3gtZGVtby5kdGIKPiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJ
UCkgKz0gcmszNTY2LWx1YmFuY2F0LTEuZHRiCj4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NI
SVApICs9IHJrMzU2OC1icGktcjItcHJvLmR0Ygo+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tD
SElQKSArPSByazM1NjgtZXZiMS12MTAuZHRiCj4gPiArZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NI
SVApICs9IHJrMzU2OC1mYXN0cmhpbm8tcjY2cy5kdGIKPiA+ICBkdGItJChDT05GSUdfQVJDSF9S
T0NLQ0hJUCkgKz0gcmszNTY4LWx1YmFuY2F0LTIuZHRiCj4gPiAgZHRiLSQoQ09ORklHX0FSQ0hf
Uk9DS0NISVApICs9IHJrMzU2OC1uYW5vcGktcjVjLmR0Ygo+ID4gIGR0Yi0kKENPTkZJR19BUkNI
X1JPQ0tDSElQKSArPSByazM1NjgtbmFub3BpLXI1cy5kdGIKPiA+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1mYXN0cmhpbm8tcjY2cy5kdHMgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1mYXN0cmhpbm8tcjY2cy5kdHMKPiA+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLmZjOWUxYmRhYjEyOAo+
ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1NjgtZmFzdHJoaW5vLXI2NnMuZHRzCj4gPiBAQCAtMCwwICsxLDI3IEBACj4gPiArLy8gU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIgT1IgTUlUCj4gPiArCj4gPiAr
I2luY2x1ZGUgInJrMzU2OC1mYXN0cmhpbm8tcjY2cy5kdHNpIgo+ID4gKwo+ID4gKy8gewo+ID4g
KyAgICAgbW9kZWwgPSAiTHVuem4gRmFzdFJoaW5vIFI2NlMiOwo+ID4gKyAgICAgY29tcGF0aWJs
ZSA9ICJsdW56bixmYXN0cmhpbm8tcjY2cyIsICJyb2NrY2hpcCxyazM1NjgiOwo+ID4gKwo+ID4g
KyAgICAgYWxpYXNlcyB7Cj4gPiArICAgICAgICAgICAgIG1tYzAgPSAmc2RtbWMwOwo+ID4gKyAg
ICAgfTsKPiA+ICt9Owo+ID4gKwo+ID4gKyZzZG1tYzAgewo+ID4gKyAgICAgbWF4LWZyZXF1ZW5j
eSA9IDwxNTAwMDAwMDA+Owo+ID4gKyAgICAgbm8tc2RpbzsKPiA+ICsgICAgIG5vLW1tYzsKPiA+
ICsgICAgIGJ1cy13aWR0aCA9IDw0PjsKPiA+ICsgICAgIGNhcC1tbWMtaGlnaHNwZWVkOwo+ID4g
KyAgICAgY2FwLXNkLWhpZ2hzcGVlZDsKPiA+ICsgICAgIGRpc2FibGUtd3A7Cj4gPiArICAgICB2
bW1jLXN1cHBseSA9IDwmdmNjM3YzX3NkPjsKPiA+ICsgICAgIHZxbW1jLXN1cHBseSA9IDwmdmNj
aW9fc2Q+Owo+ID4gKyAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ICsgICAgIHBp
bmN0cmwtMCA9IDwmc2RtbWMwX2J1czQgJnNkbW1jMF9jbGsgJnNkbW1jMF9jbWQgJnNkbW1jMF9k
ZXQ+Owo+ID4gKyAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4gPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtZmFzdHJoaW5vLXI2NnMuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LWZhc3RyaGluby1yNjZzLmR0c2kK
PiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLmE1ODU5MmIy
ZjEzYgo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjgtZmFzdHJoaW5vLXI2NnMuZHRzaQo+ID4gQEAgLTAsMCArMSw1MDcgQEAKPiA+
ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlciBPUiBNSVQKPiA+
ICsKPiA+ICsvZHRzLXYxLzsKPiA+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+
Cj4gPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2lucHV0Lmg+Cj4gPiArI2luY2x1ZGUg
PGR0LWJpbmRpbmdzL2xlZHMvY29tbW9uLmg+Cj4gPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Bp
bmN0cmwvcm9ja2NoaXAuaD4KPiA+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3Mvc29jL3JvY2tjaGlw
LHZvcDIuaD4KPiA+ICsjaW5jbHVkZSAicmszNTY4LmR0c2kiCj4gPiArCj4gPiArLyB7Cj4gPiAr
ICAgICBhbGlhc2VzIHsKPiA+ICsgICAgICAgICAgICAgbGVkLWJvb3QgPSAmc3RhdHVzX2xlZDsK
PiA+ICsgICAgICAgICAgICAgbGVkLWZhaWxzYWZlID0gJnN0YXR1c19sZWQ7Cj4gPiArICAgICAg
ICAgICAgIGxlZC1ydW5uaW5nID0gJnN0YXR1c19sZWQ7Cj4gPiArICAgICAgICAgICAgIGxlZC11
cGdyYWRlID0gJnN0YXR1c19sZWQ7Cj4KPiBXaHkgZG8geW91IG5lZWQgdGhlc2U/IFdoaWNoIHVw
c3RyZWFtIGtlcm5lbCBkcml2ZXIgcGFyc2VzIHRoZXNlPwoKT2ggc29ycnkgdGhlc2UgYWxpYXNl
cyBhcmUgdXNlZCBmb3IgT3BlbldydCBhbmQgSSBmb3Jnb3QgdG8gcmVtb3ZlIHRoZW0Kd2hlbiBz
dWJtaXR0aW5nIHBhdGNoZXMuIFdpbGwgc2VuZCB2MiBmb3IgaXQuCgpUaGFua3MsClRpYW5saW5n
LgoKPgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
