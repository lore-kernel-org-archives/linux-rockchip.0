Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 356A9CCD1BF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 09:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cg8x+O3/1BCv5At5zQxDsygd2l9/Ln6kvV4yECvUbvU=; b=kxXhN+yE2YIZdc
	TPLUBEypxv8YomNe/7Pkr4CIjd0L1G01tBYRnOInZSbYOx1NFXttIMXwFjOegfcIRQ/nxoTIyURIB
	TlZf3SaIe/8DRlG2xz1SklPMiPId48O9Nx6xScW6rbENc4z2uhgjtLpMluTB5D9WnqA8e4gEdy6fn
	2U3Ki7Ypal3Xo9vQcQKcGmac1kSgj+GHiIpguy6ZaTF5Mf81U0RFSYMB9efOxJAdhj6jZbm4mHTxJ
	0QMo6zrgbyXGkJl4JzBW67Zp76HFYmQmS87HEzZttlNrf4A+M7tFaIIXQ/xui/l9BHKpXcVBADWg9
	erxHk/i2bjT8qjYfMK9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDg6X-0000000FeLp-2fxy;
	Tue, 28 Oct 2025 09:35:01 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDg6V-0000000FeK0-1WuI
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Oct 2025 09:35:00 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-63c09141cabso8536221a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Oct 2025 02:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761644097; x=1762248897; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0KqhCSWD1Q42FEiIO/7VeHXIAsO8MdqNCvIdMk2S6qk=;
        b=KLiw4kacL061uvVhopuS3bWHLGT1qU4KnPFrLTRV68A/bF3SYfiOg/ITSPhu1E9KLo
         0aZ5ZI+SVL/bWYU7u69AT87kprBwNHOYuFzJR3HDwISyt2M5n/qMqO2b2PSNx9K5hnkM
         Ej7fzfiUUEvaSpnqj1G3p3dEHn37YJ6Vh6ktrYpbdGZP8D8lRw9DC6QFRWRotTP2m9W1
         v+u6tCuwOGNlnM56OyUx02GqfpsdgvY4qoOBQD1Nv2CuuaTMPxVMavx8PVfur1lMKtKI
         gpDS6YLCUPY4XVbhtssyo90FSVBeh+mxH7p0lQqplmEddA8F39NF57lqd4hXbbh35uYZ
         VCkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761644097; x=1762248897;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0KqhCSWD1Q42FEiIO/7VeHXIAsO8MdqNCvIdMk2S6qk=;
        b=qEnBVXlYxjT0E4n+HkU7N3MoSeJbYq74b64xqtMvNhnnZacXKuKJT41sYBF1GTkAyP
         wHuWUOOX5dtNCbvGLtEeT4hjXBeKUz7PJF/l30hO7f8NaI+twAZeuQvBz+JWsii4Xmv5
         tX0if/YA0HP1VDqRqEolArb9v2oYt+lBQ9j8ljDzCEQklqYHOsyNvTxxuDqYobgs7dN2
         DOK2MPidj9CxeH6X0zqWty1jq67t5lNDntfBNUqbMpHcOV8nNebnSeNiywhgbs25qzlR
         NrQA5E9IZtooiaMhLyFBdbdtVrDrL9S3ZDweQo4OXvZv/H2QXYwUnbnuMl1DnxGGhGQZ
         9cag==
X-Forwarded-Encrypted: i=1; AJvYcCVvViZEfj3aVrk3ks70Se7CuRGRdRigx2SDE5rnA/mJ7dC9fm6PDPlBtjFvJaAZBYJ+IWdIgYbj+CGH23uzfw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzcKTxrcI+Jz1YKgygWysGkhi282frDAa4XPvf03e6ZuoKCzPkE
	6HM8En/PFtrtIGhSXzMqr6sE/JanYzGZsvVXDWz12pnnJC+VpBkDfraFBenb4OcQQwfSd2UwsiN
	+NsVsGVSOscp0pk1a6UVffFCj1DHMrVY=
