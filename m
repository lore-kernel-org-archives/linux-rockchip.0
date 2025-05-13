Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5194BC3ABCC
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 May 2025 14:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xlvAlwNszDIdvnEHFpMr+f97tqLGWofRdA/l+IiBR4=; b=jWwHodUwiNctrd
	D/7eRPfKXpebXRYKvjfNQzqUP26kzmBf/1o/cHJ3XM+QZcoIvLl6VSWOiIu5q3ab76h3I4afj/iBC
	k0Ga+n70wr58Ha8Yu18qOzjFLnrGxTjX0zrxY7yQ13h78Iyd/wGZKp114MJb2hPMSmHUkXUOicjW0
	tCVkn3ScEomIq1KV+TpD0cXG6urKqzQIDmujVZfv/zCo9l+DpIL7R9KM0DlAY+2FfAtDOFrAC7yD2
	fGzo/zJo7ikB/plr+ircS+Xcz1j0md5jz7HST5YoycVx2ANw08pHLS0OOC1I8GJocc0y4ammdQfcY
	8ocWruDIy2ETIEgb/4oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEqJs-0000000CZnf-0WQJ;
	Tue, 13 May 2025 14:09:20 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEqHk-0000000CZZX-2b5U;
	Tue, 13 May 2025 14:07:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 39DFC44E6B;
	Tue, 13 May 2025 14:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8CFAC4CEE4;
	Tue, 13 May 2025 14:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747145228;
	bh=14NlYj/WRG8Q0M9cGAjhUlbL7est4+1nXlxlO/Sw13M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jfyJWelTw2cvqNxTtFvNddGoQgPxSGnXDfgHyD7S1pRovdUiRF/RrEDtGkMMA9DqR
	 0pE2hIGsEcSog39LlatonEh8jFUsdkLIxu4cn3qQWN8jdpdH+481B3gyvxHJ2M/Xf6
	 XY2cAVg4GaVUqm6IJ9V7w+Sg0ZtJLI/1ftHViBLYDwssJ/39DCw04qoWn3jykvHra8
	 MzaSWCbobCvW2ZSYrVFLa53JUcsFuME2YlaZnGxvVNNYGY4EI2eounHeNcqtryUUOG
	 UniSDHJRyX0NXHUCd4pd5M56pd+FakfGKY+FviDSDrJAR4WiPWyMFcLqT+CBTYYkww
	 JzhK9J0WfRCPA==
Date: Tue, 13 May 2025 16:07:02 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krishna chaitanya chundru <quic_krichai@quicinc.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Hans Zhang <18255117159@163.com>,
	Laszlo Fiat <laszlo.fiat@proton.me>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 0/4] PCI: dwc: Link Up IRQ fixes
Message-ID: <aCNSBqWM-HM2vX7K@ryzen>
References: <20250506073934.433176-6-cassel@kernel.org>
 <7zcrjlv5aobb22q5tyexca236gnly6aqhmidx6yri6j7wowteh@mylkqbwehak7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7zcrjlv5aobb22q5tyexca236gnly6aqhmidx6yri6j7wowteh@mylkqbwehak7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_070708_715635_89A17DA5 
X-CRM114-Status: GOOD (  23.46  )
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

