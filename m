Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7364CC3ABC0
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 11:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UfIsW9IPM8oWsWC4tsdbC8vjHV9pYRSk1MIYpIkK0lo=; b=MHveUarkw/S5+N
	YaBJauzNtjzrudOjdIXu4s08lKo00yTQh4S+K+mEP/mUGMIhlLE552gE3QNfE3uGOjEche+hJGrC9
	Ijt1zkJFCW0h5cdCDtVeGKBicapdUSY17/Mh7KZbNFyNjT80vGajyq0WzVVoyhDw3+wATuloBGKUR
	zYavFu5945rSod7LshYem/5mZDrhwUo29ttuvgzHwfKPaa32oNJ6fKsxwkt2+h3auAPq+HQBo3IGj
	d2Dybc8Lg2L9NJw5YpOBf2fY86egixTCaLauJWJO7aGqAOeKLTsipZzukZcxWfr7/QbfLaWIt6CUb
	mFvje5eVAmpeysccUjrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCzr9-00000000XPo-14RV;
	Thu, 08 May 2025 11:56:03 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCzpB-00000000X9C-18jd;
	Thu, 08 May 2025 11:54:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BDE1E5C6289;
	Thu,  8 May 2025 11:51:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D59FAC4CEE7;
	Thu,  8 May 2025 11:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746705239;
	bh=ATEwHpgNA6jqamANm5hBaVYVO/dqwcBSYhIXw4FvfOQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u3RM5ALrqSnfQa5HbX8moNUhsGOjpcfcy5lA4yc+FmPmsGqzLmElL/eAXgP9r3k4z
	 Rubst2i6+x9slEhbAguGyXaZli1sn8YNW9zPw/tkLfr0VxTPxXrs0xw5aVF4MuYEU5
	 8G+QnU8r6onc00RyOW9QjHHiFEixVWTv1v6mq7xZ5ebwt1wKaKrtGNQLCvNYAc46GM
	 1zq5g44NCqS0dgYhh/RiFgTRvIusk2uUIu0bQQ+x+2s76kyWmK5lP8frGn1KXt+kCA
	 MB97EmoRnKLis9eJd4gykwNx9AIuZNcMEBnm/HnLDZW+7EHGFsCIMgd1F6A2NNxKLD
	 ZBirUqSL+XuXg==
Date: Thu, 8 May 2025 13:53:53 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>, lpieralisi@kernel.org,
	kw@linux.com, bhelgaas@google.com, heiko@sntech.de,
	manivannan.sadhasivam@linaro.org, yue.wang@amlogic.com,
	neil.armstrong@linaro.org, robh@kernel.org, jingoohan1@gmail.com,
	khilman@baylibre.com, jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 3/3] PCI: aardvark: Remove redundant MPS configuration
Message-ID: <aBybUYYhrmlOeLAj@ryzen>
References: <20250506173439.292460-1-18255117159@163.com>
 <20250506173439.292460-4-18255117159@163.com>
 <20250506174110.63ayeqc4scmwjj6e@pali>
 <8a6adc24-5f40-4f22-9842-b211e1ef5008@163.com>
 <ff6abbf6-e464-4929-96e6-16e43c62db06@163.com>
 <20250507163620.53v5djmhj3ywrge2@pali>
 <b364eed2-047d-4c74-9f30-45291305bc4b@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b364eed2-047d-4c74-9f30-45291305bc4b@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_045401_361728_602F42E2 
X-CRM114-Status: GOOD (  17.10  )
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

SGVsbG8gSGFucywKCk9uIFRodSwgTWF5IDA4LCAyMDI1IGF0IDEyOjQ3OjEyQU0gKzA4MDAsIEhh
bnMgWmhhbmcgd3JvdGU6Cj4gT24gMjAyNS81LzggMDA6MzYsIFBhbGkgUm9ow6FyIHdyb3RlOgo+
ID4gCj4gPiBTb3JyeSwgYnV0IEkgc3RvcHBlZCBkb2luZyBhbnkgdGVzdGluZyBvZiB0aGUgYWFy
ZHZhcmsgZHJpdmVyIHdpdGggdGhlCj4gPiBtYWlubGluZSBrZXJuZWwgYWZ0ZXIgUENJIG1haW50
YWluZXJzIHN0b3BwZWQgdGFraW5nIGZpeGVzIGZvciB0aGUKPiA+IGRyaXZlciBhbmQgc3RvcHBl
ZCByZXNwb25kaW5nLgo+ID4gCj4gPiBJJ20gbm90IGdvaW5nIHRvIGRlYnVnIHNhbWUgaXNzdWVz
IGFnYWluLCB3aGljaCBJIGhhdmUgYW5hbHl6ZWQsCj4gPiBwcmVwYXJlZCBmaXhlcywgc2VudCBw
YXRjaGVzIGFuZCBzZWUgbm8gcHJvZ3Jlc3MgdGhlcmUuCj4gPiAKPiA+IFNlZW1zIHRoYXQgdGhl
cmUgaXMgYSBzdGF0dXMgcXVvLCBhbmQgSSdtIG5vdCBnb2luZyB0byBjaGFuZ2UgaXQuCj4gCj4g
RGVhciBOaWtsYXMsCj4gCj4gRG8geW91IGhhdmUgYW55IG9waW5pb24gb24gUGFsaSdzIHJlcGx5
PyBTaG91bGQgcGF0Y2ggMy8zIGJlIGRpc2NhcmRlZD8KCldoaWxlIEkgZG8gaGF2ZSBhbiBvcGlu
aW9uLCBJJ20gbm90IGdvaW5nIHRvIHNoYXJlIGl0IG9uIGEgcHVibGljIG1haWxpbmcKbGlzdCA6
KQoKV2l0aCByZWdhcmRzIHRvIHlvdXIgcGF0Y2ggMy8zLCBJIHRoaW5rIHRoYXQgeW91ciBwYXRj
aCBsb29rcyBmaW5lLCBidXQgaWYKdGhlIGRyaXZlciBtYWludGFpbmVyIGRvZXMgbm90IHdhbnQg
dGhlIGNsZWFudXAgZm9yID5yZWFzb25zKiwgdGhhdCBpcyB0b3RhbGx5CmZpbmUgd2l0aCBtZS4g
SG93ZXZlciwgSSdtIG5vdCBhIFBDSSBtYWludGFpbmVyLCBzbyBteSBvcGluaW9uIGRvZXMgbm90
IHJlYWxseQptYXR0ZXIuIEl0J3MgdGhlIFBDSSBtYWludGFpbmVycyB0aGF0IGRlY2lkZS4KCgpL
aW5kIHJlZ2FyZHMsCk5pa2xhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
