Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BF4DC27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 07:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fRCBe3H0dCzWf6K4Yl2eF+0KZLU2CcluOU6Utuh9eCc=; b=j4hnbz8WTIkXpZ
	hww5XBXF3mfyqrk/t5I0CdjWQmLgz1CZ2DG3eSI4KdDKkbH3n3+CUT7r7d7B8UjHj6E83jEfre8qc
	R0b/Dh138OPjJCwxkjPvJFz5umyPJTCsrFSJZBGUZHKmo9eRjZy5rJ1yLUHY9H+KdTaDWNVGnVr6G
	FUrMg0Mbe4qLFSc403BE/hIvKLU6O4ihm3mWxmu0oXqQD+7vPlGQ8yEjc1zC24XF72CjVlwXh3Ymh
	JKkNuN7AOe16VmhA0NBKxygMzrWYUj6+L3WKXp/7f/Hc8OO4SRjVGeyIqCY9AIPrsnicr2SfCDNAE
	m105b4LQxjehlNkym5rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElCb-000000051Nx-47Xx;
	Wed, 05 Jun 2024 07:36:57 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElCZ-000000051Mf-2CS3
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 07:36:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 7C566CE0B7E;
	Wed,  5 Jun 2024 07:36:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A0CFC3277B;
	Wed,  5 Jun 2024 07:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717573012;
	bh=DQJTe2Ght4na0MugFgxDTyVIKpzB8sCXy6NbZn7Uafs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oNPPrBCT0Coo9vD/2NLylNzEPGebbKwq9YFg3ZoTeW/Zzve+4eGTpfqHoHRAHotD2
	 L7OQq+W+Krw9HfMLaCgQ0tlZP0Tw3xYvGEYLBCXlHoLihW2PN+jQbYUhFueG0wHMfB
	 lAXMQumUWnAKPVVRbf79m7LzULBO7wQc1m5dczfLpoVKzgSKlZColaq1liSv4hQtKm
	 WWZg9NQVEHvlAp1+kRCzZBXXQcnQKvIgrQadTpv/snncrWzRPMdG+Wg1NCEms3NInb
	 XxooNhB8yzbSngjFYGa/6jVFztbnFiYTmoM5O9D0ncLRCpKhF74YwxRZwKNLODmJvw
	 mGsHAQMGFFCEA==
Date: Wed, 5 Jun 2024 13:06:40 +0530
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
Subject: Re: [PATCH v4 05/13] dt-bindings: PCI: rockchip-dw-pcie: Fix
 description of legacy irq
Message-ID: <20240605073640.GG5085@thinkpad>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <20240529-rockchip-pcie-ep-v1-v4-5-3dc00fe21a78@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240529-rockchip-pcie-ep-v1-v4-5-3dc00fe21a78@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_003656_092878_D89BEEE1 
X-CRM114-Status: GOOD (  17.79  )
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

