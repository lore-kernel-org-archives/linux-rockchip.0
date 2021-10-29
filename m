Return-Path: <SRS0=iXk1=PR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F24C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Oct 2021 06:43:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 71231610E8
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Oct 2021 06:43:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 71231610E8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXsLjzTpHj6dQrMtroIxBuaGY+V/Z2LU6f83FtQaeqY=; b=MlqEIxbtep1R3+
	D2XHWCCrvOJy9/J4yUw2sABLL0pPJpaXbvGFjVN04uWL2xlWZYoKafEFB1BGLQPNI86fhnIyDMDln
	gT7bhfy5njOsmAqf41lXKechkwDGV4GNjHxChk6dBRz6BMjXVLY01gyNDfWzRYKH2EZRFLK7NJ5e3
	e6IO25Gd4fDzsHVEmInE4wzrA2rJp5AZ5/aw8Ev+TiGGHAFDMhDOIL8gCutVECkFu4Yy7T6vRv1kh
	2lkC8yN5SiNR9X16MQxCbeJ4Zc9djud4c0E4CJqnLY3jdpUSU+M8VCtNR3kBcNaeyIYXp7eKfUwMi
	pL5k11V8L572AL91JAiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgLbZ-009xEO-Fr; Fri, 29 Oct 2021 06:43:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgLbX-009xDN-7X
 for linux-rockchip@lists.infradead.org; Fri, 29 Oct 2021 06:43:08 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AFE8D600EF;
 Fri, 29 Oct 2021 06:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635489786;
 bh=PPdoPzZSIp8MHyJVSVHe94xv6EeIPR3IDVMQEAE/l2Y=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=tHD9cKmH19hYj+PkydI0nl+GlVdHtD+adaRVbcyfQlaGexFmB6qBVu+cBJvwjj2w8
 Juave9x9iGK1oaH2Gop9VLAfe6MOW6AL9D0002A9lsIYGPbtnclUeJQ3z6wDI38ek2
 ssXdNTHldQjtERm/zoy3aLqCGZEY26WSydBWR94Fp4mdIyLMEVYwZ9+PuJEmNQM3Vl
 xTN0VIDkTpuGFpiYyUaXCHk8McBXg7Se6LgNvEyuugpE00vlS86S+d9Se9FnShaixz
 9thi7qA4Keci5jR7Hxk6u/O8Tr0RMRGJcv6L/6ZcLEBEVuW6P19FZY06faUVc5TeHg
 vYn9YKMjHe5YA==
MIME-Version: 1.0
In-Reply-To: <5381956.U9aoDET0nm@diego>
References: <20211027132616.1039814-1-heiko@sntech.de>
 <163536646616.15791.10163287623335903483@swboyd.mtv.corp.google.com>
 <5381956.U9aoDET0nm@diego>
Subject: Re: [PATCH 0/2] clk: rockchip: cleanup errors in (module-)driver
 handling
From: Stephen Boyd <sboyd@kernel.org>
Cc: kernel@esmil.dk, linux-clk@vger.kernel.org, mturquette@baylibre.com
To: Heiko =?utf-8?q?St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Date: Thu, 28 Oct 2021 23:43:05 -0700
Message-ID: <163548978553.15791.2075313346592720953@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_234307_319610_1C38633E 
X-CRM114-Status: GOOD (  10.67  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

UXVvdGluZyBIZWlrbyBTdMO8Ym5lciAoMjAyMS0xMC0yNyAxNjoyMDoxNykKPiBBbSBNaXR0d29j
aCwgMjcuIE9rdG9iZXIgMjAyMSwgMjI6Mjc6NDYgQ0VTVCBzY2hyaWViIFN0ZXBoZW4gQm95ZDoK
PiA+IFF1b3RpbmcgSGVpa28gU3R1ZWJuZXIgKDIwMjEtMTAtMjcgMDY6MjY6MTQpCj4gPiA+IFJl
Y2VudCBjb252ZXJzaW9ucyBvciBpbmNsdXNpb25zIG9mIHJrMzM5OSBhbmQgcmszNTY4IGFzIHBs
YXRmb3JtLWRyaXZlcnMKPiA+ID4gYW5kIHN1YnNlcXVlbnRseSBhbGxvd2luZyB0aGVtIHRvIGJl
IGJ1aWx0IGFzIG1vZHVsZXMgaW50cm9kdWNlZCBzb21lCj4gPiA+IHByb2JsZW1zLgo+ID4gPiAK
PiA+ID4gVGhlc2UgdHdvIHBhdGNoZXMgdHJ5IHRvIGNvcnJlY3QgdGhlbS4KPiA+IAo+ID4gQnkg
cmVtb3ZpbmcgbW9kdWxhciBzdXBwb3J0PyBPay4KPiAKPiBJdCBsb29rZWQgbGlrZSB0aGUgZWFz
aWVzdCB3YXkgdG8gZ28gZm9yIG5vdy4KPiAKPiBXaXRoIGFsbCB0aGUgY2xvY2stZGVmaW5pdGlv
bnMgYXMgaW5pdC1kYXRhIHN0aWxsIGluIGJvdGggZHJpdmVycywgSSBkb24ndCB0aGluawo+IGFu
eWJvZHkgZXZlciB0ZXN0ZWQgcnVubmluZyB0aGlzIGFzIGEgcmVhbCBtb2R1bGUuCj4gCj4gV2Ug
Y291bGQgb2YgY291cnNlIGFsc28gcmVtb3ZlIGFsbCB0aGUgX19pbml0ICsgX19pbml0ZGF0YSBh
dHRyaWJ1dGVzLCBidXQKPiBzdGlsbCB3b3VsZG4ndCBrbm93IGlmIGl0IGFjdHVhbGx5IHJ1bnMg
YXMgYSBtb2R1bGUsIHdpdGhvdXQgc29tZW9uZQo+IGJ1aWxkaW5nIGEgcmVhbCB0ZXN0IGVudmly
b25tZW50IGZvciBpdC4KPiAKPiAKClN1cmUuIERvIEkgbmVlZCB0byBwaWNrIHRoZXNlIHVwIGRp
cmVjdGx5PwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
