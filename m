Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84A11C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 15:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/Eo2054r/z8zWJPSpqa+652K4kLt+tr4vcHrwtGuPc=; b=j1g7yMupupUgEN
	Tou4C5ny1BG9gMKeISEiW2wxjIdgClP0pG99WukEBMvk0n6+B8/A4BFP3rXB+OHFe0o7dZQdDRaHZ
	pGYo+HdkYg8ZzneFMEksR/cR8G0T1TBuJHGVDVIPZKm0JKi3IGqm6menUZmw4n/Cv2y68owNcYHKq
	4Z5vjnDUzAOsEkk3qz2ns0d2oQwwAEcv0CSvccDDGS0ED/+Kfjq9cNdQduB0c10Vc5HYf7U59Woud
	0IhSVDcqPH/7OH/pJ0umQAmbrXS3YWFL/hNLjGn1UQ8DQN9fxlLQtAfoov40agTPOKDcEQ4BsqFnO
	ZpurF0GIsB8mT9XajRMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFDqO-0000000FYLb-2Qxp;
	Wed, 14 May 2025 15:16:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFDWy-0000000FUMg-2fq0;
	Wed, 14 May 2025 14:56:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=5p9FTy7AYLJTuOgTYlyr5CXgIB8ZTMo/qUcqJKJ+R2A=; b=SFWN+OqtmTFp2j4dLkRybIlqbz
	5kjm0yFYbNSjomwR3wYbcWIguySDN8zXHaf4maKpcUl5Hj5gjb2Vy83Q27W/vpy3k0BurvwIoM5Ed
	/UNEggWNoaBh6Pdh98RnwmxebJVxs00iySpDhB4cF81oHmH/SQ0dPL22DT8cCiaICV+DcjDY4F2Ad
	p2zjKo/AWtIqgK5etugm8QkZz0q0m7Rk2vqi+3qidN9Wbd+2bOiEIBiRteC3rwmfb+Y1OZ6+jtRST
	njHyej/a6n3S8uFgijlss264TMF9Y4qGOkwNktqz2VQ7sx6xxlggaVmJY93vrCBSK9VxFFcDIV/iF
	GEMIv6zQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uFDWv-0000000HDk5-1uBX;
	Wed, 14 May 2025 14:56:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=5p9FTy7AYLJTuOgTYlyr5CXgIB8ZTMo/qUcqJKJ+R2A=; b=LHWtmkWWW0cgvOXeSkW5bnE2fg
	fF8OFmRs3E23GBjNKjvlIhsDPzL4M7H/qMbzMMjXCcPnTlWz1yItm8KGVjDHobIUgfQrByyOqovtS
	P1kfJUHIV4vmrDFCHRHT/VuGRnMkpvLmUaNB2YbaxnZDovY9paCznZm6mNeuPN96BbIMF6ZYmuDsi
	G7SWWK7P9TmzuWdnOzkdfeWbx21aGkzSy03eKU3E27JB7vEMUyG2x2+gNqpOgEciZtmzbayRmcyGM
	ia4gSsIt7Qc2FxQNEbWP6LYkYzM7+lV9dUeYX+cqvdJbTO3DN2qTOcOalkDVyajAcGiOVegtL6w37
	B4yiBFMA==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uFDWs-0006q0-Jr; Wed, 14 May 2025 16:56:18 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Cc: quentin.schulz@cherry.de, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v2 4/6] arm64: dts: rockchip: add px30-cobra base dtsi and board
 variants
Date: Wed, 14 May 2025 16:56:17 +0200
Message-ID: <38830328.XM6RcZxFsP@diego>
In-Reply-To: <20250514133951.GA1975151-robh@kernel.org>
References: <20250513150234.2331221-1-heiko@sntech.de>
 <20250513150234.2331221-5-heiko@sntech.de>
 <20250514133951.GA1975151-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_155621_695827_FA72B911 
X-CRM114-Status: GOOD (  22.36  )
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

