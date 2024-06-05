Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D455CC25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 07:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JuPswJ3kTnsHSUatvV5i4fK4TPjvIXJinapenxvgAZ4=; b=015ub1gIu+W2MO
	AnChTmeqzUmSyqEbZ+01wwFHZVdZBlrbkkO/SDEpKTFCT3NinQiCT1XHy13rIt9WP/gczOZvVypR6
	4obuJ6fEjjU5IHK/PhTeSNE6h6+X34xKHk/FzpFGD6NhRTw9hDVdjSr2D9HRpcYIYFNqA/nVTeAt4
	GhvFB1HabESLIcFVjtiCkXKgkfyrlFGSHJQPe/qtlNIyZGpxKH4iw0tyjTJiDCg1jFP2S6sJQ1bSk
	Fo1gL3yQbUtmLjzncLrIwiCEY8PoHe3Hh+1br+rysFfXloLR+rEfqO8hdHslCbf6LLhSFyoOsphrx
	hgwxJT1p59Z1WTd3yVEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElA4-0000000514N-0asc;
	Wed, 05 Jun 2024 07:34:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElA1-0000000513L-16yW
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 07:34:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A124661262;
	Wed,  5 Jun 2024 07:34:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE8F0C3277B;
	Wed,  5 Jun 2024 07:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717572856;
	bh=9V9e410qufFFACyQFlVUelV9lIaXlofRulV74vDzxfo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d2AVxhDlzyIljyZdFm/NlDghoPVhQ7QEPtJEOmDALjn1iGoMguE/9v1bdpN/XIev6
	 OQT+L4yBGb4jLzr8S/lCos541KgvFJ8oFPYsdm08jAh36KIa0JCfFMY+ap2C4EHbT0
	 kqTzoyES3+TpKZy4mMX5yXdnylziQ0q2Obp0PZz5E3gzH6iLJK6i21m6cJVj+l0Q1v
	 VKrWkKj9pcPLFmpvJWt2mLMZnQ/fr9BzqMmy3kNRAbqTUSVSdQfwK4D+cWJRyHiUxP
	 oixu9Zwo5hDrRRrgN4fOH7MS3E5RDuc15IaZF4+y600jx/jTBt2PzdYuJ5wXNYw+QP
	 t0LZwHoacqVeQ==
Date: Wed, 5 Jun 2024 13:04:02 +0530
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
Subject: Re: [PATCH v4 03/13] dt-bindings: PCI: snps,dw-pcie-ep: Add
 tx_int{a,b,c,d} legacy irqs
Message-ID: <20240605073402.GE5085@thinkpad>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <20240529-rockchip-pcie-ep-v1-v4-3-3dc00fe21a78@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240529-rockchip-pcie-ep-v1-v4-3-3dc00fe21a78@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_003417_407111_88A710B2 
X-CRM114-Status: GOOD (  18.45  )
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

