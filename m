Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 999B7C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 11:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+f6JuwMDqCMRPkDj3R2zNdhHb1h76ms20eomGRyMN8=; b=2PpJcex+XNs12u
	UfNRSZVgA/ynqhBKjcKh8rYU+PtzWLYe9liYRYt9f6D0V+i11j4sUya4VkDVXHoqaP6BRl6MO5eGu
	vyCXwvxckECDkk8glAvtkF+DgqczU+fuzv4od/+w6ZgwYQx5miuPU7GcOYTQUGkLkI79jq8HtFEZO
	iWpZPtqs4vkfnPwiUKUJesyfzLGjn2q+jv3U87c1/4TiNhWHdKYJscvZnFWO8Qw/2jW9+gAtoDx9B
	115EsbGnaQbgfLpJzJvNeukOeDGST93r5paUEddGZgEHVIrPuNLsMDLU4e86WC2CCNDg0GXbYU+Zf
	Jk3uscDdF582BNSO7w7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUjZ-00FPca-IW; Sun, 09 Oct 2022 11:44:41 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUjO-00FPa8-BW; Sun, 09 Oct 2022 11:44:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id F3CDBCE09CE;
	Sun,  9 Oct 2022 11:44:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C44B5C433D6;
	Sun,  9 Oct 2022 11:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665315864;
	bh=XoBn8JDusgMDII6knjqYs6PwnqkxgJicWV318ZzCTcM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=QKVAJXkVUMgWtJTkovQsQQK4QfJVZqYwc63drlULdhLnU9EQL3CFA7aNdtn4yPhWq
	 /o4d5V+M545Qh2LwK1PrWwCMqnTKQ/GCtwyQt+afjyRiFFJ8tU+1ZGa6lXnES9vj4x
	 P3X2DYn+cWcaKXYmQq0GggcBgdsRS4wTZtn5ZlO72kDpD+XYo3zocAArQtQuz6FtF0
	 jIVLd0Ucv8Z2aSTGwS+Pm/J8FnGs+pajzEoxa9/l1Mh07IXaJ5rIEkOVOI2k5S/wqQ
	 cSobF8c5beTVLxIaZPUFu1AUp05Jejx1F/c0UpHgWcB+Zf9XG+NpqfrM5gESbP1RbS
	 SF9kU43X0ad+A==
Date: Sun, 9 Oct 2022 12:44:40 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, Nuno =?UTF-8?B?U8Oh?= 
 <nuno.sa@analog.com>, linux-amlogic@lists.infradead.org, linux-imx@nxp.com,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Shawn Guo <shawnguo@kernel.org>, Lars-Peter
 Clausen <lars@metafoo.de>, Jyoti Bhayana <jbhayana@google.com>, Hans de
 Goede <hdegoede@redhat.com>, Andriy Tryshnivskyy
 <andriy.tryshnivskyy@opensynergy.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Miquel Raynal <miquel.raynal@bootlin.com>, Cixi
 Geng <cixi.geng1@unisoc.com>, Baolin Wang <baolin.wang@linux.alibaba.com>,
 Ciprian Regus <ciprian.regus@analog.com>, Fabio Estevam
 <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, Alexandru
 Ardelean <aardelean@deviqon.com>, Florian Boor
 <florian.boor@kernelconcepts.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Orson Zhai <orsonzhai@gmail.com>, Chen-Yu
 Tsai <wens@csie.org>, Chunyan Zhang <zhang.lyra@gmail.com>, Vladimir
 Zapolskiy <vz@mleia.com>, Jerome Brunet <jbrunet@baylibre.com>, Haibo Chen
 <haibo.chen@nxp.com>, Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v2 15/16] iio: health: max30102: do not use internal
 iio_dev lock
Message-ID: <20221009124440.71adf505@jic23-huawei>
In-Reply-To: <428661431e54744064946ced681cc0351d51d698.camel@gmail.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	<20221004134909.1692021-16-nuno.sa@analog.com>
	<CAHp75VdiAzOUNMB3wD5og-uZi1W_7UWkqV6+s7jCxpaBs1VWRQ@mail.gmail.com>
	<428661431e54744064946ced681cc0351d51d698.camel@gmail.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_044430_774865_67959CF3 
X-CRM114-Status: GOOD (  34.96  )
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

