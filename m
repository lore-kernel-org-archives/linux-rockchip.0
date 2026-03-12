Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A1CA103E2FB
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 01:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FTFoZj8vvYi/xe6IQLFjetjJKca51oj+8u4Tq6PT9kk=; b=Y60SGWCrNznuEDjmKgc9rrHfw+
	I8VMf8fVRpZ1ufQyIijBoerQkzpypJ37wGJbwUhJfN3ryJHdjw7ssWG1CpsBrTq6wI/DMIAC/tjTU
	f3nmPzkAmjkWC5wn4Q5PzhjCKiKfqSKsO9KCL1J4YpVJDP0oeZ1VkOXtPFNqVbSa2dtZBXkwM6Ozt
	Lghd/aKSv4decpQu8kw3f3mBAyPd+kEngDl2lti4Z17jZ3noUhF96u6/Qiaj+d3j9zH/YZ36GOvr7
	eCfxCby/Mt9p+Mr5+ZTohMiMNFY7nuD86f1q01p9Xjxe8EC8gP9FtZxYeVgeCmGNx8y1VLMb/3UTF
	6ncniPnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0UvR-0000000D0rz-3aAV;
	Thu, 12 Mar 2026 01:33:21 +0000
Received: from mail-m3291.qiye.163.com ([220.197.32.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0UvP-0000000D0rM-1XVm;
	Thu, 12 Mar 2026 01:33:21 +0000
Received: from [192.168.61.151] (unknown [110.83.51.2])
	by smtp.qiye.163.com (Hmail) with ESMTP id 36a07fd9a;
	Thu, 12 Mar 2026 09:33:14 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, Robin Murphy <robin.murphy@arm.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>,
 Hans Zhang <18255117159@163.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Wilfred Mallawa <wilfred.mallawa@wdc.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Anand Moon <linux.amoon@gmail.com>,
 Grimmauld <grimmauld@grimmauld.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, driver-core@lists.linux.dev,
 Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
To: Danilo Krummrich <dakr@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>
References: <20260226101032.1042-1-linux.amoon@gmail.com>
 <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
 <87bc37ee-234c-4568-b72e-955c130a6838@arm.com>
 <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com>
 <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
 <DGZXF3LPSRK6.2QYN63QTKUQAX@kernel.org>
 <cp5uktfqdf6zs53qsye57ior2ikmssgevxxdtevkzpisaif22h@7mrxspkuibow>
 <DH09EDBW3X6T.2996UB1CFCAW2@kernel.org>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <7b5592e7-8a9d-2cf0-bb3e-e306a6337165@rock-chips.com>
Date: Thu, 12 Mar 2026 09:33:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <DH09EDBW3X6T.2996UB1CFCAW2@kernel.org>
X-HM-Tid: 0a9cdfad2d6809cckunm494d1a9c5f1dd
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCT0NCVklOHx1DSklNGB4YS1YVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKSktVQ0hVTkpVSVlXWRYaDxIVHRRZQVlPS0hVSktJT09PSFVKS0tVSk
	JLS1kG
DKIM-Signature: a=rsa-sha256;
	b=Sed4lWnDmwfKYVOVkbc4Y2rVhQcql/iiS/F9miQlGz9uPMIyj3zv76EbAV+aISfTpvB1Pl0bTfUZ8ldLKi584Z60igIIaGZ1u201GT2RVB3PU4/whmHBZz4C1IcfkvB7Echqz08J9oPFiIQyh0MGyr09uqGtdX4YzS4OFnJPaHc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=0ZuXcANpbO5f9lJpjp5DojLJZeC/g1ENjyYfealo8kY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_183319_604552_DC9C1672 
X-CRM114-Status: GOOD (  31.50  )
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

SGkgTWFuaSBhbmQgRGFuaWxvLAoK5ZyoIDIwMjYvMDMvMTIg5pif5pyf5ZubIDU6MDksIERhbmls
byBLcnVtbXJpY2gg5YaZ6YGTOgo+IE9uIFdlZCBNYXIgMTEsIDIwMjYgYXQgMToyOCBQTSBDRVQs
IE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPj4gT24gV2VkLCBNYXIgMTEsIDIwMjYgYXQg
MTI6NDY6MDNQTSArMDEwMCwgRGFuaWxvIEtydW1tcmljaCB3cm90ZToKPj4+IE9uIFdlZCBNYXIg
MTEsIDIwMjYgYXQgNjoyNCBBTSBDRVQsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPj4+
PiBJIGhhdmUgYSBjb250cmFyeSB2aWV3IGhlcmUuIElmIGp1c3QgYSBzaW5nbGUgZHJpdmVyIG9y
IGxpYiBkb2Vzbid0IGhhbmRsZSBhc3luYwo+Pj4+IHByb2JlLCBpdCBjYW5ub3QganVzdCBmb3Jj
ZSBvdGhlciBkcml2ZXJzIHRvIG5vdCB0YWtlIHRoZSBhZHZhbnRhZ2Ugb2YgYXN5bmMKPj4+PiBw
cm9iZS4gQXMgSSBzYWlkIGFib3ZlLCBlbmFibGluZyBhc3luYyBwcm9iZSBlYXNpbHkgc2F2ZXMg
YSBmZXcgaHVuZGVyZCBtcyBvcgo+Pj4+IGV2ZW4gbW9yZSBpZiB0aGVyZSBhcmUgbW9yZSB0aGFu
IG9uZSBSb290IFBvcnQgb3IgUm9vdCBDb21wbGV4IGluIGFuIFNvQy4KPj4+Cj4+PiBUaGVuIHRo
ZSBkcml2ZXIgb3IgbGliIGhhcyB0byBiZSBmaXhlZCAvIGltcHJvdmVkIGZpcnN0IG9yIHRoZSBk
cml2ZXIgY29yZSBoYXMKPj4+IHRvIGJlIGVuYWJsZWQgdG8gZGVhbCB3aXRoIGEgY2FzZSB3aGVy
ZSBQUk9CRV9GT1JDRV9TWU5DSFJPTk9VUyBpcyByZXF1ZXN0ZWQKPj4+IGZyb20gYW4gYXN5bmMg
cGF0aCwgZXRjLgo+Pj4KPj4+IEluIGFueSBjYXNlLCBhcHBseWluZyB0aGUgcGF0Y2ggYW5kIGJy
ZWFraW5nIHRoaW5ncyAoa25vd2luZ2x5PykgZG9lc24ndCBzZWVtCj4+PiBsaWtlIHRoZSBjb3Jy
ZWN0IGFwcHJvYWNoLgo+Pj4KPj4+PiBJIHN0cm9uZ2x5IGFncmVlIHdpdGggeW91IGhlcmUgdGhh
dCB0aGUgdW5kZXJseWluZyBpc3N1ZSBzaG91bGQgYmUgZml4ZWQuIEJ1dAo+Pj4+IHRoZSByZWFs
IGltcGFjdCB0byBlbmQgdXNlcnMgaXMgbm90IHRoaXMgc3BsYXQsIGJ1dCBub3QgaGF2aW5nIHRo
ZSBib290IHRpbWUKPj4+PiBvcHRpbWl6YXRpb24gdGhhdCB0aGlzIHBhdGNoIGJyaW5ncyBpbi4g
QXMgYW4gZW5kIHVzZXIsIG9uZSB3b3VsZCB3YW50IHRoZWlyCj4+Pj4gc3lzdGVtcyB0byBib290
IHF1aWNrbHkgYW5kIHRoZXkgd291bGRuJ3QgYm90aGVyIG11Y2ggYWJvdXQgYSBoYXJtbGVzcyB3
YXJuaW5nCj4+Pj4gc3BsYXQgYXBwZWFyaW5nIGluIHRoZSBkbWVzZyBsb2cuCj4+Pgo+Pj4gWW91
IG1lYW4gcXVpY2tseSBib290aW5nIGludG8gYSAiaGFybWxlc3MiIHBvdGVudGlhbCBkZWFkbG9j
ayBjb25kaXRpb24gdGhlCj4+PiB3YXJuaW5nIHNwbGF0IHRyaWVzIHRvIG1ha2UgcGVvcGxlIGF3
YXJlIG9mPyA6KQo+Pj4KPj4KPj4gSG1tLCBJIG92ZXJsb29rZWQgdGhlIGJ1aWx0LWFzLW1vZHVs
ZSBwYXJ0IHdoZXJlIHRoZSBkZWFkbG9jayBjb3VsZCBiZSBwb3NzaWJsZQo+PiBhcyBpbmRpY2F0
ZWQgYnkgdGhlIGNvbW1lbnQgYWJvdXQgdGhlIFdBUk5fT05fT05DRSgpLgo+Pgo+PiBCdXQgd2hh
dCBpcyB0aGUgcGF0aCBmb3J3YXJkIGhlcmU/IERvIHlvdSB3YW50IHRoZSBwaHlsaWIgdG8gZml4
IHRoZQo+PiByZXF1ZXN0X21vZHVsZSgpIGNhbGwgb3IgZml4IHRoZSBkcml2ZXIgY29yZSBpbnN0
ZWFkPwo+IAo+IEhlcmUgYXJlIGEgZmV3IHRob3VnaHRzLgo+IAo+IEluIGdlbmVyYWwsIEkgdGhp
bmsgdGhlIGJlc3Qgd291bGQgYmUgdG8gZ2V0IHJpZCBvZiB0aGUgKGFmZmVjdGVkKQo+IFBST0JF
X0ZPUkNFX1NZTkNIUk9OT1VTIGNhc2VzLgo+IAo+IE5vdywgSSBndWVzcyB0aGlzIGNhbiBiZSBw
cmV0dHkgaGFyZCBmb3IgYSBQQ0kgY29udHJvbGxlciBkcml2ZXIsIGFzIHlvdSBjYW4ndAo+IHJl
YWxseSBwcmVkaWN0IHdoYXQgZW5kcyB1cCBiZWluZyBwcm9iZWQgZnJvbSB5b3UgYXN5bmMgY29u
dGV4dCwgaS5lLiBpdCBjb3VsZAo+IGV2ZW4gYmUgc29tZSBvdGhlciBidXMgY29udHJvbGxlciBh
bmQgdGhpbmdzIGNvdWxkIGV2ZW4gcHJvcGFnYXRlIGZ1cnRoZXIuCj4gCj4gTm90IHN1cmUgaG93
IGJpZyBvZiBhIGRlYWwgaXQgaXMgaW4gcHJhY3RpY2UgdGhvdWdoLCB0aGVyZSBhcmUgbm90IGEg
bG90IG9mCj4gUFJPQkVfRk9SQ0VfU1lOQ0hST05PVVMgZHJpdmVycyAobGVmdCksIGJ1dCBub3Rl
IHRoYXQgc3BlY2lmeWluZyBuZWl0aGVyCj4gUFJPQkVfRk9SQ0VfU1lOQ0hST05PVVMgbm9yIFBS
T0JFX1BSRUZFUl9BU1lOQ0hST05PVVMgY3VycmVudGx5IHJlc3VsdHMgaW4KPiBzeW5jaHJvbm91
cyBieSBkZWZhdWx0Lgo+IAo+IChBbHNvLCBxdWl0ZSBzb21lIG90aGVyIFBDSSBjb250cm9sbGVy
IGRyaXZlcnMgZG8gc2V0IFBST0JFX1BSRUZFUl9BU1lOQ0hST05PVVMKPiBhbmQgYXBwYXJlbnRs
eSBnb3QgbHVja3kgd2l0aCBpdC4pCj4gCj4+RnJvbSBhIGRyaXZlci1jb3JlIHBlcnNwZWN0aXZl
IEkgdGhpbmsgd2UncmUgcmF0aGVyIGxpbWl0ZWQgb24gd2hhdCB3ZSBjYW4gZG87Cj4gd2UgYXJl
IGFscmVhZHkgaW4gYXN5bmMgY29udGV4dCBhdCB0aGlzIHBvaW50IGFuZCBjYW4ndCBtYWdpY2Fs
bHkgZ28gYmFjayB0bwo+IGluaXRjYWxsIGNvbnRleHQuCj4gCj4gU28sIHRoZSBvbmx5IHRoaW5n
IEkgY2FuIHRoaW5rIG9mIGlzIHRvIGtpY2sgb2ZmIHdvcmsgb24gYSB3b3JrcXVldWUsIHdoaWNo
IGluCj4gdGhlIGVuZCB3b3VsZCBiZSB0aGUgc2FtZSBhcyB0aGUgZGVmZXJyZWQgcHJvYmUgaGFu
ZGxpbmcuCj4gCj4gQW5vdGhlciBhbHRlcm5hdGl2ZSB3b3VsZCBiZSB0byBsZXQgdGhlIHN1YnN5
c3RlbSBoYW5kbGUgc3VjaCBjYXNlcywgd2hpY2ggaW4KPiB0aGlzIGNhc2Ugd291bGQgcHJvYmFi
bHkgbWVhbiB0byBoYW5kbGUgdGhlIGN1cnJlbnRfaXNfYXN5bmMoKSBjYXNlIGluCj4gcGNpX2hv
c3RfcHJvYmUoKSBvciBwY2lfYnVzX2FkZF9kZXZpY2VzKCkuCj4gCj4gT24gdGhlIG90aGVyIGhh
bmQsIHRoaXMgd291bGQgcHJvYmFibHkgZW5kIHVwIHRvIGJlIGEgc3Vic3lzdGVtIHNwZWNpZmlj
Cj4gaW1wbGVtZW50YXRpb24gb2YgImtpY2sgb2Ygd29yayBvbiBhIHdvcmtxdWV1ZSIuCgpBY3R1
YWxseSwgdGhpcyBpcyBleGFjdGx5IHdoYXQgd2UndmUgYmVlbiBkb2luZyBpbiBvdXIgZG93bnN0
cmVhbQpjb2RlWzFdIGZvciBxdWl0ZSBhIGxvbmcgdGltZS4gV2UndmUgZXZlbiBwdXNoZWQgdGhp
cyBvcHRpbWl6YXRpb24gZG93bgp0byB0aGUgaW5kaXZpZHVhbCBkcml2ZXIgbGV2ZWwuCgpUbyBi
ZSBob25lc3QsIEknbSBub3QgcGFydGljdWxhcmx5IGZvbmQgb2YgdGhpcyBhcHByb2FjaCBlaXRo
ZXIuCkhvd2V2ZXIsIG9uIG91ciBwbGF0Zm9ybSwgd2UgaGF2ZSBtb3JlIHRoYW4gNSBSb290IFBv
cnQgaW5zdGFuY2VzIHRoYXQKbmVlZCB0byBiZSBpbml0aWFsaXplZCBkdXJpbmcgYm9vdC4gV2hl
biBhbGwgb2YgdGhlbSBwcm9iZQpzeW5jaHJvbm91c2x5LCBpdCBzaWduaWZpY2FudGx5IGRlbGF5
cyB0aGUgZXhlY3V0aW9uIG9mIG1hbnkgb3RoZXIKY3JpdGljYWwgZHJpdmVycy4gT3VyIGN1c3Rv
bWVycyBoYXZlIGJlZW4gY29tcGxhaW5pbmcgYWJvdXQgdGhlIGJvb3QKdGltZSwgYW5kIG91ciBk
b3duc3RyZWFtIHRlYW0gaGFkIG5vIHJlYWwgY2hvaWNlIGJ1dCB0byBraWNrIG9mZiBhCmt0aHJl
YWQgc2ltaWxhciB0byB5b3VyIHN1Z2dlc3Rpb24uCgpUaGUgY29kZSBpcyB2ZXJ5IHVnbHkgYW5k
IGV4cG9zZSBhIGxvdCBvZiBjb3JuZXIgY2FzZXMgcHJvYmxlbSB3aGljaAp3YXN0ZWQgcXVpdGUg
bG90IG9mIHRpbWUgdG8gZml4LiBUaGF0J3Mgd2h5IEkgd2FzIGhlc2l0YW50IHRvIGJyaW5nCnVw
IHRoZSB0aGlzIGFwcHJvYWNoIHVwc3RyZWFtIGluaXRpYWxseS4gQnV0IHNpbmNlIHlvdSBtZW50
aW9uZWQgaXQsIEkKdGhpbmsgaXQncyB3b3J0aCBldmFsdWF0aW5nIHdoZXRoZXIgd2UgY2FuIGlt
cGxlbWVudCB0aGlzIGF0IHRoZQpzdWJzeXN0ZW0gbGV2ZWwgaW5zdGVhZCBvZiBmb3JjaW5nIGVh
Y2ggZHJpdmVyIHRvIGhhbmRsZSBpdAppbmRpdmlkdWFsbHkuIFRoaXMgd2F5LCB0aGUgY29tcGxl
eGl0eSB3b3VsZCBiZSBjZW50cmFsaXplZCwgYW5kIGRyaXZlcnMKdGhhdCBiZW5lZml0IGZyb20g
YXN5bmMgcHJvYmUgKGxpa2UgbXVsdGktUm9vdC1Qb3J0IFNvQ3MpIGNvdWxkIG9wdC1pbgp3aXRo
b3V0IHdvcnJ5aW5nIGFib3V0IHRoZSByZXF1ZXN0X21vZHVsZSgpIGRlYWRsb2NrIHNjZW5hcmlv
LgoKV2hhdCBkbyB5b3UgdGhpbms/CgoKWzFdIApodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAt
bGludXgva2VybmVsL2Jsb2IvZGV2ZWxvcC02LjYvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1kdy1yb2NrY2hpcC5jI0wxNzY0Cgo+IAo+PiBJIGNhbiBkcm9wIHRoaXMgcGF0Y2ggaW4g
dGhlIG1lYW50aW1lLiBCdXQgaG9sZGluZyB0aGlzIHByb2xvbmcgd291bGRuJ3QgaGVscC4KPiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
