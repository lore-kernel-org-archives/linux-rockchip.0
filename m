Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D66F1C001DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 12:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:In-Reply-To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=rhte350xwzeJOM3h5kF48ssDg2A2gXgw0na3XsBqeZ0=; b=wLpnqJKLpZytq6
	ntV0C0UFrmL7ztm2vNe1nbEcEnPJpzrTSY0uhPOTtGMQGae2eZrxhOyPKpHqqLkUnTXzSVwH920Sx
	XN1xKrf2uyzph4vaireARfjM36SZ8f6m64VFejfzrO4GpmzhePT9cTBJ2WZI4giEWfHYzIMLNx/vp
	Z0pVXUh1IP5qKblh4POxiUvkyQn/LYuHE1lCWmaFZx9bTBZc3jfilfIkRW9OtppudOEpTE4SsPMlv
	sIeK3unP9+BDutppR0pMRLKhdYzYbLONSNYf5PJck6TO+VEKmUTkdYuy7eFBnRhUVarwAGc9zREBj
	iy4uwiAIAp8Z8oTO1xXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQRxb-00FYw3-0j;
	Mon, 31 Jul 2023 12:25:15 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQRxX-00FYuS-1b;
	Mon, 31 Jul 2023 12:25:12 +0000
Received: from hamburger.collabora.co.uk (hamburger.collabora.co.uk [IPv6:2a01:4f8:1c1c:f269::1])
	by madras.collabora.co.uk (Postfix) with ESMTP id 17F5166020AE;
	Mon, 31 Jul 2023 13:25:06 +0100 (BST)
From: "Helen Mae Koike Fornazier" <helen.koike@collabora.com>
In-Reply-To: <CAF6AEGtan-bQ7syKAwOKDY=044aKu26SLPQ0j1ieLqXNyQQS3g@mail.gmail.com>
X-Forward: 127.0.0.1
Date: Mon, 31 Jul 2023 13:25:05 +0100
Cc: "Daniel Stone" <daniel@fooishbar.org>, emma@anholt.net, linux-doc@vger.kernel.org, david.heidelberg@collabora.com, dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org, jbrunet@baylibre.com, robdclark@google.com, corbet@lwn.net, khilman@baylibre.com, sergi.blanch.torne@collabora.com, gustavo.padovan@collabora.com, linux-rockchip@lists.infradead.org, daniels@collabora.com, martin.blumenstingl@googlemail.com, mripard@kernel.org, anholt@google.com, linux-mediatek@lists.infradead.org, robclark@freedesktop.org, matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com, neil.armstrong@linaro.org, guilherme.gallo@collabora.com, linux-kernel@vger.kernel.org, tzimmermann@suse.de, "Dave Airlie" <airlied@gmail.com>, "Daniel Vetter" <daniel@ffwll.ch>
To: "Rob Clark" <robdclark@gmail.com>
MIME-Version: 1.0
Message-ID: <282e-64c7a800-77-46253680@38053863>
Subject: =?utf-8?q?Re=3A?= [PATCH v10] =?utf-8?q?drm=3A?= Add initial ci/ 
 subdirectory
User-Agent: SOGoMail 5.8.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_052511_687207_C9B4F5F8 
X-CRM114-Status: GOOD (  21.20  )
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

