Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5419C5478C
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 14:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HypZ923o8DT/iCXqZIzsQ63RxaEtB/dhXCQgd+ZIpII=; b=ZUtk6bfjHObMwTCYPDcUxB8/+4
	DrOtpN7Q5ylLe0976cYw5w/4vi5V4AUC/zFQINEOWuu5lEKYUBoDSVZezd6slfCnOGfbuJCnR3N5f
	bM+MCcAXNOD2CQ2ADrHRmcx9b51dYnC70hBFPvC9EhAYZCX2cC6nVsf6KQgk8l2bCJ0bVOrgbqeU0
	0tgSeGEDBuzbbAo+ghseQKuR1zgaiPipaKUcfQRaQjwJDMt99+NN6Zc+x5kWckhMf5bndvgDiioXY
	t1dpSqTqoXJudq0HniSq6T3+qnJmvawhzdcG+lUewHYjPHRTzNm8QYDVizXmbCj7hvdYXdbUkmKdZ
	RRDh3c0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reyrz-00000005fAd-0Os8;
	Tue, 27 Feb 2024 14:55:47 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reyrk-00000005f3e-2ekQ;
	Tue, 27 Feb 2024 14:55:34 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709045729;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=m+buA9KQcshQo11eLqij6u65fXQy9H9bVSZZKj/86ws=;
	b=ociEBA5Krod3ExR4KO+TwRlaQsQhio31/u7nVUn5SOGGQyPOonbCNwlQhh5OAbSa1XFGxJ
	WB7Ti9m8vg1Y1oVLvVW0Tn4lhAyjqCdU3CTH9DTZ02ATz8TWV5526kfE9EklDdzqv4fqoz
	S324zYaRdlnWk566Mg1rgII2+VpTrbLsGQrleCoivuW6Vtm9FO0T5NeOPM1u0IBbNZgFec
	g6GumCX2voAPVqqeqcMqH4bEn23soZUH/jpNiY97WXzSY8drPkS7YmNt9yq4ha5pXSCJVt
	l4YhisH4rgH+E7MX4uMTmYauBNuKFnTj/iYOR91SUz/I+vcU5tzEd2JxKiFgzQ==
Date: Tue, 27 Feb 2024 15:55:27 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>, Quentin Schulz
 <foss+kernel@0leil.net>, Jonathan Cameron <jic23@kernel.org>, Lars-Peter
 Clausen <lars@metafoo.de>, Heiko Stuebner <heiko@sntech.de>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, Simon Xue <xxm@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Cameron
 <Jonathan.Cameron@huawei.com>, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] iio: adc: rockchip_saradc: replace custom logic with
 devm_reset_control_get_optional_exclusive
In-Reply-To: <CAHp75VcuRacheLt=sAJz27RMEZqvZ8CAZSPvxgUbSFS-dUAAOg@mail.gmail.com>
References: <20240223-saradcv2-chan-mask-v1-0-84b06a0f623a@theobroma-systems.com>
 <20240223-saradcv2-chan-mask-v1-3-84b06a0f623a@theobroma-systems.com>
 <CAHp75VfVTJsQDwaPoPgGiT6jnymXAR3WpETqaKai8rXAC70iLw@mail.gmail.com>
 <6f76ffab-69fe-4afb-9d7e-d3cdfe37c28c@theobroma-systems.com>
 <CAHp75Vft3kJEF9JiuEqVsS3biQ6YsuDXON_P3FOZRjtb8NaB2w@mail.gmail.com>
 <d2a7954926e328cbf898aac0a42a6e24@manjaro.org>
 <CAHp75VcuRacheLt=sAJz27RMEZqvZ8CAZSPvxgUbSFS-dUAAOg@mail.gmail.com>
