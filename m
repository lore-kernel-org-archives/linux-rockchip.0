Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A279AEB64DD
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 13:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5WlStaN1RO2B+4q5jIwXKpShGAtaonG6abTHB7i/rY=; b=qgqHL5dmTaYTXN
	JBi43NuanRWO7jy6mBVvaO4G81sAfZp0GDRSi6euTC+ukAQv0HfgbShCoUiTaC/PWH1++rUQYUphv
	rhsn7WQnyFOXZ2sHFTlnpxb9swOn1oLrEs4fx1J32UabEYbGzKEfIka1uik8p4e+9j9dKxd9KbkBK
	lIBWLlCDWLmdXv2f7MzYA0n5vEonhlFxTVk9o/4CWOEF/x6ShFYeSaC/5u65GA+/tN/aW0brN+XXG
	pcj6y1ssqpvo3DzbVGQzKWU040ZhfI+fttyYv0mdqqfbqXHGMgyNe6qu3p+CUPA2wwl+fqu6+TDl6
	sJL9EmaW1o1PWyTh8UkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE93s-00DJVP-0Q;
	Tue, 27 Jun 2023 13:48:52 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE93o-00DJU4-1k;
	Tue, 27 Jun 2023 13:48:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id ABE0E611B3;
	Tue, 27 Jun 2023 13:48:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F486C43395;
	Tue, 27 Jun 2023 13:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687873726;
	bh=mObELhIa7cwUVV/oIDNa5An5fXRPEinl+dDJGvds3Nc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=L51bvRo3oGBkGU3bYcUoxBi7qn+NBS181faXZyiA+mjcHOLWAVCr3vgHqTrqbzGBQ
	 30OTwDS0JSOAiLcEqhE4pFGIsNHahwmRQmJPtUewXfu/gR9wKpeIfXiyPraZG7Z60J
	 zgf00meR3swepOPrA3FOV8I0GsUgmhpFuxJZBv2+BoNuiH4I61qnrDjmjrcKIA/JZB
	 ow66V3Jogu1L9blAYv3JNW41bMhfWTVYCVmk1s2hlP8DYAH6YPqsZVIb3yHd5RIvkv
	 WAvGB74OXpKMUifH2ZLpFkzPcrMrYLVBSK/iRwFRPkARZsPzEg1SpyjRevjogb2YKB
	 IiiYpcBwJkMag==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2b699284ff4so45336251fa.2;
        Tue, 27 Jun 2023 06:48:46 -0700 (PDT)
X-Gm-Message-State: AC+VfDwY4xdyucRe6MFfzIp1Crx97T+b41BuFjGlK3fJwWCLH629o/R0
	kGNsJqSoKHZnggsXPaGHi389rTwX42Ekze1K/Q==
X-Google-Smtp-Source: ACHHUZ5mxTMdxMXPa9Ql9RKi9asFXmBgUnXk5or90ARb0BmcJyRwHgk8XT0HrKpFAmR/DxyxLhEgELhil1yyDDw4tUE=
X-Received: by 2002:a2e:7a06:0:b0:2b6:97e6:93f5 with SMTP id
 v6-20020a2e7a06000000b002b697e693f5mr4452783ljc.11.1687873724458; Tue, 27 Jun
 2023 06:48:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230616170022.76107-1-sebastian.reichel@collabora.com>
 <20230616170022.76107-2-sebastian.reichel@collabora.com> <n5vgfnqicq3ndgqtcp3yjurbdn76vucj6zyjhlpjbdwoquv2la@5g5kv5gceyd7>
In-Reply-To: <n5vgfnqicq3ndgqtcp3yjurbdn76vucj6zyjhlpjbdwoquv2la@5g5kv5gceyd7>
From: Rob Herring <robh@kernel.org>
Date: Tue, 27 Jun 2023 07:48:29 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+=kBrujhLW_KNRWpj+DQJbnXrA=RS3La5ekbJtji+xiQ@mail.gmail.com>
Message-ID: <CAL_Jsq+=kBrujhLW_KNRWpj+DQJbnXrA=RS3La5ekbJtji+xiQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/4] dt-bindings: PCI: dwc: rockchip: Fix
 interrupt-names issue
To: Serge Semin <fancer.lancer@gmail.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_064848_676044_0C5F0434 
X-CRM114-Status: GOOD (  24.43  )
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

