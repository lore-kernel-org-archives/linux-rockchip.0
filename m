Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3924CF07C5
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 08:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yCTrC5lbuS3Jpk1DSbyf0/MjPXOvqx9Xgr1s3OXBoM=; b=qnMnX2+um8eYpp
	PGhfeWQg29JK70j7Jeph56P27dxJs65Rpq/7IETG+Hdo2vgyG0ZkJjIwNvKwR1GGYIj5mGODT+xsP
	QTcG8P6DDVdRbLHgJfTn9cxeKil5n3cOzaiLrjMO0ln5fMul+GiqqAGNolzBLIYWuZRf/gzt3afAT
	/u2sAKge/djM9YoubfW9EFJd2CSXMhxOzZo1pNx5Mf39Gg3SroOVx3qSfQ1KEKAOV9oW4PDKObraH
	4glvk63RE/tXcvuX3yXug6tQjL7rBwD43lqeXcHTTUmcnIbM3/93dQWw3gKo4uP+RmwH5dymwklBV
	t5G7IYONISVa/oq4d1pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syoYv-0000000C0aV-1noP;
	Thu, 10 Oct 2024 08:30:21 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syoRL-0000000Byfl-0RPo
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 08:22:32 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-20b8be13cb1so6722425ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2024 01:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728548550; x=1729153350; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=K/pgoD5+pGJUHfH2jhcRczvJs6RkTR2OA0EF0YYfHvU=;
        b=ZYra7jTOpn8pQL3wXMruy7BrtzTPjBIICx/si7WiuLfyx3gByQKz+j4zJLsCmhInVv
         Rkec3wF86xyj6posT9byct61rNRpI2Pl9zmQ405T8p0vrTZANt06VP0lnHmnVAhNf2qT
         ZsNa1rYYKwgwY+WtdgRPbFskbkIW53DKyw8dQs5YJ7nE/zKuv8o9prJDGp2yBRgn1Pgu
         IXuSCjKGmLzJNuvTZuKzWyctIvTmV9dFwwg5EvDcZoY1lfOYWG/zlltuGrkqF+iral7B
         HgNb1FdtAejQkI3NLuBhkWyd1xOwFMPtb91hRCcDmslVTWNswNPTNzbrlvOO8OHjgRY/
         HqXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728548550; x=1729153350;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K/pgoD5+pGJUHfH2jhcRczvJs6RkTR2OA0EF0YYfHvU=;
        b=BRoZafU8YM/NOx/9PKUFoBgv9RhA1eOxbJZpcqsDZmAvKgYoZ7GafGsNQ5fgkphLT5
         99htVG8F2SJnLurspXdv+0SKxlPKvJlK1KWgGRuYETSGaeYEWmZJYdNRJCMcEuyStydP
         uD9LqQ0JjJxwMl2dIqUbQUG/neT7ARLx3Fh7MoFJU3LXi8l4CjRVmTnOYmxvejSYbqD3
         BWskDWvCWvARxNLlqsNxvYYudZ2KmDKkG1OCvaGI97p+8ldHU2DQQNunIcA0Uc3sjfc8
         tPZv9eZhoveWZcYmtiO2r+q0cLAIADUsE5Ej4Me/1NYecznxBCyKBBbc/TVScqMH5YJJ
         bolQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFhiZOJcYyoyrH91JP+ERxJTw0woPy6l0JES/uByxLQpLjDMwE/zVkGsLJY9ENDM005z042ZjWbI5QeZVJAQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2IsZtUKcs/9zdnscfqlRqc+pMbFb+4nOi8zfBGd41spo6qBte
	GnwKwjWTSO/ihl+lkxGccg607wGUJzmDucacuDB24yLxkj2M3NhdjUnOCLV+aw==
X-Google-Smtp-Source: AGHT+IFYSDTOtXUXl+WIXVJmekFxzNnhZkb/wYZhSsxhNInJ/W+A4oIQnUJ53qqTLcgidQ16e+Gi4Q==
X-Received: by 2002:a17:903:22c8:b0:20b:4875:2c51 with SMTP id d9443c01a7336-20c6377c885mr86173885ad.27.1728548549670;
        Thu, 10 Oct 2024 01:22:29 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8c0e747fsm5329925ad.143.2024.10.10.01.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 01:22:29 -0700 (PDT)
Date: Thu, 10 Oct 2024 13:52:23 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 08/12] PCI: rockchip-ep: Refactor endpoint link
 training enable
Message-ID: <20241010082223.amfboyuegxwdo5gf@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-9-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007041218.157516-9-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_012231_173150_9228364D 
X-CRM114-Status: GOOD (  24.95  )
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

