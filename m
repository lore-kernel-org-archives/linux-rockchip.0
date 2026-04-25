Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A643FF885A
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 23:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FsmS9b88PNXcLGIRBOeKI9uuw/4sCForb/qhjtptC0o=; b=YLsq2cOJch23Xd
	Td1daHFB2ZZPS7cZQBgRllm+t5xQ9vFKsWxX3XWHOLZO7WYBRt4ukT5+WglThRdhAfVD3nZy5DMVP
	TuH2oXJJ2coDNtXlSadCjp3pOkozq9ZbZoIIWpXsTic8BT2uLnpx/+ab0vzdq6vwZC1fiXrH8UNdr
	LFvQs5haWLNZhlNeLFuW8TTcGKlo28z5RJbRn96dbg8WrJWvJstg9GymDpdswUlhl2KiKcZekrAJr
	qr2ynJqZk+dA/0V6Tk/NCTxJHi1IyBWs7YKkCVCvNBz8nVRzbmJczQYsn2J5KFweLCdAVy3Qjo7av
	tmm9Xv+rH9VW4ybqwQcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGmk4-0000000F5HD-3oRI;
	Sat, 25 Apr 2026 23:48:57 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGmk1-0000000F5Ge-1H61;
	Sat, 25 Apr 2026 23:48:54 +0000
Received: from killaraus.ideasonboard.com (2001-14ba-703d-e500--2a1.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::2a1])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A956F1544;
	Sun, 26 Apr 2026 01:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1777160826;
	bh=Bp8RyEnQL0UxPw7eElHX5mckH3F8+ELKhrN2JVsixec=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aBosJ+CPRWpbzNhjnEakqNIWx8v6lvj20KVcTdhjJHN+Ndm/UNWPtYyXx6WQQbise
	 L8hXN5SGvJ/awHLT9vgqFhYtYGLwhcvKW6IpH+xHcG2egbT8THwrLcbcNhFYgXfQdc
	 j4ji2Tag7R41Gax3AEIZ/M90dRFcVrQECrMOoRD0=
Date: Sun, 26 Apr 2026 02:48:45 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dennis Gilmore <dennis@ausil.us>, Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Alexey Charkov <alchark@gmail.com>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 3/6] drm/bridge: simple: Add the Lontium LT8711UXD
 DP-to-HDMI bridge
Message-ID: <20260425234845.GC2964234@killaraus.ideasonboard.com>
References: <20260425031011.2529364-1-dennis@ausil.us>
 <20260425031011.2529364-4-dennis@ausil.us>
 <20260425112844.GB2964234@killaraus.ideasonboard.com>
 <45evt7lkzuykoqsc2z27hsvm7fasmn6sr6gbjtdnme54jauehf@dmvon2o5emzd>
 <CAABkxwt1=n=CnrVfCcw+EHjqjfsLkp67POk451fV8Gqw4vdnQw@mail.gmail.com>
 <ur7mow4lw47ylxj3uigwwasrfywe6n42zb2to7ygeyjlkcgfkf@guzkembyy5hc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ur7mow4lw47ylxj3uigwwasrfywe6n42zb2to7ygeyjlkcgfkf@guzkembyy5hc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_164853_798352_D48A59F5 
X-CRM114-Status: GOOD (  38.33  )
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

