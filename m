Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44F08C531FA
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 23:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1Oh6cP0MoNfDT1FIc2Xg0iMeU0NgEgQfmqwUcFvAvw=; b=l1dGc7C5sMbwcd
	dniCCJUYNQuPeBiOrk4KCrzGKoAGMlJ7UTY3DAE6DgpNJbIN5QV+t5qH44dHeJwZThvdVTO92Iifa
	DjgrVASsuWUcziX0ND9u7P09o1sJogTXk+MZ0tf2VtLaBXH0gXpXIlDd7ePKkTdQN0UtnzdHcHtuW
	bSnCy0cWyKgP/k7JEsClzz++4aM1O8S54g7q57pwQysKXnIZDvcWJ6XZ49tLxjvZutjR2lKo2i+be
	+bQh226ETW+rHsb4ag9dNYPiUPh85xegynaUxmrZJct9eFOl3ccXFQ/LiOwi2wSbdfCNZZLzRh3k5
	IfmaUz7GjX/9UU9q8V+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn2di-0000000FFWn-3FyI;
	Thu, 23 Jul 2026 23:15:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn2dh-0000000FFWb-2ju9
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Jul 2026 23:15:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C617F600AD;
	Thu, 23 Jul 2026 23:15:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7654D1F000E9;
	Thu, 23 Jul 2026 23:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784848540;
	bh=yFszR+aoiyfsqBGg5FluY44HniJLCj3pYOcguVsSajE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=d0vIRSI4UckEKljXRVTQyYQQEPewZ0fcFxotGaOgpq+7qKFDqXB37RCmMPfl9tPz3
	 +fW/ZzA0EgYgbNVyjolcmNIfW9XZVu4EzW08Qoj9lgoJAIdjDkV0TOWjq+btM0yupb
	 Mslvf10ELmmL5YsYmlfL3GDegyj4dkufbIPAQ81m8HUL0T0G0l+enQqjBqsAsudT5q
	 oKvJhU/lixlndcj+aBiVsXFee+2pShQy34wAt/EJ09hyS68U0l+DwXuYfo53+5tSlQ
	 VKz2RqBUTzMkZFjRdoZ8rnorkY+wK5Tk7OJnCTOyckbJ2CI4yXCTHRodmg+iQKXpN5
	 +lf2p2aDjj9Tw==
Date: Fri, 24 Jul 2026 00:15:35 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@baylibre.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
 andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com, Chris
 Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v16 04/10] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <20260724001535.5991853b@jic23-huawei>
In-Reply-To: <alYoUSf_jGegFP9E@monoceros>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
	<20260713215842.69097-5-macroalpha82@gmail.com>
	<alYoUSf_jGegFP9E@monoceros>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
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

