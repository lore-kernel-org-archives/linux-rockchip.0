Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95D12C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 07:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ncd1icQooUTe31/RR+qWmLZpT2euByIVn5JjW4ImZ1I=; b=w7fl5KLCDLdAWX
	+Mv4PSC5Szl6qcCwOuVxVAmJ8/fS4qdRPie9zbJJkGFqo6SagCsrpBQJ6oOnsnfchWRroNF4db3Sk
	pEGHGgCdQyJ4Y0ria6Nl7GpE+ec2v4hNpzJZXUhP7G75w370aMiuxHLI+kYppJYzxV3oLCXggNI0u
	L++dChcztu115k2GJ1PznJR4E/NHKrF/GStiUOV5CuPJgE8noPhJsyqNVAbaS1j5Bm0ZyMRc8kMYQ
	8SXZl+XXsDWUjZetsXNdol5CVcpFu8XiwTRymoKTXxh32Y/73VlZWySY+QvP2M+cIMm4DmfkrcazI
	j3SNXsygNUBVAUuUjHQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whirD-00000001Ekp-3e4f;
	Thu, 09 Jul 2026 07:07:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whirB-00000001Ejd-3ICN;
	Thu, 09 Jul 2026 07:07:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=pdSw+G21z2NrE5iHKTKAJzseZhloGwIrHZmDJjo4p4c=; b=wzpkFYTSB2o038W334C7hu8s9v
	7+L3+hqneJ1n9ursKNn/qF9aAa80jolpgMvJtb93jbbHpRHdG7+hl4Hfgwotw3LsMcvvE7NGnbpHi
	9bFxj2FYvyUZbgVxteLRtrPMAZUOt0YENy0Hg9DFimz1NYygsj0BXE2v77IoA+8H4/3fPk0tX6Qai
	9MNf5M9KYENWFUWpkudTS1bInIn8spWFtpDgqpeTmTaYvRRZrzRS3ULHq7/RMFB+tahmMaQ2B0uXo
	l5z9MVr1Xc+4GJPPZKcA1sh1Xo4ASqn09/xQX2HsOyMt+jqVybBUP0gYe8w8Vm4iOpudzcyPjxnsF
	08GKkryQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Dawid Olesinski <dawidro@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S . Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/4] arm64: dts: rockchip: Add crypto node to rk356x-base
Date: Thu, 09 Jul 2026 09:07:23 +0200
Message-ID: <4011768.FjKLVJYuhi@diego>
In-Reply-To: <ak7jEYTAGgeDdi1W@venus>
References: <20260708175837.1718437-1-dawidro@gmail.com>
 <20260708175837.1718437-4-dawidro@gmail.com> <ak7jEYTAGgeDdi1W@venus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_000737_876965_36B4978F 
X-CRM114-Status: GOOD (  21.99  )
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

