Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28947606A320
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 15:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NTJJutzd;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.a=rsa-sha256 header.s=mail header.b=dWk5wVF+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=H9TWG9GIMq0SoPNq9WISxNlPYI2w9VNyKQ9F4VPdzmA=; b=NTJJutzdtFImHQGqTNTcjSVxGQ
	ALHxkjaBd79rd2KAZ37TB83TJ4kxv41ctOmO+N0iPsg4VBOS5KLvP8NVkBBanmSYc92alEuceTa21
	fCBUVV0U+R38gXrVBeKZR4LMdKJzU1LOsYpAq6OLrDtPrnjuZ1Lf/ICfqzkMG4Rvtgzugs15yO948
	0rbqGA6Bfd/JGzlYIJvaGJV7m3D3+e7nStvQ36vAdGXBDa+tIoviY3JDZegrTimzQDIIzKw4ahA4F
	CskqRcgHQKZbleQV7Q8YxAY8QiC9gfXXEymSUaUjjzxU0HvwRjdNIVEcKQH/0gAR0Xg4EtR4gDTP1
	czMNn0TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV9CW-00000001EwP-1X8f;
	Sun, 22 Nov 2026 15:09:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV9CS-00000001Evy-2hNC;
	Sun, 22 Nov 2026 15:09:54 +0000
