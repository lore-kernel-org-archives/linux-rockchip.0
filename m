Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E9B9C87FCA
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Aug 2025 08:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CNylBqGsKkmzZj+tVBodn30tF2ye6X4MFjhuV8rWwMk=; b=ge/I8ot7JeUXoz
	paaVFKTBS7uvisJWtBmrP+9lScvaOf5MbbR+yu0DhRDELknt5DT5NyHqXVpCQush3B8ceGNHSt7Af
	18ZCXFu7+S4B2tAS54Z8j1VYbAC3UKLC53La6MnyI0rcbzJFUQN8MnvJ/IoORhGLHwmnrM0X5zR4N
	A0J+phLHpZrEwgLsXdsMvG33VpWm3sXu2MtMdQQAwApKCYNl7bBgvLik5B+FxFkXpr7Cz8luQUlNZ
	cuHdlUB29IORLb3VMvVe9xyqrIIGRVsIMYuOVI6HYSo+Sve1vOtd11i+3sstVVE8MzzhtphcBYPqF
	Bx3GmRnAaTpW2wEn8wAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujwKY-000000002Bq-3taR;
	Thu, 07 Aug 2025 08:50:34 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujwI0-000000001sW-2go7;
	Thu, 07 Aug 2025 08:47:57 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-71b691a40a8so6902697b3.2;
        Thu, 07 Aug 2025 01:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754556476; x=1755161276; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CVf9LbLojcCuAhT+ga1Vyf947M38uWa9Hm3uYLCKQ/w=;
        b=eupE4LtudL+h5JZFmdFvSqkbgIFikMEyIp+nH7b5NIvDO6HNsYZSNnnSaDj0p0G6F8
         rJYV5pMyQSvsJi0qp/lQPIcFXGUBAYwjrl6BS40hOUum9yUw8YzIQPmTmzgXQdwfudCy
         WVZaHyvtmEn//V5+1G86GrHiZSOJ7241YcBuoE/0uqudsK2uNFfX51lfSyFueXg5Abbw
         UKhzV72bq4BeZIAwrYgBZAJy53kITqg1Q2LSMFe8y0BcXozRf4UKNCJ+srQAZTvTgc7w
         7kH72q5BLM5QIbeoKtCg6yQS9t3izO6AEyHnP+hUFtz+ElalkZallqyQGdNi7hjaO0Wc
         v6iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754556476; x=1755161276;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CVf9LbLojcCuAhT+ga1Vyf947M38uWa9Hm3uYLCKQ/w=;
        b=HDKl4s7OLHdVGt6GZp4r3o9RJi1IPaDaF4z3MuoYKay4QgJI5eZLvhQyfjrh5s6jCR
         9eX6tbS7iKzo526YR1k3oIZyY8l5fUobWm4hfY6NJYaj/JukI6n4LMnIfuUfvMlk1g3S
         CpLrDstOWlSQixzj0TaGF+YtvQuOrOqftJ8lko3zRbrWtMPyGpG4/ekSEttLhpnXuudS
         4StbEqbEqvNro3bugVurxLfI4xKN8otnvKca8kymHcdyexzn8QqRBgsLZYeQ+MFJi+7p
         2TOD8osOMR+uaIBc01NcILImW3TZv7brrlnTeQBiVaWwGGbVE71ux/+MAu903xej55I9
         Bhiw==
X-Forwarded-Encrypted: i=1; AJvYcCV8bS/FWRasVZ3gqYpYdo0FaAJoQs3Nl/k/8ZhXYhQ4lG8Q7n4LdK74Zpm4loLjrDyidrxBLbFLmxoz+rCO8zo=@lists.infradead.org, AJvYcCWc3e3FCyoVKvtgXwqVy1Vcy2ul/dr1oGcWFvm7t8TErqyker/uvnzW8PnyhqtT3KBXJAjXJ/RJKeqB@lists.infradead.org, AJvYcCXqachBc6JKh+ZJ1n5fxdvMxTN7GAjnQqv/Z1qJlsbKMCKMAucddx9x7x+IJ8kyGA1Mshz87Q1rPscIYEgFMJRF@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6A3GZu7Z/ENZ8Ko+q8hRDGQdeL+9Ksjp71aAVg0hLBFtCasO6
	ZBpGdWwdVo7kfBeZ3lYJTSjn37NC/531KbOIouAzBXMn3iJsqQ2zwIXF4+b1BtbPR9xgn/QlgvO
	ytMwZPVi0a1+IPSHFkyEY9Z0beDDFSzrReXxOBgI=