T24gTW9uLCBPY3QgMDcsIDIwMjQgYXQgMDE6MTI6MTRQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gVGhlIGZ1bmN0aW9uIHJvY2tjaGlwX3BjaWVfaW5pdF9wb3J0KCkgZW5hYmxlcyBs
aW5rIHRyYWluaW5nIGZvciBhCj4gY29udHJvbGxlciBjb25maWd1cmVkIGluIEVQIG1vZGUuIEVu
YWJsaW5nIGxpbmsgdHJhaW5pbmcgaXMgYWdhaW4gZG9uZQo+IGluIHJvY2tjaGlwX3BjaWVfZXBf
cHJvYmUoKSBhZnRlciB0aGF0IGZ1bmN0aW9uIGV4ZWN1dGVkCj4gcm9ja2NoaXBfcGNpZV9pbml0
X3BvcnQoKS4gRW5hYmxpbmcgbGluayB0cmFpbmluZyBvbmx5IG5lZWRzIHRvIGJlIGRvbmUKPiBv
bmNlLCBhbmQgZG9pbmcgc28gYXQgdGhlIHByb2JlIHN0YWdlIGJlZm9yZSB0aGUgY29udHJvbGxl
ciBpcyBhY3R1YWxseQo+IHN0YXJ0ZWQgYnkgdGhlIHVzZXIgc2VydmVzIG5vIHB1cnBvc2UuCj4g
CgpJIGhvcGUgdGhhdCB0aGUgZHVhbCBlbmFibGVtZW50IGlzIGRvbmUgYXMgYSBtaXN0YWtlIGFu
ZCBub3Qgb24gcHVycG9zZS4uLgoKPiBSZWZhY3RvciB0aGlzIGJ5IHJlbW92aW5nIHRoZSBsaW5r
IHRyYWluaW5nIGVuYWJsZW1lbnQgZnJvbSBib3RoCj4gcm9ja2NoaXBfcGNpZV9pbml0X3BvcnQo
KSBhbmQgcm9ja2NoaXBfcGNpZV9lcF9wcm9iZSgpIGFuZCBtb3ZpbmcgaXQgdG8KPiB0aGUgZW5k
cG9pbnQgc3RhcnQgb3BlcmF0aW9uIGRlZmluZWQgd2l0aCByb2NrY2hpcF9wY2llX2VwX3N0YXJ0
KCkuCj4gRW5hYmxpbmcgdGhlIGNvbnRyb2xsZXIgY29uZmlndXJhdGlvbiB1c2luZyB0aGUgUENJ
RV9DTElFTlRfQ09ORl9FTkFCTEUKPiBiaXQgaW4gdGhlIHNhbWUgUENJRV9DTElFTlRfQ09ORklH
IHJlZ2lzdGVyIGlzIGFsc28gbW92ZSB0bwo+IHJvY2tjaGlwX3BjaWVfZXBfc3RhcnQoKSBhbmQg
Ym90aCB0aGUgY29udHJvbGxlciBjb25maWd1cmF0aW9uIGFuZCBsaW5rCj4gdHJhaW5pbmcgZW5h
YmxlIGJpdHMgYXJlIHNldCB3aXRoIGEgc2luZ2xlIGNhbGwgdG8KPiByb2NrY2hpcF9wY2llX3dy
aXRlKCkuCj4gCgpCdXQgeW91IGRpZG4ndCByZW1vdmUgdGhlIGV4aXN0aW5nIGNvZGUgaW4gcHJv
YmUoKSB0aGF0IHNldHMKUENJRV9DTElFTlRfQ09ORl9FTkFCTEUuCgo+IFNpZ25lZC1vZmYtYnk6
IERhbWllbiBMZSBNb2FsIDxkbGVtb2FsQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jIHwgMTEgKysrKysrLS0tLS0KPiAgZHJpdmVy
cy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMgICAgfCAgNSArKystLQo+ICAyIGZpbGVz
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMgYi9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYwo+IGluZGV4IDdhMTc5OGZjYzJhZC4uOTlm
MjZmNGE0ODViIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2Nr
Y2hpcC1lcC5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVw
LmMKPiBAQCAtNDU5LDYgKzQ1OSwxMiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfZXBfc3Rh
cnQoc3RydWN0IHBjaV9lcGMgKmVwYykKPiAgCj4gIAlyb2NrY2hpcF9wY2llX3dyaXRlKHJvY2tj
aGlwLCBjZmcsIFBDSUVfQ09SRV9QSFlfRlVOQ19DRkcpOwo+ICAKPiArCS8qIEVuYWJsZSBjb25m
aWd1cmF0aW9uIGFuZCBzdGFydCBsaW5rIHRyYWluaW5nICovCj4gKwlyb2NrY2hpcF9wY2llX3dy
aXRlKHJvY2tjaGlwLAo+ICsJCQkgICAgUENJRV9DTElFTlRfTElOS19UUkFJTl9FTkFCTEUgfAo+
ICsJCQkgICAgUENJRV9DTElFTlRfQ09ORl9FTkFCTEUsCj4gKwkJCSAgICBQQ0lFX0NMSUVOVF9D
T05GSUcpOwo+ICsKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+IEBAIC01MzcsNyArNTQzLDYgQEAg
c3RhdGljIGludCByb2NrY2hpcF9wY2llX2VwX2dldF9yZXNvdXJjZXMoc3RydWN0IHJvY2tjaGlw
X3BjaWVfZXAgKmVwKQo+ICAKPiAgCWVwLT5vYl9hZGRyID0gZGV2bV9rY2FsbG9jKGRldiwgZXAt
Pm1heF9yZWdpb25zLCBzaXplb2YoKmVwLT5vYl9hZGRyKSwKPiAgCQkJCSAgIEdGUF9LRVJORUwp
Owo+IC0KClNwdXJpb3VzIGNoYW5nZS4KCi0gTWFuaQoKPiAgCWlmICghZXAtPm9iX2FkZHIpCj4g
IAkJcmV0dXJuIC1FTk9NRU07Cj4gIAo+IEBAIC02NDgsMTAgKzY1Myw2IEBAIHN0YXRpYyBpbnQg
cm9ja2NoaXBfcGNpZV9lcF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAK
PiAgCXJvY2tjaGlwX3BjaWVfZXBfaGlkZV9tc2l4X2NhcChyb2NrY2hpcCk7Cj4gIAo+IC0JLyog
RXN0YWJsaXNoIHRoZSBsaW5rIGF1dG9tYXRpY2FsbHkgKi8KPiAtCXJvY2tjaGlwX3BjaWVfd3Jp
dGUocm9ja2NoaXAsIFBDSUVfQ0xJRU5UX0xJTktfVFJBSU5fRU5BQkxFLAo+IC0JCQkgICAgUENJ
RV9DTElFTlRfQ09ORklHKTsKPiAtCj4gIAkvKiBPbmx5IGVuYWJsZSBmdW5jdGlvbiAwIGJ5IGRl
ZmF1bHQgKi8KPiAgCXJvY2tjaGlwX3BjaWVfd3JpdGUocm9ja2NoaXAsIEJJVCgwKSwgUENJRV9D
T1JFX1BIWV9GVU5DX0NGRyk7Cj4gIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaWUtcm9ja2NoaXAuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hp
cC5jCj4gaW5kZXggYzA3ZDcxMjlmMWM3Li4xNTRlNzg4MTllNmUgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYwo+IEBAIC0yNDQsMTEgKzI0NCwxMiBAQCBpbnQgcm9j
a2NoaXBfcGNpZV9pbml0X3BvcnQoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQo+ICAJ
CXJvY2tjaGlwX3BjaWVfd3JpdGUocm9ja2NoaXAsIFBDSUVfQ0xJRU5UX0dFTl9TRUxfMSwKPiAg
CQkJCSAgICBQQ0lFX0NMSUVOVF9DT05GSUcpOwo+ICAKPiAtCXJlZ3MgPSBQQ0lFX0NMSUVOVF9M
SU5LX1RSQUlOX0VOQUJMRSB8IFBDSUVfQ0xJRU5UX0FSSV9FTkFCTEUgfAo+ICsJcmVncyA9IFBD
SUVfQ0xJRU5UX0FSSV9FTkFCTEUgfAo+ICAJICAgICAgIFBDSUVfQ0xJRU5UX0NPTkZfTEFORV9O
VU0ocm9ja2NoaXAtPmxhbmVzKTsKPiAgCj4gIAlpZiAocm9ja2NoaXAtPmlzX3JjKQo+IC0JCXJl
Z3MgfD0gUENJRV9DTElFTlRfQ09ORl9FTkFCTEUgfCBQQ0lFX0NMSUVOVF9NT0RFX1JDOwo+ICsJ
CXJlZ3MgfD0gUENJRV9DTElFTlRfTElOS19UUkFJTl9FTkFCTEUgfAo+ICsJCQlQQ0lFX0NMSUVO
VF9DT05GX0VOQUJMRSB8IFBDSUVfQ0xJRU5UX01PREVfUkM7Cj4gIAllbHNlCj4gIAkJcmVncyB8
PSBQQ0lFX0NMSUVOVF9DT05GX0RJU0FCTEUgfCBQQ0lFX0NMSUVOVF9NT0RFX0VQOwo+ICAKPiAt
LSAKPiAyLjQ2LjIKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
