Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34BD8C77B73
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Apr 2023 16:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Po9iloSA2WOas3xiluogrDkED0AM6UZWDi25p5EBYjk=; b=yc+yzeUfd1o2XE
	H9m62eRG2XIKj7osKqlAVjTj9Dis5kw9M2HMsycJ0v4v62YMDs2b3ACB3+bP33vTG0MnYr96jipEG
	8z1GZhdVae9ALO/qx6gwhPPs9gNgQKrS75bgDYQaw7Cq5nuFOBjWZZWCFR/xvIgbAM6jpbV6nHDEq
	hwUBc4ifGD5ind6N2vgPp0S1EuLABllfeN2aXnW6pyKavcRpO4QnSJcqXW8dt9D9eG9Zn6Vmfeu7u
	LcBYExF/2lSBlUf9m/hjSr5RHDE0K93uZvEE2ipDUiY1n9dKa+3ILG9ZUOA0ahrfPKBNyv7emRcwa
	TbMZkjs9XRS4D9YpP2hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prLQG-001eff-0f;
	Tue, 25 Apr 2023 16:21:44 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prLQB-001ee5-05;
	Tue, 25 Apr 2023 16:21:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E2F24B3;
	Tue, 25 Apr 2023 09:22:19 -0700 (PDT)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CD31A3F587;
	Tue, 25 Apr 2023 09:21:31 -0700 (PDT)
Message-ID: <45bc13a8-1442-2dd3-b9ea-1ed2f5962bac@arm.com>
Date: Tue, 25 Apr 2023 17:21:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
Content-Language: en-GB
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Daniel Palmer <daniel@0x0f.com>, Ansuel Smith <ansuelsmth@gmail.com>,
 Claudiu Beznea <Claudiu.Beznea@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Santiago Esteban <Santiago.Esteban@microchip.com>,
 Cristian Birsan <Cristian.Birsan@microchip.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, DTML <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-actions@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-omap@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@axis.com, linux-aspeed@lists.ozlabs.org,
 linux-rpi-kernel@lists.infradead.org, chrome-platform@lists.linux.dev,
 linux-renesas-soc@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com,
 linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org,
 linux-tegra@vger.kernel.org, linux-oxnas@groups.io,
 linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
References: <20220328000915.15041-1-ansuelsmth@gmail.com>
 <CAFr9PXkgrRe-=E=GhNnZ4w1x_FMb97-_RmX6ND1vEd74_TbZSw@mail.gmail.com>
 <4ff4f171-c5f8-87af-aad1-5e7686292288@microchip.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <4ff4f171-c5f8-87af-aad1-5e7686292288@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230425_092139_154069_6B07F70F 