X-Gm-Gg: ASbGnctWrrJ8+yS9LJElXIeF4R2X8NeHekNIgLYCpKprLV+B9m4fKALcFnRPyngkg4Q
	fSmCIsOv9NdYIfEc2bML/6j+l/7WagoePLmfVmDGoBfUQZWkGOSxf1pAtTMc0Ahbtaly+oMLP3u
	UXvUiaL3Bs8pmGc2MFfoGFJTZzqDfiH39YkJqXtQJJX1sK3ewgqaoAYGW4u+IiF1vGMOiXtG4BG
	1KQuQtVdQY5Mly+121582VKUvn0MTFr68LPGNE=
X-Google-Smtp-Source: AGHT+IEF1Rgl4ol8b1AK0WWialQnOn9GOQ4H+uDN0nCUOKmheNAVCVpOijMHFOdF8iQRgP3klAdSVLKEPQEyQTej/FU=
X-Received: by 2002:a05:690c:9692:b0:71a:22e1:b351 with SMTP id
 00721157ae682-71bcc7fdfb5mr76969767b3.24.1754556475564; Thu, 07 Aug 2025
 01:47:55 -0700 (PDT)
MIME-Version: 1.0
References: <20250806133824.525871-1-rick.wertenbroek@gmail.com>
 <20250806133824.525871-4-rick.wertenbroek@gmail.com> <20250807-inquisitive-speedy-rooster-0a8488@kuoka>
 <c86bcdf0-f692-4263-a597-f8e36a53e8d9@kernel.org>
In-Reply-To: <c86bcdf0-f692-4263-a597-f8e36a53e8d9@kernel.org>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Thu, 7 Aug 2025 10:47:18 +0200
X-Gm-Features: Ac12FXxEzSnPsqcq49lE9KwQoWiI6TiOhTQgKrxWtGYG3DN0QkxgVCWP6jlC5UM
Message-ID: <CAAEEuhpHmW9hji91tbQ3MMhBZELCYc_vA+Ra3oC2W+Rf8LLC6w@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: phy: rockchip,pcie3-phy: add rockchip,phy-ref-use-pad
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: rick.wertenbroek@heig-vd.ch, dlemoal@kernel.org, 
	alberto.dassatti@heig-vd.ch, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_014756_682181_CB328EEA 
X-CRM114-Status: GOOD (  28.64  )
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

