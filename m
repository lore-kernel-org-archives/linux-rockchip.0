Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A181C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 07:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3d8ifr0weVeTGbPdnTQ4zFi8I6NVrL1g1MpqdnCpdfo=; b=KmmvH7eQb7z68D
	7iZjWF12IdWIz8erCUAYglalXOpPzF86TkB8IrzdRcfEpchuE/1SvejWA4A3sTy4yEOVF4ELN8JSC
	uA6N9rfYjq7OhylBmpZvQCqjLK/lDtNTo+kZKMpJVyWb0nFIDABvhkxDZguNaaRUKDaOrYOkC3/oU
	wvlkKI616IYBqK2M4ebUwA395MokFAIVf60d9E2YMqft1TlMW2+T6wd4DhMRpz0YTD0phsuDyybCa
	yKDQUZHvqnP2MkZ0LPDgnikaJbJZn6dTPcembtSjrCKsVtr6d62IdCf8dfoA818jXCDYZ3KNjxv1B
	1/yBG+f6sBlRv7phV21Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEl0n-00000004zc3-3ive;
	Wed, 05 Jun 2024 07:24:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEl0l-00000004zb6-0mUS
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 07:24:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7AD9860AF6;
	Wed,  5 Jun 2024 07:24:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C190FC3277B;
	Wed,  5 Jun 2024 07:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717572282;
	bh=SUY8FX2smZKlev1msDZHqJH0TCRWfu6CpWzZA69uFGg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QKVsIfM2bLSzcud8xuu6cEk8uPQtyMQ2K5mUeyNh80mcW8sXU3DVnfPW/d7Cjk+3d
	 FfH9zXWzYntPEkk39M9JMt2B3Sc70et+NlpTIrUR18LDbZUvmMYz9JTZLOVNVgZxUk
	 1Zm67HkwmUDNuciEWL/Vmb7AHRLK8TMFuZFW2YYZqUdWDaPvF1D1RV0CA881mjNHwT
	 WuvaVOF+4an8JBh8V5Z3peh9Y++TZRgsYefDkTZlOA3cK5A07Gy8gjf9IWYTGdX2P7
	 G8tTIbxwB5irjgWPIyWcsg9IKaMWX8t36L9qnh8UDRNi5MeUaKIAv/44VQbCEE5i3R
	 PQ/vV/rv93/yQ==
Date: Wed, 5 Jun 2024 12:54:29 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 02/13] dt-bindings: PCI: snps,dw-pcie-ep: Add vendor
 specific interrupt-names
Message-ID: <20240605072429.GD5085@thinkpad>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <20240529-rockchip-pcie-ep-v1-v4-2-3dc00fe21a78@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240529-rockchip-pcie-ep-v1-v4-2-3dc00fe21a78@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_002443_309726_E1613BAE 
X-CRM114-Status: GOOD (  16.85  )
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

T24gV2VkLCBNYXkgMjksIDIwMjQgYXQgMTA6Mjg6NTZBTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBDb25zaWRlcmluZyB0aGF0IHNvbWUgZHJpdmVycyAoZS5nLiBwY2llLWR3LXJvY2tj
aGlwLmMpIGFscmVhZHkgdXNlIHRoZQo+IGludGVycnVwdC1uYW1lcyAic3lzIiwgInBtYyIsICJt
c2ciLCAiZXJyIiBmb3IgdGhlIGRldmljZSB0cmVlIGJpbmRpbmcgaW4KPiBSb290IENvbXBsZXgg
bW9kZSAoc25wcyxkdy1wY2llLnlhbWwpLCBpdCBkb2Vzbid0IG1ha2Ugc2Vuc2UgdGhhdCB0aG9z
ZQo+IGRyaXZlcnMgc2hvdWxkIHVzZSBkaWZmZXJlbnQgaW50ZXJydXB0LW5hbWVzIHdoZW4gcnVu
bmluZyBpbiBFbmRwb2ludCBtb2RlCj4gKHNucHMsZHctcGNpZS1lcC55YW1sKS4KPiAKPiBUaGVy
ZWZvcmUsIHNpbmNlICJzeXMiLCAicG1jIiwgIm1zZyIsICJlcnIiIGFyZSBhbHJlYWR5IGRlZmlu
ZWQgaW4KPiBzbnBzLGR3LXBjaWUueWFtbCwgYWRkIHRoZW0gYWxzbyBmb3Igc25wcyxkdy1wY2ll
LWVwLnlhbWwuCj4gCj4gU2lnbmVkLW9mZi1ieTogTmlrbGFzIENhc3NlbCA8Y2Fzc2VsQGtlcm5l
bC5vcmc+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNh
ZGhhc2l2YW1AbGluYXJvLm9yZz4KCi0gTWFuaQoKPiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcg
KEFybSkgPHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BjaS9zbnBzLGR3LXBjaWUtZXAueWFtbCB8IDIgKy0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvc25wcyxkdy1wY2llLWVwLnlhbWwgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3NucHMsZHctcGNpZS1lcC55YW1s
Cj4gaW5kZXggMDBkZWMwMWYxZjczLi5mNWYxMmNiYzJjYjMgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9zbnBzLGR3LXBjaWUtZXAueWFtbAo+ICsr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvc25wcyxkdy1wY2llLWVw
LnlhbWwKPiBAQCAtMTU2LDcgKzE1Niw3IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAgIGZv
ciBuZXcgYmluZGluZ3MuCj4gICAgICAgICAgICBvbmVPZjoKPiAgICAgICAgICAgICAgLSBkZXNj
cmlwdGlvbjogU2VlIG5hdGl2ZSAiYXBwIiBJUlEgZm9yIGRldGFpbHMKPiAtICAgICAgICAgICAg
ICBlbnVtOiBbIGludHIgXQo+ICsgICAgICAgICAgICAgIGVudW06IFsgaW50ciwgc3lzLCBwbWMs
IG1zZywgZXJyIF0KPiAgCj4gICAgbWF4LWZ1bmN0aW9uczoKPiAgICAgIG1heGltdW06IDMyCj4g
Cj4gLS0gCj4gMi40NS4xCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCu
pOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
