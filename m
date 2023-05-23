Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC976C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 16:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Wag8kmCOnSV3ySl+O5O4wvNCrplCPyqXJhfv6ltmTA=; b=pHfpnqXpBtGkH9
	M1x2aQyl3yKH1egwRo8eXprWt7JrWeDMhOJ+Ie7m1kmNMA19J9+a7idKcj+PCOtDSGFJ9fy1kMQ7E
	Ysqnxy8g2hTa6g6wS/38QDo8t6I82JflEckq9gqtY7LuPjAkeGzwzgCM9hGlT0E4O8RoUR6aVD5+P
	aqP8UUFw2cliW6QFdaieIsCfCdMt2Q31i+cu4II4HL9vF6VxyZZa6KSJq8KCupAO6KNp0vutmoa8o
	KonRRjimAwCfaI3j6JLQfmjWh5optr6nxSs7xxvv32hr8wDhYKOMPFlpCWg0ESYgBYGrFCv8tC9yz
	3/12pSpLGXNX+kL532HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1UsC-00Anac-22;
	Tue, 23 May 2023 16:28:32 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Us9-00AnYV-2H
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 16:28:31 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2af214a1929so134021fa.0
        for <linux-rockchip@lists.infradead.org>; Tue, 23 May 2023 09:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20221208.gappssmtp.com; s=20221208; t=1684859303; x=1687451303;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Fjno37nGq6ToMVKImqM2lZBGb3EVuqh7ZMDboA4Wx8=;
        b=ZC8VlTvXr5lx7bQVKwNDAk+CYJfCuDXLtTeH5F1vbaXCgvvAgytyFmqFQ09v+uv7/r
         P+hOstfU5a2yhpwSPkJ+agMRFx3d4qQ8MEjX1puTOk0QalHexKRzyiWnETUO80Sfu4qQ
         GIEmtCZDmUKwFYVEUSqZzCQGBtmA14P5GZ1GUGuZB8ri42UhDoPUP5yvQozORxKWBcsB
         dRHap5Y/Mip91sx7s7GgPn2Pj1sQCjWzPuw5lj8kMum3cTskuqvn+I10QUO6xJZekl/H
         HzO+ONNfCX9feqraOUdtG1EIu/V7C8oXyacEYMSOk09GE4uyVKyIMiNaEd+UghxyoiYm
         YeeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684859303; x=1687451303;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Fjno37nGq6ToMVKImqM2lZBGb3EVuqh7ZMDboA4Wx8=;
        b=N3yA1oDGtCCqZQYKxXzYnJB0MK/7HdGHgJdXQsCI0SYU0Inasawzu7+qiwh+SZ8pmD
         JUGbggIDUniqcjUx9LaN69EqXxT6/FqG2Ou/PyWYa3AzLGYpXJt/MUtmzr4lR5uCTE2g
         ui285O1fwrKtGjUCU+IrvGiZ5U9swGqLRjJEE0RgoCYlummAdRqUID4RSffOdonhUOtz
         /7GdHLDBvnrz6IoWioW0Utq9wiL/XYaROYpkiqCgVb2xsusuS6Ll0p6ARhLhU2TTlOXH
         Z6SDARKS+f4LxC5terjAmtHK91rXOq2FovYRA2HvxXDGhGWTQRhLTYNyXVsZbHsKgyfF
         abXg==
X-Gm-Message-State: AC+VfDxy10AraR7fyFL0oFMnAFleQQLiw+6qDXOS/1mdzIOhezO34y/q
	5XGlnGzfsCcy5WjKQaSgg8ULSIjHuokBppHip5I9DgYsyIics5Nr684=
X-Google-Smtp-Source: ACHHUZ4ZG46KruFaIEkonBK5cy8poqFewof6mQjdcZ/qwwI8FGa2qjA7UJfen6qFakg1ItIS5mrKfGchjAhIooGdyQ0=
X-Received: by 2002:a2e:a37a:0:b0:2af:150f:d421 with SMTP id
 i26-20020a2ea37a000000b002af150fd421mr5307619ljn.5.1684859303206; Tue, 23 May
 2023 09:28:23 -0700 (PDT)