T24gU3VuLCBBcHIgMjYsIDIwMjYgYXQgMTI6NDQ6NTlBTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBTYXQsIEFwciAyNSwgMjAyNiBhdCAwMToxMDowMlBNIC0wNTAwLCBEZW5u
aXMgR2lsbW9yZSB3cm90ZToKPiA+IE9uIFNhdCwgQXByIDI1LCAyMDI2IGF0IDk6MjTigK9BTSBE
bWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gPiBPbiBTYXQsIEFwciAyNSwgMjAyNiBhdCAwMjoy
ODo0NFBNICswMzAwLCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+ID4gPiA+IEhpIERlbm5pcywK
PiA+ID4gPgo+ID4gPiA+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgo+ID4gPiA+Cj4gPiA+ID4g
T24gRnJpLCBBcHIgMjQsIDIwMjYgYXQgMTA6MTA6MDhQTSAtMDUwMCwgRGVubmlzIEdpbG1vcmUg
d3JvdGU6Cj4gPiA+ID4gPiBUaGUgTG9udGl1bSBMVDg3MTFVWEQgaXMgYSBoaWdoIHBlcmZvcm1h
bmNlIHR3byBsYW5lIFR5cGUtQy9EUDEuNAo+ID4gPiA+ID4gdG8gSERNSTIuMCBjb252ZXJ0ZXIs
IGRlc2lnbmVkIHRvIGNvbm5lY3QgYSBVU0IgVHlwZS1DIHNvdXJjZSBvcgo+ID4gPiA+ID4gYSBE
UDEuNCBzb3VyY2UgdG8gYW4gSERNSTIuMCBzaW5rLgo+ID4gPiA+Cj4gPiA+ID4gQXMgZmFyIGFz
IEkgY2FuIHRlbGwsIHRoZSBMVDg3MTFVWEQgaGFzIGFuIEkyQyBjb250cm9sIGludGVyZmFjZS4K
PiA+ID4gPiBTaG91bGRuJ3QgaXQgYmUgYW4gSTJDIGRldmljZSA/Cj4gPiA+Cj4gPiA+IEZyb20g
dGhlIGRhdGFzaGVldDoKPiA+ID4KPiA+ID4gVGhlIGRldmljZSBpcyBjYXBhYmxlIG9mIGF1dG9t
YXRpYyBvcGVyYXRpb24gd2hpY2ggaXMKPiA+ID4gZW5hYmxlZCBieSBhbiBpbnRlZ3JhdGVkIG1p
Y3JvcHJvY2Vzc29yIHRoYXQgdXNlcyBhbgo+ID4gPiBlbWJlZGRlZCBTUEkgZmxhc2ggZm9yIGZp
cm13YXJlIHN0b3JhZ2UuIFN5c3RlbSBjb250cm9sCj4gPiA+IGlzIGFsc28gYXZhaWxhYmxlIHRo
cm91Z2ggdGhlIHVzZSBvZiBhIGRlZGljYXRlZAo+ID4gPiBjb25maWd1cmF0aW9uIEkyQyBzbGF2
ZSBpbnRlcmZhY2UuCj4gPiA+Cj4gPiA+IE15IGd1ZXNzIHdhcyB0aGF0IGl0IGNhbiBlaXRoZXIg
YmUgYW4gSTJDIGRldmljZSBvciBpdCBjYW4gZnVuY3Rpb24gYXMgYQo+ID4gPiBzaW1wbGUgcGxh
dGRldiB3aXRoIG5vIEkyQyBjb250cm9scy4gUGxlYXNlIGNvcnJlY3QgbWUgaWYgbXkKPiA+ID4g
dW5kZXJzdGFuZGluZyB3YXMgd3JvbmcuCj4gPiA+Cj4gPiA+IEJ1dCBub3cgbG9va2luZyBhdCB0
aGUgc2NoZW1hdGljcywgaXQgc2VlbXMgdG8gYmUgY29ubmVjdGVkIHRvIEkyQzYuCj4gPiA+IFdo
aWNoIG1lYW5zIHRoYXQgaXQgc2hvdWxkIGJlIGRlc3JpYmVkIChhbmQgYm91bmQpIGFzIHN1Y2gu
Cj4gPiAKPiA+IEhpIERtaXRyeSBhbmQgTGF1cmVudCwKPiA+IAo+ID4gV2hpbGUgdGhlIHNjaGVt
YXRpYyBzaG93cyB0aGF0IGl0IGNhbiB1c2UgSTJDIGFuZCBoYXMgYmVlbiB3aXJlZCB1cCwKPiA+
IGl0IGFsc28gc2hvd3MgdGhhdCBib3RoIE1PREVfU0VMIGFuZCBJMkNfQUREUiBoYXZlIHVucG9w
dWxhdGVkIDEwawo+ID4gcmVzaXN0b3JzOyBhcyBhIHJlc3VsdCwgTU9ERV9TRUwgaXMgY29ubmVj
dGVkIGRpcmVjdGx5IHRvIEdORCwgcHV0dGluZwo+ID4gdGhlIGJyaWRnZSBpbiBhdXRvbm9tb3Vz
IG1vZGUuIEkgY29uZmlybWVkIHRoaXMgYnkgcnVubmluZyBgaTJjZGV0ZWN0Cj4gPiAtciAteSA2
YCwgd2l0aCB0aGUgb25seSBkZXZpY2Ugb24gdGhlIGJ1cyBiZWluZyB0aGUgSFlNODU2MyBSVEMg
YXQKPiA+IDB4NTEuIFdpdGhvdXQgcmV3b3JraW5nIHRoZSBib2FyZCwgdGhlIGRldmljZSBpcyBu
b3QgZGlyZWN0bHkKPiA+IGNvbnRyb2xsYWJsZSBhbmQganVzdCBydW5zIGF1dG9ub21vdXNseS4K
PiAKPiBJIHRoaW5rIGl0IHdvdWxkIGJlIG5pY2UgdG8gbWVudGlvbjoKPiAtIEluIHRoZSBjb21t
aXQgZm9yIHRoZSBiaW5kaW5ncywgdGhhdCB0aGUgZGV2aWNlIGNhbiBiZSBydW5uaW5nCj4gICB1
bmNvbnRyb2xsZWQgb3IgaXQgY2FuIGJlIGF0dGFjaGVkIG92ZXIgSTJDLCBiaW5kaW5ncyBkZXNj
cmliZSB0aGUKPiAgIHVuY29udHJvbGxlZCBtb2RlLgo+IC0gSW4gdGhpcyBjb21taXQgbWVzc2Fn
ZSwgdGhlIHNhbWUuCj4gLSBJbiB0aGUgY29tbWl0IG1lc3NhZ2UgZm9yIHRoZSBib2FyZCBEVCBt
ZW50aW9uIHlvdXIgZmluZGluZ3MgYWJvdXQgdGhlCj4gICBib2FyZCwgbWVudGlvbiBzb2xkZXJp
bmcgUjkgb3IgUjE3ICh3aGljaCBvbmU/KSBhbmQgUjI3LgoKQWRkaXRpb25hbGx5LCBob3cgYXJl
IHdlIGdvaW5nIHRvIGhhbmRsZSBib2FyZHMgd2hlcmUgdGhlIGRldmljZQpvcGVyYXRlcyBpbiBJ
MkMgbW9kZSA/IFdpbGwgd2UgdXNlIGEgZGlmZmVyZW50IGNvbXBhdGlibGUgc3RyaW5nIChtYXli
ZQoibG9udGl1bSxsdDg3MTF1eGQtaTJjIikgPyBJZiBEVCBtYWludGFpbmVycyBhcmUgZmluZSB3
aXRoIHRoYXQsIEkgaGF2ZQpubyBvYmplY3Rpb24gdG8gdGhpcyBwYXRjaC4KCj4gPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBEZW5uaXMgR2lsbW9yZSA8ZGVubmlzQGF1c2lsLnVzPgo+ID4gPiA+ID4g
UmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1YWxj
b21tLmNvbT4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
c2ltcGxlLWJyaWRnZS5jIHwgNSArKysrKwo+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKykKPiA+ID4gPiA+Cj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS9zaW1wbGUtYnJpZGdlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3NpbXBs
ZS1icmlkZ2UuYwo+ID4gPiA+ID4gaW5kZXggOGFhMzFjYTNjNzJkLi40MmMxZjNkNWJhMGMgMTAw
NjQ0Cj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3NpbXBsZS1icmlkZ2Uu
Ywo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zaW1wbGUtYnJpZGdlLmMK
PiA+ID4gPiA+IEBAIC0yNzAsNiArMjcwLDExIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2
aWNlX2lkIHNpbXBsZV9icmlkZ2VfbWF0Y2hbXSA9IHsKPiA+ID4gPiA+ICAgICAgICAgICAgIC5k
YXRhID0gJihjb25zdCBzdHJ1Y3Qgc2ltcGxlX2JyaWRnZV9pbmZvKSB7Cj4gPiA+ID4gPiAgICAg
ICAgICAgICAgICAgICAgIC5jb25uZWN0b3JfdHlwZSA9IERSTV9NT0RFX0NPTk5FQ1RPUl9IRE1J
QSwKPiA+ID4gPiA+ICAgICAgICAgICAgIH0sCj4gPiA+ID4gPiArICAgfSwgewo+ID4gPiA+ID4g
KyAgICAgICAgICAgLmNvbXBhdGlibGUgPSAibG9udGl1bSxsdDg3MTF1eGQiLAo+ID4gPiA+ID4g
KyAgICAgICAgICAgLmRhdGEgPSAmKGNvbnN0IHN0cnVjdCBzaW1wbGVfYnJpZGdlX2luZm8pIHsK
PiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgLmNvbm5lY3Rvcl90eXBlID0gRFJNX01PREVf
Q09OTkVDVE9SX0hETUlBLAo+ID4gPiA+ID4gKyAgICAgICAgICAgfSwKPiA+ID4gPiA+ICAgICB9
LCB7Cj4gPiA+ID4gPiAgICAgICAgICAgICAuY29tcGF0aWJsZSA9ICJwYXJhZGUscHMxODVoZG0i
LAo+ID4gPiA+ID4gICAgICAgICAgICAgLmRhdGEgPSAmKGNvbnN0IHN0cnVjdCBzaW1wbGVfYnJp
ZGdlX2luZm8pIHsKCi0tIApSZWdhcmRzLAoKTGF1cmVudCBQaW5jaGFydAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
