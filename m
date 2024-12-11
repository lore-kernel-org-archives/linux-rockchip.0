Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02BA7E77180
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 11:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMO0Ud6sOSNfhU1tQ8Vs83oXxZ0bErdt8M8EEvIVbNA=; b=AKVcjj7CKm5iG8
	H0ablr+XwTGubszrumjJ1XA4CRjK83Y8eYLCkbj0MS14jwD3O0If0RloZ2dbQPRxQZsKGE+PQLuRT
	xGAeaqWttgyOoi/DyHICm12UFH0gKccQUmLm0ixBYucCkzAdEmbtPWMYKdUvTWjc6hq/LhA+iyJrr
	b4Y2sftEzjjuFyikKgeGs1BAO4H1knylAst8dTWZ5mCZRx2/RW339nrJgquvAvX6ufzf7yzT140Z7
	Yv/aJi7W7VZ4l2TcNKZkkoISfgnTdEE1JBWRjc/tupQmUd3Tk7/nl7FPIJXAT5DoQUO1RdRCF4jv+
	i8qQVytcjJrNOIqWLLXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLKwN-0000000Ei2Z-1LXY;
	Wed, 11 Dec 2024 11:31:39 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLKrt-0000000Eh97-49Ch;
	Wed, 11 Dec 2024 11:27:03 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5d0f6fa6f8bso9358585a12.0;
        Wed, 11 Dec 2024 03:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733916420; x=1734521220; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9QTNgmzYB7WhakHI7BtpiVfr7WRGVdLXuQWsgOk30eY=;
        b=c8ifs8hgFo77f2SbOw2C8N1r2XhxApx3bFaYNyhl7bm/AVBJQkx/Nsw6haoM2ICxgV
         LTuJThYnPrF/Jp46cmXJZkX2Th8tbcHLabZyThylWoTj4P1QaqepBlU0ILUcpbCPCFsI
         uO/nYmFC4iMrObVjPHp/IejGdb1BgW7NiwkMNeoQY/vkMYjxza1ViU8+rKjPB3rdXu8Q
         rLlFiuB5otMZBcy0gV/6FXShIs8BlwPMTYl9GdWNb5gL0cqPhw0G1Z0RhzPSE7sogKTs
         1597Ez33dOArsl4TKji3rxE08/pPJ0R4zZ7Fum1HAjAnYbwuANri63wQu9olr4xSLsA3
         +I+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733916420; x=1734521220;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9QTNgmzYB7WhakHI7BtpiVfr7WRGVdLXuQWsgOk30eY=;
        b=SH6SO2W+PhsPWdP3+nEh+3w4X57dJaAFdG1gI7G55TuqkqV8pOsOStYjXIrt3oFPJa
         +HCP7HNmPf6pvKXvpFpe/BYG9TntxUHHDoyjWHr7iteneNPBpZFyPlCjQVntStTrs4F+
         G110CKKE2QGk3+gA+UxBOcR2IE0l2GvD3iPORDHFykfoEVGME9YWveqgGtOXLjMPPRh4
         9WwTb6RWG0OU0phv58hd+EH8i2GdaIT016ixdLnuNEtt0Z7rf6GlzWwNtzIzyKlTAsya
         V2g1jNzOM4pU1XuU09Exuf0KIRN2psPqazIiVIjIWe5U50OeLAWFG6X3aEKrxnrYwHv5
         SQ1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVNAybykeGNZQyofs+qf1WK+l/CMeglbIoM0ZCHsCk1l4VoXy6iRrYuDwkW4uqZsfAyhK65oPtsMmb2iIsomZFS@lists.infradead.org
X-Gm-Message-State: AOJu0YweDTDEad5tlMXSsw9CE0N+dkB22tYUJ5+LzR1y/zrr38jFy3i0
	WXEDv4qqVtwaOce98wiRWiEqU+ERRJvHGoVZsXpl44J2eg73UELDTJvPaD30w4f/ybXd+b6/jCM
	Yao2bVdyf51WehTI8vahrb1BYIouQ0GSt
X-Gm-Gg: ASbGncv9pzu5SlxStEiBOyfeinC4WpCCESK4uHOLSEeYIUFkDiDGMWjQGo6ty3l/OB+
	59lPH3WbCtnhIZpR5oEMuxZTLZd9jWuZGwKS3
