Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A3FBC32772
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 15:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OcMmTCCWQG29Xbr106M2zSvjS2BoRe5xgXL3Lv+ULxM=; b=PsCWUsKUI7Pznn
	L7GeevRz9Ut++ik8ZJxwdi9ml5yHDhF5ZD3bDhpgoOyBkUq3W0Qxmwup16TWr0t4oJKHuc2m6CMl6
	F6K/LRN2JnEW267/4VfmiCWwtA6j6LzMevAZcWnW4FW7p2YYZ7znv0J8YT/0J68rXC6bAkCgzekYx
	QllLyulSej3qJ8tv/SrRShSGXbWG7LOqyjrnWmbsylmURqDSzV3zqdf63dl5LY8TeYZQHHa7C3fQr
	z+JvSW1bNYTXStOpuxwOPK6P9JhxzaFnDQPlXs21eYYpj5M+uwESQ1jQ9N/sPY2YcGC2X9uZ8JYVH
	3+OTFtZqpNr613OAYKOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOhPr-006bki-2L; Thu, 18 Aug 2022 15:26:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOhML-006a3a-95; Thu, 18 Aug 2022 15:23:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 46B0D61356;
	Thu, 18 Aug 2022 15:22:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDAF4C433C1;
	Thu, 18 Aug 2022 15:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660836177;
	bh=QqWtdtkDBIY635g+nnv23CKAXU+w5n8Hp3kJk32vkYw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ZLBjLI57YZzPGjvb2avoW1Yc3+26UajUSlwe6UXcwWjf2vN8vrQVW7FUgQkdGRj/1
	 FEuZhZYWlEllkfkMYKasYoJC1Z11u7LnmCrV7MyuxK6Otpwyqj0LlzfxM7pXVVkrNM
	 YL0BMWpCkL9mFAk/TCIoASNr5WJAAyQgfCVEmpiyrq5ZMa8sIq0JJO32FXMvEaKwtk
	 7jKuJVctC8fl1FQZwsduFfLctLHq0FqDaDM8YKRy34MfiMYyltbRR7CfXVit0KxLjv
	 F5pkkB2w7DnnuOzqOV+USyP7f1lVNYMTMbR320lA/N4x6xxqbWtZIMNYuII3XjWjlj
	 a9kjxW1NgxxUA==
From: Mark Brown <broonie@kernel.org>
To: Christian Kohlschütter <christian@kohlschutter.com>
Cc: wens@kernel.org, Heiko Stübner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>
In-Reply-To: <E0925148-3F0E-4DD6-9872-96778BFE39DE@kohlschutter.com>
References: <3B4AE882-0C28-41E3-9466-F8E301567627@kohlschutter.com> <YtlqPbbBceBmekcV@sirena.org.uk>
 <E0925148-3F0E-4DD6-9872-96778BFE39DE@kohlschutter.com>
Subject: Re: [PATCH v2] regulator: core: Resolve supply name earlier to prevent double-init
Message-Id: <166083617547.142744.6260121456450934801.b4-ty@kernel.org>
Date: Thu, 18 Aug 2022 16:22:55 +0100
MIME-Version: 1.0
X-Mailer: b4 0.10.0-dev-fe10a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_082301_423448_A15D4B62 
X-CRM114-Status: GOOD (  13.80  )
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

