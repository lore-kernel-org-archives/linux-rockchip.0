Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B535C87FCF
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Aug 2025 20:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SaS5gXRDnK+fhC/eG2ldb8Zto39f+H6yqT3ic/Ef/x8=; b=xZZs9QFDLdZRA5
	X2/lHPXUYe4OaG58XH0PNU3f4+lUCG8ZhFiEjYE9xRoDfY3oR2kq2TJcFLtf8mofzzA4TbS+DvuHp
	5KUfgqF8vSu9ieKktYAALX7seAG1Qunn6M7+bohL7vLwcJJjK8Y4AvH9ZT9ma7ZBHY1X5nQGWoN61
	DsEv5X8NcipdiCoXdbS99II2LzuCQ42uNPGbRPCCXXjzOOlbjL2clnKpfXDevQsBMkviBXBU3JXKk
	+QgDGJbRtTZheGgMFbBzk6lW7iz0lWdeNTMH7gwomJH+zdLgIv3U5FqifByos9/c4wSZvHKkSk+Fz
	t2CiG2wgvNFtNIcnEDUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukpmI-00000004sUv-1UJk;
	Sat, 09 Aug 2025 20:02:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukpjm-00000004sNz-1jiJ;
	Sat, 09 Aug 2025 20:00:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 10A6E6141F;
	Sat,  9 Aug 2025 20:00:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 432F4C4CEE7;
	Sat,  9 Aug 2025 20:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754769616;
	bh=7fQBK8bgFE1Ri1Krh9HfuYIeNKOzqdzxblIbW7hnQXQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=GBfpFW+tldLQvKQQnUCTIxV092GzoC3t6M7VHOAiWjRrEBBkv7QIw0lX0maHUrfQn
	 WNPg5HnhwTezF2HG9Mf+obGeahDBhbzh51uRWrEkfvCUUFVvLxrk/zJfyNCNtL8w2j
	 k09TFBa8vO1yehyW9TuqvYzGAjNx11Jm+zO7PQwHzuvYdj8GO0yhgNyT0n3FV5d/NP
	 vpizg1ixql0wV6LjMsH4jn/G5VZPROpKjsYg8vGgN8LQ0IRuwU3jpQdGkehyrAudvI
	 ekPwDPD/0u+UcAH3gQLmajUXN5nA9OA0uIlzh2/Pcwmb9vYLXkz7OMppBtWWFkzn09
	 Ky7m/QSekg1sw==
Date: Sat, 9 Aug 2025 21:00:01 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Waqar Hameed <waqar.hameed@axis.com>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Cosmin Tanislav <cosmin.tanislav@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Matteo Martelli <matteomartelli3@gmail.com>, Heiko Stuebner
 <heiko@sntech.de>, Francesco Dolcini <francesco@dolcini.it>,
 =?UTF-8?B?Sm/Do28=?= Paulo =?UTF-8?B?R29uw6dhbHZlcw==?=
 <jpaulo.silvagoncalves@gmail.com>, Hugo Villeneuve
 <hvilleneuve@dimonoff.com>, Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
 Mudit Sharma <muditsharma.info@gmail.com>, Gerald Loacker
 <gerald.loacker@wolfvision.net>, Song Qiang <songqiang1304521@gmail.com>,
 Crt Mori <cmo@melexis.com>, kernel@axis.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] iio: Remove error prints for
 devm_add_action_or_reset()
Message-ID: <20250809210001.4d8af4cd@jic23-huawei>
In-Reply-To: <CAHp75VeGvgv6TAYRRtEySmESkjygW79ms-Yd64h08_+7JjJMJw@mail.gmail.com>
References: <pndectqm7te.a.out@axis.com>
	<CAHp75VeGvgv6TAYRRtEySmESkjygW79ms-Yd64h08_+7JjJMJw@mail.gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

T24gVHVlLCA1IEF1ZyAyMDI1IDE1OjA2OjAyICswMjAwCkFuZHkgU2hldmNoZW5rbyA8YW5keS5z
aGV2Y2hlbmtvQGdtYWlsLmNvbT4gd3JvdGU6Cgo+IE9uIFR1ZSwgQXVnIDUsIDIwMjUgYXQgMTE6
MzPigK9BTSBXYXFhciBIYW1lZWQgPHdhcWFyLmhhbWVlZEBheGlzLmNvbT4gd3JvdGU6Cj4gPgo+
ID4gV2hlbiBgZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KClgIGZhaWxzLCBpdCBpcyBkdWUgdG8g
YSBmYWlsZWQgbWVtb3J5Cj4gPiBhbGxvY2F0aW9uIGFuZCB3aWxsIHRodXMgcmV0dXJuIGAtRU5P
TUVNYC4gYGRldl9lcnJfcHJvYmUoKWAgZG9lc24ndCBkbwo+ID4gYW55dGhpbmcgd2hlbiBlcnJv
ciBpcyBgLUVOT01FTWAuIFRoZXJlZm9yZSwgcmVtb3ZlIHRoZSB1c2VsZXNzIGNhbGwgdG8KPiA+
IGBkZXZfZXJyX3Byb2JlKClgIHdoZW4gYGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldCgpYCBmYWls
cywgYW5kIGp1c3QKPiA+IHJldHVybiB0aGUgdmFsdWUgaW5zdGVhZC4gIAo+IAo+IEV2ZW4gbW9y
ZSwgdGhlIGRldm0gaGFzIHRyYWNlcG9pbnRzIGluIGNhc2Ugc29tZWJvZHkgcmVhbGx5IHdhbnRz
IHRvCj4gaW52ZXN0aWdhdGUgZmFpbHVyZXMuCj4gCj4gRnVsbHkgaW4gc3VwcG9ydCBvZiB0aGlz
IGNoYW5nZS4KPiBSZXZpZXdlZC1ieTogQW5keSBTaGV2Y2hlbmtvIDxhbmR5QGtlcm5lbC5vcmc+
Cj4gCgpBcHBsaWVkIHRvIHRoZSB0ZXN0aW5nIGJyYW5jaCBvZiBpaW8uZ2l0LiBJJ2xsIHJlYmFz
ZSB0aGF0Cm9uIHJjMSBvbmNlIGF2YWlsYWJsZS4KCkpvbmF0aGFuCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