SGVsbG8gYWxsLAoKVGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzLgoKT24gRnJpZGF5LCBKdWx5IDI4
LCAyMDIzIDExOjM3IC0wMywgUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPiB3cm90ZToK
Cj4gT24gVGh1LCBKdWwgMjcsIDIwMjMgYXQgMTA6MjbigK9QTSBEYW5pZWwgU3RvbmUgPGRhbmll
bEBmb29pc2hiYXIub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBUaHUsIDI3IEp1bCAyMDIzIGF0IDIy
OjQ3LCBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+IEkgZGlk
IHJ1biBpbnRvIGEgYml0IG9mIGEgY2hpY2tlbiB2cy4gZWdnIHByb2JsZW0gd2l0aCB0ZXN0aW5n
IHRoZSAiaW4KPiA+ID4gPiB0cmVlIiB2ZXJzaW9uIChjb21wYXJlZCB0byBlYXJsaWVyIHZlcnNp
b25zIHdoaWNoIGtlcHQgbW9zdCBvZiB0aGUgeW1sCj4gPiA+ID4gYW5kIHNjcmlwdHMgaW4gYSBz
ZXBhcmF0ZSB0cmVlKSwgaXMgdGhhdCBpdCBhY3R1YWxseSByZXF1aXJlcyB0aGlzCj4gPiA+ID4g
Y29tbWl0IHRvIGV4aXN0IGluIHRoZSBicmFuY2ggeW91IHdhbnQgdG8gcnVuIENJIG9uLiAgTXkg
ZWFybGllcgo+ID4gPiA+IHdvcmthcm91bmQgb2YgcHVsbGluZyB0aGUgZHJtL2NpIGNvbW1pdCBp
biB2aWEKPiA+ID4gPiAke2JyYW5jaG5hbWV9LWV4dGVybmFsLWZpeGVzIG5vIGxvbmdlciB3b3Jr
cy4KPiA+ID4KPiA+ID4gQWZ0ZXIgdW53aW5kaW5nIHNvbWUgbW9yZSBnaXRsYWIgcmVwbyBzZXR0
aW5ncyB0aGF0IHdlcmUgZm9yIHRoZQo+ID4gPiBwcmV2aW91cyBvdXQtb2YtdHJlZSB5bWwgc2V0
dXAsIEkgaGF2ZSB0aGlzIHdvcmtpbmcuCj4gPiA+Cj4gPiA+IFRlc3RlZC1ieTogUm9iIENsYXJr
IDxyb2JkY2xhcmtAZ21haWwuY29tPgo+ID4gPiBBY2tlZC1ieTogUm9iIENsYXJrIDxyb2JkY2xh
cmtAZ21haWwuY29tPgo+ID4KPiA+IEFuZCBpdCdzIGFsc286Cj4gPiBBY2tlZC1ieTogRGFuaWVs
IFN0b25lIDxkYW5pZWxzQGNvbGxhYm9yYS5jb20+Cj4gPgo+ID4gSXQncyBiZWVuIGJhY2sgYW5k
IGZvcnRoIGEgZmV3IHRpbWVzIGJ5IG5vdyBhbmQgcmV2aWV3ZWQgcHJldHR5Cj4gPiBoZWF2aWx5
IGJ5IGFsbCB0aGUgcGVvcGxlIHdobyBhcmUgYWNyb3NzIHRoZSBDSSBkZXRhaWxzLiBJIHRoaW5r
IHRoZQo+ID4gbmV4dCBzdGVwIGlzIHRvIGFuc3dlciBhbGwgdGhlIHdvcmtmbG93IHF1ZXN0aW9u
cyBieSBhY3R1YWxseSBnZXR0aW5nCj4gPiBpdCBpbnRvIHRyZWVzIGFuZCB1c2luZyBpdCBpbiBh
bmdlci4gVGhlcmUgd2FzIHNvbWUgZGlzY3Vzc2lvbiBhYm91dAo+ID4gd2hldGhlciB0aGlzIHNo
b3VsZCBjb21lIGluIGZyb20gZHJtLW1pc2MsIG9yIHRoZSBjb3JlIERSTSB0cmVlLCBvciBhCj4g
PiBjb21wbGV0ZWx5IHNlcGFyYXRlIHB1bGwsIGJ1dCBJJ20gbm90IHN1cmUgd2hhdCB0aGUgY29u
Y2x1c2lvbiB3YXMgLi4uCj4gPiBtYWludGFpbmVycywgdGhvdWdodHM/Cj4gCj4gSSdkIHByZWZl
ciBhIHNlcGFyYXRlIHB1bGwsIHNvIHRoYXQgSSBjb3VsZCBtZXJnZSBpdCBpbnRvIG1zbS1uZXh0
IGFzCj4gd2VsbCB3aXRob3V0IGhhdmluZyB0byBwdWxsIGluIGFsbCBvZiBkcm0tbWlzYwoKU2hv
dWxkIHdlIGNyZWF0ZSBhIGRybS1jaSA/Cgo+IAo+IFBvc3NpYmx5IHNvbWUgb3RoZXIgZHJpdmVy
IHRyZWVzIHdvdWxkIGxpa2UgdG8gZG8gc2ltaWxhcj8KPiAKPiBCUiwKPiAtUgoKQWxzbywgcGxl
YXNlIHdhaXQgZm9yIHYxMSwgSSBoYXZlIGEgZmV3IGFkanVzdG1lbnRzIHRvIG1ha2UgYXMgcG9p
bnRlciBieQpzb21lIGNvbW1lbnRzLCBhbmQgYWxzbyByZWdhcmRpbmcgeGZhaWxzIGxpc3QgYW5k
IGhvdyB0aGUgY29uZmlncyBzaG91bGQKYmUgb3JnYW5pemVkICh1bmxlc3MgaWYgeW91IGFyZSBm
aW5lIG1lcmdpbmcgdGhpcyB2ZXJzaW9uIGFuZCBJIGNhbiBzdWJtaXQKdGhlIGFkanVzdG1lbnRz
IGxhdGVyKS4KClRoYW5rcywKSGVsZW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