Message-ID: <509bf12609dce4fb4bdccb657dd75a95@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_065533_296072_418F3FA7 
X-CRM114-Status: GOOD (  22.12  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyNC0wMi0yNyAxMzo0OCwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+IE9uIE1vbiwgRmVi
IDI2LCAyMDI0IGF0IDEwOjMx4oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+
IAo+IHdyb3RlOgo+PiBPbiAyMDI0LTAyLTIzIDE1OjM5LCBBbmR5IFNoZXZjaGVua28gd3JvdGU6
Cj4+ID4gT24gRnJpLCBGZWIgMjMsIDIwMjQgYXQgMzoxMOKAr1BNIFF1ZW50aW4gU2NodWx6Cj4+
ID4gPHF1ZW50aW4uc2NodWx6QHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4gd3JvdGU6Cj4+ID4+IE9u
IDIvMjMvMjQgMTQ6MDAsIEFuZHkgU2hldmNoZW5rbyB3cm90ZToKPiAKPiAuLi4KPiAKPj4gPj4g
SSB3b3VsZCBzdGlsbCBiZSByZWFjaGFibGUgYXQgdGhhdCBDYyBhZGRyZXNzIHdpdGhvdXQgaGF2
aW5nIHRvIG1vZGlmeQo+PiA+PiB0aGUgLm1haWxtYXAgYWZ0ZXIgdGhlIGZhY3QgKHdoaWNoIHdv
bid0IG1ha2UgaXQgdG8gYW4gZWFybGllciB2ZXJzaW9uCj4+ID4+IG9mIHRoZSBrZXJuZWwgZm9y
IGV4YW1wbGUpLiBTb21lIG1haW50YWluZXJzIGRvbid0IHJlYWxseSBsaWtlIHRoaXMsCj4+ID4+
IHNvbWUgZG9uJ3QgbWluZCwgd2UnbGwgc2VlIGluIHdoaWNoIGNhdGVnb3J5IHRoZSBJSU8gbWFp
bnRhaW5lcihzKQo+PiA+PiBmYWxsCj4+ID4+IGluIDopIChJIGRvbid0IG1pbmQgZWl0aGVyIHdh
eSBqdXN0IHRvIGJlIGNsZWFyKS4KPj4gPgo+PiA+IE15IHBvaW50IGlzIHRoYXQgQ2MgYW5kIG90
aGVyIHNpbWlsYXIgKG5vbi1yZWFsLXRhZ3MpIHN0dWZmIGlzCj4+ID4gcG9sbHV0aW5nIGNvbW1p
dCBtZXNzYWdlcy4gSXQgbWVhbnMgdGhhdCB0aGlzIHdpbGwgYmUgY29waWVkIHRvIHRoZQo+PiA+
IEdpdCBpbmRleCB0byBhbGwga2VybmVsIGdpdCByZXBvc2l0b3JpZXMgaW4gdGhlIHdvcmxkIGZy
b20gbm93IGFuZAo+PiA+IHRoZW4sIFRoaXMgaXMgYXQgYmFyZSBtaW5pbXVtIG1ha2VzIGFkZGl0
aW9uYWwgYnVyZGVuIG9uIGdpdCBsb2cgKGFuZAo+PiA+IHBhcnNpbmcgYW5kIHNvIG9uKSBhbmQg
bW9yZW92ZXIsIHdhc3RlcyByZXNvdXJjZXMgYmVjb21pbmcgbGVzcwo+PiA+IGVudmlyb25tZW50
IGZyaWVuZGx5IChubyBqb2tlcykuIFVzaW5nIC0tY2Mgb3IgbW92aW5nIHRvIHRoZSBiZWhpbmQK
Pj4gPiB0aGUgY29tbWl0IG1lc3NhZ2Ugd2lsbCBrZWVwIGVtYWlsIGNvcGllZCB3aXRoIGNsZWFu
ZXIgY29tbWl0Cj4+ID4gbWVzc2FnZXMuIFlldCwgYWxsIGVtYWlsIHRhZ3MgYXJlIGF2YWlsYWJs
ZSBpbiBsb3JlIGFyY2hpdmUKPj4gPiAobG9yZS5rZXJuZWwub3JnKS4gUGxlYXNlLCByZWFsbHkg
cmVjb25zaWRlciB0aGUgY29tbWl0IG1lc3NhZ2VzCj4+ID4gY29udGVudCBpbiB0aGUgTGludXgg
a2VybmVsIHByb2plY3QgYW5kIGVsc2V3aGVyZSwgaXQgd2lsbCBoZWxwIHRvCj4+ID4gbWFrZSB0
aGUgd29ybGQgbW9yZSBmcmllbmRseS4KPj4gCj4+IEJlbGlldmUgaXQgb3Igbm90LCBJJ20gd29y
a2luZyBvbiBzb21lIHBhdGNoZXMgZm9yIEdpdCB0aGF0LCBJIAo+PiBiZWxpZXZlLAo+PiBzaG91
bGQgaGVscCBhIGxvdCB3aGVuIGl0IGNvbWVzIHRvIGhhbmRsaW5nIENjOiBhZGRyZXNzZXMuICBX
b3VsZCB5b3UKPj4gbGlrZSB0byBiZSBpbmNsdWRlZCBpbiB0aGUgbGlzdCBvZiByZWNpcGllbnRz
IGZvciB0aG9zZSBHaXQgcGF0Y2hlcywgCj4+IHNvCj4+IHlvdSBjb3VsZCwgaG9wZWZ1bGx5LCBw
cm92aWRlIHNvbWUgZmVlYmFjaz8KPiAKPiBZb3UgbWF5IENjIG1lIGlmIHlvdSB3YW50IHRvLCBi
dXQgSSBjYW4ndCBndWFyYW50ZWUgSSBoYXZlIHRpbWUgb3IKPiB2YWx1YWJsZSBpbnB1dCB0byB0
aGF0LgoKVGhhbmtzLCBJJ2xsIGJlIGhhcHB5IHRvIGhhdmUgYW5vdGhlciBzZXQgb2YgZXllcyBv
biB0aG9zZSBHaXQgcGF0Y2hlcy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