T24gVHVlLCBKdW4gMjcsIDIwMjMgYXQgNjoyN+KAr0FNIFNlcmdlIFNlbWluIDxmYW5jZXIubGFu
Y2VyQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBGcmksIEp1biAxNiwgMjAyMyBhdCAwNzowMDox
OVBNICswMjAwLCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90ZToKPiA+IFRoZSBSSzM1NnggKGFuZCBS
SzM1ODgpIGhhdmUgNSBnYW5nZWQgaW50ZXJydXB0cy4gRm9yIGV4YW1wbGUgdGhlCj4gPiAibGVn
YWN5IiBpbnRlcnJ1cHQgY29tYmluZXMgImludGEvaW50Yi9pbnRjL2ludGQiIHdpdGggYSByZWdp
c3Rlcgo+ID4gcHJvdmlkaW5nIHRoZSBkZXRhaWxzLgo+ID4KPiA+IEN1cnJlbnRseSB0aGUgYmlu
ZGluZyBpcyBub3Qgc3BlY2lmeWluZyB0aGVzZSBpbnRlcnJ1cHRzIHJlc3VsdGluZwo+ID4gaW4g
YSBidW5jaCBvZiBlcnJvcnMgZm9yIGFsbCByazM1NnggYm9hcmRzIHVzaW5nIFBDSWUuCj4gPgo+
ID4gRml4IHRoaXMgYnkgc3BlY2lmeWluZyB0aGUgaW50ZXJydXB0cyBhbmQgYWRkIHRoZW0gdG8g
dGhlIGV4YW1wbGUKPiA+IHRvIHByZXZlbnQgcmVncmVzc2lvbnMuCj4gPgo+ID4gU2lnbmVkLW9m
Zi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+
Cj4gPiAtLS0KPiA+ICAuLi4vYmluZGluZ3MvcGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbCAgICAg
ICAgIHwgMTggKysrKysrKysrKysrKysrKysrCj4gPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGNpL3NucHMsZHctcGNpZS55YW1sICB8IDE1ICsrKysrKysrKysrKysrLQo+ID4gIDIgZmlsZXMg
Y2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3JvY2tjaGlwLWR3LXBj
aWUueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAt
ZHctcGNpZS55YW1sCj4gPiBpbmRleCAyNGM4ODk0MmU1OWUuLjk4ZTQ1ZDJkOGRmZSAxMDA2NDQK
PiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAt
ZHctcGNpZS55YW1sCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbAo+ID4gQEAgLTU2LDYgKzU2LDE3IEBAIHByb3BlcnRp
ZXM6Cj4gPiAgICAgICAgLSBjb25zdDogcGNsawo+ID4gICAgICAgIC0gY29uc3Q6IGF1eAo+ID4K
PiA+ICsgIGludGVycnVwdHM6Cj4gPiArICAgIG1heEl0ZW1zOiA1Cj4gPiArCj4gPiArICBpbnRl
cnJ1cHQtbmFtZXM6Cj4gPiArICAgIGl0ZW1zOgo+ID4gKyAgICAgIC0gY29uc3Q6IHN5cwo+ID4g
KyAgICAgIC0gY29uc3Q6IHBtYwo+ID4gKyAgICAgIC0gY29uc3Q6IG1zZwo+ID4gKyAgICAgIC0g
Y29uc3Q6IGxlZ2FjeQo+ID4gKyAgICAgIC0gY29uc3Q6IGVycgo+ID4gKwo+ID4gICAgbXNpLW1h
cDogdHJ1ZQo+ID4KPiA+ICAgIG51bS1sYW5lczogdHJ1ZQo+ID4gQEAgLTk4LDYgKzEwOSw3IEBA
IHVuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKPiA+Cj4gPiAgZXhhbXBsZXM6Cj4gPiAgICAt
IHwKPiA+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2Fy
bS1naWMuaD4KPiA+Cj4gPiAgICAgIGJ1cyB7Cj4gPiAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9
IDwyPjsKPiA+IEBAIC0xMTcsNiArMTI5LDEyIEBAIGV4YW1wbGVzOgo+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgImFjbGtfZGJpIiwgInBjbGsiLAo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgImF1eCI7Cj4gPiAgICAgICAgICAgICAgZGV2aWNlX3R5cGUgPSAicGNpIjsKPiA+
ICsgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTYwIElSUV9UWVBFX0xFVkVMX0hJ
R0g+LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICA8R0lDX1NQSSAxNTkgSVJRX1RZUEVf
TEVWRUxfSElHSD4sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgIDxHSUNfU1BJIDE1OCBJ
UlFfVFlQRV9MRVZFTF9ISUdIPiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgPEdJQ19T
UEkgMTU3IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICA8R0lDX1NQSSAxNTYgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gPiArICAgICAgICAgICAgaW50
ZXJydXB0LW5hbWVzID0gInN5cyIsICJwbWMiLCAibXNnIiwgImxlZ2FjeSIsICJlcnIiOwo+ID4g
ICAgICAgICAgICAgIGxpbnV4LHBjaS1kb21haW4gPSA8Mj47Cj4gPiAgICAgICAgICAgICAgbWF4
LWxpbmstc3BlZWQgPSA8Mj47Cj4gPiAgICAgICAgICAgICAgbXNpLW1hcCA9IDwweDIwMDAgJml0
cyAweDIwMDAgMHgxMDAwPjsKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGNpL3NucHMsZHctcGNpZS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BjaS9zbnBzLGR3LXBjaWUueWFtbAo+ID4gaW5kZXggMWE4M2YwZjY1ZjE5
Li45ZjYwNWViMjk3ZjUgMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGNpL3NucHMsZHctcGNpZS55YW1sCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGNpL3NucHMsZHctcGNpZS55YW1sCj4gPiBAQCAtMTkzLDkgKzE5
MywyMiBAQCBwcm9wZXJ0aWVzOgo+ID4gICAgICAgICAgICBvbmVPZjoKPiA+ICAgICAgICAgICAg
ICAtIGRlc2NyaXB0aW9uOiBTZWUgbmF0aXZlICJhcHAiIElSUSBmb3IgZGV0YWlscwo+ID4gICAg
ICAgICAgICAgICAgZW51bTogWyBpbnRyIF0KPgo+IFRoZSBJUlFzIGJlbG93IGFyZSBlaXRoZXIg
Y29tYmluZWQgdmVyc2lvbiBvZiB0aGUgYWxyZWFkeSBkZWZpbmVkIElSUXMKPiBvciBqdXN0IHRo
ZSBnZW5lcmljIERXIFBDSWUgSVJRcyBidXQgbmFtZWQgZGlmZmVyZW50bHkuIE1vcmVvdmVyIEkK
PiBkb24ndCBzZWUga2VybmVsIHVzaW5nIGFueSBvZiB0aGVtIGV4Y2VwdCB0aGUgImxlZ2FjeSIg
aW50ZXJydXB0LiBXaGF0Cj4gYWJvdXQgY29udmVydGluZyB0aGUgZHRzIGZpbGVzIHRvIHVzaW5n
IHRoZSBhbHJlYWR5IGRlZmluZWQgbmFtZXMgaW5zdGVhZAo+IG9mIGV4dGVuZGluZyB0aGUgYWxy
ZWFkeSBvdmVyLWRpdmVyZ2VkIERULWJpbmRpbmdzPwo+IFJvYiwgS3J6eXN6dG9mPwoKSWYgdGhl
cmUncyBub3QgYSBkZXBlbmRlbmN5IG9uIHRoZSBuYW1lcywgdGhlbiB3ZSBjYW4gZ2V0IGF3YXkg
d2l0aApjaGFuZ2luZyB0aGVtLiBPdGhlcndpc2UsIGl0J3MgYW4gQUJJIGlzc3VlIHRvIGNoYW5n
ZSB0aGVtLiBTdXBwb3J0aW5nCmJvdGggbmFtZXMgaW4gdGhlIGRyaXZlciBwYXJ0aWFsbHkgbWl0
aWdhdGVzIHRoYXQsIGJ1dCBpc24ndCB3b3J0aApjYXJyeWluZyB0aGF0IElNTy4KCldpbGwgZHJv
cCB0aGlzIG9uZSBmcm9tIG15IHRyZWUuIFNlZW1zIHBhdGNoZXMgMiBhbmQgMyBhcmVuJ3QKZGVw
ZW5kZW50IG9uIHRoaXMgb25lLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