X-Gm-Gg: ASbGnctCOnDa+JAy3BjfMDBwfst8OTCflJ5thuBC9ScJInWCkWm6pVwcevdzFneH2H+
	GLej0BBLEGWHmhlN3bUul14/fUHOhOeq6gFLpBqCJEitudlQcJ45kZXHxdlL9ktFZAXiFVHKWT8
	xI/pkABXpSyN9XBGDFfsG+Op5RX5cUvy5+PIi+lC+WqkRsgWp/66MyovxUbknzJk7lrjTyPjyOV
	k0p+3UFkh+AyMD2UD1QZ+qlJApr0DpzSO8A7/ncpCkAgaDVmWbpObGKgIE=
X-Google-Smtp-Source: AGHT+IFjt6ENLv3OgjeY1ld5nYFGuXlQevcjQGJSv4QAuB6EROb4RDtvfEjBykX6USiKiG6f7/s9p1mYGBj6/RmxU1k=
X-Received: by 2002:a05:6402:1d53:b0:634:ab34:ed40 with SMTP id
 4fb4d7f45d1cf-63ed76dda03mr2637221a12.0.1761644097392; Tue, 28 Oct 2025
 02:34:57 -0700 (PDT)
MIME-Version: 1.0
References: <20251027145602.199154-1-linux.amoon@gmail.com>
 <20251027145602.199154-3-linux.amoon@gmail.com> <cfaa4824-a59a-4106-b2c1-befce2af0324@rock-chips.com>
In-Reply-To: <cfaa4824-a59a-4106-b2c1-befce2af0324@rock-chips.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 28 Oct 2025 15:04:40 +0530
X-Gm-Features: AWmQ_bmnYVQ5MIlrxdaMUdyWQ-V-ciIMUJiy8e-9y11-5OlEwSkXW-sMhSd3m04
Message-ID: <CANAwSgRHhN5nZpKojKamTmZoY9qruwD0HJvEYFs_bqapoeRsoA@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] PCI: dw-rockchip: Add runtime PM support to
 Rockchip PCIe driver
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, Hans Zhang <18255117159@163.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_023459_420964_F529DCF6 
X-CRM114-Status: GOOD (  21.77  )
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

