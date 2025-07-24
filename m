Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BCF6C83F1A
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jul 2025 04:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjOE8tgZazZ1PjbLIIykjLybXfvA841uqoFRT6m9GDA=; b=JeoAWP7Lpd0DRQ
	TxOkYW6zZqW0ZMDo/iUwC2r8OgeQexXubKL+rENt76skwBC3KjsXImd8fmuX8JuaAecYukHGFXOqf
	++MwvyZgkIUUGKhTWui4yRNgf12QXsnbTcDuqozEEZUnRFyqZ5TI16R3bw2acDHi7aohfe2rvJRKb
	P/h3IuVzfPvvchG4METB+931qFjLldHFP31qmyl9EHo+FzESehkvgqVkdvzvCEXMQlL7vx27Nzw+K
	of/Fsvmi4AoDnlixqX3Ka2P7/BP2lFIYbo3RYQs4e6mgSaKvSkIHusLa6ZAA++d2lFaDhHYv7nLgx
	EXzYwq9mEa+PIVini5qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uenUD-00000006RrQ-1vCh;
	Thu, 24 Jul 2025 04:23:17 +0000
Received: from [195.187.100.5] (helo=ni.piap.pl)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uenRk-00000006RgJ-0LJN;
	Thu, 24 Jul 2025 04:20:45 +0000
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
	by ni.piap.pl (Postfix) with ESMTPS id 5ADAAC3E4DE9;
	Thu, 24 Jul 2025 06:20:39 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl 5ADAAC3E4DE9
From: =?utf-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Stefan Klug <stefan.klug@ideasonboard.com>,  Dafna Hirschfeld
 <dafna@fastmail.com>,  Heiko Stuebner <heiko@sntech.de>,  Paul Elder
 <paul.elder@ideasonboard.com>,  Jacopo Mondi
 <jacopo.mondi@ideasonboard.com>,  Ondrej Jirman <megi@xff.cz>,
  linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: FYI: i.MX8MP ISP (RKISP1) MI registers corruption
In-Reply-To: <20250723120942.GB10291@pendragon.ideasonboard.com> (Laurent
	Pinchart's message of "Wed, 23 Jul 2025 15:09:42 +0300")
References: <m3h5zbxkc6.fsf@t19.piap.pl> <m38qknx939.fsf@t19.piap.pl>
	<175308758352.3134829.9472501038683860006@localhost>
	<m31pq9y98z.fsf@t19.piap.pl>
	<175326599663.2811177.16620980968274114885@localhost>
	<m3seinw1po.fsf@t19.piap.pl>
	<20250723120942.GB10291@pendragon.ideasonboard.com>
Date: Thu, 24 Jul 2025 06:20:39 +0200
Message-ID: <m3o6taw76w.fsf@t19.piap.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_212044_285997_94EE6E55 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
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

TGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPiB3cml0
ZXM6Cgo+IFRoZXJlJ3MgYSBjcm9zc2JhciBzd2l0Y2ggaW4gdGhlIElTSSwgYnV0IHRoZSBjb25u
ZWN0aW9ucyBmcm9tIENTSS0yCj4gcmVjZWl2ZXJzIHRvIElTUHMgYXJlIGZpeGVkLgo+Cj4gSGF2
ZSB5b3UgdHJpZWQgcmVwb3J0aW5nIHRoZSBpc3N1ZSB0byBOWFAgPwoKTm8sIHRoZXkga25vdyBh
Ym91dCBpdCwgdGhlcmUgaXMgdGhhdCB3b3JrYXJvdW5kIGNvZGUgKHdvcmtpbmcgbW9zdCBvZgp0
aGUgdGltZSkgaW4gdGhlaXIgZHJpdmVyLiBGb3Igbm93LCBJIHdhbnQgdG8gYmV0dGVyIGtub3cg
dGhlIHByb2JsZW0uCi0tIApLcnp5c3p0b2YgIkNocmlzIiBIYcWCYXNhCgpTaWXEhyBCYWRhd2N6
YSDFgXVrYXNpZXdpY3oKUHJ6ZW15c8WCb3d5IEluc3R5dHV0IEF1dG9tYXR5a2kgaSBQb21pYXLD
s3cgUElBUApBbC4gSmVyb3pvbGltc2tpZSAyMDIsIDAyLTQ4NiBXYXJzemF3YQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
