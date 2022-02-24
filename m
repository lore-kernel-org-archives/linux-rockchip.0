Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0559C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Feb 2022 14:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iu49uVx3Y5NjLZki2ATsBRHf2RY7nrC/O6GkoXSb8kU=; b=qvkYJACcEJApYE
	0VmmqZwqbyf5FizbqvT5Dy8tK7NuhuRk83gYcD+xkareKRUoUMEm2kH1n996uqS5wL8HcPEsW/44E
	13NNyMMvVwdzT1xCfb07JNjepPGCTWnQjWUm0nowTmLBK8r2sJYePUNjr6YOPE/pixbUh56SVZ2WA
	QlKsFs3E5QvM+zffzViBV3w2wlEtrxGb6EZRm6rqKVjlyglHFYq9Vo/kZ9VanZ9HR+uQ9LiS+7pOP
	3zZ5WIU1hmD//fAT5AEri0m5T9JBNDK4io/vNLGPCkg+Zd09E3SYclC4t2wtHmiiS9MhheZgNhtIz
	FAdiPzkBIVfb/d3zh2+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNFOz-0019oi-NA; Thu, 24 Feb 2022 14:47:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNFOv-0019nT-Ud
 for linux-rockchip@lists.infradead.org; Thu, 24 Feb 2022 14:47:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nNFOn-0002CG-Kv; Thu, 24 Feb 2022 15:47:17 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nNFOk-0001ct-HF; Thu, 24 Feb 2022 15:47:14 +0100
Date: Thu, 24 Feb 2022 15:47:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 21/23] drm: rockchip: Add VOP2 driver
Message-ID: <20220224144714.GV9136@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-22-s.hauer@pengutronix.de>
 <b9b59c1d-5808-f348-62fb-257746df134d@collabora.com>
 <20220224074750.GR9136@pengutronix.de>
 <a6f2b4a8-b9f0-dd2b-2361-8ede766b8394@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6f2b4a8-b9f0-dd2b-2361-8ede766b8394@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:38:31 up 75 days, 23:24, 89 users,  load average: 0.08, 0.12, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_064725_996916_2D3AF360 
X-CRM114-Status: GOOD (  28.25  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gVGh1LCBGZWIgMjQsIDIwMjIgYXQgMDU6MzY6MjlQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOgo+IE9uIDIvMjQvMjIgMTA6NDcsIFNhc2NoYSBIYXVlciB3cm90ZToKPiA+IE9uIFRo
dSwgRmViIDE3LCAyMDIyIGF0IDA0OjI0OjI5UE0gKzAzMDAsIERtaXRyeSBPc2lwZW5rbyB3cm90
ZToKPiA+PiAxNy4wMi4yMDIyIDExOjI5LCBTYXNjaGEgSGF1ZXIg0L/QuNGI0LXRgjoKPiA+Pj4g
QEAgLTI4LDYgKzI4LDEyIEBAIGNvbmZpZyBST0NLQ0hJUF9WT1AKPiA+Pj4gIAkgIFRoaXMgc2Vs
ZWN0cyBzdXBwb3J0IGZvciB0aGUgVk9QIGRyaXZlci4gWW91IHNob3VsZCBlbmFibGUgaXQKPiA+
Pj4gIAkgIG9uIGFsbCBvbGRlciBTb0NzIHVwIHRvIFJLMzM5OS4KPiA+Pj4gIAo+ID4+PiArY29u
ZmlnIFJPQ0tDSElQX1ZPUDIKPiA+Pj4gKwlib29sICJSb2NrY2hpcCBWT1AyIGRyaXZlciIKPiA+
Pj4gKwloZWxwCj4gPj4+ICsJICBUaGlzIHNlbGVjdHMgc3VwcG9ydCBmb3IgdGhlIFZPUDIgZHJp
dmVyLiBZb3Ugc2hvdWxkIGVuYWJsZSBpdAo+ID4+PiArCSAgb24gYWxsIG5ld2VyIFNvQ3MgYmVn
aW5uaW5nIGZvcm0gUkszNTY4Lgo+ID4+Cj4gPj4gcy9mb3JtL2Zyb20vCj4gPj4KPiA+PiBUaGUg
Uk9DS0NISVBfVk9QIG9wdGlvbiBpcyAiZGVmYXVsdCB5Ii4gRG8geW91IHJlYWxseSB3YW50ICJk
ZWZhdWx0IG4iCj4gPj4gZm9yIHRoZSBWT1AyPwo+ID4gCj4gPiBST0NLQ0hJUF9WT1AgaXMgb25s
eSBkZWZhdWx0IHkgdG8ga2VlcCB0aGUgVk9QIGRyaXZlciBlbmFibGVkIGZvcgo+ID4gZXhpc3Rp
bmcgZGVmY29uZmlnIHRoYXQgd2VyZSBnZW5lcmF0ZWQgYmVmb3JlIHRoZSBpbnRyb2R1Y3Rpb24g
b2YKPiA+IHRoYXQgc3ltYm9sLgo+ID4gV2UgZG9uJ3QgaGF2ZSB0aGlzIHByb2JsZW0gZm9yIFZP
UDIsIHNvIG5vIG5lZWQgdG8gbWFrZSBpdCBkZWZhdWx0IHkuCj4gCj4gVG8gbWUgaXQgd2lsbCBi
ZSBtb3JlIGNvbnNpc3RlbnQgb2YgeW91J2xsIGhhdmUgYm90aCBkZWZhdWx0aW5nIHRvIHksCj4g
c2luY2UgYm90aCBvcHRpb25zIGFyZSBiZWhpbmQgRFJNX1JPQ0tDSElQLgoKTmV3IGRyaXZlcnMg
c2hvdWxkIG5vdCBiZSBlbmFibGVkIGJ5IGRlZmF1bHQsIGF0IGxlYXN0IHRoYXQncyB3aGF0IEkK
aGF2ZSBiZWVuIHRvbGQgYmVmb3JlLiBUaGUgVk9QIGRyaXZlciBpcyBlbmFibGVkIGJ5IGRlZmF1
bHQgZm9yIHRoZQpyZWFzb25zIGV4cGxhaW5lZC4gQnV0IHllcywgeW91IGFyZSByaWdodCwgaXQn
cyBtb3JlIGNvbnNpc3RlbnQgdG8gaGF2ZQp0aGUgc2FtZSBkZWZhdWx0IG9uIGJvdGggZHJpdmVy
cy4gUGVyc29uYWxseSBJIGRvbid0IGNhcmUgbXVjaCwgZm9yIG5vdwpJIGp1c3QgZm9sbG93IHdo
YXQgSGVpa28gc3VnZ2VzdHMgYXMgaGUgaXMgdGhlIG9uZSB3aG8gaG9wZWZ1bGx5IG1lcmdlcwp0
aGVzZSBwYXRjaGVzIDspCgpTYXNjaGEKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxk
ZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4
LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9u
ZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4
NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