T24gV2VkLCBNYXkgMjksIDIwMjQgYXQgMTA6Mjg6NTlBTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBUaGUgZGVzY3JpcHRpb25zIG9mIHRoZSBjb21iaW5lZCBpbnRlcnJ1cHQgc2lnbmFs
cyAobGV2ZWwxKSBtZW50aW9uCj4gYWxsIHRoZSBsb3dlciBpbnRlcnJ1cHQgc2lnbmFscyAobGV2
ZWwyKSBmb3IgZWFjaCBjb21iaW5lZCBpbnRlcnJ1cHQsCj4gcmVnYXJkbGVzcyBpZiB0aGUgbG93
ZXIgKGxldmVsMikgc2lnbmFsIGlzIFJDIG9yIEVQIHNwZWNpZmljLgo+IAo+IEUuZy4gdGhlIGRl
c2NyaXB0aW9uIG9mICJDb21iaW5lZCBzeXN0ZW0gaW50ZXJydXB0IiBpbmNsdWRlcyByYmFyX3Vw
ZGF0ZSwKPiB3aGljaCBpcyBFUCBzcGVjaWZpYywgYW5kIHRoZSBkZXNjcmlwdGlvbiBvZiAiQ29t
YmluZWQgbWVzc2FnZSBpbnRlcnJ1cHQiCj4gaW5jbHVkZXMgb2JmZl9pZGxlLCBvYmZmX29iZmYs
IG9iZmZfY3B1X2FjdGl2ZSwgd2hpY2ggYXJlIGFsbCBFUCBzcGVjaWZpYy4KPiAKPiBUaGUgb25s
eSBleGNlcHRpb24gaXMgdGhlICJDb21iaW5lZCBsZWdhY3kgaW50ZXJydXB0Iiwgd2hpY2ggZm9y
IHNvbWUKPiByZWFzb24gZG9lcyBub3QgcHJvdmlkZSBhbiBleGhhdXN0aXZlIGxpc3Qgb2YgdGhl
IGxvd2VyIChsZXZlbDIpIHNpZ25hbHMuCj4gCj4gQWRkIHRoZSBtaXNzaW5nIGxvd2VyIGludGVy
cnVwdCBzaWduYWxzOiB0eF9pbnRhLCB0eF9pbnRiLCB0eF9pbnRjLCBhbmQKPiB0eF9pbnRkIGZv
ciB0aGUgIkNvbWJpbmVkIGxlZ2FjeSBpbnRlcnJ1cHQiLCBhcyBwZXIgdGhlIHJrMzU2OCBhbmQg
cmszNTg4Cj4gVGVjaG5pY2FsIFJlZmVyZW5jZSBNYW51YWxzLCBzdWNoIHRoYXQgdGhlIGRlc2Ny
aXB0aW9ucyBvZiB0aGUgY29tYmluZWQKPiBpbnRlcnJ1cHQgc2lnbmFscyBhcmUgY29uc2lzdGVu
dC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaWtsYXMgQ2Fzc2VsIDxjYXNzZWxAa2VybmVsLm9yZz4K
ClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZh
bUBsaW5hcm8ub3JnPgoKLSBNYW5pCgo+IFJldmlld2VkLWJ5OiBSb2IgSGVycmluZyAoQXJtKSA8
cm9iaEBrZXJuZWwub3JnPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGNpL3JvY2tjaGlwLWR3LXBjaWUtY29tbW9uLnlhbWwgfCAzICsrLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNpZS1jb21t
b24ueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAt
ZHctcGNpZS1jb21tb24ueWFtbAo+IGluZGV4IDYwZDE5MGE3NzU4MC4uZWM1ZTZhM2QwNDhlIDEw
MDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2No
aXAtZHctcGNpZS1jb21tb24ueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNpZS1jb21tb24ueWFtbAo+IEBAIC01Niw3ICs1Niw4
IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICBwbV9wbWUsIHBtX3RvX2FjaywgcG1fdHVybm9m
Ziwgb2JmZl9pZGxlLCBvYmZmX29iZmYsIG9iZmZfY3B1X2FjdGl2ZQo+ICAgICAgICAtIGRlc2Ny
aXB0aW9uOgo+ICAgICAgICAgICAgQ29tYmluZWQgbGVnYWN5IGludGVycnVwdCwgd2hpY2ggaXMg
dXNlZCB0byBzaWduYWwgdGhlIGZvbGxvd2luZwo+IC0gICAgICAgICAgaW50ZXJydXB0cyAtIGlu
dGEsIGludGIsIGludGMsIGludGQKPiArICAgICAgICAgIGludGVycnVwdHMgLSBpbnRhLCBpbnRi
LCBpbnRjLCBpbnRkLCB0eF9pbnRhLCB0eF9pbnRiLCB0eF9pbnRjLAo+ICsgICAgICAgICAgdHhf
aW50ZAo+ICAgICAgICAtIGRlc2NyaXB0aW9uOgo+ICAgICAgICAgICAgQ29tYmluZWQgZXJyb3Ig
aW50ZXJydXB0LCB3aGljaCBpcyB1c2VkIHRvIHNpZ25hbCB0aGUgZm9sbG93aW5nCj4gICAgICAg
ICAgICBpbnRlcnJ1cHRzIC0gYWVyX3JjX2VyciwgYWVyX3JjX2Vycl9tc2ksIHJ4X2NwbF90aW1l
b3V0LAo+IAo+IC0tIAo+IDIuNDUuMQo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCv
jSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
