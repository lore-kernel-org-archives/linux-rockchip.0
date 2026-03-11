Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A13791062889
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 12:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGrZ6zdY6x8xG//5coBxiCtbidRrsW8QZwkN5ZmISzE=; b=jZP6tw9u5RBckP
	Bs1oqI1BuYnfm4ZKWTabnyAQo2RfTl4A0rPOZo3Wr434AOf6KMI9X/+y14c/MXIbsAtBRaUrNZRLR
	syWRqMg/UeIPnbPYoh0zgcKa/d6/jGJccEdbTKkOMw+Om0oE47hy1L5mqVHFPf9ftWfQ3LujBKPZi
	bU8p/sVjmb8fXfbc/f0udT5yh2UV50dcYIHBogguSJnj12+XDb+SG63aQWRz95i7IgIcOeermsKcB
	vGfyGkuSlnV9B5UBMIBnJR5KbBF1tzB0V2bjk50TDfaFddlmpAyLA5rpUjZiy2wyQxB2ErLhQ0gsG
	MBE6X732haDchJJut0kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0IgC-0000000BYsd-0kxX;
	Wed, 11 Mar 2026 12:28:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0IgA-0000000BYsA-3IRB;
	Wed, 11 Mar 2026 12:28:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9F42B60145;
	Wed, 11 Mar 2026 12:28:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E196C4CEF7;
	Wed, 11 Mar 2026 12:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773232125;
	bh=WuY0INtBXp4bdO1U7Nbe5xqaanpsrysVxQk4S6c9FJY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kzdROzh4Rp4Awq3KG6vcTN0jZmJEl9lTvk2wAzo/euSWUrAGp/0mG1zTn5WTwyPBS
	 qIy0pOO4VNPy4Mob6sato7lSAcfmKli4OidYuI0tO78gBVvkeamOJ3ZbBElZciUoRm
	 4h5ygxchTqQeBrn59Aw7z/dE6vb9l5sAc68YhkFpfL6Q/5/TULltm4Qo5SXCIoC8+L
	 /cIgawapsiF0AE5tXzGdBfwqhKixaleuz1bq0kUfmOwEVQLzbD/HEIfhRUu0J4ya1y
	 ffzAe3+ukODyjdlYDcoawMqEWuhS5NryHvzXkGgkUeAXsQgvKPzYm5voX5udL+vCSZ
	 8ybyTcxHtD6bQ==
Date: Wed, 11 Mar 2026 17:58:26 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Danilo Krummrich <dakr@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Niklas Cassel <cassel@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Hans Zhang <18255117159@163.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Wilfred Mallawa <wilfred.mallawa@wdc.com>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Anand Moon <linux.amoon@gmail.com>, 
	Grimmauld <grimmauld@grimmauld.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, driver-core@lists.linux.dev, Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
Message-ID: <cp5uktfqdf6zs53qsye57ior2ikmssgevxxdtevkzpisaif22h@7mrxspkuibow>
References: <20260226101032.1042-1-linux.amoon@gmail.com>
 <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
 <87bc37ee-234c-4568-b72e-955c130a6838@arm.com>
 <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com>
 <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
 <DGZXF3LPSRK6.2QYN63QTKUQAX@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DGZXF3LPSRK6.2QYN63QTKUQAX@kernel.org>
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

