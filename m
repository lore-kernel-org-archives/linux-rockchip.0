Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD88DC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Nov 2022 17:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i+JJ4OAcLzf3NJb5Am+xAaxe6VUC5iw+BwQudLS7h98=; b=qy+OyhhxdfUHlN
	o5b41Xry6hcMe/o/vjLnH+hGupF+TNLRXZ/FJHGyJk4fcry8zG4NpG25m22oR1ggyuOZUY31kuevq
	QuluU2PfCXIKLmkLtWiRk/p3X8YVUJwe1t1LO5u/C6VbgFAcZY77uREKrO5Cp85I8/HyP27YVg/c9
	h/cEApzn7e2zM8OYGZLGfdIV6gLKcSlHJK1+ae4gARvBdi5rB9Oq1sjjLyoSxKPbjuFk2+O48tk3G
	LmtmBw7jncfhoLQq8KlQ7pwtOeNRipAfA7N8r9tuWnI5ftRZKnHAXY16FpWau4EjWBi/eIBUbASMQ
	/nQTeNRbthQdK9n7ZOqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owRC7-00FOVC-Ml; Sat, 19 Nov 2022 16:59:55 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owRBv-00FOJx-TY; Sat, 19 Nov 2022 16:59:45 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 82AE1749;
	Sat, 19 Nov 2022 17:59:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1668877175;
	bh=5XR3sCqqEd6GXsl5hg+C3PS+jEEDwIW3YkQxbvVxj2Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UCmxTBRSYdoReX60CGoNzW4ohn53YH+q8JSuG6FI5bWL3JB6AP+yYOAm6VcSlPEmH
	 VAtYy1JjCd/mfEdmIJO68PWEegiqp76oygvo1r4WPK1Sm/5siJ+6eKrmh7YDIJJZVM
	 6hJ2earUZcyvIcy7IhVMCKC46nyx7QeGY1nngMZc=
Date: Sat, 19 Nov 2022 18:59:19 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 02/14] dt-bindings: media: rkisp1: Add i.MX8MP ISP
 example
Message-ID: <Y3kLZ6nQ1VzN+2eu@pendragon.ideasonboard.com>
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
 <20221118093931.1284465-3-paul.elder@ideasonboard.com>
 <ca8a6070-3888-8d42-5974-d7c2adc62417@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ca8a6070-3888-8d42-5974-d7c2adc62417@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221119_085944_131449_8A5E62EB 
X-CRM114-Status: GOOD (  19.69  )
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

SGkgS3J6eXN6dG9mLAoKT24gRnJpLCBOb3YgMTgsIDIwMjIgYXQgMDI6MDY6MTRQTSArMDEwMCwg
S3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAxOC8xMS8yMDIyIDEwOjM5LCBQYXVsIEVs
ZGVyIHdyb3RlOgo+ID4gRnJvbTogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBp
ZGVhc29uYm9hcmQuY29tPgo+ID4gCj4gPiBBZGQgYW4gZXhhbXBsZSB0byB0aGUgcm9ja2NoaXAt
aXNwMSBEVCBiaW5kaW5nIHRoYXQgc2hvd2Nhc2VzIHVzYWdlIG9mCj4gPiB0aGUgcGFyYWxsZWwg
aW5wdXQgb2YgdGhlIElTUCwgY29ubmVjdGVkIHRvIHRoZSBDU0ktMiByZWNlaXZlciBpbnRlcm5h
bAo+ID4gdG8gdGhlIGkuTVg4TVAuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IExhdXJlbnQgUGlu
Y2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KPiAKPiBNaXNzaW5nIFNv
Qi4KPiAKPiA+IC0tLQo+ID4gIC4uLi9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC1pc3AxLnlhbWwg
ICAgICAgICB8IDcyICsrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNzIg
aW5zZXJ0aW9ucygrKQo+ID4gCj4gCj4gSSBkb24ndCBrbm93IHdoYXQgZG8geW91IGRlbW9uc3Ry
YXRlIHRoZXJlLi4uIHVzYWdlIG9mIGVuZHBvaW50cz8gVGhhdCdzCj4gdGhlIG9ubHkgZGlmZmVy
ZW5jZS4gU3VjaCB1c2FnZSBpcyB0aGUgc2FtZSBldmVyeXdoZXJlLCBub3RoaW5nIHNwZWNpZmlj
Cj4gdG8gdGhpcyBleGFtcGxlLiBZb3UgYWxyZWFkeSBoYXZlIHR3byBleGFtcGxlcywgc28gSSBk
b24ndCB0aGluayB0aGlzCj4gYnJpbmdzIGFueXRoaW5nIG1vcmUuCgpUaGUgaS5NWDhNUCBpcyB0
aGUgb25seSBTb0MgaW50ZWdyYXRpbmcgdGhpcyBJU1AgKGFuZCBzdXBwb3J0ZWQgaW4KbWFpbmxp
bmXDoCB0aGF0IGhhcyBhbiBleHRlcm5hbCBDU0ktMiByZWNlaXZlciwgYXMgb3Bwb3NlZCB0byB1
c2luZyB0aGUKQ1NJLTIgcmVjZWl2ZXIgZnJvbSB0aGUgSVNQLiBUaGlzIHBhdGNoIHRoaXMgc2hv
d2Nhc2VzIHRoZSBEVAppbnRlZ3JhdGlvbiBmb3IgdGhhdCB1c2UgY2FzZS4gSWYgeW91IHRoaW5r
IGl0J3Mgbm90IHdvcnRoIGl0LCBJJ20gZmluZQpkcm9wcGluZyBpdC4KCi0tIApSZWdhcmRzLAoK
TGF1cmVudCBQaW5jaGFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