X-CRM114-Status: GOOD (  23.15  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjkvMDMvMjAyMiA5OjUwIGFtLCBOaWNvbGFzIEZlcnJlIHdyb3RlOgo+IEFuc3VlbCwgQWxs
LAo+IAo+IE9uIDI4LzAzLzIwMjIgYXQgMTA6NTUsIERhbmllbCBQYWxtZXIgd3JvdGU6Cj4+IEhp
IEFuc3VlbAo+Pgo+PiBPbiBNb24sIDI4IE1hciAyMDIyIGF0IDA5OjA5LCBBbnN1ZWwgU21pdGgg
PGFuc3VlbHNtdGhAZ21haWwuY29tPiB3cm90ZToKPj4+Cj4+PiBIaSwKPj4+IGFzIHRoZSB0aXRs
ZSBzYXksIHRoZSBpbnRlbnRpb24gb2YgdGhpcyAiInNlcmllcyIiIGlzIHRvIGZpbmFsbHkgCj4+
PiBjYXRlZ29yaXplCj4+PiB0aGUgQVJNIGR0cyBkaXJlY3RvcnkgaW4gc3ViZGlyZWN0b3J5IGZv
ciBlYWNoIG9lbS4KPj4KPj4gV2hpbGUgSSBhZ3JlZSB3aXRoIHRoaXMgY2hhbmdlIGFuZCB0aGlu
ayBpdCdzIGZvciB0aGUgZ29vZCAoYnJvd3NpbmcKPj4gdGhlIEFSTSBkdHMgZGlyZWN0b3J5IGF0
IHRoZSBtb21lbnQgaXMgZnJ1c3RyYXRpbmcuLikgSSB0aGluawo+PiBidWlsZHJvb3QgYW5kIG90
aGVycyBuZWVkIHRvIGJlIHRvbGQgYWJvdXQgdGhpcyBhcyBpdCdsbCBwb3RlbnRpYWxseQo+PiBi
cmVhayB0aGVpciBrZXJuZWwgYnVpbGQgc2NyaXB0aW5nIGZvciBBUk0gYW5kIHByb2JhYmx5IG1l
c3NlcyB1cCB0aGUKPj4gY29uZmlncyB0aGV5IGhhdmUgZm9yIGV4aXN0aW5nIGJvYXJkcy4KPiAK
PiBUaGlzIGFzcGVjdCBtdXN0bid0IGJlIHVuZGVyZXN0aW1hdGVkIGFuZCBJIGFudGljaXBhdGUg
bG90cyBvZiBpc3N1ZXMgCj4gZHVyaW5nIGEgbG9uZyB0aW1lIG9uIHRoaXMgcGFydGljdWxhciB0
b3BpYyBvZiAiYnVpbGQgc3lzdGVtcyIuCj4gCj4gQW5vdGhlciBhc3BlY3QgaXMgQ0kgYW5kIHB1
YmxpYyBvciBwcml2YXRlIHRlc3RpbmcgZmFybXMgd2UgYWxsIGhhdmUgCj4gcnVubmluZy4KClll
dCBhbm90aGVyIGlzIGlmIHRoaXMgYWZmZWN0cyB3aGF0IGBtYWtlIGR0YnNfaW5zdGFsbGAgZG9l
cyAoSSBkb24ndCAKa25vdyBmb3Igc3VyZSwgYnV0IEknZCBiZSBpbmNsaW5lZCB0byBzdXNwZWN0
IGl0IG1pZ2h0KS4gU29tZSBkaXN0cm9zIAp1c2UgdGhhdCB0byBkZWxpdmVyIHRoZSBEVEJzIGFz
IHBhcnQgb2YgdGhlaXIga2VybmVsIHBhY2thZ2UsIHNvIGlmIApwYXRocyBzdWRkZW5seSBjaGFu
Z2UgaXQgY291bGQgYnJlYWsgZW5kIHVzZXJzJyBib290bG9hZGVyIHNldHVwcyB0b28uCgpUaGFu
a3MsClJvYmluLgoKPiBUaGVzZSBhc3BlY3RzIGFsd2F5cyByZWZyYWluZWQgbWUgdG8gY2hhbmdl
IGFueXRoaW5nIGluIHRoZSBuYW1pbmcgCj4gc2NoZW1lIG9mIG91ciBEVCBmaWxlcywgYnV0IGlm
IHdlIGdvIGluIHRoaXMgZGlyZWN0aW9uLCB3ZSBtdXN0IHJlYWxseSAKPiBiZSBwcmVwYXJlZCBh
bmQgSSdtIHN0aWxsIG5vdCBjb252aW5jZSBpdCdzIHdvcnRoIGl0Li4uCj4gCj4gCj4gSWYgdGhp
cyBoYXMgdG8gaGFwcGVuLCBJIHdvdWxkIGFsc28gbGlrZSB0byBxdWV1ZSBzb21lIGZpbGUgbmFt
ZSBjaGFuZ2VzIAo+IHRvIGRvIGFsbCBtb2RpZmljYXRpb25zIGluIG9uZSBnbyBpbiBvcmRlciB0
byBsb3dlciB0aGUgYW5ub3lhbmNlIGxldmVsIAo+IG9mIHRob3NlIHdobyB3b3VsZCBuZWVkIHRv
IGFkYXB0IHRvIHRob3NlIGNoYW5nZXMuCj4gCj4gQlRXLCBpcyB0aGVyZSBhIGNvbW1vbiBzY2hl
bWUgZm9yIGR0cy9kdHNpIGZpbGUgbmFtaW5nPyBJcyBpdCBtb3JlIAo+IGVuZm9yY2VkIGluIG9u
ZSB3YXkgb3IgYW5vdGhlciBmb3IgYXJtNjQgaW4gYSBzZW5zZSB0aGF0IEkgY2FuIHRha2Ugc29t
ZSAKPiBub3JtIGFzIGFuIGV4YW1wbGU/Cj4gCj4gWy4uXQo+IAo+IEJlc3QgcmVnYXJkcywKPiAg
wqAgTmljb2xhcwo+IAo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