T24gV2VkLCBNYXIgMTEsIDIwMjYgYXQgMTI6NDY6MDNQTSArMDEwMCwgRGFuaWxvIEtydW1tcmlj
aCB3cm90ZToKPiBPbiBXZWQgTWFyIDExLCAyMDI2IGF0IDY6MjQgQU0gQ0VULCBNYW5pdmFubmFu
IFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBJIGhhdmUgYSBjb250cmFyeSB2aWV3IGhlcmUuIElmIGp1
c3QgYSBzaW5nbGUgZHJpdmVyIG9yIGxpYiBkb2Vzbid0IGhhbmRsZSBhc3luYwo+ID4gcHJvYmUs
IGl0IGNhbm5vdCBqdXN0IGZvcmNlIG90aGVyIGRyaXZlcnMgdG8gbm90IHRha2UgdGhlIGFkdmFu
dGFnZSBvZiBhc3luYwo+ID4gcHJvYmUuIEFzIEkgc2FpZCBhYm92ZSwgZW5hYmxpbmcgYXN5bmMg
cHJvYmUgZWFzaWx5IHNhdmVzIGEgZmV3IGh1bmRlcmQgbXMgb3IKPiA+IGV2ZW4gbW9yZSBpZiB0
aGVyZSBhcmUgbW9yZSB0aGFuIG9uZSBSb290IFBvcnQgb3IgUm9vdCBDb21wbGV4IGluIGFuIFNv
Qy4KPiAKPiBUaGVuIHRoZSBkcml2ZXIgb3IgbGliIGhhcyB0byBiZSBmaXhlZCAvIGltcHJvdmVk
IGZpcnN0IG9yIHRoZSBkcml2ZXIgY29yZSBoYXMKPiB0byBiZSBlbmFibGVkIHRvIGRlYWwgd2l0
aCBhIGNhc2Ugd2hlcmUgUFJPQkVfRk9SQ0VfU1lOQ0hST05PVVMgaXMgcmVxdWVzdGVkCj4gZnJv
bSBhbiBhc3luYyBwYXRoLCBldGMuCj4gCj4gSW4gYW55IGNhc2UsIGFwcGx5aW5nIHRoZSBwYXRj
aCBhbmQgYnJlYWtpbmcgdGhpbmdzIChrbm93aW5nbHk/KSBkb2Vzbid0IHNlZW0KPiBsaWtlIHRo
ZSBjb3JyZWN0IGFwcHJvYWNoLgo+IAo+ID4gSSBzdHJvbmdseSBhZ3JlZSB3aXRoIHlvdSBoZXJl
IHRoYXQgdGhlIHVuZGVybHlpbmcgaXNzdWUgc2hvdWxkIGJlIGZpeGVkLiBCdXQKPiA+IHRoZSBy
ZWFsIGltcGFjdCB0byBlbmQgdXNlcnMgaXMgbm90IHRoaXMgc3BsYXQsIGJ1dCBub3QgaGF2aW5n
IHRoZSBib290IHRpbWUKPiA+IG9wdGltaXphdGlvbiB0aGF0IHRoaXMgcGF0Y2ggYnJpbmdzIGlu
LiBBcyBhbiBlbmQgdXNlciwgb25lIHdvdWxkIHdhbnQgdGhlaXIKPiA+IHN5c3RlbXMgdG8gYm9v
dCBxdWlja2x5IGFuZCB0aGV5IHdvdWxkbid0IGJvdGhlciBtdWNoIGFib3V0IGEgaGFybWxlc3Mg
d2FybmluZwo+ID4gc3BsYXQgYXBwZWFyaW5nIGluIHRoZSBkbWVzZyBsb2cuCj4gCj4gWW91IG1l
YW4gcXVpY2tseSBib290aW5nIGludG8gYSAiaGFybWxlc3MiIHBvdGVudGlhbCBkZWFkbG9jayBj
b25kaXRpb24gdGhlCj4gd2FybmluZyBzcGxhdCB0cmllcyB0byBtYWtlIHBlb3BsZSBhd2FyZSBv
Zj8gOikKPiAKCkhtbSwgSSBvdmVybG9va2VkIHRoZSBidWlsdC1hcy1tb2R1bGUgcGFydCB3aGVy
ZSB0aGUgZGVhZGxvY2sgY291bGQgYmUgcG9zc2libGUKYXMgaW5kaWNhdGVkIGJ5IHRoZSBjb21t
ZW50IGFib3V0IHRoZSBXQVJOX09OX09OQ0UoKS4KCkJ1dCB3aGF0IGlzIHRoZSBwYXRoIGZvcndh
cmQgaGVyZT8gRG8geW91IHdhbnQgdGhlIHBoeWxpYiB0byBmaXggdGhlCnJlcXVlc3RfbW9kdWxl
KCkgY2FsbCBvciBmaXggdGhlIGRyaXZlciBjb3JlIGluc3RlYWQ/CgpJIGNhbiBkcm9wIHRoaXMg
cGF0Y2ggaW4gdGhlIG1lYW50aW1lLiBCdXQgaG9sZGluZyB0aGlzIHByb2xvbmcgd291bGRuJ3Qg
aGVscC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7g
rprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