QW0gTWl0dHdvY2gsIDE0LiBNYWkgMjAyNSwgMTU6Mzk6NTEgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBSb2IgSGVycmluZzoKPiBPbiBUdWUsIE1heSAxMywgMjAyNSBhdCAw
NTowMjozMlBNICswMjAwLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiA+IEZyb206IEhlaWtvIFN0
dWVibmVyIDxoZWlrby5zdHVlYm5lckBjaGVycnkuZGU+Cj4gPiAKPiA+IENvYnJhIGFyZSBUb3Vj
aHNjcmVlbiBkZXZpY2VzIGJ1aWx0IGFyb3VuZCB0aGUgUFgzMCBTb0MgdXNpbmcKPiA+IGEgdmFy
aWV0eSBvZiBkaXNwbGF5IG9wdGlvbnMuCj4gPiAKPiA+IFRoZSBkZXZpY2VzIGZlYXR1cmUgYW4g
RU1NQywgbmV0d29yayBwb3J0LCB1c2IgaG9zdCArIE9URyBwb3J0cyBhbmQKPiA+IGEgNzIweDEy
ODAgZGlzcGxheSB3aXRoIGEgdG91Y2hzY3JlZW4uCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEhl
aWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5lckBjaGVycnkuZGU+Cj4gPiAtLS0KPiA+ICBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgIDQgKwo+ID4gIC4u
Li9yb2NrY2hpcC9weDMwLWNvYnJhLWx0azA1MGgzMTQ2dy1hMi5kdHMgICB8ICAzOSArKwo+ID4g
IC4uLi9kdHMvcm9ja2NoaXAvcHgzMC1jb2JyYS1sdGswNTBoMzE0NncuZHRzICB8ICAzOSArKwo+
ID4gIC4uLi9kdHMvcm9ja2NoaXAvcHgzMC1jb2JyYS1sdGswNTBoMzE0OHcuZHRzICB8ICAzOSAr
Kwo+ID4gIC4uLi9kdHMvcm9ja2NoaXAvcHgzMC1jb2JyYS1sdGs1MDBoZDE4MjkuZHRzICB8ICA3
MyArKysKPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtY29icmEuZHRzaSAg
fCA1NjYgKysrKysrKysrKysrKysrKysrCj4gPiAgNiBmaWxlcyBjaGFuZ2VkLCA3NjAgaW5zZXJ0
aW9ucygrKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3B4MzAtY29icmEtbHRrMDUwaDMxNDZ3LWEyLmR0cwo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtY29icmEtbHRrMDUwaDMxNDZ3LmR0
cwo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4
MzAtY29icmEtbHRrMDUwaDMxNDh3LmR0cwo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtY29icmEtbHRrNTAwaGQxODI5LmR0cwo+ID4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtY29icmEu
ZHRzaQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9N
YWtlZmlsZSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+IGluZGV4
IDNlODc3MWVmNjliYS4uODE1MWU4YmIxY2QzIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9NYWtlZmlsZQo+ID4gQEAgLTEsNCArMSw4IEBACj4gPiAgIyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMAo+ID4gK2R0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSBw
eDMwLWNvYnJhLWx0azA1MGgzMTQ2dy1hMi5kdGIKPiA+ICtkdGItJChDT05GSUdfQVJDSF9ST0NL
Q0hJUCkgKz0gcHgzMC1jb2JyYS1sdGswNTBoMzE0NncuZHRiCj4gPiArZHRiLSQoQ09ORklHX0FS
Q0hfUk9DS0NISVApICs9IHB4MzAtY29icmEtbHRrMDUwaDMxNDh3LmR0Ygo+ID4gK2R0Yi0kKENP
TkZJR19BUkNIX1JPQ0tDSElQKSArPSBweDMwLWNvYnJhLWx0azUwMGhkMTgyOS5kdGIKPiA+ICBk
dGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcHgzMC1ldmIuZHRiCj4gPiAgZHRiLSQoQ09O
RklHX0FSQ0hfUk9DS0NISVApICs9IHB4MzAtZW5naWNhbS1weDMwLWNvcmUtY3RvdWNoMi5kdGIK
PiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcHgzMC1lbmdpY2FtLXB4MzAtY29y
ZS1jdG91Y2gyLW9mMTAuZHRiCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9weDMwLWNvYnJhLWx0azA1MGgzMTQ2dy1hMi5kdHMgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3B4MzAtY29icmEtbHRrMDUwaDMxNDZ3LWEyLmR0cwo+ID4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMWQyNjE2NGJlN2I4Cj4gPiAtLS0g
L2Rldi9udWxsCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtY29i
cmEtbHRrMDUwaDMxNDZ3LWEyLmR0cwo+ID4gQEAgLTAsMCArMSwzOSBAQAo+ID4gKy8vIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+ID4gKy8qCj4gPiArICogQ29w
eXJpZ2h0IChjKSAyMDI1IENoZXJyeSBFbWJlZGRlZCBTb2x1dGlvbnMgR21iSAo+ID4gKyAqLwo+
ID4gKwo+ID4gKy9kdHMtdjEvOwo+ID4gKyNpbmNsdWRlICJweDMwLWNvYnJhLmR0c2kiCj4gPiAr
Cj4gPiArLyB7Cj4gPiArCW1vZGVsID0gIlRoZW9icm9tYSBTeXN0ZW1zIENvYnJhIHdpdGggTFRL
MDUwSDMxNDZXLUEyIERpc3BsYXkiOwo+ID4gKwljb21wYXRpYmxlID0gInRzZCxweDMwLWNvYnJh
LWx0azA1MGgzMTQ2dy1hMiIsICJ0c2QscHgzMC1jb2JyYSIsICJyb2NrY2hpcCxweDMwIjsKPiA+
ICt9Owo+ID4gKwo+ID4gKyZkc2kgewo+ID4gKwlzdGF0dXMgPSAib2theSI7Cj4gPiArCj4gPiAr
CXBhbmVsQDAgewo+ID4gKwkJY29tcGF0aWJsZSA9ICJsZWFkdGVrLGx0azA1MGgzMTQ2dy1hMiI7
Cj4gPiArCQlyZWcgPSA8MD47Cj4gPiArCQliYWNrbGlnaHQgPSA8JmJhY2tsaWdodD47Cj4gPiAr
CQlpb3ZjYy1zdXBwbHkgPSA8JnZjY18xdjg+Owo+ID4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZh
dWx0IjsKPiA+ICsJCXBpbmN0cmwtMCA9IDwmZHNwX3JzdD47Cj4gPiArCQlyZXNldC1ncGlvcyA9
IDwmZ3BpbzAgUktfUEIyIEdQSU9fQUNUSVZFX0xPVz47Cj4gPiArCQl2Y2ktc3VwcGx5ID0gPCZ2
Y2NfMnY4PjsKPiA+ICsKPiA+ICsJCXBvcnQgewo+IAo+ICdwb3J0JyBpcyBub3QgYWxsb3dlZCBi
eSB0aGlzIGJpbmRpbmcuCgpJdCBpcyBzaW5jZSBsYXN0IHdlZWsgWzBdLCBiZWNhdXNlIHRoZSBM
ZWFkdGVrIGRpc3BsYXlzIGdvdCB0aGVpciBwb3J0CnByb3BlcnR5IGFkZGVkLgoKClswXSBodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5l
eHQuZ2l0L2NvbW1pdC8/aWQ9YmYwNjM2ZjQzNDhlMDk4ZTIzMzhlZWJiZTQyZDc3ODBjNThhMTE5
NQoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