T24gV2VkLCBNYXkgMjksIDIwMjQgYXQgMTA6Mjg6NTdBTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBUaGUgRFdDIGNvcmUgaGFzIGZvdXIgaW50ZXJydXB0IHNpZ25hbHM6IHR4X2ludGEs
IHR4X2ludGIsIHR4X2ludGMsIHR4X2ludGQKPiB0aGF0IGFyZSB0cmlnZ2VyZWQgd2hlbiB0aGUg
UENJZSBjb250cm9sbGVyICh3aGVuIHJ1bm5pbmcgaW4gRW5kcG9pbnQgbW9kZSkKPiBoYXMgc2Vu
dCBhbiBBc3NlcnRfSU5UQSBNZXNzYWdlIHRvIHRoZSB1cHN0cmVhbSBkZXZpY2UuCj4gCj4gU29t
ZSBEV0MgY29udHJvbGxlcnMgaGF2ZSB0aGVzZSBpbnRlcnJ1cHQgaW4gYSBjb21iaW5lZCBpbnRl
cnJ1cHQgc2lnbmFsLgo+IAo+IEFkZCB0aGUgZGVzY3JpcHRpb24gb2YgdGhlc2UgaW50ZXJydXB0
cyB0byB0aGUgZGV2aWNlIHRyZWUgYmluZGluZy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaWtsYXMg
Q2Fzc2VsIDxjYXNzZWxAa2VybmVsLm9yZz4KCk5pdDogV2UgcmVjZW50bHkgY2hhbmdlZCB0aGUg
ZHJpdmVyIGluc3RhbmNlcyBvZiAnTEVHQUNZJyB0byAnSU5UWCcuIEJ1dCB0aGUKYmluZGluZyBp
dCBzdGlsbCB1c2luZyAnbGVnYWN5Jy4gQ29uc2lkZXJpbmcgdGhhdCB0aGUgJ2xlZ2FjeScgSVJR
IGFkZGVkIHRvIHRoZQpSQyBiaW5kaW5nIHJlY2VudGx5IChlYmNlOWY2NjIzYTcpLCBzaG91bGQg
d2UgcmVuYW1lIGl0PwoKVGhpcyB3aWxsIGZvcmNlIHRoZSBkcml2ZXIgdG8gc3VwcG9ydCBib3Ro
ICdsZWdhY3knIGFuZCAnaW50eCcgZm9yIGJhY2t3YXJkcwpjb21wYXRpYmlsaXR5LgoKQnV0IGly
cmVzcGVjdGl2ZSBvZiB0aGF0LAoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8
bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CgotIE1hbmkKCj4gUmV2aWV3ZWQtYnk6
IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvc25wcyxkdy1wY2llLWVwLnlhbWwgfCA5ICsrKysr
KysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvc25wcyxkdy1wY2llLWVwLnlh
bWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3NucHMsZHctcGNpZS1l
cC55YW1sCj4gaW5kZXggZjVmMTJjYmMyY2IzLi5mNDc0YjllM2ZjN2UgMTAwNjQ0Cj4gLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9zbnBzLGR3LXBjaWUtZXAueWFt
bAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvc25wcyxkdy1w
Y2llLWVwLnlhbWwKPiBAQCAtMTUxLDYgKzE1MSwxNSBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAg
ICAgICBBcHBsaWNhdGlvbi1zcGVjaWZpYyBJUlEgcmFpc2VkIGRlcGVuZGluZyBvbiB0aGUgdmVu
ZG9yLXNwZWNpZmljCj4gICAgICAgICAgICAgIGV2ZW50cyBiYXNpcy4KPiAgICAgICAgICAgIGNv
bnN0OiBhcHAKPiArICAgICAgICAtIGRlc2NyaXB0aW9uOgo+ICsgICAgICAgICAgICBJbnRlcnJ1
cHRzIHRyaWdnZXJlZCB3aGVuIHRoZSBjb250cm9sbGVyIGl0c2VsZiAoaW4gRW5kcG9pbnQgbW9k
ZSkKPiArICAgICAgICAgICAgaGFzIHNlbnQgYW4gQXNzZXJ0X0lOVHtBLEIsQyxEfS9EZXNhc3Nl
cnRfSU5Ue0EsQixDLER9IG1lc3NhZ2UgdG8KPiArICAgICAgICAgICAgdGhlIHVwc3RyZWFtIGRl
dmljZS4KPiArICAgICAgICAgIHBhdHRlcm46ICJedHhfaW50KGF8YnxjfGQpJCIKPiArICAgICAg
ICAtIGRlc2NyaXB0aW9uOgo+ICsgICAgICAgICAgICBDb21iaW5lZCBpbnRlcnJ1cHQgc2lnbmFs
IHJhaXNlZCB3aGVuIHRoZSBjb250cm9sbGVyIGhhcyBzZW50IGFuCj4gKyAgICAgICAgICAgIEFz
c2VydF9JTlR7QSxCLEMsRH0gbWVzc2FnZS4gU2VlICJedHhfaW50KGF8YnxjfGQpJCIgZm9yIGRl
dGFpbHMuCj4gKyAgICAgICAgICBjb25zdDogbGVnYWN5Cj4gICAgICAgICAgLSBkZXNjcmlwdGlv
bjoKPiAgICAgICAgICAgICAgVmVuZG9yLXNwZWNpZmljIElSUSBuYW1lcy4gQ29uc2lkZXIgdXNp
bmcgdGhlIGdlbmVyaWMgbmFtZXMgYWJvdmUKPiAgICAgICAgICAgICAgZm9yIG5ldyBiaW5kaW5n
cy4KPiAKPiAtLSAKPiAyLjQ1LjEKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g
4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
