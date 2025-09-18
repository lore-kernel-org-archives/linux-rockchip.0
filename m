Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F5ADCA1013
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Sep 2025 16:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXU9z0WbOI0WmN7CPEv3SjmSqe0kV3MN2WfAO6XaxCw=; b=tXRQvg9SiZzDS4
	L+mIPIWYAdsVwHRIxjMZndGZ184BQcS9+AlNannDEOxJaMNTRAOq6gu18X4SzIR1pRzRtcyopwFyJ
	+5Tisu6MZ4OmRrHUZuWNZa9UDSEKuwul8RDgGLrS2xdMe3gZ77/uUI+7iL0FxWKnIMcZnDwgNXDz7
	xzL7AxKPKFdBP+mI+HAMry5RXKd5PwkxfspQOqPqsYDoGWD2uzm7plqKx6Q+FkFdZv7f/0wAbJz8N
	e3k4AVcDqhA2Bh7viZIdYQtALS3Bc8scjDby5KHA42P2MAjibPzrhOTvad3CbtJBKeyuskDdg1iB/
	q8QelmENQfB+sgeVs9sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzH9o-00000000Yfi-2R9q;
	Thu, 18 Sep 2025 16:06:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzH9l-00000000YeA-1J3Y;
	Thu, 18 Sep 2025 16:06:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=+F4TaAJ1+I3lApf7Zbx5vaj8m+LuxzrlFuwgun2z2qg=; b=VoslzeLwepJmNzjMIsPuSVmsXt
	V++kPbTcSCQW75otpc1HAvdiq4J1Rniab/l5JMYEG72uAk147fN/5Fs7Rb5PX1v6jASWgOMrVNXCu
	tWl2TLPi4OuJlXdtmN95amPcIDonK64CvmXTX3KKasnbO2Ttt7WYAneSc9pTTaI1PvAUUzJfTvx0V
	wyVrrQfpv4T25Mq/TTedTcN34tBQsXndl0u81m/lrpE6Z6PbTJsk1ZcIH9Hs1XzeHRO8PPgA3pp22
	PyAjQZF8g1LIWPt6zhfgpWY4FWVovVItYSU4uB3vF7rxy+xT/mYuDv9LEdsvvDXkVNh6NvanSL72i
	52jE1RoQ==;
Received: from i53875b0a.versanet.de ([83.135.91.10] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uzH9T-0001tG-MC; Thu, 18 Sep 2025 18:06:31 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>,
 Yao Zi <ziyao@disroot.org>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 Chukun Pan <amadeus@jmu.edu.cn>, Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: PCI: dwc: rockchip: Add RK3528 variant
Date: Thu, 18 Sep 2025 18:06:30 +0200
Message-ID: <2042643.CrzyxZ31qj@diego>
In-Reply-To: <20250918153057.56023-2-ziyao@disroot.org>
References: <20250918153057.56023-1-ziyao@disroot.org>
 <20250918153057.56023-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_090649_371281_5CD0876A 
X-CRM114-Status: GOOD (  11.97  )
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

QW0gRG9ubmVyc3RhZywgMTguIFNlcHRlbWJlciAyMDI1LCAxNzozMDo1NSBNaXR0ZWxldXJvcMOk
aXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFlhbyBaaToKPiBSSzM1Mjggc2hpcHMgYSBQQ0llIEdl
bjJ4MSBjb250cm9sbGVyIHRoYXQgb3BlcmF0ZXMgaW4gUkMgbW9kZSBvbmx5Lgo+IFNpbmNlIHRo
ZSBTb0MgaGFzIG5vIHNlcGFyYXRlIE1TSSBjb250cm9sbGVyLCB0aGUgb25lIGludGVncmF0ZWQg
aW4gdGhlCj4gRFdDIFBDSWUgSVAgbXVzdCBiZSB1c2VkLCBhbmQgdGh1cyBpdHMgaW50ZXJydXB0
IHNjaGVtZSBpcyBzaW1pbGFyIHRvCj4gdmFyaWFudHMgZm91bmQgaW4gUkszNTYyIGFuZCBSSzM1
NzYuCj4gCj4gT2xkZXIgQlNQIGNvZGUgY2xhaW1lZCBpdHMgaW50ZWdyYXRlZCBNU0kgY29udHJv
bGxlciBzdXBwb3J0cyBvbmx5IDgKPiBNU0lzWzFdLCBidXQgdGhpcyBoYXMgYmVlbiBjaGFuZ2Vk
IGluIG5ld2VyIEJTUFsyXSBhbmQgdGVzdGluZyBwcm92ZXMKPiB0aGUgY29udHJvbGxlciB3b3Jr
cyBjb3JyZWN0bHkgd2l0aCBtb3JlIHRoYW4gOCBNU0lzIGFsbG9jYXRlZCwKPiBzdWdnZXN0aW5n
IHRoZSBjb250cm9sbGVyIHNob3VsZCBiZSBjb21wYXRpYmxlIHdpdGggdGhlIFJLMzU2OCB2YXJp
YW50Lgo+IExldCdzIGRvY3VtZW50IGl0cyBjb21wYXRpYmxlIHN0cmluZy4KPiAKPiBMaW5rOiBo
dHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgva2VybmVsL2Jsb2IvNzkyYTdkNDI3M2E1
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyNMMTYxMC1MMTYx
MyAjIFsxXQo+IExpbms6IGh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1saW51eC9rZXJuZWwv
YmxvYi8xYmE1MWIwNTlmMjUvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2Nr
Y2hpcC5jI0w5MDQtTDkwNiAjIFsyXQo+IFNpZ25lZC1vZmYtYnk6IFlhbyBaaSA8eml5YW9AZGlz
cm9vdC5vcmc+Cj4gQWNrZWQtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+
CgpBY2tlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KClRoaXMgbGlrZWx5
IHNob3VsZCB0byBnbyB0aHJvdWdoIHRoZSBQQ0kgdHJlZS4KKG9yIG5lZWRzIGFuIEFjayBmcm9t
IFBDSSBtYWludGFpbmVycywgZm9yIG1lIHRvIHBpY2sgaXQgdXApCgpIZWlrbwoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