Received: from killaraus.ideasonboard.com (2001-14ba-7086-3000--a06.rev.dnainternet.fi [IPv6:2001:14ba:7086:3000::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4F6BF177;
	Sun, 22 Nov 2026 16:07:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1795360038;
	bh=IMRAy5bUasbpD/Tw7zcQxXeVbhBdEkFoZeMY9+96wKQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dWk5wVF+6fLHQBBzxh8b2SS8ij5qaN6OUs6mMgqr5B56aWY/s8wpt4WGX6K5RokYX
	 YetOQSn/qU3V41NW6+zsFVBBquu+Wf2EV61tExw2fhKOBFkLcWcAUeoPycSmgCVhy7
	 dM165WjS6P2F6oQMPZOEbbMXDZ5ydXwQnm5mmVkQ=
Date: Sun, 22 Nov 2026 17:09:48 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v12 06/23] drm/bridge: synopsys: dw-dp: Fix AUX transfer
 timeout race condition
Message-ID: <20261122150948.GA2881876@killaraus.ideasonboard.com>
References: <20261114-synopsys-dw-dp-improvements-v12-0-d42d3dc5bdd4@collabora.com>
 <20261114-synopsys-dw-dp-improvements-v12-6-d42d3dc5bdd4@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261114-synopsys-dw-dp-improvements-v12-6-d42d3dc5bdd4@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_070953_172559_DAE3C5EE 
X-CRM114-Status: GOOD (  23.85  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Sashiko <sashiko-bot@kernel.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Igor Paunovic <royalnet026@gmail.com>, Andy Yan <andyshrk@163.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Alexey Charkov <alchark@flipper.net>, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gU2F0LCBOb3YgMTQsIDIwMjYgYXQgMDY6MDA6MzlBTSArMDEwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gVGhlIERQIEFVWCB0cmFuc2ZlciBtZXRob2QgdXNlcyBhIGNvbXBsZXRpb24g
dHJpZ2dlcmVkIGJ5IGFuIGludGVycnVwdCwKPiB3aGljaCBjYW4gdGltZW91dC4gSWYgdGhlIGZ1
bmN0aW9uIHJ1bnMgaW50byB0aGUgdGltZW91dCBhbmQgdGhlCj4gaW50ZXJydXB0IGZpcmVzIGFm
dGVyd2FyZHMsIHRoZSBmb2xsb3dpbmcgRFAgYXV4IHRyYW5zZmVyIGNvbXBsZXRpb24KPiB3b3Vs
ZCB0cmlnZ2VyIGltbWVkaWF0ZWx5IHdpdGhvdXQgd2FpdGluZyBmb3IgdGhlIGludGVycnVwdC4g
VGhpcyBpbgo+IHR1cm4gbWVhbnMgdGhlIG5leHQgb25lIHdvdWxkIGFsc28gYmUgYnJva2VuIGFu
ZCBzbyBvbi4KPiAKPiBGaXggdGhpcyBwb3RlbnRpYWwgaXNzdWUgYnkgcmUtaW5pdGlhbGl6aW5n
IHRoZSBjb21wbGV0aW9uIGRpcmVjdGx5Cj4gYmVmb3JlIHNlbmRpbmcgdGhlIEFVWCBjb21tYW5k
Lgo+IAo+IEFzIHRoaXMgaXMgcmFjeSAodGhlIGludGVycnVwdCBtaWdodCBhcnJpdmUgYmV0d2Vl
biB0aGUgY29tcGxldGlvbgo+IHJlLWluaXQgYW5kIHRoZSBuZXcgY29tbWFuZCBiZWluZyBwcm9n
cmFtbWVkKSwgYWxzbyByZXNldCB0aGUgQVVYCj4gY29udHJvbGxlciBvbiB0aW1lb3V0cyBhbmQg
c3luY2hyb25pemUgcGVuZGluZyBpbnRlcnJ1cHRzIHRvIGd1YXJhbnRlZQo+IHRoYXQgdGhlcmUg
YXJlIG5vIHBlbmRpbmcgQVVYIHRyYW5zZmVycyB3aGVuIHRoZSBkd19kcF9hdXhfdHJhbnNmZXIo
KQo+IHJldHVybnMuCj4gCj4gRHVlIHRvIGxhY2sgb2YgYSBzaW5rLCB3aGljaCBnZW5lcmF0ZXMg
QVVYIHRpbWVvdXRzLCB0aGlzIGNoYW5nZSBpcwo+IGVmZmVjdGl2ZWx5IHVudGVzdGVkLgo+IAo+
IFJlcG9ydGVkLWJ5OiBTYXNoaWtvIDxzYXNoaWtvLWJvdEBrZXJuZWwub3JnPgo+IEZpeGVzOiA4
NmVlY2MzYTljMmUgKCJkcm0vYnJpZGdlOiBzeW5vcHN5czogQWRkIERXIERQVFggQ29udHJvbGxl
ciBzdXBwb3J0IGxpYnJhcnkiKQo+IFRlc3RlZC1ieTogSWdvciBQYXVub3ZpYyA8cm95YWxuZXQw
MjZAZ21haWwuY29tPiAjIE9yYW5nZSBQaSA1Kwo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBS
ZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWRwLmMgfCA4ICsrKysrKysrCj4gIDEgZmlsZSBj
aGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9zeW5vcHN5cy9kdy1kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5
cy9kdy1kcC5jCj4gaW5kZXggNzM1MWI3MGJkYWM5Li5kZjBiOThjYmJhYWIgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1kcC5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1kcC5jCj4gQEAgLTE0NjUsNiArMTQ2NSw4IEBA
IHN0YXRpYyBzc2l6ZV90IGR3X2RwX2F1eF90cmFuc2ZlcihzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4
LAo+ICAJaWYgKFdBUk5fT04obXNnLT5zaXplID4gMTYpKQo+ICAJCXJldHVybiAtRTJCSUc7Cj4g
IAo+ICsJcmVpbml0X2NvbXBsZXRpb24oJmRwLT5jb21wbGV0ZSk7Cj4gKwo+ICAJc3dpdGNoICht
c2ctPnJlcXVlc3QgJiB+RFBfQVVYX0kyQ19NT1QpIHsKPiAgCWNhc2UgRFBfQVVYX05BVElWRV9X
UklURToKPiAgCWNhc2UgRFBfQVVYX0kyQ19XUklURToKPiBAQCAtMTQ5MSw2ICsxNDkzLDEyIEBA
IHN0YXRpYyBzc2l6ZV90IGR3X2RwX2F1eF90cmFuc2ZlcihzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4
LAo+ICAJc3RhdHVzID0gd2FpdF9mb3JfY29tcGxldGlvbl90aW1lb3V0KCZkcC0+Y29tcGxldGUs
IHRpbWVvdXQpOwo+ICAJaWYgKCFzdGF0dXMpIHsKPiAgCQlkZXZfZXJyKGRwLT5kZXYsICJ0aW1l
b3V0IHdhaXRpbmcgZm9yIEFVWCByZXBseVxuIik7Cj4gKwkJcmVnbWFwX3VwZGF0ZV9iaXRzKGRw
LT5yZWdtYXAsIERXX0RQX1NPRlRfUkVTRVRfQ1RSTCwKPiArCQkJCSAgIEFVWF9SRVNFVCwgRklF
TERfUFJFUChBVVhfUkVTRVQsIDEpKTsKCkFzIHRoaXMgaXMganVzdCBvbmUgYml0LCBJJ2QgZmlu
ZAoKCQlyZWdtYXBfdXBkYXRlX2JpdHMoZHAtPnJlZ21hcCwgRFdfRFBfU09GVF9SRVNFVF9DVFJM
LAoJCQkJICAgQVVYX1JFU0VULCBBVVhfUkVTRVQpOwoKbW9yZSByZWFkYWJsZS4gU2FtZSBiZWxv
dyB3aXRoIHMvQVVYX1JFU0VUKTsvKTswLy4gVXAgdG8geW91LgoKPiArCQl1c2xlZXBfcmFuZ2Uo
MTAsIDIwKTsKCmZzbGVlcCgpIHVzZXMgdWRlbGF5KCkgZm9yIGRlbGF5cyB1cCB0byAxMMK1cyBp
bmNsdWRlZC4gSXMgdGhlcmUgYQpwYXJ0aWN1bGFyIHJlYXNvbiB0byBzbGVlcCA/CgpQbGVhc2Ug
YWxzbyBkb2N1bWVudCBzb21ld2hlcmUgKHRoZSBjb21taXQgbWVzc2FnZSBpcyBmaW5lKSB3aGVy
ZSB0aGUKdmFsdWUgb2YgdGhlIGRlbGF5IGNvbWVzIGZyb20uCgo+ICsJCXJlZ21hcF91cGRhdGVf
Yml0cyhkcC0+cmVnbWFwLCBEV19EUF9TT0ZUX1JFU0VUX0NUUkwsCj4gKwkJCQkgICBBVVhfUkVT
RVQsIEZJRUxEX1BSRVAoQVVYX1JFU0VULCAwKSk7Cj4gKwkJc3luY2hyb25pemVfaXJxKGRwLT5p
cnEpOwo+ICAJCXJldHVybiAtRVRJTUVET1VUOwo+ICAJfQo+ICAKCi0tIApSZWdhcmRzLAoKTGF1
cmVudCBQaW5jaGFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