MIME-Version: 1.0
References: <20230523162515.993862-1-benjamin.gaignard@collabora.com>
In-Reply-To: <20230523162515.993862-1-benjamin.gaignard@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 23 May 2023 13:28:11 -0300
Message-ID: <CAAEAJfDgJM++zHzR9ez94ZgRSr7H6NrohsG8=+8722ZEjC1gRg@mail.gmail.com>
Subject: Re: [PATCH] media: verisilicon: Additional fix for the crash when
 opening the driver
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org, 
	m.szyprowski@samsung.com, m.tretter@pengutronix.de, didi.debian@cknow.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com, hverkuil-cisco@xs4all.nl, 
	kernel@pengutronix.de, regressions@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_092829_744434_BC65F0F8 
X-CRM114-Status: GOOD (  16.64  )
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

SGkgQmVuamFtaW4sCgpUaGFua3MgZm9yIHRoZSBwYXRjaC4KCk9uIFR1ZSwgTWF5IDIzLCAyMDIz
IGF0IDE6MjXigK9QTSBCZW5qYW1pbiBHYWlnbmFyZAo8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFi
b3JhLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIGZpeGVzIHRoZSBmb2xsb3dpbmcgaXNzdWUgb2JzZXJ2
ZWQgb24gT2Ryb2lkLU0xIGJvYXJkOgo+Cj4gIFVuYWJsZSB0byBoYW5kbGUga2VybmVsIE5VTEwg
cG9pbnRlciBkZXJlZmVyZW5jZSBhdCB2aXJ0dWFsIGFkZHJlc3MgMDAwMDAwMDAwMDAwMDAwOAoK
V2hhdCBwb2ludGVyIGlzIE5VTEw/IGN0eC0+c3JjX2ZtdCA/Cgo+ICBNZW0gYWJvcnQgaW5mbzoK
PiAgLi4uCj4gIE1vZHVsZXMgbGlua2VkIGluOiBjcmN0MTBkaWZfY2UgaGFudHJvX3ZwdSBzbmRf
c29jX3NpbXBsZV9jYXJkIHNuZF9zb2Nfc2ltcGxlX2NhcmRfdXRpbHMgdjRsMl92cDkgdjRsMl9o
MjY0IHJvY2tjaGlwX3NhcmFkYyB2NGwyX21lbTJtZW0gdmlkZW9idWYyX2RtYV9jb250aWcgdmlk
ZW9idWYyX21lbW9wcyBydGNfcms4MDggdmlkZW9idWYyX3Y0bDIgaW5kdXN0cmlhbGlvX3RyaWdn
ZXJlZF9idWZmZXIgcm9ja2NoaXBfdGhlcm1hbCBkd21hY19yayBzdG1tYWNfcGxhdGZvcm0gc3Rt
bWFjIHZpZGVvZGV2IGtmaWZvX2J1ZiBkaXNwbGF5X2Nvbm5lY3RvciB2aWRlb2J1ZjJfY29tbW9u
IHBjc194cGNzIG1jIHJvY2tjaGlwZHJtIGFuYWxvZ2l4X2RwIGR3X21pcGlfZHNpIGR3X2hkbWkg
ZHJtX2Rpc3BsYXlfaGVscGVyIHBhbmZyb3N0IGRybV9zaG1lbV9oZWxwZXIgZ3B1X3NjaGVkIGlw
X3RhYmxlcyB4X3RhYmxlcyBpcHY2Cj4gIENQVTogMyBQSUQ6IDE3NiBDb21tOiB2NGxfaWQgTm90
IHRhaW50ZWQgNi4zLjAtcmM3LW5leHQtMjAyMzA0MjAgIzEzNDgxCj4gIEhhcmR3YXJlIG5hbWU6
IEhhcmRrZXJuZWwgT0RST0lELU0xIChEVCkKPiAgcHN0YXRlOiA2MDQwMDAwOSAoblpDdiBkYWlm
ICtQQU4gLVVBTyAtVENPIC1ESVQgLVNTQlMgQlRZUEU9LS0pCj4gIHBjIDogaGFudHJvX3RyeV9m
bXQrMHhhMC8weDI3OCBbaGFudHJvX3ZwdV0KPiAgbHIgOiBoYW50cm9fdHJ5X2ZtdCsweDk0LzB4
Mjc4IFtoYW50cm9fdnB1XQo+ICAuLi4KPiAgQ2FsbCB0cmFjZToKPiAgIGhhbnRyb190cnlfZm10
KzB4YTAvMHgyNzggW2hhbnRyb192cHVdCj4gICBoYW50cm9fc2V0X2ZtdF9vdXQrMHgzYy8weDI5
OCBbaGFudHJvX3ZwdV0KPiAgIGhhbnRyb19yZXNldF9yYXdfZm10KzB4OTgvMHgxMjggW2hhbnRy
b192cHVdCj4gICBoYW50cm9fc2V0X2ZtdF9jYXArMHgyNDAvMHgyNTQgW2hhbnRyb192cHVdCj4g
ICBoYW50cm9fcmVzZXRfZW5jb2RlZF9mbXQrMHg5NC8weGNjIFtoYW50cm9fdnB1XQo+ICAgaGFu
dHJvX3Jlc2V0X2ZtdHMrMHgxOC8weDM4IFtoYW50cm9fdnB1XQo+ICAgaGFudHJvX29wZW4rMHhk
NC8weDIwYyBbaGFudHJvX3ZwdV0KPiAgIHY0bDJfb3BlbisweDgwLzB4MTIwIFt2aWRlb2Rldl0K
PiAgIGNocmRldl9vcGVuKzB4YzAvMHgyMmMKPiAgIGRvX2RlbnRyeV9vcGVuKzB4MTNjLzB4NDhj
Cj4gICB2ZnNfb3BlbisweDJjLzB4MzgKPiAgIHBhdGhfb3BlbmF0KzB4NTUwLzB4OTM0Cj4gICBk
b19maWxwX29wZW4rMHg4MC8weDEyYwo+ICAgZG9fc3lzX29wZW5hdDIrMHhiNC8weDE2OAo+ICAg
X19hcm02NF9zeXNfb3BlbmF0KzB4NjQvMHhhYwo+ICAgaW52b2tlX3N5c2NhbGwrMHg0OC8weDEx
NAo+ICAgZWwwX3N2Y19jb21tb24rMHgxMDAvMHgxMjAKPiAgIGRvX2VsMF9zdmMrMHgzYy8weGE4
Cj4gICBlbDBfc3ZjKzB4NDAvMHhhOAo+ICAgZWwwdF82NF9zeW5jX2hhbmRsZXIrMHhiOC8weGJj
Cj4gICBlbDB0XzY0X3N5bmMrMHgxOTAvMHgxOTQKPiAgQ29kZTogOTdmYzhhN2YgZjk0MGFhODAg
NTI4NjRhNjEgNzJhNjg2YzEgKGI5NDAwODAwKQo+ICAtLS1bIGVuZCB0cmFjZSAwMDAwMDAwMDAw
MDAwMDAwIF0tLS0KPgo+IEZpeGVzOiBkYjZmNjhiNTFlNWMgKCJtZWRpYTogdmVyaXNpbGljb246
IERvIG5vdCBzZXQgY29udGV4dCBzcmMvZHN0IGZvcm1hdHMgaW4gcmVzZXQgZnVuY3Rpb25zIikK
Pgo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBj
b2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29u
L2hhbnRyb192NGwyLmMgfCA2ICsrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vaGFudHJvX3Y0bDIuYwo+IGluZGV4IDgzNTUxODUzNGUzYi4uNjFjZmFhZjRlOTI3
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X3Y0bDIuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X3Y0bDIuYwo+IEBAIC0zOTcsMTAgKzM5NywxMiBAQCBoYW50cm9fcmVzZXRfcmF3X2ZtdChzdHJ1
Y3QgaGFudHJvX2N0eCAqY3R4LCBpbnQgYml0X2RlcHRoKQo+ICAgICAgICAgaWYgKCFyYXdfdnB1
X2ZtdCkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4KPiAtICAgICAgIGlmIChj
dHgtPmlzX2VuY29kZXIpCj4gKyAgICAgICBpZiAoY3R4LT5pc19lbmNvZGVyKSB7Cj4gICAgICAg
ICAgICAgICAgIGVuY29kZWRfZm10ID0gJmN0eC0+ZHN0X2ZtdDsKPiAtICAgICAgIGVsc2UKPiAr
ICAgICAgICAgICAgICAgY3R4LT52cHVfc3JjX2ZtdCA9IHJhd192cHVfZm10Owo+ICsgICAgICAg
fSBlbHNlIHsKPiAgICAgICAgICAgICAgICAgZW5jb2RlZF9mbXQgPSAmY3R4LT5zcmNfZm10Owo+
ICsgICAgICAgfQo+Cj4gICAgICAgICBoYW50cm9fcmVzZXRfZm10KCZyYXdfZm10LCByYXdfdnB1
X2ZtdCk7Cj4gICAgICAgICByYXdfZm10LndpZHRoID0gZW5jb2RlZF9mbXQtPndpZHRoOwo+IC0t
Cj4gMi4zNC4xCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
