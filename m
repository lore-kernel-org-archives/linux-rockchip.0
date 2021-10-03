Return-Path: <SRS0=83oW=OX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A608C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Oct 2021 00:21:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 22A3261AA9
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Oct 2021 00:21:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 22A3261AA9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LCMJdG45dUXSnmJbZwEZXSKKUzggXIuXNIgKLZxfQMc=; b=P0C1YUtDHCHW2t
	6sawYL9a8z1PySUvby1894h6pejw9eUG2SZJPxABEwO+GP/VNkfa7rtRBDmS/V1bxhMkghkgxkYp7
	Bpl7TEz/BHsGNLeiFmgUC35TiIV7bqXd93PZ1trqZh9L2Zxevvs+5HPqWF62NSfinAekgMIhBAXlh
	U5tNPCtckFIRaPgWL7x/QanGurjS5j5m/L3eqvzD+esUEs76fDgutMtmT7mIMAK2fhQER/D2UrD5Q
	q3MkD8EEWElTo/JCE9LE4sRu8gV5M3wnS3L+Q+ZzRYfKOh9xH2vsz7URicyuNW9lI+fFo3z9XpizM
	AfqPcNJzVoWqXrDanJSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWpFf-002wox-B1; Sun, 03 Oct 2021 00:21:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWpFT-002woF-Pg; Sun, 03 Oct 2021 00:21:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 749A761AA9;
 Sun,  3 Oct 2021 00:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633220457;
 bh=nbPhc931osaT2zECQbmZZ/zDrrQcA0c0n0Qt/lf4Fkc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fw20hv6pyy9CFxka4LKTfxowr1N9Fn+eETdOQx088ytHZrMmsiSDzP6fKh2GKvvvR
 LeNhZ1sshx/mvlrdPnPX5Bp4ivT+99SsPhZq7hNlThF4DFfV458uvQvQ0WqG5M2id+
 7nb8esQUHw48WwBMQbOJ6BEsrCL/X755f8sbrCK2YQ36HOTSPUFK4Qmz9oGLHftVl6
 wbYpl/0LbopVgbameLfFKx6F77dbA3p4eWm2HxQfn53PCrwpzResjC51WzNTvCMwmV
 r4dJWj5Dv5Ek59prFHH9HZjH2Wk20tV2xXVGMQn5veSXTRmnqI41gLyoAxlyeGzsdq
 aMhff3V3aFoMQ==
Date: Sat, 2 Oct 2021 17:20:56 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Andreas Rammhold <andreas@rammhold.de>
Cc: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 netdev@vger.kernel.org, Punit Agrawal <punitagrawal@gmail.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 davem@davemloft.net, peppe.cavallaro@st.com, alexandre.torgue@foss.st.com,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH] net: stmmac: dwmac-rk: Fix ethernet on rk3399 based
 devices
Message-ID: <20211002172056.76c6c2d9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20211002213303.bofdao6ar7wvodka@wrt>
References: <20210929135049.3426058-1-punitagrawal@gmail.com>
 <12744188.XEzkDOsqEc@diego>
 <20211001160238.4335a83d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20211002213303.bofdao6ar7wvodka@wrt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211002_172059_876697_8E2D8937 
X-CRM114-Status: GOOD (  11.21  )
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

T24gU2F0LCAyIE9jdCAyMDIxIDIzOjMzOjAzICswMjAwIEFuZHJlYXMgUmFtbWhvbGQgd3JvdGU6
Cj4gT24gMTY6MDIgMDEuMTAuMjEsIEpha3ViIEtpY2luc2tpIHdyb3RlOgo+ID4gT24gV2VkLCAy
OSBTZXAgMjAyMSAyMzowMjozNSArMDIwMCBIZWlrbyBTdMO8Ym5lciB3cm90ZTogIAo+ID4gPiBP
biBhIHJrMzM5OS1wdW1hIHdoaWNoIGhhcyB0aGUgZGVzY3JpYmVkIGlzc3VlLAo+ID4gPiBUZXN0
ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+ICAKPiA+IAo+ID4gQXBwbGll
ZCwgdGhhbmtzISAgCj4gCj4gVGhpcyBhbHNvIGZpeGVkIHRoZSBpc3N1ZSBvbiBhIFJvY2tQaTQu
Cj4gCj4gV2lsbCBhbnkgb2YgeW91IHN1Ym1pdCB0aGlzIHRvIHRoZSBzdGFibGUga2VybmVscyAo
YXMgdGhpcyBicm9rZSB3aXRoaW4KPiAzLjEzIGZvciBtZSkgb3Igc2hhbGwgSSBkbyB0aGF0PwoK
SSB3b24ndC4gVGhlIHBhdGNoIHNob3VsZCBiZSBpbiBMaW51cydzIHRyZWUgaW4gYXJvdW5kIDEg
d2VlayAtIGF0IHdoaWNoCnBvaW50IGFueW9uZSBjYW4gcmVxdWVzdCB0aGUgYmFja3BvcnQuCgpU
aGF0IHNhaWQsIGFzIHlvdSBwcm9iYWJseSBrbm93LCA0LjQgaXMgdGhlIG9sZGVzdCBhY3RpdmUg
c3RhYmxlIGJyYW5jaCwKdGhlIHNoaXAgaGFzIHNhaWxlZCBmb3IgYW55dGhpbmcgMy54LgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