T24gRnJpLCAyMiBKdWwgMjAyMiAxOTo0MjoyNyArMDIwMCwgQ2hyaXN0aWFuIEtvaGxzY2jDvHR0
ZXIgd3JvdGU6Cj4gUHJldmlvdXNseSwgYW4gdW5yZXNvbHZlZCByZWd1bGF0b3Igc3VwcGx5IHJl
ZmVyZW5jZSB1cG9uIGNhbGxpbmcKPiByZWd1bGF0b3JfcmVnaXN0ZXIgb24gYW4gYWx3YXlzLW9u
IG9yIGJvb3Qtb24gcmVndWxhdG9yIGNhdXNlZAo+IHNldF9tYWNoaW5lX2NvbnN0cmFpbnRzIHRv
IGJlIGNhbGxlZCB0d2ljZS4KPiAKPiBUaGlzIGluIHR1cm4gbWF5IGluaXRpYWxpemUgdGhlIHJl
Z3VsYXRvciB0d2ljZSwgbGVhZGluZyB0byB2b2x0YWdlCj4gZ2xpdGNoZXMgdGhhdCBhcmUgdGlt
aW5nLWRlcGVuZGVudC4gQSBzaW1wbGUsIHVucmVsYXRlZCBjb25maWd1cmF0aW9uCj4gY2hhbmdl
IG1heSBiZSBlbm91Z2ggdG8gaGlkZSB0aGlzIHByb2JsZW0sIG9ubHkgdG8gYmUgc3VyZmFjZWQg
YnkKPiBjaGFuY2UuCj4gCj4gWy4uLl0KCkFwcGxpZWQgdG8KCiAgIGh0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2Jyb29uaWUvcmVndWxhdG9yLmdpdCBmb3It
bmV4dAoKVGhhbmtzIQoKWzEvMV0gcmVndWxhdG9yOiBjb3JlOiBSZXNvbHZlIHN1cHBseSBuYW1l
IGVhcmxpZXIgdG8gcHJldmVudCBkb3VibGUtaW5pdAogICAgICBjb21taXQ6IDhhODY2ZDUyN2Fj
MDQ0MWMwZWIxNGE5OTFmYTExMzU4YjQ3NmIxMWQKCkFsbCBiZWluZyB3ZWxsIHRoaXMgbWVhbnMg
dGhhdCBpdCB3aWxsIGJlIGludGVncmF0ZWQgaW50byB0aGUgbGludXgtbmV4dAp0cmVlICh1c3Vh
bGx5IHNvbWV0aW1lIGluIHRoZSBuZXh0IDI0IGhvdXJzKSBhbmQgc2VudCB0byBMaW51cyBkdXJp
bmcKdGhlIG5leHQgbWVyZ2Ugd2luZG93IChvciBzb29uZXIgaWYgaXQgaXMgYSBidWcgZml4KSwg
aG93ZXZlciBpZgpwcm9ibGVtcyBhcmUgZGlzY292ZXJlZCB0aGVuIHRoZSBwYXRjaCBtYXkgYmUg
ZHJvcHBlZCBvciByZXZlcnRlZC4KCllvdSBtYXkgZ2V0IGZ1cnRoZXIgZS1tYWlscyByZXN1bHRp
bmcgZnJvbSBhdXRvbWF0ZWQgb3IgbWFudWFsIHRlc3RpbmcKYW5kIHJldmlldyBvZiB0aGUgdHJl
ZSwgcGxlYXNlIGVuZ2FnZSB3aXRoIHBlb3BsZSByZXBvcnRpbmcgcHJvYmxlbXMgYW5kCnNlbmQg
Zm9sbG93dXAgcGF0Y2hlcyBhZGRyZXNzaW5nIGFueSBpc3N1ZXMgdGhhdCBhcmUgcmVwb3J0ZWQg
aWYgbmVlZGVkLgoKSWYgYW55IHVwZGF0ZXMgYXJlIHJlcXVpcmVkIG9yIHlvdSBhcmUgc3VibWl0
dGluZyBmdXJ0aGVyIGNoYW5nZXMgdGhleQpzaG91bGQgYmUgc2VudCBhcyBpbmNyZW1lbnRhbCB1
cGRhdGVzIGFnYWluc3QgY3VycmVudCBnaXQsIGV4aXN0aW5nCnBhdGNoZXMgd2lsbCBub3QgYmUg
cmVwbGFjZWQuCgpQbGVhc2UgYWRkIGFueSByZWxldmFudCBsaXN0cyBhbmQgbWFpbnRhaW5lcnMg
dG8gdGhlIENDcyB3aGVuIHJlcGx5aW5nCnRvIHRoaXMgbWFpbC4KClRoYW5rcywKTWFyawoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
