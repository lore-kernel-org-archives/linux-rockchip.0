Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C5CDEB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 11:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=twqDZACGq2RNQUMub6D2Gct+8rysfIR7QteEquRSHVc=; b=FJTDa13XdiZO6S
	xMSuivAzZ+mAx1d4gdNZC8nMtxvsiaM66P5zfC5AVtuyBKlDqUhslpkNb7D+54MJzYGfLNi6MUvS0
	6nujJxCfCZSOPZLu3HhqKQk0/9Cvco4qjTPX8ZetNVhezZvF5o6Pq3GhAW4MkIbrRQCi98/y9tIbJ
	B4QFCaIC1wy8awDpdk6Sj4Z2seeyvglLMA42cqXvKyM+pVpNYpBc+m5aESl6Coq7Oadhsjk7mkKDL
	oKxzzXJRJJnvY8dCc0wXCCw8mQL2g44Y+CdQFNX0E5Wfg+b3aVGP5AJdaRmbOMnqGAdn4jU6w2t25
	mo6buZKQtN8XBHGvnzdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE6i4-00D2dy-10;
	Tue, 27 Jun 2023 11:18:12 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE6i1-00D2dB-03
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jun 2023 11:18:10 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3fa8ce2307dso34157155e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Jun 2023 04:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687864686; x=1690456686;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+436N+S1ESd5EPbNBsANPxxhM7KChbINfUFXT5IpyMQ=;
        b=gekr+ohwCIzlwofJvN6BQeFxZ8iW3QPMNeqfPVijyHJxzd/e6ArcaBlpYU4EnWE5n9
         aJbaFVcpHQ4mNPRY1h2UrR2ppkaPTYMaEIt0ENeaLc+qbld/GxEtpKYG65slkfaAhbWT
         1dx1oxB6gE4d+LJaPrWcctriXkwX263mE+6vrncSMGYd1t2xMgMJw+zwjbpkx9zMOK5a
         hGmY3vPD8Ud48+PiYSOq+jM+xozkzUlQjQxvUDO6kHE5CQFojkmwyN97OywdpKW6A8Ko
         h43m8yn8Iw7cXUI18HUvAbvs82lfQSgK/5BziPhHmbKn9TGatm5EXnE+DaHvcAkHxdNs
         UjkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687864686; x=1690456686;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+436N+S1ESd5EPbNBsANPxxhM7KChbINfUFXT5IpyMQ=;
        b=HCgenZ050qYSBIrpwWxzf6qOURd3OhpvKvf5xzEeDlF5glUE3m2wtYd4Ol9awpeQ5u
         HxIz7BQg0R1DZWX9hrsIGD5gOJfU02TtUxhmIFwJaX6/tjDt39W4SXPU1xBR3iM/2Miv
         2DwWAbNirttN26wNuZE9momR4JRVvOrodMAPL+ORz6NXt61oPGO66YUj6jcAt/xSDPsk
         yJkDxRKoRUL88Zx26HOd44YXdaZdksnM0ruqVaU9YziNr4RtN5bnCvCZqP88+Po7qo6j
         L99zkOLYmwonxHfQ+/Hs8YgMwJS3j4pr4FKh3ULA4ed4O7Zu/AoWqM7tY7ypiYkE05/v
         sPGg==
X-Gm-Message-State: AC+VfDyOaS1RDu9uDCorbwXeBjfQDNbPji2AUEU41xSVLDwOJFx6Ek4G
	IqQYqx+6wiLfinw5KWeb0D+aZA==
X-Google-Smtp-Source: ACHHUZ48asKXSrnaUDTeuUEr/zkyEsPg9S8hEgMPHuZw26rI/CCd2JXwbYPaaiU0H88k3eI2cKNNBw==
X-Received: by 2002:adf:f389:0:b0:313:f551:b037 with SMTP id m9-20020adff389000000b00313f551b037mr4832309wro.68.1687864686116;
        Tue, 27 Jun 2023 04:18:06 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id v11-20020a5d610b000000b00313e2abfb8dsm9583227wrt.92.2023.06.27.04.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jun 2023 04:18:04 -0700 (PDT)
