Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CECAC77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 06:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hShcHcbdTcHV68LftGa5N0Rq83+w9a4aRYVo/ZFf7MY=; b=M370SJD2usokqp
	O/Jxhg1F+PPzLWUdq4ojqGYqFtkqlaG+4szBmWqC6P5AV21E0UciQQANhXx/Xvp06TVNaQXzdy/UV
	909DJ4hTPIYFHcLaCzvQtIjkc7kvIBQqJsqpHMV17NHEX0Vd79SOBEv3I/TMIP4jTSFPxOAGkJxu2
	F/bKBPB7s+vTcby4fMjngjQ192oLuxmu5ZjqGCYjVR7U5K0ozzgTdW3pHl1BuiJGbQLijyPmMrt8a
	y/IaOAPDHPeMk337jUgSTpawZ74AZJuKftLRO1WcXf9CURGkuv0N0JNookhr1YSxboW9kjWFg/6WY
	ZaKKdM296ncvLF7roLHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1LjM-0096hq-1W;
	Tue, 23 May 2023 06:42:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1LjK-0096gh-1a
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 06:42:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q1LjF-0006T0-Mb; Tue, 23 May 2023 08:42:41 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q1LjB-0008VX-43; Tue, 23 May 2023 08:42:37 +0200
Date: Tue, 23 May 2023 08:42:37 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Adam Ford <aford173@gmail.com>
Cc: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>, kernel@collabora.com
Subject: Re: [RFC 2/2] media: rkvdec: Add VP8 encoder
Message-ID: <20230523064237.pvj6pipj7ftnduom@pengutronix.de>
References: <20230309125651.23911-1-andrzej.p@collabora.com>
 <20230309125651.23911-3-andrzej.p@collabora.com>
 <CAHCN7xKQv=Dx7cVSc_ekZ2GHzOVFuv6Yzum=kGQnCVfWxV0m5w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xKQv=Dx7cVSc_ekZ2GHzOVFuv6Yzum=kGQnCVfWxV0m5w@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_234246_546849_CC251875 
X-CRM114-Status: GOOD (  15.32  )
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

SGkgQWRhbSwKCk9uIDIzLTA1LTIwLCBBZGFtIEZvcmQgd3JvdGU6Cj4gT24gVGh1LCBNYXIgOSwg
MjAyMyBhdCA2OjU54oCvQU0gQW5kcnplaiBQaWV0cmFzaWV3aWN6Cj4gPGFuZHJ6ZWoucEBjb2xs
YWJvcmEuY29tPiB3cm90ZToKPiA+Cj4gPiBBIHN0YXRlbGVzcyBWUDggZW5jb2RlciBmb3Igcm9j
a2NoaXAgdnB1MiBmb3VuZCBlLmcuIGluIHJrMzM5OS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBB
bmRyemVqIFBpZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgo+IAo+IElzIHRo
ZXJlIGEgZ29vZCBwbGFjZSBvciByZXNvdXJjZSB3aGVyZSBJIGNvdWxkIGxlYXJuIG1vcmUgYWJv
dXQKPiB3aGF0J3MgbmVlZGVkIHRvIHBvcnQgdGhlIHZwdTEgVlA4IGVuY29kZXI/ICBJJ2QgcmVh
bGx5IGxpa2UgdG8gcG9ydAo+IHRoZSBIYW50cm8gSDEgZW5jb2RlciB0aGF0J3MgdXNlZCBvbiB0
aGUgaW14OG1tLCBidXQgaXQgc2VlbXMgbGlrZSB0aGUKPiB2cHUyIGVuY29kZXIgaGFzIGRpZmZl
cmVudCByZWdpc3RlcnMgdGhhbiB0aGUgSDEgZW5jb2RlciBvbiB0aGUgTWluaS4KPiBJIHdhcyBo
b3BpbmcgbXkgZW1wbG95ZXIgd291bGQgc2VuZCBtZSB0byBQcmFndWUgZm9yIHRoZSBjb25mZXJl
bmNlIGF0Cj4gdGhlIGVuZCBvZiBKdW5lLCBidXQgdW5mb3J0dW5hdGVseSwgdGhhdCdzIG5vdCBn
b2luZyB0byBoYXBwZW4uICBJJ2QKPiBsaWtlIHRvIGdldCBtb3JlIGludm9sdmVkIHdpdGggcHJv
amVjdHMgbGlrZSB0aGlzIGFzIGEgcGVyc29uYWwgc2lkZQo+IHByb2plY3QuCgpJJ20gY3VycmVu
dGx5IHdvcmtpbmcgb24gdGhlIGkuTVg4TU0gSDI2NCBlbmNvZGVyIGtlcm5lbCBicmluZ3VwLgoK
UmVnYXJkcywKICBNYXJjbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
