Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7230105F7B0
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 14:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=viwS5Cl+bd2ktOiH5WtuXijsSxIzI4zsHcchYThqUq0=; b=si+4Yt/NqA9EH2
	OJ/Vg7fr7XstBCLf1jIpKgrbezwm0qVPvgPzouKuNiFa1lLmrhHba6tvpSY7s11xX2hUGRQunqmJ8
	zb/owz/J8yjp909ZDiXEVpgfiRwPBsk+aJ7R+4UQ+5daDQpSgO+tM1RH24jgrieZFlxD5y4/Nm+9K
	VsbH7Gm4DrT+eGNuEkl4Rl4FXZ68Xki5c9PXv3x+KvAf/5900IqFVHYCL/8aOyvinpVRNQoE/Rgpz
	zVv+MaXBg1Jp7bAcVYWpNpfc1FTDXsAd/S2idsM+DNOeHdlPfc9MD4BJp2tuMJA7/MKfb4McO0jtT
	dlPwPWay2N7Dar9lvSGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w139R-00000000Krw-0cPD;
	Fri, 13 Mar 2026 14:06:05 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w139P-00000000Krc-09RU;
	Fri, 13 Mar 2026 14:06:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 29A976183F;
	Fri, 13 Mar 2026 14:06:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30084C19421;
	Fri, 13 Mar 2026 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773410761;
	bh=CtWBsxNWkPj8OE14jFaHauUv7MbBm2S14GcKwHf3QlQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ohqqRSxeyqxwDPUmrevk/jyKsdpNpcf9V9MhgfY7ddRP7pk1g9yy5wKLEnhwnredY
	 u+DEI5H1qe8jDeUzia1TzGuGNyk0tkBJGqp63AAgnCKmZ0jAYCswFC+yVax99omKrq
	 tqr0rJA4uvt0dXWrX14ledkG2neVs/98nsxG2D/RPC/kVrThQgRwO5T44A22amvS0E
	 ON+ph8o3qz/fksqt9NXCeOiW11EesdVvALyC84cf13lmWXXQ0pQ48zvz1lBGUVU/QN
	 A2tNA5jlRVqZKeCpnZxvBeJd0KX+1oL6lPymtJToWcBt8bC3ZCrFHc82PI+D+Ka5x+
	 GHKGamJ27plpA==
Date: Fri, 13 Mar 2026 19:35:45 +0530
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
Message-ID: <gm7p37yom64doo3bbrcri3chbrzpm5zifqk256qqla2krhrrrw@tknda7rvjklv>
References: <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
 <87bc37ee-234c-4568-b72e-955c130a6838@arm.com>
 <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com>
 <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
 <DGZXF3LPSRK6.2QYN63QTKUQAX@kernel.org>
 <cp5uktfqdf6zs53qsye57ior2ikmssgevxxdtevkzpisaif22h@7mrxspkuibow>
 <DH09EDBW3X6T.2996UB1CFCAW2@kernel.org>
 <55c28218-1638-4b90-a9cd-a177fb5abcb6@arm.com>
 <DH0TM60TVX5D.20W4O1X696ALA@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DH0TM60TVX5D.20W4O1X696ALA@kernel.org>
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