T24gVGh1LCBBdWcgNywgMjAyNSBhdCA5OjU14oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
a0BrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIDA3LzA4LzIwMjUgMDk6NTQsIEtyenlzenRvZiBL
b3psb3dza2kgd3JvdGU6Cj4gPiBPbiBXZWQsIEF1ZyAwNiwgMjAyNSBhdCAwMzozODoyM1BNICsw
MjAwLCBSaWNrIFdlcnRlbmJyb2VrIHdyb3RlOgo+ID4+ID5Gcm9tIHRoZSBSSzM1ODggVGVjaG5p
Y2FsIFJlZmVyZW5jZSBNYW51YWwsIFBhcnQxLAo+ID4+IHNlY3Rpb24gNi4xOSBQQ0llM1BIWV9H
UkYgUmVnaXN0ZXIgRGVzY3JpcHRpb246ICJyZWZfdXNlX3BhZCIKPiA+Pgo+ID4+ICJTZWxlY3Qg
cmVmZXJlbmNlIGNsb2NrIGNvbm5lY3RlZCB0byByZWZfcGFkX2Nsa19wL3JlZl9wYWRfY2xrX20u
Cj4gPj4gU2VsZWN0cyB0aGUgZXh0ZXJuYWwgcmVmX3BhZF9jbGtfcCBhbmQgcmVmX3BhZF9jbGtf
bSBpbnB1dHMgYXMgdGhlCj4gPj4gcmVmZXJlbmNlIGNsb2NrIHNvdXJjZSB3aGVuIGFzc2VydGVk
LiBXaGVuIGRlLWFzc2VydGVkLCByZWZfYWx0X2Nsa19wCj4gPj4gYW5kIHJlZl9hbHRfY2xrX20g
YXJlIHRoZSBzb3VyY2VzIG9mIHRoZSByZWZlcmVuY2UgY2xvY2suIgo+ID4+Cj4gPj4gVGhlIGhh
cmR3YXJlIHJlc2V0IHZhbHVlIGZvciB0aGlzIGZpZWxkIGlzIDB4MSAoZW5hYmxlZCkuCj4gPj4g
Tm90ZSB0aGF0IHRoaXMgcmVnaXN0ZXIgZmllbGQgaXMgb25seSBhdmFpbGFibGUgb24gUkszNTg4
LCBub3Qgb24gUkszNTY4Lgo+ID4KPiA+IFRoZW4geW91IG1pc3MgcmVzdHJpY3RpbmcgaXQgKDpm
YWxzZSkgaW4gb25lIG9mIGlmOnRoZW46IGJsb2Nrcy4KPiA+Cj4gPiBBbHNvLCBiaW5kaW5nIGNh
bm5vdCBiZSBhZnRlciB0aGUgdXNlci4gWW91IG5lZWQgdG8gcmVvcmRlciBwYXRjaGVzLgo+ID4K
PiA+IC4uLgo+ID4KPiA+Pgo+ID4+ICsgIHJvY2tjaGlwLHBoeS1yZWYtdXNlLXBhZDoKPiA+PiAr
ICAgIGRlc2NyaXB0aW9uOiB3aGljaCBQSFkgc2hvdWxkIHVzZSB0aGUgZXh0ZXJuYWwgcGFkIGFz
IFBDSWUgcmVmZXJlbmNlIGNsb2NrLgo+ID4+ICsgICAgICAxIG1lYW5zIHVzZSBwYWQgKGRlZmF1
bHQpLCAwIG1lYW5zIHVzZSBpbnRlcm5hbCBjbG9jayAoUExMX1BQTEwpLgo+ID4KPiA+IENhbid0
IHlvdSBkZWR1Y2UgaXQgZnJvbSB0aGUgcHJlc2VuY2Ugb2YgY2xvY2sgaW5wdXRzPyBJT1csIGlm
IHRoZQo+ID4gY2xvY2tzIGFyZSBwaHlzaWNhbGx5IGNvbm5lY3RlZCwgaXMgaXQgZXZlbiByZWFz
b25hYmxlIG9yIHBvc3NpYmxlIHRvCj4gPiB1c2UgaW50ZXJuYWwgY2xvY2s/CgpUaGFuayB5b3Ug
S3J6eXN6dG9mLApCdXQgbm8sIGlmIHRoZXJlIGlzIG5vIGNsb2NrLCB0aGUgZHJpdmVyIGRlYWRs
b2NrcywgaXQgbmVlZHMgYSBjbG9jawp0byBwcm9iZSBjb3JyZWN0bHkuCgpXaGVuIHRoZXJlIGlz
IGEgY2xvY2sgcGh5c2ljYWxseSBjb25uZWN0ZWQgb24gdGhlIHBhZCwgeW91IGNhbiBzdGlsbApj
aG9vc2UgdG8gdXNlIGl0IG9yIHVzZSB0aGUgaW50ZXJuYWwgY2xvY2ssIHRoaXMgaXMgbm8gcHJv
YmxlbS4KVGhlIHByb2JsZW0gaXMgd2hlbiB5b3UgaGF2ZSBubyBjbG9jayBvbiB0aGUgcGFkIChh
cyBpdCBkZWZhdWx0cyB0bwp1c2luZyB0aGUgcGFkKSBhbmQgdGhlIGxvYWRpbmcgdGhlIGRyaXZl
ciBkZWFkbG9ja3MgdGhlIHN5c3RlbS4uLgoKPiA+Cj4gPj4gKyAgICAkcmVmOiAvc2NoZW1hcy90
eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzItYXJyYXkKPiA+PiArICAgIG1pbkl0ZW1zOiAy
Cj4gPj4gKyAgICBtYXhJdGVtczogMgo+ID4+ICsgICAgaXRlbXM6Cj4gPj4gKyAgICAgIG1pbmlt
dW06IDAKPiA+PiArICAgICAgbWF4aW11bTogMQo+ID4KPiA+IE1vcmUgcHJlY2lzZToKPiA+Cj4g
PiBpdGVtczoKPiA+ICAgLSBkZXNjcmlwdGlvbjogUEhZMCByZWZlcmVuY2UgY2xvY2sgY29uZmln
Cj4gPiAgIC0gZGVzY3JpcHRpb246IFBIWTEgcmVmZXJlbmNlIGNsb2NrIGNvbmZpZwo+ID4gICBl
bnVtOiBbIDAsIDEgXQo+Cj4gRWgsIG5vLCByYXRoZXIgaWYgdGhpcyBzdGF5cyBhcyBpbnQ6Cj4K
PiAgICAgaXRlbXM6Cj4gICAgICAgLSBkZXNjcmlwdGlvbjogUEhZMCByZWZlcmVuY2UgY2xvY2sg
Y29uZmlnCj4gICAgICAgICBlbnVtOiBbIDAsIDEgXQo+ICAgICAgIC0gZGVzY3JpcHRpb246IFBI
WTEgcmVmZXJlbmNlIGNsb2NrIGNvbmZpZwo+ICAgICAgICAgZW51bTogWyAwLCAxIF0KPiAgICAg
ZGVmYXVsdDogWyAxLCAxIF0KPgo+Cj4gPiBkZWZhdWx0OiBbIDEsIDEgXQo+ID4KPiA+IEFueXdh
eSwgZGVmYXVsdCAxLCAxIGlzIHByZXR0eSBub24tb2J2aW91cywgc28gdGhpcyBzaG91bGQgYmUg
anVzdAo+ID4gbm9uLXVuaXF1ZS1zdHJpbmctYXJyYXkgKGFuZCBwcm9wZXJ0eSBzaG91bGQgYmUg
bGlrZQo+ID4gcm9ja2NoaXAscGh5LXJlZi1jbGstc291cmNlL3NlbCkuCj4gPgo+ID4KPiA+IEJl
c3QgcmVnYXJkcywKPiA+IEtyenlzenRvZgo+ID4KPgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlz
enRvZgoKSSBiYXNlZCBteSBwYXRjaCBvbiBwYXRjaCA6CjQ2NDkyZDEwMDY3NjYwNzg1YTA5ZGI0
Y2U5MjQ0NTQ1MTI2YTE3YjgKZHQtYmluZGluZ3M6IHBoeTogcm9ja2NoaXAscGNpZTMtcGh5OiBh
ZGQgcm9ja2NoaXAscngtY29tbW9uLXJlZmNsay1tb2RlCgpBcyB0aGUgb3B0aW9uIEkgYWRkIGlz
IGV4dHJlbWVseSBzaW1pbGFyLCBpdCBzZXRzIGEgZmVhdHVyZSBpbiBvbmUgb2YKdGhlIFBIWSBy
ZWdpc3RlcnMgYW5kIG9ubHkgYXBwbGllcyB0byBSSzM1ODguClRoYXQgaXMgd2h5IEkgdXNlZCB0
aGUgc2FtZSBzdHlsZSBhcyByb2NrY2hpcCxyeC1jb21tb24tcmVmY2xrLW1vZGUuCgpXb3VsZG4n
dCBpdCBiZSBjb25mdXNpbmcgb3IgYXQgbGVhc3QgaW5jb2hlcmVudCB0byB1c2UgZW51bSBmb3IK
cm9ja2NoaXAscGh5LXJlZi11c2UtcGFkIGJ1dCBub3QgZm9yIHJ4LWNvbW1vbi1yZWZjbGstbW9k
ZSA/CgpBcyBmb3IgdGhlIG5hbWUsIEkgdXNlZCBwaHktcmVmLXVzZS1wYWQgYXMgaXQgaXMgdGhl
IG5hbWUgdXNlZCBpbiB0aGUKUkszNTg4IHRlY2huaWNhbCByZWZlcmVuY2UgbWFudWFsLgooU2lt
aWxhcmx5IGRvbmUgb24gcngtY29tbW9uLXJlZmNsay1tb2RlKS4KCkJlc3QgcmVnYXJkcywKUmlj
awoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