SGVsbG8gTWFuaSwKCk9uIFR1ZSwgTWF5IDEzLCAyMDI1IGF0IDExOjUzOjI5QU0gKzAxMDAsIE1h
bml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiAKPiBUaGlzIHdhaXQgdGltZSBpcyBhIGdyZXkg
YXJlYSBpbiB0aGUgc3BlYyB0YmguIElmIHRoZSBSZWFkaW5lc3MgTm90aWZpY2F0aW9uCj4gKFJO
KSBpcyBub3Qgc3VwcG9ydGVkLCB0aGVuIHRoZSBzcGVjIHN1Z2dlc3RzIHdhaXRpbmcgMXMgZm9y
IHRoZSBkZXZpY2UgdG8KPiBiZWNvbWUgJ2NvbmZpZ3VyYXRpb24gcmVhZHknLiBUaGF0J3Mgd2h5
IHdlIGhhdmUgdGhlIDFzIGRlbGF5IGluIGR3YyBkcml2ZXIuCj4gCj4gQWxzbywgaXQgaGFzIHRo
ZSBiZWxvdyBpbiByNi4wLCBzZWMgNi42LjE6Cj4gCj4gYGBgCj4gKiBPbiB0aGUgY29tcGxldGlv
biBvZiBMaW5rIFRyYWluaW5nIChlbnRlcmluZyB0aGUgRExfQWN0aXZlIHN0YXRlLCBzZWUgwqcK
PiBTZWN0aW9uIDMuMiApLCBhIGNvbXBvbmVudCBtdXN0IGJlIGFibGUgdG8gcmVjZWl2ZSBhbmQg
cHJvY2VzcyBUTFBzIGFuZCBETExQcy4KPiAqIEZvbGxvd2luZyBleGl0IGZyb20gYSBDb252ZW50
aW9uYWwgUmVzZXQgb2YgYSBkZXZpY2UsIHdpdGhpbiAxLjAgcyB0aGUgZGV2aWNlCj4gbXVzdCBi
ZSBhYmxlIHRvIHJlY2VpdmUgYSBDb25maWd1cmF0aW9uIFJlcXVlc3QgYW5kIHJldHVybiBhIFN1
Y2Nlc3NmdWwKPiBDb21wbGV0aW9uIGlmIHRoZSBSZXF1ZXN0IGlzIHZhbGlkLiBUaGlzIHBlcmlv
ZCBpcyBpbmRlcGVuZGVudCBvZiBob3cgcXVpY2tseQo+IExpbmsgdHJhaW5pbmcgY29tcGxldGVz
LiBJZiBSZWFkaW5lc3MgTm90aWZpY2F0aW9ucyBtZWNoYW5pc21zIGFyZSB1c2VkIChzZWUKPiDC
pyBTZWN0aW9uIDYuMjIgLiksIHRoaXMgcGVyaW9kIG1heSBiZSBzaG9ydGVyLgo+IGBgYAo+IAo+
IEFzIHBlciB0aGUgZmlyc3Qgbm90ZSwgb25jZSBsaW5rIHRyYWluaW5nIGlzIGNvbXBsZXRlZCwg
dGhlIGRldmljZSBzaG91bGQgYmUKPiByZWFkeSB0byBhY2NlcHQgY29uZmlndXJhdGlvbiByZXF1
ZXN0cyBmcm9tIHRoZSBob3N0LiBTbyBubyBkZWxheSBzaG91bGQgYmUKPiByZXF1aXJlZC4KPiAK
PiBCdXQgdGhlIHNlY29uZCBub3RlIHNheXMgdGhhdCB0aGUgMXMgZGVsYXkgaXMgaW5kZXBlbmRl
bnQgb2YgaG93IHF1aWNrbHkgdGhlCj4gbGluayB0cmFpbmluZyBjb21wbGV0ZXMuIFRoaXMgZXNz
ZW50aWFsbHkgY29udHJhZGljdHMgd2l0aCB0aGUgYWJvdmUgcG9pbnQuCj4gCj4gU28gSSB0aGlu
ayBpdCBpcyBub3QgcmVxdWlyZWQgdG8gYWRkIGRlbGF5IGFmdGVyIGNvbXBsZXRpbmcgdGhlIExU
U1NNLCB1bmxlc3MKPiBzb21lb25lIHNlZXMgYW55IGlzc3VlLgoKSWYgeW91IGxvb2sgYXQgdGhl
IGNvbW1pdCBtZXNzYWdlIGluIHBhdGNoIDEvMiwgdGhlIHdob2xlIHJlYXNvbiBmb3IgdGhpcwpz
ZXJpZXMgaXMgdGhhdCBzb21lb25lIGhhcyBzZWVuIGFuIGlzc3VlIDopCgpXaGlsZSBJIHBlcnNv
bmFsbHkgaGF2ZW4ndCBzZWVuIGFueSBpc3N1ZSwgdGhlIHVzZXIgcmVwb3J0aW5nIHRoYXQgY29t
bWl0CmVjOWZkNDk5YjljNiAoIlBDSTogZHctcm9ja2NoaXA6IERvbid0IHdhaXQgZm9yIGxpbmsg
c2luY2Ugd2UgY2FuIGRldGVjdApMaW5rIFVwIikgcmVncmVzc2VkIGhpcyBzeXN0ZW0gc28gdGhh
dCBpdCBjYW4gbm8gbG9uZ2VyIG1vdW50IHJvb3Rmcwood2hpY2ggaXMgb24gYSBQTEVYVE9SIFBY
LTI1Nk04UGVHTiBOVk1lIFNTRCkgY2xlYXJseSBoYXMgc2VlbiBhbiBpc3N1ZS4KCkl0IGlzIHBv
c3NpYmxlIHRoYXQgaGlzIGRldmljZSBpcyBub3QgZm9sbG93aW5nIHRoZSBzcGVjLgpJIHNpbXBs
eSBjb21wYXJlZCB0aGUgY29kZSBiZWZvcmUgYW5kIGFmdGVyIGVjOWZkNDk5YjljNiwgdG8gdHJ5
IHRvCmZpZ3VyZSBvdXQgd2h5IGl0IHdhcyBhY3R1YWxseSB3b3JraW5nIGJlZm9yZSwgYW5kIGNh
bWUgdXAgd2l0aCB0aGlzLAp3aGljaCBtYWRlIGhpcyBkZXZpY2UgZnVuY3Rpb25hbCBhZ2Fpbi4K
ClBlcmhhcHMgd2Ugc2hvdWxkIGFkZCBhIGNvbW1lbnQgYWJvdmUgdGhlIHNsZWVwIHRoYXQgc2F5
cyB0aGF0IHRoaXMKc2hvdWxkIHN0cmljdGx5IG5vdCBiZSBuZWVkZWQgYXMgcGVyIHRoZSBzcGVj
PwooQW5kIGFsc28gYWRkIHRoZSBzYW1lIGNvbW1lbnQgaW4gdGhlIChzaW5nbGUpIGNvbnRyb2xs
ZXIgZHJpdmVyIGluCm1haW5saW5lIHdoaWNoIGFscmVhZHkgZG9lcyBhbiBtc2xlZXAoUENJRV9U
X1JSU19SRUFEWV9NUykuKQoKCktpbmQgcmVnYXJkcywKTmlrbGFzCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