SGkgU2hhd24sCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3IGNvbW1lbnRzLgoKT24gVHVlLCAyOCBP
Y3QgMjAyNSBhdCAwNjoxNCwgU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+IHdy
b3RlOgo+Cj4g5ZyoIDIwMjUvMTAvMjcg5pif5pyf5LiAIDIyOjU1LCBBbmFuZCBNb29uIOWGmemB
kzoKPiA+IEFkZCBydW50aW1lIHBvd2VyIG1hbmFnZW1lbnQgc3VwcG9ydCB0byB0aGUgUm9ja2No
aXAgRGVzaWduV2FyZSBQQ0llCj4gPiBjb250cm9sbGVyIGRyaXZlciBieSBlbmFibGluZyBkZXZt
X3BtX3J1bnRpbWUoKSBpbiB0aGUgcHJvYmUgZnVuY3Rpb24uCj4gPiBUaGVzZSBjaGFuZ2VzIGFs
bG93IHRoZSBQQ0llIGNvbnRyb2xsZXIgdG8gc3VzcGVuZCBhbmQgcmVzdW1lIGR5bmFtaWNhbGx5
LAo+ID4gaW1wcm92aW5nIHBvd2VyIGVmZmljaWVuY3kgb24gc3VwcG9ydGVkIHBsYXRmb3Jtcy4K
PiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmFuZCBNb29uIDxsaW51eC5hbW9vbkBnbWFpbC5jb20+
Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hp
cC5jIHwgMjEgKysrKysrKysrKysrKysrKysrKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMjEgaW5z
ZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLWR3LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3
LXJvY2tjaGlwLmMKPiA+IGluZGV4IGI4NzhhZThlMmIzZS4uNTAyNjU5OGQwOWY4IDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4g
PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiA+
IEBAIC0yMCw2ICsyMCw3IEBACj4gPiAgICNpbmNsdWRlIDxsaW51eC9vZl9pcnEuaD4KPiA+ICAg
I2luY2x1ZGUgPGxpbnV4L3BoeS9waHkuaD4KPiA+ICAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3Jt
X2RldmljZS5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+Cj4gPiAgICNpbmNs
dWRlIDxsaW51eC9yZWdtYXAuaD4KPiA+ICAgI2luY2x1ZGUgPGxpbnV4L3Jlc2V0Lmg+Cj4gPgo+
ID4gQEAgLTY5MCw2ICs2OTEsMjAgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgICAgICBpZiAocmV0KQo+ID4gICAgICAg
ICAgICAgICBnb3RvIGRlaW5pdF9waHk7Cj4gPgo+ID4gKyAgICAgcmV0ID0gcG1fcnVudGltZV9z
ZXRfc3VzcGVuZGVkKGRldik7Cj4gPiArICAgICBpZiAocmV0KQo+ID4gKyAgICAgICAgICAgICBn
b3RvIGRpc2FibGVfcG1fcnVudGltZTsKPiA+ICsKPiA+ICsgICAgIHJldCA9IGRldm1fcG1fcnVu
dGltZV9lbmFibGUoZGV2KTsKPiA+ICsgICAgIGlmIChyZXQpIHsKPiA+ICsgICAgICAgICAgICAg
cmV0ID0gZGV2X2Vycl9wcm9iZShkZXYsIHJldCwgIkZhaWxlZCB0byBlbmFibGUgcnVudGltZSBQ
TVxuIik7Cj4gPiArICAgICAgICAgICAgIGdvdG8gZGVpbml0X2NsazsKPiA+ICsgICAgIH0KPiA+
ICsKPiA+ICsgICAgIHJldCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoZGV2KTsKPiA+ICsg
ICAgIGlmIChyZXQpCj4gPiArICAgICAgICAgICAgIGdvdG8gZGlzYWJsZV9wbV9ydW50aW1lOwo+
ID4gKwo+ID4gICAgICAgc3dpdGNoIChkYXRhLT5tb2RlKSB7Cj4gPiAgICAgICBjYXNlIERXX1BD
SUVfUkNfVFlQRToKPiA+ICAgICAgICAgICAgICAgcmV0ID0gcm9ja2NoaXBfcGNpZV9jb25maWd1
cmVfcmMocGRldiwgcm9ja2NoaXApOwo+ID4gQEAgLTcwOSw3ICs3MjQsMTAgQEAgc3RhdGljIGlu
dCByb2NrY2hpcF9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPgo+
ID4gICAgICAgcmV0dXJuIDA7Cj4gPgo+ID4gK2Rpc2FibGVfcG1fcnVudGltZToKPgo+IFdlIG5l
ZWQgdG8gY2FsbCByZXNldF9jb250cm9sX2Fzc2VydChyb2NrY2hpcC0+cnN0KSBiZWZvcmUgcmVs
ZWFzaW5nIHRoZQo+IHRoZSBwbSByZWZjb3VudC4gVGhlIHByb2JsZW0gd2UgZmFjZWQgb24gdmVu
ZG9yIGtlcm5lbCBpcyB0aGVyZSBtaWdodCBiZQo+IHN0aWxsIG9uLWdvaW5nIHRyYW5zYWN0aW9u
IGZyb20gSVAgdG8gdGhlIEFYSSB3aGljaCBibG9ja3MgZ2VucGQgdG8gYmUKPiBwb3dlcmVkIGRv
d24uCgpUaGFua3MsIEkgd2lsbCB0cnkgdG8gZml4IHRoaXMgaW4gdGhlIG5leHQgdmVyc2lvbi4K
ClRoYW5rcwotQW5hbmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