Date: Tue, 27 Jun 2023 14:18:00 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [bug report] PCI: rockchip: Fix window mapping and address
 translation for endpoint
Message-ID: <f84f0f6a-5b39-4004-b780-9884bca0811e@kadam.mountain>
References: <8d19e5b7-8fa0-44a4-90e2-9bb06f5eb694@moroto.mountain>
 <CAAEEuhrYr3ejHXH0TdvUJjXp+0cTnhsPJD6eUR1+Y=+ycjy+yA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAEEuhrYr3ejHXH0TdvUJjXp+0cTnhsPJD6eUR1+Y=+ycjy+yA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_041809_056009_2DC383C4 
X-CRM114-Status: GOOD (  27.17  )
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

T24gVHVlLCBKdW4gMjcsIDIwMjMgYXQgMTE6Mzk6MTZBTSArMDIwMCwgUmljayBXZXJ0ZW5icm9l
ayB3cm90ZToKPiBPbiBUdWUsIEp1biAyNywgMjAyMyBhdCA5OjE54oCvQU0gRGFuIENhcnBlbnRl
ciA8ZGFuLmNhcnBlbnRlckBsaW5hcm8ub3JnPiB3cm90ZToKPiA+Cj4gPiBIZWxsbyBSaWNrIFdl
cnRlbmJyb2VrLAo+ID4KPiA+IFRoZSBwYXRjaCBkYzczZWQwZjFiOGI6ICJQQ0k6IHJvY2tjaGlw
OiBGaXggd2luZG93IG1hcHBpbmcgYW5kCj4gPiBhZGRyZXNzIHRyYW5zbGF0aW9uIGZvciBlbmRw
b2ludCIgZnJvbSBBcHIgMTgsIDIwMjMsIGxlYWRzIHRvIHRoZQo+ID4gZm9sbG93aW5nIFNtYXRj
aCBzdGF0aWMgY2hlY2tlciB3YXJuaW5nOgo+ID4KPiA+ICAgICAgICAgZHJpdmVycy9wY2kvY29u
dHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmM6NDA1IHJvY2tjaGlwX3BjaWVfZXBfc2VuZF9tc2lf
aXJxKCkKPiA+ICAgICAgICAgd2Fybjogd2FzIGV4cGVjdGluZyBhIDY0IGJpdCB2YWx1ZSBpbnN0
ZWFkIG9mICd+NDI5NDk2NzA0MCcKPiA+Cj4gPiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUt
cm9ja2NoaXAtZXAuYwo+ID4gICAgIDM1MSBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfZXBfc2Vu
ZF9tc2lfaXJxKHN0cnVjdCByb2NrY2hpcF9wY2llX2VwICplcCwgdTggZm4sCj4gPiAgICAgMzUy
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdTggaW50ZXJydXB0X251
bSkKPiA+ICAgICAzNTMgewo+ID4gICAgIDM1NCAgICAgICAgIHN0cnVjdCByb2NrY2hpcF9wY2ll
ICpyb2NrY2hpcCA9ICZlcC0+cm9ja2NoaXA7Cj4gPiAgICAgMzU1ICAgICAgICAgdTMyIGZsYWdz
LCBtbWUsIGRhdGEsIGRhdGFfbWFzazsKPiA+ICAgICAzNTYgICAgICAgICB1OCBtc2lfY291bnQ7
Cj4gPiAgICAgMzU3ICAgICAgICAgdTY0IHBjaV9hZGRyOwo+ID4gICAgICAgICAgICAgICAgIF5e
Xl5eXl5eXl5eXl4KPiA+Cj4gPiAgICAgMzU4ICAgICAgICAgdTMyIHI7Cj4gPiAgICAgMzU5Cj4g
PiAgICAgMzYwICAgICAgICAgLyogQ2hlY2sgTVNJIGVuYWJsZSBiaXQgKi8KPiA+ICAgICAzNjEg
ICAgICAgICBmbGFncyA9IHJvY2tjaGlwX3BjaWVfcmVhZCgmZXAtPnJvY2tjaGlwLAo+ID4gICAg
IDM2MiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJPQ0tDSElQX1BDSUVfRVBf
RlVOQ19CQVNFKGZuKSArCj4gPiAgICAgMzYzICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgUk9DS0NISVBfUENJRV9FUF9NU0lfQ1RSTF9SRUcpOwo+ID4gICAgIDM2NCAgICAgICAg
IGlmICghKGZsYWdzICYgUk9DS0NISVBfUENJRV9FUF9NU0lfQ1RSTF9NRSkpCj4gPiAgICAgMzY1
ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+ICAgICAzNjYKPiA+ICAgICAzNjcg
ICAgICAgICAvKiBHZXQgTVNJIG51bWJlcnMgZnJvbSBNTUUgKi8KPiA+ICAgICAzNjggICAgICAg
ICBtbWUgPSAoKGZsYWdzICYgUk9DS0NISVBfUENJRV9FUF9NU0lfQ1RSTF9NTUVfTUFTSykgPj4K
PiA+ICAgICAzNjkgICAgICAgICAgICAgICAgICAgICAgICAgUk9DS0NISVBfUENJRV9FUF9NU0lf
Q1RSTF9NTUVfT0ZGU0VUKTsKPiA+ICAgICAzNzAgICAgICAgICBtc2lfY291bnQgPSAxIDw8IG1t
ZTsKPiA+ICAgICAzNzEgICAgICAgICBpZiAoIWludGVycnVwdF9udW0gfHwgaW50ZXJydXB0X251
bSA+IG1zaV9jb3VudCkKPiA+ICAgICAzNzIgICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFM
Owo+ID4gICAgIDM3Mwo+ID4gICAgIDM3NCAgICAgICAgIC8qIFNldCBNU0kgcHJpdmF0ZSBkYXRh
ICovCj4gPiAgICAgMzc1ICAgICAgICAgZGF0YV9tYXNrID0gbXNpX2NvdW50IC0gMTsKPiA+ICAg
ICAzNzYgICAgICAgICBkYXRhID0gcm9ja2NoaXBfcGNpZV9yZWFkKHJvY2tjaGlwLAo+ID4gICAg
IDM3NyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUk9DS0NISVBfUENJRV9FUF9G
VU5DX0JBU0UoZm4pICsKPiA+ICAgICAzNzggICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIFJPQ0tDSElQX1BDSUVfRVBfTVNJX0NUUkxfUkVHICsKPiA+ICAgICAzNzkgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIFBDSV9NU0lfREFUQV82NCk7Cj4gPiAgICAgMzgwICAg
ICAgICAgZGF0YSA9IChkYXRhICYgfmRhdGFfbWFzaykgfCAoKGludGVycnVwdF9udW0gLSAxKSAm
IGRhdGFfbWFzayk7Cj4gPiAgICAgMzgxCj4gPiAgICAgMzgyICAgICAgICAgLyogR2V0IE1TSSBQ
Q0kgYWRkcmVzcyAqLwo+ID4gICAgIDM4MyAgICAgICAgIHBjaV9hZGRyID0gcm9ja2NoaXBfcGNp
ZV9yZWFkKHJvY2tjaGlwLAo+ID4gICAgIDM4NCAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIFJPQ0tDSElQX1BDSUVfRVBfRlVOQ19CQVNFKGZuKSArCj4gPiAgICAgMzg1ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUk9DS0NISVBfUENJRV9FUF9NU0lf
Q1RSTF9SRUcgKwo+ID4gICAgIDM4NiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIFBDSV9NU0lfQUREUkVTU19ISSk7Cj4gPiAgICAgMzg3ICAgICAgICAgcGNpX2FkZHIgPDw9
IDMyOwo+ID4KPiA+IFRoZSBoaWdoIDMyIGJpdHMgYXJlIGRlZmluaXRlbHkgc2V0Lgo+ID4KPiA+
ICAgICAzODggICAgICAgICBwY2lfYWRkciB8PSByb2NrY2hpcF9wY2llX3JlYWQocm9ja2NoaXAs
Cj4gPiAgICAgMzg5ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJPQ0tD
SElQX1BDSUVfRVBfRlVOQ19CQVNFKGZuKSArCj4gPiAgICAgMzkwICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIFJPQ0tDSElQX1BDSUVfRVBfTVNJX0NUUkxfUkVHICsKPiA+
ICAgICAzOTEgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUENJX01TSV9B
RERSRVNTX0xPKTsKPiA+ICAgICAzOTIKPiA+ICAgICAzOTMgICAgICAgICAvKiBTZXQgdGhlIG91
dGJvdW5kIHJlZ2lvbiBpZiBuZWVkZWQuICovCj4gPiAgICAgMzk0ICAgICAgICAgaWYgKHVubGlr
ZWx5KGVwLT5pcnFfcGNpX2FkZHIgIT0gKHBjaV9hZGRyICYgUENJRV9BRERSX01BU0spIHx8Cj4g
PiAgICAgMzk1ICAgICAgICAgICAgICAgICAgICAgIGVwLT5pcnFfcGNpX2ZuICE9IGZuKSkgewo+
ID4gICAgIDM5NiAgICAgICAgICAgICAgICAgciA9IHJvY2tjaGlwX29iX3JlZ2lvbihlcC0+aXJx
X3BoeXNfYWRkcik7Cj4gPiAgICAgMzk3ICAgICAgICAgICAgICAgICByb2NrY2hpcF9wY2llX3By
b2dfZXBfb2JfYXR1KHJvY2tjaGlwLCBmbiwgciwKPiA+ICAgICAzOTggICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXAtPmlycV9waHlzX2FkZHIsCj4gPiAgICAg
Mzk5ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBjaV9hZGRy
ICYgUENJRV9BRERSX01BU0ssCj4gPiAgICAgNDAwICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIH5QQ0lFX0FERFJfTUFTSyArIDEpOwo+ID4gICAgIDQwMSAgICAg
ICAgICAgICAgICAgZXAtPmlycV9wY2lfYWRkciA9IChwY2lfYWRkciAmIFBDSUVfQUREUl9NQVNL
KTsKPiA+ICAgICA0MDIgICAgICAgICAgICAgICAgIGVwLT5pcnFfcGNpX2ZuID0gZm47Cj4gPiAg
ICAgNDAzICAgICAgICAgfQo+ID4gICAgIDQwNAo+ID4gLS0+IDQwNSAgICAgICAgIHdyaXRldyhk
YXRhLCBlcC0+aXJxX2NwdV9hZGRyICsgKHBjaV9hZGRyICYgflBDSUVfQUREUl9NQVNLKSk7Cj4g
Pgo+ID4gUENJRV9BRERSX01BU0sgaXMgMHhmZmZmZmYwMCAod2hpY2ggaXMgdW5zaWduZWQgaW50
KS4gIFdoYXQgU21hdGNoIGlzCj4gPiBzYXlpbmcgaGVyZSBpcyB0aGF0IHBjaV9hZGRyIGlzIGEg
dTY0IGl0IGxvb2tzIGxpa2UgdGhlIGludGVudGlvbiB3YXMgdG8KPiA+IHplcm8gb3V0IHRoZSBs
YXN0IGJ5dGUsIGJ1dCBpbnN0ZWFkIHdlIGFyZSB6ZXJvaW5nIHRoZSBoaWdoIDMyIGJpdHMgYXMK
PiA+IHdlbGwgYXMgdGhlIGxhc3QgOCBiaXRzLgo+IAo+IEhlbGxvLAo+IFlvdSBhcmUgcmlnaHQg
dGhlcmUgaXMgYSBwcm9ibGVtLgo+IAo+IFRoZSB3YXJuaW5nIGF0IGxpbmUgNDA1LCBob3dldmVy
LCBzZWVtcyB0byBiZSBhIGZhbHNlIHBvc2l0aXZlLiBCZWNhdXNlIHRoZQo+IG1hc2sgaXMgMHhm
ZmZmZmYwMCAod2hpY2ggaXMgdW5zaWduZWQgaW50KSBhbmQgdGhlIH4gaXMgYXBwbGllZCBiZWZv
cmUgcHJvbW90aW9uCj4gdGhpcyByZXN1bHRzIGluIDB4ZmYsIHdoaWNoIGlzIHRoZW4gcHJvbW90
ZWQgdG8gMHgwMDAwMDAwMDAwMDAwMGZmIHdoZW4gYXBwbGllZAo+IHRvIHBjaV9hZGRyIHNvIHRo
aXMgaXMgZmluZS4KPiAKCkhtLi4uICBZZWFoLiAgVGhpcyB3YXJuaW5nIG1lc3NhZ2UgaXMgcXVp
dGUgb2xkIGFuZCBJIGhhdmVuJ3QgdGhvdWdodAphYm91dCBpdCBwcm9wZXJseSBpbiBzb21lIHRp
bWUuICBQcm9iYWJseSBJIHNob3VsZCBzaWxlbmNlIHRoZSB3YXJuaW5nCmlmIEJJVCgzMSkgaXMg
emVybyBhbmQgb25seSB0aGUgbG93ZXN0IGJpdHMgYXJlIDEuCgpJJ2xsIHRha2UgYSBsb29rIGF0
IGFsbCB0aGVzZSB3YXJuaW5ncyBhZ2Fpbi4KCj4gV2hhdCB5b3UgZGVzY3JpYmUgYWJvdXQgemVy
b2luZyB0aGUgdXBwZXIgMzIgYml0cyBhbmQgbm90IG9ubHkgdGhlIGxvd2VyIDgKPiByZWZlcnMg
dG8gbGluZSAzOTkgd2hlcmUgd2UgYXBwbHkgdGhlIFBDSV9BRERSX01BU0sgMHhmZmZmZmYwMCB3
aXRoIHRoZQo+ICYgb3BlcmF0b3IgdG8gcGNpX2FkZHIsIHRoaXMgaXMgdGhlIHJlYWwgaXNzdWUs
IGFzIHlvdSBzYWlkIHRoaXMKPiB6ZXJvZXMgdGhlIHVwcGVyCj4gMzItYml0cywgd2hpY2ggaXMg
bm90IHRoZSBpbnRlbmRlZCBiZWhhdmlvci4gVGhhbmsgeW91IGZvciBwb2ludGluZyB0aGlzIG91
dC4KCkhlaC4gIE5vLCBJIGRvbid0IGdldCBjcmVkaXQgZm9yIHNwb3R0aW5nIGxpbmUgMzk5LiAg
VGhhdCdzIGFsbCB5b3UuCgpJIGRvbid0IGtub3cgaG93IHRvIGlkZW50aWZ5IHRoZSBpc3N1ZSBv
biBsaW5lIDM5OSB0aHJvdWdoIHN0YXRpYwphbmFseXNpcy4gIEl0IHRoaW5rIGl0J3MgaW1wb3Nz
aWJsZSB0byB0ZWxsIHVuaW50ZW50aW9uYWwgbWFza2luZyBmcm9tCmludGVudGlvbmFsIG1hc2tp
bmcgb24gdGhhdCBsaW5lLgoKcmVnYXJkcywKZGFuIGNhcnBlbnRlcgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