X-Google-Smtp-Source: AGHT+IGm7Cc0UCKCXs6Zci5MhmEB6BM+vhudXV8nstxvwpWP8Qfr3RbFbc33+jNWjYOvcsdishshabpxzxK6uMTtoQo=
X-Received: by 2002:a05:6402:35c6:b0:5d1:2652:42ba with SMTP id
 4fb4d7f45d1cf-5d4330ab69dmr2432050a12.16.1733916419489; Wed, 11 Dec 2024
 03:26:59 -0800 (PST)
MIME-Version: 1.0
References: <e00f08d2351e82d6acd56271a68c7ed05b3362e8.1733901896.git.dsimic@manjaro.org>
In-Reply-To: <e00f08d2351e82d6acd56271a68c7ed05b3362e8.1733901896.git.dsimic@manjaro.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 11 Dec 2024 06:26:46 -0500
Message-ID: <CAMdYzYpnx=pHJ+oqshgfZFp=Mfqp3TcMmEForqJ+s9KuhkgnqA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Delete redundant RK3328 GMAC
 stability fixes
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_032702_027951_CA8F9B87 
X-CRM114-Status: GOOD (  17.94  )
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

T24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgMjoyOeKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgoKR29vZCBNb3JuaW5nLAoKPiBTaW5jZSB0aGUgY29tbWl0IDhh
NDY5ZWUzNTYwNiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgdHhwYmwgbm9kZSBmb3IKPiBS
SzMzOTkvUkszMzI4IiksIGhhdmluZyAic25wcyx0eHBibCIgcHJvcGVydGllcyBkZWZpbmVkIGFz
IEV0aGVybmV0IHN0YWJpbGl0eQo+IGZpeGVzIGluIFJLMzMyOC1iYXNlZCBib2FyZCBkdHMoaSkg
ZmlsZXMgaXMgcmVkdW5kYW50LCBiZWNhdXNlIHRoYXQgY29tbWl0Cj4gYWRkZWQgdGhlIHJlcXVp
cmVkIGZpeCB0byB0aGUgUkszMzI4IFNvQyBkdHNpLCBzbyBsZXQncyBkZWxldGUgdGhlbS4KPgo+
IEl0IGhhcyBiZWVuIGRldGVybWluZWQgdGhhdCB0aGUgRXRoZXJuZXQgc3RhYmlsaXR5IGZpeGVz
IG5vIGxvbmdlciByZXF1aXJlCj4gdGhlICJzbnBzLHJ4cGJsIiBhbmQgInNucHMsYWFsIiBwcm9w
ZXJ0aWVzLCBbMV0gb3V0IG9mIHdoaWNoIHRoZSBsYXR0ZXIgYWxzbwo+IGluZHVjZXMgcGVyZm9y
bWFuY2UgcGVuYWx0aWVzLCBzbyBsZXQncyBkZWxldGUgdGhlc2UgcHJvcGVydGllcyBmcm9tIHRo
ZQo+IHJlbGV2YW50IFJLMzMyOC1iYXNlZCBib2FyZCBkdHMoaSkgZmlsZXMuCgpZb3UgbWF5IHdh
bnQgdG8gaW5jbHVkZSBzbnBzLGZvcmNlX3RocmVzaF9kbWFfbW9kZSBpbiB0aGlzIGdyb3VwIHN1
Y2gKYXMgb24gdGhlIHJvY2s2NC4gSXQncyBldmVuIG1vcmUgbGltaXRpbmcgdGhhbiBzbnBzLGFh
bC4KCk90aGVyd2lzZSwKQWNrZWQtYnk6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+
CgpWZXJ5IFJlc3BlY3RmdWxseSwKUGV0ZXIgR2VpcwoKPgo+IFRoaXMgY29tbWl0IGNvbXBsZXRl
cyB0aGUgcmVtb3ZhbCBvZiB0aGVzZSByZWR1bmRhbnQgInNucHMsKiIgcHJvcGVydGllcwo+IHRo
YXQgd2FzIHN0YXJ0ZWQgYnkgYSBwYXRjaCBmcm9tIFBldGVyIEdlaXMuIFsyXQo+Cj4gWzFdIGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwL0NBTWRZellwajNkN1JxME8wUWpW
NHI2SEVmX2UwN1IwUUFoUFQyTmhlWmRRVjNUblE2Z0BtYWlsLmdtYWlsLmNvbS8KPiBbMl0gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyNDEyMTAwMTMwMTAuODEyNTct
Ny1wZ3dpcGVvdXRAZ21haWwuY29tLwo+Cj4gQ2M6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFp
bC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+
Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LWExLmR0cyAgICAg
ICAgICAgICAgICB8IDEgLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1u
YW5vcGktcjIuZHRzaSAgICAgICAgfCAxIC0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzMjgtb3JhbmdlcGktcjEtcGx1cy5kdHNpIHwgMSAtCj4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzI4LXJvY2stcGktZS5kdHMgICAgICAgICB8IDMgLS0tCj4gIDQgZmls
ZXMgY2hhbmdlZCwgNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1hMS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzMyOC1hMS5kdHMKPiBpbmRleCA4MjQxODNlNTE1ZGEuLjI0YmFhYTdmMWQ4YyAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1hMS5kdHMKPiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1hMS5kdHMKPiBAQCAtMTEw
LDcgKzExMCw2IEBAICZnbWFjMmlvIHsKPiAgICAgICAgIHBoeS1zdXBwbHkgPSA8JnZjY19pbz47
Cj4gICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICAgICAgICAgcGluY3RybC0w
ID0gPCZyZ21paW0xX3BpbnM+Owo+IC0gICAgICAgc25wcyxhYWw7Cj4gICAgICAgICBzbnBzLHBi
bCA9IDwweDQ+Owo+ICAgICAgICAgdHhfZGVsYXkgPSA8MHgyNj47Cj4gICAgICAgICByeF9kZWxh
eSA9IDwweDExPjsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzMjgtbmFub3BpLXIyLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMy
OC1uYW5vcGktcjIuZHRzaQo+IGluZGV4IGY5ZmFiMzVhZWQyMy4uZDVmMTI5ZTMwNGU1IDEwMDY0
NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LW5hbm9waS1yMi5k
dHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtbmFub3BpLXIy
LmR0c2kKPiBAQCAtMTQyLDcgKzE0Miw2IEBAICZnbWFjMmlvIHsKPiAgICAgICAgIHBoeS1zdXBw
bHkgPSA8JnZjY19pb18zMz47Cj4gICAgICAgICBwaW5jdHJsLTAgPSA8JnJnbWlpbTFfcGlucz47
Cj4gICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+IC0gICAgICAgc25wcyxhYWw7
Cj4KPiAgICAgICAgIG1kaW8gewo+ICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInNucHMs
ZHdtYWMtbWRpbyI7Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRzaQo+IGluZGV4IDE4MWVjNmRlMDAxOS4uOWVj
OTNmNjE0MzNlIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
MzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRzaQo+IEBAIC0xMTMsNyArMTEzLDYgQEAg
JmdtYWMyaW8gewo+ICAgICAgICAgcGh5LXN1cHBseSA9IDwmdmNjX2lvPjsKPiAgICAgICAgIHBp
bmN0cmwtMCA9IDwmcmdtaWltMV9waW5zPjsKPiAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Cj4gLSAgICAgICBzbnBzLGFhbDsKPgo+ICAgICAgICAgbWRpbyB7Cj4gICAgICAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAic25wcyxkd21hYy1tZGlvIjsKPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9jay1waS1lLmR0cyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvY2stcGktZS5kdHMKPiBpbmRleCAzZTA4ZTJm
ZDBhNzguLjU5ZGVhZDFjYzUwMyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzMyOC1yb2NrLXBpLWUuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzMjgtcm9jay1waS1lLmR0cwo+IEBAIC0xNTMsOSArMTUzLDYgQEAgJmdtYWMy
aW8gewo+ICAgICAgICAgcGh5LXN1cHBseSA9IDwmdmNjX2lvPjsKPiAgICAgICAgIHBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7Cj4gICAgICAgICBwaW5jdHJsLTAgPSA8JnJnbWlpbTFfcGlucz47
Cj4gLSAgICAgICBzbnBzLGFhbDsKPiAtICAgICAgIHNucHMscnhwYmwgPSA8MHg0PjsKPiAtICAg
ICAgIHNucHMsdHhwYmwgPSA8MHg0PjsKPiAgICAgICAgIHR4X2RlbGF5ID0gPDB4MjY+Owo+ICAg
ICAgICAgcnhfZGVsYXkgPSA8MHgxMT47Cj4gICAgICAgICBzdGF0dXMgPSAib2theSI7CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
