Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FBC2C021A0
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Feb 2025 20:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYPFWK1UmlfLWai4WQzzb5tyaI/vJQEFnpCeNc9xT9Q=; b=TtkgbLqf/wiwbo
	2dvHj1pPAxpx2QKqUkHQeWuNHLr6DH0bIUmyG01hVFNJ7pJMVPQ4vRiHOayG9BUKClGmQVG4ql1g3
	FworhNQynKhkNQURnvQcOoolhWPwJu/1XjOC9oIicCLGy5lltQU5+zpr3D9kQSQGtSf1x2OYxzlYT
	TxD8wsRplnqDLzBm/nh21C3HJDIL0g80lgdGh3H7yIyPvNID3P87rE2Xd8RFOzbsQL4PmhN8t0mw/
	05W2kY7QsPAu9yIp4WS7fYi0qYmf16rCu/oiYIaqkRJLgn82BgJrBLVibXP1lIQ5gJqwHyu3f257M
	HbEWlCQi/q/Lw9wL4vjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tifxB-0000000CYlS-48ZT;
	Thu, 13 Feb 2025 20:36:57 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tifx9-0000000CYkr-3cmr
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Feb 2025 20:36:57 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3D562594;
	Thu, 13 Feb 2025 21:35:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1739478934;
	bh=AT9agPH4PRe4q5DUfxxOCeLU58k/P7DNVMVqvfeamEs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=etePu+d7Ub9AYGPDKkIuqIvdTx0QDJX9toUG+PD0eZZxUUbSaRZ32pCCBugWvjTUn
	 YdLivYv3uRKl5exiSs/hZn4tUFXAd3p1ISXFMbrogMIxvgfk70pcR/KPPHAyBhkj3l
	 vswqgrTfchS+HVDEHG8h6IWCueobbe4AYblxCWLU=
Date: Thu, 13 Feb 2025 22:36:41 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] media: uapi: rkisp1-config: Fix typo in extensible
 params example
Message-ID: <20250213203641.GA22998@pendragon.ideasonboard.com>
References: <20250212165053.3378513-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250212165053.3378513-1-niklas.soderlund+renesas@ragnatech.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_123656_225385_B7A117D2 
X-CRM114-Status: GOOD (  15.46  )
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

SGkgTmlrbGFzLAoKVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCgpPbiBXZWQsIEZlYiAxMiwgMjAy
NSBhdCAwNTo1MDo1M1BNICswMTAwLCBOaWtsYXMgU8O2ZGVybHVuZCB3cm90ZToKPiBUaGUgZGVm
aW5lIHVzZWQgZm9yIHRoZSB2ZXJzaW9uIGluIHRoZSBleGFtcGxlIGRpYWdyYW0gZG8gbm90IG1h
dGNoIHdoYXQKCnMvZG8vZG9lcy8KCj4gaXMgZGVmaW5lZCBpbiBlbnVtIHJrc2lwMV9leHRfcGFy
YW1fYnVmZmVyX3ZlcnNpb24sIG5vciB0aGUgZGVzY3JpcHRpb24KPiBhYm92ZSBpdC4gQ29ycmVj
dCB0aGUgdHlwbyB0byBtYWtlIGl0IGNsZWFyIHdoaWNoIGRlZmluZSB0byB1c2UuCj4gCj4gRml4
ZXM6IGU5ZDA1ZTlkNWRiMSAoIm1lZGlhOiB1YXBpOiBya2lzcDEtY29uZmlnOiBBZGQgZXh0ZW5z
aWJsZSBwYXJhbXMgZm9ybWF0IikKPiBTaWduZWQtb2ZmLWJ5OiBOaWtsYXMgU8O2ZGVybHVuZCA8
bmlrbGFzLnNvZGVybHVuZCtyZW5lc2FzQHJhZ25hdGVjaC5zZT4KClJldmlld2VkLWJ5OiBMYXVy
ZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+Cgo+IC0tLQo+
ICBpbmNsdWRlL3VhcGkvbGludXgvcmtpc3AxLWNvbmZpZy5oIHwgMiArLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS91YXBpL2xpbnV4L3JraXNwMS1jb25maWcuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9ya2lz
cDEtY29uZmlnLmgKPiBpbmRleCA0MzBkYWNlYWZhYzcuLjJkOTk1ZjNjMWNhMyAxMDA2NDQKPiAt
LS0gYS9pbmNsdWRlL3VhcGkvbGludXgvcmtpc3AxLWNvbmZpZy5oCj4gKysrIGIvaW5jbHVkZS91
YXBpL2xpbnV4L3JraXNwMS1jb25maWcuaAo+IEBAIC0xNTI4LDcgKzE1MjgsNyBAQCBlbnVtIHJr
c2lwMV9leHRfcGFyYW1fYnVmZmVyX3ZlcnNpb24gewo+ICAgKiBUaGUgZXhwZWN0ZWQgbWVtb3J5
IGxheW91dCBvZiB0aGUgcGFyYW1ldGVycyBidWZmZXIgaXM6Ogo+ICAgKgo+ICAgKgkrLS0tLS0t
LS0tLS0tLS0tLS0tLS0gc3RydWN0IHJraXNwMV9leHRfcGFyYW1zX2NmZyAtLS0tLS0tLS0tLS0t
LS0tLS0tKwo+IC0gKgl8IHZlcnNpb24gPSBSS0lTUF9FWFRfUEFSQU1TX0JVRkZFUl9WMTsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+ICsgKgl8IHZlcnNpb24gPSBSS0lTUDFfRVhU
X1BBUkFNX0JVRkZFUl9WMTsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+ICAgKgl8
IGRhdGFfc2l6ZSA9IHNpemVvZihzdHJ1Y3Qgcmtpc3AxX2V4dF9wYXJhbXNfYmxzX2NvbmZpZykg
ICAgICAgICAgICAgfAo+ICAgKgl8ICAgICAgICAgICArIHNpemVvZihzdHJ1Y3Qgcmtpc3AxX2V4
dF9wYXJhbXNfZHBjY19jb25maWcpOyAgICAgICAgICAgfAo+ICAgKgl8ICstLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tIGRhdGEgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsgfAoK
LS0gClJlZ2FyZHMsCgpMYXVyZW50IFBpbmNoYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