T24gVGh1LCBNYXIgMTIsIDIwMjYgYXQgMDE6NTk6NTJQTSArMDEwMCwgRGFuaWxvIEtydW1tcmlj
aCB3cm90ZToKPiBPbiBUaHUgTWFyIDEyLCAyMDI2IGF0IDE6NDggUE0gQ0VULCBSb2JpbiBNdXJw
aHkgd3JvdGU6Cj4gPiBPbiAyMDI2LTAzLTExIDk6MDkgcG0sIERhbmlsbyBLcnVtbXJpY2ggd3Jv
dGU6Cj4gPj4gIEZyb20gYSBkcml2ZXItY29yZSBwZXJzcGVjdGl2ZSBJIHRoaW5rIHdlJ3JlIHJh
dGhlciBsaW1pdGVkIG9uIHdoYXQgd2UgY2FuIGRvOwo+ID4+IHdlIGFyZSBhbHJlYWR5IGluIGFz
eW5jIGNvbnRleHQgYXQgdGhpcyBwb2ludCBhbmQgY2FuJ3QgbWFnaWNhbGx5IGdvIGJhY2sgdG8K
PiA+PiBpbml0Y2FsbCBjb250ZXh0Lgo+ID4+IAo+ID4+IFNvLCB0aGUgb25seSB0aGluZyBJIGNh
biB0aGluayBvZiBpcyB0byBraWNrIG9mZiB3b3JrIG9uIGEgd29ya3F1ZXVlLCB3aGljaCBpbgo+
ID4+IHRoZSBlbmQgd291bGQgYmUgdGhlIHNhbWUgYXMgdGhlIGRlZmVycmVkIHByb2JlIGhhbmRs
aW5nLgo+ID4KPiA+IEhtbSwgaW4gZmFjdCwgaXNuJ3QgdGhlIGRlZmVycmVkIHByb2JlIG1lY2hh
bmlzbSBpdHNlbGYgYWN0dWFsbHkgcXVpdGUKPiA+IGFwcHJvcHJpYXRlPwo+IAo+IFllcywgSSd2
ZSBhbHNvIG1lbnRpb25lZCB0aGlzIGluIFsxXSwgaW5jbHVkaW5nIHRoZSBmYWN0IHRoYXQgaXQg
dGVjaG5pY2FsbHkKPiBldmVuIGNvbXBsaWVzIHdpdGggdGhlIGd1YXJhbnRlZXMgZ2l2ZW4gYnkg
UFJPQkVfRk9SQ0VfU1lOQ0hST05PVVMuIEkuZS4gdGhlCj4gZG9jdW1lbnRhdGlvbiBzYXlzOgo+
IAo+IAlVc2UgdGhpcyB0byBhbm5vdGF0ZSBkcml2ZXJzIHRoYXQgbmVlZCB0aGVpciBwcm9iZSBy
b3V0aW5lcyB0byBydW4KPiAJc3luY2hyb25vdXNseSB3aXRoIGRyaXZlciBhbmQgZGV2aWNlIHJl
Z2lzdHJhdGlvbiAod2l0aCB0aGUgZXhjZXB0aW9uIG9mCj4gCS1FUFJPQkVfREVGRVIgaGFuZGxp
bmcgLSByZS1wcm9iaW5nIGFsd2F5cyBlbmRzIHVwIGJlaW5nIGRvbmUKPiAJYXN5bmNocm9ub3Vz
bHkpLgo+IAo+IEhvd2V2ZXIsIEknbSBzdGlsbCBub3Qgc3VyZSBob3cgSSBmZWVsIGFib3V0IHRo
aXMsIHNpbmNlIEkgY29uc2lkZXIgdGhpcyB0byBiZQo+IG1vcmUgbGlrZSBhIHdvcmthcm91bmQg
dGhhdCBqdXN0IG1vdmVzIHRoaW5ncyB0byBhICJtb3JlIGFwcHJvcHJpdGUiIGFzeW5jCj4gY29u
dGV4dC4KPiAKPiBPbiB0aGUgb3RoZXIgaGFuZCwgZXZlbnR1YWxseSB3ZSB3YW50IGV2ZXJ5dGhp
bmcgdG8gd29yayB3aXRoCj4gUFJPQkVfUFJFRkVSX0FTWU5DSFJPTk9VUywgc28gbWF5YmUgaXQn
cyBhbHNvIGdvb2QgZW5vdWdoIGZvciB0aGUgdGltZSBiZWluZy4KPiAKCkZXSVcsIEknZCBsb3Zl
IHRvIGhhbmRsZSB0aGlzIGNvcm5lciBjYXNlIGluIHRoZSBkcml2ZXIgY29yZSBhbmQgbm90IHNw
YXduIGEKd29ya3F1ZXVlL3RocmVhZCBpbiB0aGUgYnVzIGRyaXZlcnMgYXMgd2Ugd291bGQgZW5k
IHVwIGR1cGxpY2F0aW5nIGl0IGFsbCBvdmVyCmRlZmVhdGluZyB0aGUgcHVycG9zZSBvZiBQUk9C
RV9QUkVGRVJfQVNZTkNIUk9OT1VTIGZsYWcuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPg
r43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
