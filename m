Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCA93C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 17:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RGJoxHFTHNRqkfUr/sBK2cCDbh4YjeSUhLMikEVVd9g=; b=DvKGC8AUCUQEh8
	PiFHpEsQYw2hOqDDcHx9CJs1VjzgboXZrBRc1odYPnt+jpBRVnuvvyUw2UuZpvT4gzPnANGDY1mId
	lv4hWyJWdEzxioX+3tqeTAE6/FCkMnJsMZEVr5DVop3dJmGqdJVvgqUU3HpFK3Mq9hjOmdEAyCaFn
	wHlzl6EJbfPEREWP2OQhzw3KPKoBls+qVdxzdtKQaYmUls4BSgmO7+fhouSlH5GgFWz9kXm1T2DMA
	TDztopEGBf6VZ0dIAN8FdPy7K/EDLDUnChWgUyYM/M6LEn66wu85ASqQsAGk0PyJybxIoJgL1iSNi
	F61F+cvkGURywBPQaSfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc7JD-000000098e6-06Ks;
	Thu, 08 Aug 2024 17:52:19 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc7J8-000000098dX-4AAi;
	Thu, 08 Aug 2024 17:52:16 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723139524; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Z5RkGYweZDCj33L+9XVp7NUsy9qorTJumRZa1LgxuRjS80WUvyI0CLLtoi/YIn+y7pVZ8Q4wYe6/yIUvFdioWrfBZKhanGSSAOjDqOvP1Bh/CjXQTpRnJnLObqFyLsEgo/BG+d3YEHASnTjmU1AZ4c6oFG5ZtnPcmfdjDZ8uKA0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723139524; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ZPWX9nQFc4zdu6yspZOvI5jMNY9Ewabr9vrBLea3YM4=; 
	b=V1ep5TXuqay3hF4BdasanLQtOeW0lGjl02E0MCusyLESdyoUGbnEHRu6U3pwcWx76ZOAU3MbjAfz+5hpY9xH47RtRSqgGQ1qjy4UU/hlDS3RfkjHVTGU4U/B9wl3wc0VVIIruOhvIuxSPqkpdeiBrTrVxaq/R+vRntZ0Gue+Q34=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723139524;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=ZPWX9nQFc4zdu6yspZOvI5jMNY9Ewabr9vrBLea3YM4=;
	b=SUf2zPf8ofT0XUr+yvKRzZjdSOZkiv/HcHz6jC112prhVEf3TDQ8+QJCqXXkrhb1
	0LbtgkeoyybsSLxaRYrYYrGqTJt1wGXpS3lVq2RuAEnICwk2lkbGu8LlqjhQMBVrcti
	IwJBAERJ4k3P7/WIzfHVKJa9VS9z7xWgKF6dLD+4=
Received: by mx.zohomail.com with SMTPS id 1723139522203254.50577975633348;
	Thu, 8 Aug 2024 10:52:02 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Finley Xiao <finley.xiao@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>,
 Arnd Bergmann <arnd@arndb.de>, Elaine Zhang <zhangqing@rock-chips.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v2 2/2] pmdomain: rockchip: Add support for rk3576 SoC
Date: Thu, 08 Aug 2024 13:53:20 -0400
Message-ID: <5805279.DvuYhMxLoT@trenzalore>
In-Reply-To: <17766579.lhrHg4fidi@diego>
References: <20240808163451.80750-1-detlev.casanova@collabora.com>
 <20240808163451.80750-3-detlev.casanova@collabora.com>
 <17766579.lhrHg4fidi@diego>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_105215_104772_450A0FA5 
X-CRM114-Status: GOOD (  15.71  )
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

SGkgSGVpa28sCgpPbiBUaHVyc2RheSwgOCBBdWd1c3QgMjAyNCAxMjo0MTowNSBFRFQgSGVpa28g
U3TDvGJuZXIgd3JvdGU6Cj4gSGkgRGV0bGV2LAo+IAo+ID4gCj4gPiBAQCAtNTUyLDcgKzU3NSwx
MCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BkX3Bvd2VyKHN0cnVjdAo+ID4gcm9ja2NoaXBfcG1f
ZG9tYWluICpwZCwgYm9vbCBwb3dlcl9vbik+IAo+ID4gIAkJCS8qIGlmIHBvd2VyaW5nIHVwLCBs
ZWF2ZSBpZGxlIG1vZGUgKi8KPiA+ICAJCQlyb2NrY2hpcF9wbXVfc2V0X2lkbGVfcmVxdWVzdChw
ZCwgZmFsc2UpOwo+ID4gCj4gPiAtCQkJcm9ja2NoaXBfcG11X3Jlc3RvcmVfcW9zKHBkKTsKPiA+
ICsJCQlpZiAocGQtPmluZm8tPmRlbGF5X3VzKQo+ID4gKwkJCQl1ZGVsYXkocGQtPmluZm8tPmRl
bGF5X3VzKTsKPiA+ICsJCQllbHNlCj4gPiArCQkJCXJvY2tjaGlwX3BtdV9yZXN0b3JlX3Fvcyhw
ZCk7Cj4gCj4gSSBzdGlsbCB3YW50IHRoaXMgYmVoYXZpb3VyIGNoYW5nZSBpbiBhIHNlcGFyYXRl
IHBhdGNoIHdpdGggYWRlcXVhdGUKPiBjb21taXQgbWVzc2FnZSBwbGVhc2UuCj4gCj4gR29pbmcg
ZnJvbSBhbHdheXMgaGFuZGxpbmcgcW9zIHRvIGFsbG93aW5nIHRvIGp1c3Qgd2FpdCBhIHNwZWNp
ZmljIHRpbWUKPiBuZWVkcyBleHBsYW5hdGlvbiBhbmQgaXMgbm90IHBhcnQgb2YgImp1c3QiIGFk
ZGluZyByazM1NzYgc3VwcG9ydC4KCllvdSBhcmUgcmlnaHQsIEkgZGlkbid0IHRha2xlIHRoaXMg
aXNzdWUuClRoaXMgaXMgYWN0dWFsbHkgYSBidWcsIHRoZSBlbHNlIGlzIG5vdCBzdXBwb3NlZCB0
byBiZSB0aGVyZSwgaXQgc2hvdWxkIG9ubHkgCmJlIGFuIGFkZGVkIGRlbGF5IGZvciBzb21lIFBE
cy4KClVuZm9ydHVuYXRlbHksIEknbSBub3Qgc3VyZSB3aHkgdGhhdCBkZWxheSBpcyBuZWVkZWQg
ZXhhY3RseSwgc28gSSdtIHdpbGxpbmcgCnRvIHJlbW92ZSBpdCBmb3Igbm93IChvbmx5IHVzZWQg
YnkgbnB1dG9wIGFuZCB2b3AsIGJvdGggdW5zdXBwb3J0ZWQpIGFuZCBjb21lIApiYWNrIHRvIGl0
IGlmIG5lZWRlZCB3aGVuIFZPUC9OUFUgc3VwcG9ydCBpcyBhZGRlZC4KCldvdWxkIHRoYXQgd29y
ayBmb3IgdGhpcyB1cHN0cmVhbSA/CgpEZXRsZXYuCgoKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
