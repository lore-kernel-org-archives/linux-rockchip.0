Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97F8DC3ABC3
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 May 2025 15:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nn+I8/egLki6sau+1vxYe7L2hHGdGZ24QyKloKd5VNg=; b=2J4E/ohHDeRHVP
	CodQhDu3VVPx5ThZ/nJcXRkHyGekj5l7FfHVrFZf1G5QZTAuCbyTd4P8n3KqjjBXjzBcYmftCZizP
	HAlDqbE3n/fCh+hPCOkgOGMBRK00gXXz+KuX01REAcj6oI4S1+JiSVnUZhAK6I6YqVM1+9nthD3mC
	UhfUJfmKJ2V3yiCEbIwEiEmn8AGaf43epS7N6NGoVXzvb9zGQ4LJkwO3nGzVsNnTOUqnjd+sKgDcy
	lM5jAEtyMA43gWGLYknHn8CqZzq3JUOHGWtmgXkuu+08wz2gXHKSGNSliSHaY0iX77YETm+h+zxrB
	4eEQ8qMDqZedGLm/e0ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uE8hP-00000007SLp-2bqZ;
	Sun, 11 May 2025 15:34:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uE8fO-00000007S4Q-00lZ;
	Sun, 11 May 2025 15:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=PRFRSL4n+C5Ljmoz7zXxqe6F+2Vxs8e68R7K0G+IUDg=; b=KU5RE11TXzjKXsnuOH57r+OCky
	p3sAUfWcD4yMEvwgOuA+lslZfvovBV3A5kdr+q5XFYa5gXd+Iz5QUnVKIeOkgRTWjWMniiugaHLf1
	egiVETrR7pGLWeSqTd+9FTT7MiXBSOQFSdFZkPdHU883hGfU14E0wSNkOBdqtjwtf7R5OMnpGpoNi
	Hg9bK8oysxMomikVSGmNrU0XGKIvbB8Q7Zhyx9n3XhR+edbVNyFSsTyf5NU1RSA2tj60bx5UXDzDw
	BZcVr3rW7ATFZ49aun9Nf0mZsB6KUTN5yi8UfQFdt35i4OKh3qRITLfhcY3wpWnt8xJYk2TeRtv0z
	li1qLw4g==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uE8fH-0000IX-8U; Sun, 11 May 2025 17:32:31 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: amadeus@jmu.edu.cn, ziyao@disroot.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 4/5] arm64: dts: rockchip: add core dtsi for RK3562 SoC
Date: Sun, 11 May 2025 17:32:30 +0200
Message-ID: <6747980.G0QQBjFxQf@diego>
In-Reply-To: <20250511150101.51273-1-amadeus@jmu.edu.cn>
References: <3317829.AJdgDx1Vlc@diego> <20250511150101.51273-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250511_083238_065198_E2E3EF86 
X-CRM114-Status: GOOD (  14.46  )
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

QW0gU29ubnRhZywgMTEuIE1haSAyMDI1LCAxNzowMTowMSBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIENodWt1biBQYW46Cj4gSGksCj4gCj4gPiBJIG1pZ2h0IGJlIGJsaW5k
LCBidXQgSSBkb24ndCBzZWUgYSB0YWIgbWlzc2luZyBoZXJlPyAjYWRyZXNzLWNlbGxzIGFuZAo+
ID4gI3NpemUtY2VsbHMgYXJlIGluIHRoZSBzYW1lIGxldmVsIG9mIGluZGVudGF0aW9uIGFzIHRo
ZSBvdGhlciBwcm9wZXJ0aWVzCj4gPiBvZiBzcGkwPyBJIGRpZCBtb3ZlIHRoZSAtY2VsbHMgZG93
biB0aG91Z2ggbm93Lgo+IAo+IFNvcnJ5IEkgZGlkbid0IG1ha2UgaXQgY2xlYXIuIFRoaXMgcmVm
ZXJzIHRvIC1jZWxscy4KPiAKPiA+IGhvcGVmdWxseSBjYXVnaHQgYWxsIHB3bXMgbm93Cj4gCj4g
VGhlIHBpbmN0cmwtbmFtZXMgb2YgcHdtNCB0byBwd20xNSBhcmUgc3RpbGwgImFjdGl2ZSIuCj4g
Cj4gPiArCQlzYXJhZGMwOiBhZGNAZmY3MzAwMDAgewo+ID4gKwkJCWNvbXBhdGlibGUgPSAicm9j
a2NoaXAscmszNTYyLXNhcmFkYyI7Cj4gPiArCQkJcmVnID0gPDB4MCAweGZmNzMwMDAwIDB4MCAw
eDEwMD47Cj4gPiArCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQwIElSUV9UWVBFX0xFVkVMX0hJ
R0g+Owo+ID4gKwkJCSNpby1jaGFubmVsLWNlbGxzID0gPDE+Owo+IAo+ID4gPiBgI2lvLWNoYW5u
ZWwtY2VsbHNgIHNob3VsZCBiZSBwdXQgYWJvdmUgYHN0YXR1cyA9ICJkaXNhYmxlZCI7YAo+ID4K
PiA+IG1vdmVkIG5vdyA6LSkKPiAKPiBJdCBsb29rcyBsaWtlIHNhcmFkYzAgZm9yZ290IHRvIGNo
YW5nZS4KCmFkYXB0ZWQgdGhlIHJrMzU2MiBkdHNpIGFnYWluLCB3aXRoIHRob3NlIGxhc3QgcmVt
YW50cyA6LSkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