QW0gRG9ubmVyc3RhZywgOS4gSnVsaSAyMDI2LCAwMTo1NjoxMCBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIFNlYmFzdGlhbiBSZWljaGVsOgo+IEhpLAo+IAo+IE9uIFdlZCwg
SnVsIDA4LCAyMDI2IGF0IDA2OjU4OjI0UE0gKzAxMDAsIERhd2lkIE9sZXNpbnNraSB3cm90ZToK
PiA+IEFkZCB0aGUgZGV2aWNlIHRyZWUgbm9kZSBmb3IgdGhlIFYyIGNyeXB0b2dyYXBoaWMgaGFy
ZHdhcmUgYWNjZWxlcmF0b3IKPiA+IG9uIFJLMzU2eCBTb0NzIChSSzM1NjYsIFJLMzU2OCkuCj4g
PiAKPiA+IFRoZSBJUCBibG9jayBzaXRzIGluIHRoZSBub24tc2VjdXJlIHBlcmlwaGVyYWwgZG9t
YWluLiBJdHMgdGhyZWUgY2xvY2tzCj4gPiAoY29yZSwgYWNsaywgaGNsaykgYW5kIHJlc2V0IGxp
bmUgYXJlIGFjY2Vzc2libGUgZGlyZWN0bHkgdGhyb3VnaCB0aGUKPiA+IG1haW4gbm9uLXNlY3Vy
ZSBDUlUsIHNvIG5vIGZpcm13YXJlIGludGVybWVkaWFyeSBpcyByZXF1aXJlZC4KPiA+IAo+ID4g
VGhlIG5vZGUgaXMgZGlzYWJsZWQgYnkgZGVmYXVsdDsgYm9hcmQgZmlsZXMgdGhhdCB3aXNoIHRv
IHVzZSBoYXJkd2FyZQo+ID4gY3J5cHRvIG9mZmxvYWQgbXVzdCBlbmFibGUgaXQuCj4gCj4gV2h5
IGlzIGl0IGRpc2FibGVkIGJ5IGRlZmF1bHQ/IEl0IGRvZXNuJ3Qgc2VlbSB0byBiZSBib2FyZCBz
cGVjaWZpYwo+IGF0IGFsbCB0byBtZSAodGhlIHNhbWUgcXVlc3Rpb24gYXBwbGllcyB0byB0aGUg
UkszNTg4IERUKS4KCllvdSdyZSBkZWZpbml0bHkgcmlnaHQgYWJvdXQgdGhhdCAuLi4gdGhlcmUg
YXJlIG5vIGJvYXJkIHNwZWNpZmljIHJlc291cmNlcwpuZWVkZWQsIHNvIERhd2lkIHBsZWFzZSBk
cm9wIHRoZSBzdGF0dXMgZnJvbSBib3RoIG5vZGVzLgoKCkhlaWtvCgo+ID4gCj4gPiBTaWduZWQt
b2ZmLWJ5OiBEYXdpZCBPbGVzaW5za2kgPGRhd2lkcm9AZ21haWwuY29tPgo+ID4gLS0tCj4gPiAg
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5kdHNpIHwgMTIgKysrKysr
KysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LWJhc2UuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LWJhc2UuZHRzaQo+ID4gaW5kZXgg
YTU4MzI4OTViZDM5Li45ZGU3ZTc0ODdjYTEgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTZ4LWJhc2UuZHRzaQo+ID4gQEAgLTExMTIsNiArMTExMiwxOCBA
QCBzZGhjaTogbW1jQGZlMzEwMDAwIHsKPiA+ICAJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiAg
CX07Cj4gPiAgCj4gPiArCWNyeXB0bzogY3J5cHRvQGZlMzgwMDAwIHsKPiA+ICsJCWNvbXBhdGli
bGUgPSAicm9ja2NoaXAscmszNTY4LWNyeXB0byI7Cj4gPiArCQlyZWcgPSA8MHgwIDB4ZmUzODAw
MDAgMHgwIDB4MjAwMD47Cj4gPiArCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNCBJUlFfVFlQRV9M
RVZFTF9ISUdIPjsKPiA+ICsJCWNsb2NrcyA9IDwmY3J1IENMS19DUllQVE9fTlNfQ09SRT4sIDwm
Y3J1IEFDTEtfQ1JZUFRPX05TPiwKPiA+ICsJCQkgPCZjcnUgSENMS19DUllQVE9fTlM+Owo+ID4g
KwkJY2xvY2stbmFtZXMgPSAiY29yZSIsICJhY2xrIiwgImhjbGsiOwo+ID4gKwkJcmVzZXRzID0g
PCZjcnUgU1JTVF9DUllQVE9fTlNfQ09SRT47Cj4gPiArCQlyZXNldC1uYW1lcyA9ICJjb3JlIjsK
PiA+ICsJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiArCX07Cj4gPiArCj4gPiAgCS8qCj4gPiAg
CSAqIFRlc3Rpbmcgc2hvd2VkIHRoYXQgdGhlIEhXUk5HIGZvdW5kIGluIFJLMzU2NiBwcm9kdWNl
cyB1bmFjY2VwdGFibHkKPiA+ICAJICogbG93IHF1YWxpdHkgb2YgcmFuZG9tIGRhdGEsIHNvIHRo
ZSBIV1JORyBpc24ndCBlbmFibGVkIGZvciBhbGwgUkszNTZ4Cj4gCgoKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
