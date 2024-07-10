Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 159FFC3DA41
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 23:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPC/gmG/gwuCxvav3NzPnM8hwaA1TEwpXxmBQ58CTm0=; b=wphtLtGvvtU2Dc
	NLbl8+La7FEJ+HvmMVJaRWpqXARFEToIe11INsRXhCEr1nJJk1cXjHFoX+dbMS8O4kQCx1bhonUUV
	hbpctf2/5nTf2HErfH0CqzjXeHIjpgoSpoHFacjb+y17nM/d6MZ5L0E3EeuU8SK38d28rOT0Z+Lzh
	c24Ui16oDjfrTSyserj2AWYSEhO+zhudDBGfXiDGKG1b4u+90hV5Y1bf05Z/0r7YHa/c6sJnxo/Hd
	nnoRwN+aSvKnESj65zdmaGflPb41Hxg2qKo0P1skuOJbSDVnIPzaxj9+fBesybovDB9hIZ5+ruNU+
	Lhj6izxYB55htTh5DYFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRhBN-0000000CBpS-28W1;
	Wed, 10 Jul 2024 23:57:09 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRhB4-0000000CBl7-43TL;
	Wed, 10 Jul 2024 23:56:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3901DCE171C;
	Wed, 10 Jul 2024 23:56:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63FD9C32781;
	Wed, 10 Jul 2024 23:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720655808;
	bh=2tc8RIIyfHOiaSxzCTfQKeyqP8HdT8b53uA/ghjOZWg=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=fAM7wnhekV4nm0zqMszEdt5ToIwVrIMloMD303uJBTeDCflfCUZkQmRHxSUd+8Vda
	 tS8rIyA3sIc6/9uLhyZVsMlO295+nC9Mr0a1ZHOT2kRua0kmkZvVf2x9cE/JJnQuDO
	 sR/+bjAIBXl4ALv+wBUETS8lnrtgij+RjLLlnNsoIZO68tc6rKl3EeNPS4JOsB0Lwt
	 6VPrXmMMZ0pO6Fw4nKzQbUXcotOuf3CUkT1HkR5rNI3M6fvYsQAyYD+o8bfykkY7Qu
	 GKO5yEXfoTNlCGr16m/9thGN+UThWRgOX8yf2c4Tir6myf71DaCsxmbGIsZTG/hrGC
	 pDAyn21p2eI/g==
Message-ID: <b3c450a94bcb4ad0bc5b3c7ee8712cb8.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <1903511.1xdlsreqCQ@diego>
References: <20240709123121.1452394-1-heiko@sntech.de> <20240709123121.1452394-2-heiko@sntech.de> <2e5852b9e94b9a8d0261ce7ad79f4329.sboyd@kernel.org> <1903511.1xdlsreqCQ@diego>
Subject: Re:  Re: [PATCH 1/6] dt-bindings: clocks: add binding for generic clock-generators
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
To: Heiko =?utf-8?q?St=C3=BCbner?= <heiko@sntech.de>, mturquette@baylibre.com
Date: Wed, 10 Jul 2024 16:56:46 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_165651_201178_CFFA8DFF 
X-CRM114-Status: GOOD (  15.39  )
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

