Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE2A5C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 07:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjG8uOLNK1gwNiwD2SJmIm++a6RO0BOTEQIJ7mlnxcU=; b=deyUmagQBNs+Wb
	4nf7vepAK9oKeEJP3+y/WfY679U0t7EHfP1vFP5UAZP1o3kfJxxVdTjUyANlKslAAR8Gp2135ExNl
	JePzlndWx4QTiorHmqx7H0Lr9DpieDfC92ddtjR5NYEBYdKOmyGDVI+OLU0CVVue4RKadvWUWEDFp
	7RCWPV3N4cUzgUK12S1SGgAIHdHkigdBdDNZuLIsmuDX8QeaKEkkjQ15g/WwMCHk4ymNM3CdRbVZU
	GwJjlduyX10rnDwprN/ehH/xRliTQFw46xSyGu8q7NI8UQbYzVKt3wlkAerCs9Y+83JANMlhx/Htw
	mLy/+xy94+IPe2TrUODw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElJ5-000000052Qw-2gJA;
	Wed, 05 Jun 2024 07:43:39 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElJ2-000000052PO-3UTM
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 07:43:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D8B2FCE131C;
	Wed,  5 Jun 2024 07:43:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EC8EC3277B;
	Wed,  5 Jun 2024 07:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717573414;
	bh=DAZjORhNTyDM4EnKUl4YaexhknoTngFwmMKXdQGWjUE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hNFgGTcrCys6dYW/Mu0z8LFdpJ7YBiH21gh/nHYiWaLqHTED66BiHrIuML0NYxWwM
	 8pTBJWU4v2gDA2rr7waw9zFuQBcu7jNHnJK8cZuzEbmV4JSagxJyBl2aMqtTWsBRKT
	 Wg8Sygvh8kIem10p9xgTPbZb2qpLIRArNXJ/0mbDNoVDfVoZFNuq+dV+P2t4x68j+x
	 Y4GaP3pAupGsN+rGRfoor4LlxUpQxLPGvbFCCcufrtXS7BJMHGI9iuwskAtp/FOBQ3
	 x9oiOZkGDTCJx8Yp/4TwTgFgx+EYRsDHMYj3aYl0aRuptPjf30x9ajInTDAZPBCKD7
	 sV+ZMyR40nVxA==
Date: Wed, 5 Jun 2024 13:13:24 +0530
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
Subject: Re: [PATCH v4 08/13] PCI: dw-rockchip: Add rockchip_pcie_get_ltssm()
 helper
Message-ID: <20240605074324.GI5085@thinkpad>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <20240529-rockchip-pcie-ep-v1-v4-8-3dc00fe21a78@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240529-rockchip-pcie-ep-v1-v4-8-3dc00fe21a78@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_004337_072109_A2A4F21C 
X-CRM114-Status: GOOD (  17.11  )
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

T24gV2VkLCBNYXkgMjksIDIwMjQgYXQgMTA6Mjk6MDJBTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBBZGQgYSByb2NrY2hpcF9wY2llX2x0c3NtKCkgaGVscGVyIGZ1bmN0aW9uIHRoYXQg
cmVhZHMgdGhlIExUU1NNIHN0YXR1cy4KPiBUaGlzIGhlbHBlciB3aWxsIGJlIHVzZWQgaW4gYWRk
aXRpb25hbCBwbGFjZXMgaW4gZm9sbG93LXVwIGNvbW1pdHMuCj4gCj4gU2lnbmVkLW9mZi1ieTog
TmlrbGFzIENhc3NlbCA8Y2Fzc2VsQGtlcm5lbC5vcmc+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5h
biBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KCi0gTWFuaQoK
PiAtLS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwg
NyArKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1y
b2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5j
Cj4gaW5kZXggM2RmZWQwOGVmNDU2Li4xMzgwZTNhNTI4NGIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gQEAgLTE0Myw2ICsxNDMsMTEg
QEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2luaXRfaXJxX2RvbWFpbihzdHJ1Y3Qgcm9ja2No
aXBfcGNpZSAqcm9ja2NoaXApCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiArc3RhdGljIHUzMiBy
b2NrY2hpcF9wY2llX2dldF9sdHNzbShzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXApCj4g
K3sKPiArCXJldHVybiByb2NrY2hpcF9wY2llX3JlYWRsX2FwYihyb2NrY2hpcCwgUENJRV9DTElF
TlRfTFRTU01fU1RBVFVTKTsKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9l
bmFibGVfbHRzc20oc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQo+ICB7Cj4gIAlyb2Nr
Y2hpcF9wY2llX3dyaXRlbF9hcGIocm9ja2NoaXAsIFBDSUVfQ0xJRU5UX0VOQUJMRV9MVFNTTSwK
PiBAQCAtMTUyLDcgKzE1Nyw3IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfZW5hYmxlX2x0
c3NtKHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiAgc3RhdGljIGludCByb2NrY2hp
cF9wY2llX2xpbmtfdXAoc3RydWN0IGR3X3BjaWUgKnBjaSkKPiAgewo+ICAJc3RydWN0IHJvY2tj
aGlwX3BjaWUgKnJvY2tjaGlwID0gdG9fcm9ja2NoaXBfcGNpZShwY2kpOwo+IC0JdTMyIHZhbCA9
IHJvY2tjaGlwX3BjaWVfcmVhZGxfYXBiKHJvY2tjaGlwLCBQQ0lFX0NMSUVOVF9MVFNTTV9TVEFU
VVMpOwo+ICsJdTMyIHZhbCA9IHJvY2tjaGlwX3BjaWVfZ2V0X2x0c3NtKHJvY2tjaGlwKTsKPiAg
Cj4gIAlpZiAoKHZhbCAmIFBDSUVfTElOS1VQKSA9PSBQQ0lFX0xJTktVUCAmJgo+ICAJICAgICh2
YWwgJiBQQ0lFX0xUU1NNX1NUQVRVU19NQVNLKSA9PSBQQ0lFX0wwU19FTlRSWSkKPiAKPiAtLSAK
PiAyLjQ1LjEKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a
4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