T24gVHVlLCAxNCBKdWwgMjAyNiAxNDoxODo1MyArMDIwMApVd2UgS2xlaW5lLUvDtm5pZyA8dS5r
bGVpbmUta29lbmlnQGJheWxpYnJlLmNvbT4gd3JvdGU6Cgo+IEhlbGxvLAo+IAo+IE9uIE1vbiwg
SnVsIDEzLCAyMDI2IGF0IDA0OjU4OjM0UE0gLTA1MDAsIENocmlzIE1vcmdhbiB3cm90ZToKPiA+
ICsjaW5jbHVkZSA8bGludXgvaTJjLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L21vZF9kZXZpY2V0
YWJsZS5oPiAgCj4gCj4gUGxlYXNlIGRvbid0IHVzZSA8bGludXgvbW9kX2RldmljZXRhYmxlLmg+
LCB0byBnZXQgaTJjX2RldmljZV9pZCBhbmQKPiBvZl9kZXZpY2VfaWQgaXQncyBlbm91Z2ggdG8g
aGF2ZSA8bGludXgvaTJjLmg+Lgo+IAo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaTJjX2Rldmlj
ZV9pZCBpbnZfaWNtNDI2MDdfaWRbXSA9IHsKPiA+ICsJewo+ID4gKwkJLm5hbWUgPSAiaWNtNDI2
MDciLAo+ID4gKwkJLmRyaXZlcl9kYXRhID0gKGtlcm5lbF91bG9uZ190KSZpbnZfaWNtNDI2MDdf
aHdfZGF0YSwKPiA+ICsJfSwgewo+ID4gKwkJLm5hbWUgPSAiaWNtNDI2MDdwIiwKPiA+ICsJCS5k
cml2ZXJfZGF0YSA9IChrZXJuZWxfdWxvbmdfdCkmaW52X2ljbTQyNjA3cF9od19kYXRhLAo+ID4g
Kwl9LAo+ID4gKwl7IH0KPiA+ICt9Owo+ID4gK01PRFVMRV9ERVZJQ0VfVEFCTEUoaTJjLCBpbnZf
aWNtNDI2MDdfaWQpOwo+ID4gKwo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lk
IGludl9pY200MjYwN19vZl9tYXRjaGVzW10gPSB7Cj4gPiArCXsKPiA+ICsJCS5jb21wYXRpYmxl
ID0gImludmVuc2Vuc2UsaWNtNDI2MDciLAo+ID4gKwkJLmRhdGEgPSAmaW52X2ljbTQyNjA3X2h3
X2RhdGEsCj4gPiArCX0sIHsKPiA+ICsJCS5jb21wYXRpYmxlID0gImludmVuc2Vuc2UsaWNtNDI2
MDdwIiwKPiA+ICsJCS5kYXRhID0gJmludl9pY200MjYwN3BfaHdfZGF0YSwKPiA+ICsJfSwKPiA+
ICsJeyB9Cj4gPiArfTsKPiA+ICtNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBpbnZfaWNtNDI2MDdf
b2ZfbWF0Y2hlcyk7ICAKPiAKPiBJdCB3b3VsZCBiZSBlbm91Z2ggdG8gcHJvdmlkZSB0aGUgZHJp
dmVyX2RhdGEgcG9pbnRlcnMgaW4gdGhlCj4gaTJjX2RldmljZV9pZCBhcnJheSBvbmx5LgpJJ2Qg
cHJlZmVyIHRvIGtlZXAgdGhlbSBpbiBib3RoLgoKVGhlIG1hdGNoIGZ1bmN0aW9uIHRyaWVzIHRo
ZSBvZl9kZXZpY2VfaWQgcGF0aCBmaXJzdCBhbmQgaWYgd2UKc2hvdWxkIGV2ZXIgZ2V0IGEgdHlw
byBvciBtaXNtYXRjaCB3ZSBjYW4gZW5kIHVwIHdpdGggYSBkcml2ZXIKZmFpbGluZyBpbiBhIHdh
eSB0aGF0IGlzIGFubm95aW5nbHkgaGFyZCB0byB0cmFjayBkb3duLiAgCkl0IGhhcyBoYXBwZW5l
ZCA6KCAgTm93IEknZCBsb3ZlIHVzIHRvIGdldCB0byB0aGUgcG9pbnQKd2hlcmUgd2UgY291bGQg
anVzdCBoYXZlIHRoZSBvZl9kZXZpY2VfaWQgdGFibGUgKGFuZCBtYXliZQpBQ1BJIG9uIG9jY2Fz
aW9uKSBidXQgd2UgYXJlbid0IHRoZXJlIHRvZGF5LgoKVGhpcyBjYW1lIHVwIGluIHYxNyB3aGVy
ZSBJIGFza2VkIHdoeSB0aGV5IHdlcmUgbWlzc2luZyBhbmQgQ2hyaXMKbWVudGlvbmVkIGl0IHdv
dWxkIGJlIGZpbmUgdG8gZHJvcCB0aGVtLgoKSm9uYXRoYW4KCj4gCj4gQmVzdCByZWdhcmRzCj4g
VXdlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