UXVvdGluZyBIZWlrbyBTdMO8Ym5lciAoMjAyNC0wNy0xMCAwMTowMjo1NykKPiBBbSBEaWVuc3Rh
ZywgOS4gSnVsaSAyMDI0LCAyMzo0NToyMCBDRVNUIHNjaHJpZWIgU3RlcGhlbiBCb3lkOgo+ID4g
UXVvdGluZyBIZWlrbyBTdHVlYm5lciAoMjAyNC0wNy0wOSAwNTozMToxNikKPiA+ID4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9jbG9jay1nZW5l
cmF0b3IueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9jbG9j
ay1nZW5lcmF0b3IueWFtbAo+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiBpbmRleCAw
MDAwMDAwMDAwMDAwLi5mNDRlNjFlNDE0ZTg5Cj4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4gKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2Nsb2NrLWdlbmVyYXRv
ci55YW1sCj4gPiA+IEBAIC0wLDAgKzEsNjIgQEAKWy4uLl0KPiAKPiAKPiA+IE1heWJlIGluc3Rl
YWQgb2YgY3JlYXRpbmcgYSBnZW5lcmljIGJpbmRpbmcganVzdCBtYWtlIGEgYmluZGluZyBmb3IK
PiA+IHRoZXNlIGRpb2RlcyBwYXJ0cz8gSXQgY2VydGFpbmx5IGxvb2tzIGxpa2UgYSBnZW5lcmlj
IGJpbmRpbmcgY291bGQgY29tZQo+ID4gbGF0ZXIgd2hlbiBhbm90aGVyIHZlbmRvciBzdXBwb3J0
cyB0aGUgc2FtZSBiaW5kaW5nLgo+IAo+IEkgd2FzIGFjdHVhbGx5IHByaW1hcmlseSBhaW1pbmcg
YXQgc29sdmluZyB0aGUgUm9jayA1IElUWCBjbG9jayBnZW5lcmF0b3IKPiBpc3N1ZSBkZXNjcmli
ZWQgaW4gcGF0Y2ggNSwgd2hlcmUgdGhlIDEwMCBNSHogY2xvY2sgZ2VuZXJhdG9yIGlzIGp1c3QK
PiBkZXNjcmliZWQgYXMgIjEwME1IeiwzLjNWLDMyMjUiIGluIHRoZSBzY2hlbWF0aWNzLCBidXQg
ZGVmaW5pdGx5IG5lZWRzCj4gdGhlIHN1cHBseSByZWd1bGF0b3IgdG8gYmUgZW5hYmxlZCBbMV0u
CgpUaGF0IGxvb2tzIGxpa2UgYSBWQ08gKHZvbHRhZ2UgY29udHJvbGxlZCBvc2NpbGxhdG9yKS4g
TWF5YmUgdGhlCmNvbXBhdGlibGUgc3RyaW5nIGNhbiBiZSAidm9sdGFnZS1vc2NpbGxhdG9yIiBv
ciAiY2xvY2stdmNvIiBhbmQgaXQgY2FuCnJlcXVpcmUgdGhlIHZkZC1zdXBwbHkuCgpUaG9zZSBk
aW9kZXMgcGFydHMgbG9vayBkaWZmZXJlbnQuIFRoZXkgbG9vayBsaWtlIFBMTHMgdGhhdCBoYXZl
IGEKcmVmZXJlbmNlIGNsb2NrLCBoZW5jZSB0aGUgJ2Nsb2NrcycgcHJvcGVydHkgSSB3YXMgZXhw
ZWN0aW5nIHRvIHNlZS4KVGhhdCB3b3VsZCB1c2UgdGhlIFZDTyB5b3UgaGF2ZSB0byBtYWtlIHRo
ZSBQQ0lFIHJlZmVyZW5jZSBjbGsKZnJlcXVlbmNpZXMuIEEgZ2VuZXJpYyBjb21wYXRpYmxlIGZv
ciB0aG9zZSBkaW9kZXMgcGFydHMgaXMgbGlrZWx5CiJwaGFzZS1sb2NrZWQtbG9vcCIsIG9yICJj
bG9jay1wbGwiLCBidXQgSSdkIGF2b2lkIHRoYXQgZ2l2ZW4gdGhhdCBQTExzCmFyZSBhbG1vc3Qg
YWx3YXlzIGNvbXBsaWNhdGVkIGFuZCBjYW4gaGF2ZSBtdWx0aXBsZSBvdXRwdXQgZnJlcXVlbmNp
ZXMKaWYgdGhleSBoYXZlIHBvc3QgYW5kIHByZS1kaXZpZGVycywgZXRjLiBJdCdzIGVhc2llciB0
byBiZSBzcGVjaWZpYwpoZXJlIGFuZCBtYWtlIGEgYmluZGluZyBmb3IgdGhlIHBhcnQgeW91IGhh
dmUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
