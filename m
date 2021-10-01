Return-Path: <SRS0=ewtI=OV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09C22C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 23:02:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CE55661AAB
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 23:02:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CE55661AAB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjqKi4xng59A10JXIcMf+Z6SsKRbc/bGjenIddfdIRs=; b=FzYPUYT90IhOQj
	iwAxXPYovVpGBjVjmV/vsE1kQMl6ECDEwX0R/+MAEEjfA/sEqt5nleZVJjAVuwa806jVJaqICHi4O
	tPiWVAbytuDKrfpWCzrlNG6ZNZPQxDUyAmySW2k/K+IeBkuv4Dz2WKyTvEIDSJO/F4ESyUcObZAMR
	NAkUB+g05uQjeWiO9l2+lh/YPaVPdW8yygveUn2l2mJFCQJcYsmmRnuu86lRYreqwC8gGuZ8OVtgu
	KB7NlcZKfFEtT0o77DWYvX0Rs3bYiLWvSpcxkTtlxgEITwjS8QrrMdvPJjkuyykavv1e6URqnqod7
	xMpAkTIM8AYoNUIToTBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWRYK-001Qa9-Mc; Fri, 01 Oct 2021 23:02:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWRY8-001QZ5-CX; Fri, 01 Oct 2021 23:02:41 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DD37661AAB;
 Fri,  1 Oct 2021 23:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633129359;
 bh=Et1vBAzzXp38/cf+29ag0WERSDPG0JukGE/4eE9eArw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=sup5I6n2GufZT9C0pd+8i1mSTb1yX8W7QsogbRBHs01r0s0b1OnqXbVnjyvTGS2IF
 Cmg8+tZYI/7GS0weqKJYeuLjPvNA2ho0UKt6ueGQaXqN41N56RdfwUQXwcJbg8mz3c
 XTiUCodhw54UEl+AoYwHILR/f4H7EPbH/0tk5Dvd7QUktfCHZJUrqHH7xRp73/RgZ0
 uzFZuA/uzdPRk+Y0ROC2xykjaaMNJsPbUUaU/lZM1vZBfh7JL/PBIGHNnF+JcaZQyZ
 CO0cMXfdfWmQbQJx6jtK90Ag4V5MKcZlHt5F+elmDjOp0FhsDnyNYM+SHBCXuPJxKw
 yzMi22MTjinEQ==
Date: Fri, 1 Oct 2021 16:02:38 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Cc: netdev@vger.kernel.org, Punit Agrawal <punitagrawal@gmail.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 davem@davemloft.net, peppe.cavallaro@st.com, alexandre.torgue@foss.st.com,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH] net: stmmac: dwmac-rk: Fix ethernet on rk3399 based
 devices
Message-ID: <20211001160238.4335a83d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <12744188.XEzkDOsqEc@diego>
References: <20210929135049.3426058-1-punitagrawal@gmail.com>
 <12744188.XEzkDOsqEc@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_160240_483454_4F1928B5 
X-CRM114-Status: GOOD (  10.86  )
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

T24gV2VkLCAyOSBTZXAgMjAyMSAyMzowMjozNSArMDIwMCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBNaXR0d29jaCwgMjkuIFNlcHRlbWJlciAyMDIxLCAxNTo1MDo0OSBDRVNUIHNjaHJpZWIg
UHVuaXQgQWdyYXdhbDoKPiA+IENvbW1pdCAyZDI2ZjZlMzlhZmIgKCJuZXQ6IHN0bW1hYzogZHdt
YWMtcms6IGZpeCB1bmJhbGFuY2VkIHBtX3J1bnRpbWVfZW5hYmxlIHdhcm5pbmdzIikKPiA+IHdo
aWxlIGdldHRpbmcgcmlkIG9mIGEgcnVudGltZSBQTSB3YXJuaW5nIGVuZGVkIHVwIGJyZWFraW5n
IGV0aGVybmV0Cj4gPiBvbiByazMzOTkgYmFzZWQgZGV2aWNlcy4gQnkgZHJvcHBpbmcgYW4gZXh0
cmEgcmVmZXJlbmNlIHRvIHRoZSBkZXZpY2UsCj4gPiB0aGUgY29tbWl0IGVuZHMgdXAgZW5hYmxp
bmcgc3VzcGVuZCAvIHJlc3VtZSBvZiB0aGUgZXRoZXJuZXQgZGV2aWNlIC0KPiA+IHdoaWNoIGFw
cGVhcnMgdG8gYmUgYnJva2VuLgo+ID4gCj4gPiBXaGlsZSB0aGUgaXNzdWUgd2l0aCBydW50aW1l
IHBtIGlzIGJlaW5nIGludmVzdGlnYXRlZCwgcGFydGlhbGx5Cj4gPiByZXZlcnQgY29tbWl0IDJk
MjZmNmUzOWFmYiB0byByZXN0b3JlIHRoZSBuZXR3b3JrIG9uIHJrMzM5OS4KPiA+IAo+ID4gRml4
ZXM6IDJkMjZmNmUzOWFmYiAoIm5ldDogc3RtbWFjOiBkd21hYy1yazogZml4IHVuYmFsYW5jZWQg
cG1fcnVudGltZV9lbmFibGUgd2FybmluZ3MiKQo+ID4gU3VnZ2VzdGVkLWJ5OiBIZWlrbyBTdHVl
Ym5lciA8aGVpa29Ac250ZWNoLmRlPgo+ID4gU2lnbmVkLW9mZi1ieTogUHVuaXQgQWdyYXdhbCA8
cHVuaXRhZ3Jhd2FsQGdtYWlsLmNvbT4KPiA+IENjOiBNaWNoYWVsIFJpZXNjaCA8bWljaGFlbC5y
aWVzY2hAd29sZnZpc2lvbi5uZXQ+ICAKPiAKPiBPbiBhIHJrMzM5OS1wdW1hIHdoaWNoIGhhcyB0
aGUgZGVzY3JpYmVkIGlzc3VlLAo+IFRlc3RlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4KCkFwcGxpZWQsIHRoYW5rcyEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