T24gV2VkLCAwNSBPY3QgMjAyMiAxMDoxNzowMCArMDIwMApOdW5vIFPDoSA8bm9uYW1lLm51bm9A
Z21haWwuY29tPiB3cm90ZToKCj4gT24gVHVlLCAyMDIyLTEwLTA0IGF0IDE3OjE1ICswMzAwLCBB
bmR5IFNoZXZjaGVua28gd3JvdGU6Cj4gPiBPbiBUdWUsIE9jdCA0LCAyMDIyIGF0IDQ6NDkgUE0g
TnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4gd3JvdGU6ICAKPiA+ID4gCj4gPiA+IFRoZSBw
YXR0ZXJuIHVzZWQgaW4gdGhpcyBkZXZpY2UgZG9lcyBub3QgcXVpdGUgZml0IGluIHRoZQo+ID4g
PiBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2RlKCkgdHlwaWNhbCB1c2FnZS4gSW4gdGhpcyBj
YXNlLCB3ZSB3YW50Cj4gPiA+IHRvCj4gPiA+IGtub3cgaWYgd2UgYXJlIGluIGJ1ZmZlcmVkIG1v
ZGUgb3Igbm90IHRvIGtub3cgaWYgdGhlIGRldmljZSBpcwo+ID4gPiBwb3dlcmVkCj4gPiA+IChi
dWZmZXIgbW9kZSkgb3Igbm90LiBBbmQgZGVwZW5kaW5nIG9uIHRoYXQgbWF4MzAxMDJfZ2V0X3Rl
bXAoKQo+ID4gPiB3aWxsCj4gPiA+IHBvd2VyIG9uIHRoZSBkZXZpY2UgaWYgbmVlZGVkLiBIZW5j
ZSwgaW4gb3JkZXIgdG8ga2VlcCB0aGUgc2FtZQo+ID4gPiBmdW5jdGlvbmFsaXR5LCB3ZSB0cnkg
dG86Cj4gPiA+IAo+ID4gPiAxLiBDbGFpbSBCdWZmZXJlZCBtb2RlOwo+ID4gPiAyOiBJZiAxKSBz
dWNjZWVkcyBjYWxsIG1heDMwMTAyX2dldF90ZW1wKCkgd2l0aG91dCBwb3dlcmluZyBvbiB0aGUK
PiA+ID4gwqDCoCBkZXZpY2U7Cj4gPiA+IDM6IFJlbGVhc2UgQnVmZmVyZWQgbW9kZTsKPiA+ID4g
NDogSWYgMSkgZmFpbHMsIENsYWltIERpcmVjdCBtb2RlOwo+ID4gPiA1OiBJZiA0KSBzdWNjZWVk
cyBjYWxsIG1heDMwMTAyX2dldF90ZW1wKCkgd2l0aCBwb3dlcmluZyBvbiB0aGUKPiA+ID4gZGV2
aWNlOwo+ID4gPiA2OiBSZWxlYXNlIERpcmVjdCBtb2RlOwo+ID4gPiA3OiBJZiA0KSBmYWlscywg
Z290byB0byAxKSBhbmQgdHJ5IGFnYWluLgo+ID4gPiAKPiA+ID4gVGhpcyBkYW5jZSBiZXR3ZWVu
IGJ1ZmZlcmVkIGFuZCBkaXJlY3QgbW9kZSBpcyBub3QgcGFydGljdWxhcmx5Cj4gPiA+IHByZXR0
eQo+ID4gPiAoYXMgd2VsbCBhcyB0aGUgbG9vcCBpbnRyb2R1Y2VkIGJ5IHRoZSBnb3RvIHN0YXRl
bWVudCkgYnV0IGl0IGRvZXMKPiA+ID4gYWxsb3cKPiA+ID4gdXMgdG8gZ2V0IHJpZCBvZiB0aGUg
bWxvY2sgdXNhZ2Ugd2hpbGUga2VlcGluZyB0aGUgc2FtZSBiZWhhdmlvci4gIAo+ID4gCj4gPiAu
Li4KPiA+ICAgCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChpaW9fZGV2
aWNlX2NsYWltX2J1ZmZlcl9tb2RlKGluZGlvX2RldikpIHsgIAo+ID4gCj4gPiBXaHkgaXMgcmV0
IG5vdCB1c2VkIGhlcmU/Cj4gPiAgIAo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLyoKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgKiBUaGlzIG9uZSBpcyBhICpiaXQqIGhhY2t5LiBJZiB3ZSBjYW5u
b3QKPiA+ID4gY2xhaW0gYnVmZmVyCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgICogbW9kZSwgdGhlbiB0cnkgZGlyZWN0IG1vZGUgc28gdGhhdCB3
ZQo+ID4gPiBtYWtlIHN1cmUKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgKiB0aGluZ3MgY2Fubm90IGNvbmN1cnJlbnRseSBjaGFuZ2UuIEFuZAo+
ID4gPiB3ZSBqdXN0IGtlZXAKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgKiB0cnlpbmcgdW50aWwgd2UgZ2V0IG9uZSBvZiB0aGUgbW9kZXMuLi4K
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8K
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmCj4g
PiA+IChpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2RlKGluZGlvX2RldikpICAKPiA+IAo+ID4g
Li4uYW5kIGhlcmU/Cj4gPiAgIAo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gYW55X21vZGVfcmV0cnk7ICAKPiA+
ICAgCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0gZWxzZSB7ICAKPiA+ICAg
Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0gIAo+ID4gCj4gPiBJLm8udy4g
d2hhdCBlcnJvciBjb2RlIHdpbGwgYmUgdmlzaWJsZSB0byB0aGUgY2FsbGVyIGFuZCB3aHkuCj4g
PiAgIAo+IAo+IE5vdGUgdGhhdCB3ZSBkbyBub3QgcmVhbGx5IGNhcmUgYWJvdXQgdGhlIGVycm9y
IGNvZGUgcmV0dXJuZWQgYnkgYm90aAo+IGlpb19kZXZpY2VfY2xhaW1fYnVmZmVyX21vZGUoKSBh
bmQgaWlvX2RldmljZV9jbGFpbV9kaXJlY3RfbW9kZSgpLiBXZQo+IGp1c3QgbG9vcCB1bnRpbCB3
ZSBnZXQgb25lIG9mIHRoZSBtb2RlcyAodGh1cyByZXQgPSAwKSBzbyB0aGF0IHdlIGNhbgo+IHNh
ZmVseSBjYWxsIG9uZSBvZiB0aGUgbWF4MzAxMDJfZ2V0X3RlbXAoKSB2YXJpYW50cy4gQW5kIHRo
YXQgd2lsbCBiZQo+IHRoZSB2aXNpYmxlIGVycm9yIGNvZGUgKGlmIGFueSkuIFRoYXQgc2FpZCwg
eW91IGNhbiBsb29rIGF0IHRoZSBmaXJzdAo+IHZlcnNpb24gb2YgdGhlIHNlcmllcyBhYm91dCB0
aGlzIChhbmQgdGhlIHByZXZpb3VzIHBhdGNoKSBhbmQgd2h5IHRoaXMKPiBpcyBiZWluZyBkb25l
IGxpa2UgdGhpcyAobm90ZSB0aGF0IEknbSBhbHNvIG5vdCAxMDAlIGNvbnZpbmNlZCBhYm91dAo+
IHRoaXMgcGluZyBwb25nIGJldHdlZW4gZ2V0dGluZyBvbmUgb2YgdGhlIElJTyBtb2RlcyBidXQg
aXQncyBhbHNvIG5vdAo+IHRoYXQgYmFkIGFuZCBpZiB0aGVyZSdzIG5vIG1ham9yIGNvbXBsYWlu
cywgSSdtIGZpbmUgd2l0aCBpdCkuCgpUaGlzIGlzIGEgdmFuaXNoaW5nbHkgcmFyZSBjb3JuZXIg
Y2FzZSBhbmQgbm90IGluIGEgcmVtb3RlbHkgaGlnaCBwZXJmb3JtYW5jZQpwYXRoIHNvIEknbSBu
b3Qga2VlbiBvbiBpbnRyb2R1Y2luZyBhIG1vcmUgY29tcGxleCBBUEkganVzdCB0byBoYW5kbGUK
dGhpcyBjb3JuZXIuIElmIHdlIGFkZGVkIGEgbWVhbnMgdG8gZ2V0IHRoZSBsb2NrIGluZGVwZW5k
ZW50IG9mIG1vZGUKd2UnZCBoYXZlIGFuIGludGVyZmFjZSB0aGF0IGlzIGZhciB0byBsaWtlbHkg
dG8gZ2V0IG1pc3N1c2VkLgpXaGF0IHlvdSBoYXZlIGhlcmUgZG9lcyB0aGUgam9iIGFuZCBsb29r
cyBuYXN0eSBlbm91Z2ggdG8gcHV0IHBlb3BsZSBvZmYKY29weWluZyBpdCB1bmxlc3MgdGhleSBy
ZWFsbHkgbmVlZCBpdCEKCkpvbmF0aGFuCgo+IAo+IC0gTnVubyBTw6EKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
