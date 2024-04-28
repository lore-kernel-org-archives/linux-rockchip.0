Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 656D0C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Apr 2024 17:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJ5Mn+vxe3ABakxpKvMavek0YPM0FJ7TmoCahWmEUXY=; b=XNRmZXTbUlvepx
	J1kC4Y6aIcBHI0mPU3HWJPqVSlvKhL/FDpW9RReHyHt9A4V+DR5FItHG4vu6ztQgY1aVRXFC00A/0
	OeVLz1MEEA4mG6iZX+s2qnREFnHq9TwrRjz844DPCot+uLNzvUmoOzzy9MjMcutMuLxrrxKvWzgM8
	x0GozrCGif2W/CuvQ9SH1PpMTs7VKk760R4Z0nymn+aZxI0nRFrrXzD1tzjW2MGt94TL8bXHz4PEU
	msZCCoRbMLE9+xlXq9n2kEkJrvSIW9t++UZjA0ELdaW0ceyGPhIaSTD4tnpcBBjY4BxvfEYNt3ZKP
	uN3xh/N5UXMuw0CgwqFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s17ub-00000000M2H-3DjC;
	Sun, 28 Apr 2024 17:02:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s17uY-00000000M1I-1n0m;
	Sun, 28 Apr 2024 17:02:00 +0000
Received: from i53875b01.versanet.de ([83.135.91.1] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s17uF-0006wg-Pn; Sun, 28 Apr 2024 19:01:39 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linkmauve@linkmauve.fr, Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: andy.yan@rock-chips.com, conor+dt@kernel.org,
 cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org,
 dsimic@manjaro.org, ezequiel@vanguardiasur.com.ar,
 frattaroli.nicolas@gmail.com, iommu@lists.linux.dev, joro@8bytes.org,
 krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, macromorgan@hotmail.com,
 mchehab@kernel.org, p.zabel@pengutronix.de, robh@kernel.org,
 robin.murphy@arm.com, sebastian.reichel@collabora.com,
 shreeya.patel@collabora.com, will@kernel.org, sigmaris@gmail.com,
 nicolas@ndufresne.ca
Subject: Re: [PATCH v4 0/2] Enable JPEG encoding on rk3588
Date: Sun, 28 Apr 2024 19:01:38 +0200
Message-ID: <3784322.QJadu78ljV@diego>
In-Reply-To: <20240427071638.79915-1-liujianfeng1994@gmail.com>
References: <20240418141509.2485053-1-linkmauve@linkmauve.fr>
 <20240427071638.79915-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240428_100158_484320_E02A4ACC 
X-CRM114-Status: GOOD (  15.27  )
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

SGkgSmlhbmZlbmcsCgpBbSBTYW1zdGFnLCAyNy4gQXByaWwgMjAyNCwgMDk6MTY6MzggQ0VTVCBz
Y2hyaWViIEppYW5mZW5nIExpdToKPiBIaSBFbW1hbnVlbCwKPiAKPiBPbiBUaHUsIDE4IEFwciAy
MDI0IDE2OjE1OjA0ICswMjAwLCBFbW1hbnVlbCBHaWwgUGV5cm90IHdyb3RlOgo+ID4tIE9ubHkg
ZXhwb3NlIGEgc2luZ2xlIFZFUFUxMjEsIHNpbmNlIHRoZSBkcml2ZXIgZG9lc27igJl0IHlldCBz
dXBwb3J0Cj4gPiAgZXhwb3NpbmcgdGhlbSBhbGwgYXMgYSBzaW5nbGUgdmlkZW8gbm9kZSB0byB1
c2Vyc3BhY2UuCj4gSSdtIGFsc28gZG9pbmcgd29yayB3aXRoIHRoZSBoYW50cm8gbm9kZSBvbiBy
azM1ODggd2hpY2ggaGFzIGJvdGggdmRwdQo+IGFuZCB2ZXB1LiBEaXNjdXNzaW9ucyBjYW4gYmUg
Zm91bmQgaGVyZVsxXS4gSWYgSSBlbmFibGUgdGhlIGpwZWcgZW5jb2Rlcgo+IGF0IGZlYjUwMDAw
LCB3b3VsZCBpdCBjYXVzZSBhbnkgc2lkZSBlZmZlY3RzIGlmIG90aGVyIGpwZWcgZW5jb2RlcnMg
aW4KPiB5b3VyIHBhdGNoIGFyZSBlbmFibGVkPyBBbmQgd2hhdCdzIHRoZSBkaXNhZHZhbnRhZ2Ug
b2YgZW5hYmxpbmcgbXVsdGkKPiBqcGVnIGVuZG9lcnMgaW4gZGV2aWNldHJlZT8KCnRoZSBiYXNp
YyBwcm9ibGVtIGlzIHRoYXQgZXhwb3NpbmcgbXVsdGlwbGUganBlZyBlbmNvZGVycyB3b3VsZCBy
ZXF1aXJlCnVzZXJzcGFjZSB0byBkbyB0aGUgc2NoZWR1bGluZy4gV2hpY2ggaXMgYmFkLgpJLmUu
IGFsbCB1c2Vyc3BhY2UgcHJvZ3JhbW1zIHdvdWxkIG5lZWQgdG8ga25vdyB0aGUgZXhpc3RlbmNl
IG9mCmFsbCBqcGVnIGVuY29kZXJzIGFuZCB0aGVuIHNvbWVob3cgbmVnb3RpYXRlIGhvdyB0byB1
c2UgYWxsIG9mIHRoZW0KbW9zdCBlZmZpY2llbnRseS4KClRoaW5rIG11bHRpcGxlIGRpZmZlcmVu
dCBwcm9ncmFtcyB0aGF0IHdvdWxkIG5lZWQgdG8gbmVnb3RpYXRlIHRvCnNwcmVhZCBhY3Jvc3Mg
YWxsIG9mIHRoZW0gaW4gdGhlIGJlc3Qgd2F5LgoKRG9pbmcgdGhpcyBpbiB0aGUga2VybmVsLCB3
ZSBqdXN0IGV4cG9zZSBvbmUgZW5jb2RlciAoYW5kIHF1ZXVlKSBhbGwKcHJvZ3JhbXMgd291bGQg
anVzdCBwaWxlIG9udG8gdGhhdCBvbmUgZW5jb2RlciBhbmQgdGhlIGtlcm5lbCB0aGVuCndvdWxk
IGJlIG9uIHRoZSBob29rIHRvIGRvIHRoZSBzY2hlZHVsaW5nIC0gd2hpY2ggdGhlIGtlcm5lbCBj
YW4gZG8KYmV0dGVyICh3aXRoIHJlbGV2YW50IGNvZGUgaW1wbGVtZW50ZWQpCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
