Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0B9ECD13DA
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 May 2026 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RF5mpocdH701qJKmuIvXG4bOurMsy93nKsk1CZ3AQJo=; b=rWTt/mUf07CcEd
	8t2cIMoQ8u3loJlSrJFZtwryXSjZwIhkihwnfuFIKCSNXqUr5vXPlv8vZCrq4yoD5PbT5NANYbRpG
	khPcYfcETHaHK2Z8LJ5IBI/1nIVmGtgzIc+v99bT87ALYBYZ3XXMCDL//D0Dk/aFWVwjtYraSi35x
	Dy4gWXQFS+ZUYlBF35FpZSisv3KLibtq+eSzLHWl4lYiEJ5BVVMIm2TLREZ5Le63Bq7Im0cYPfrGG
	tfTjrPiPrhLZFq/7+w1DFoGdQn4eoPyR353VGZnrjqcJui1b9M/agTyro2myp9NlOYcF6vV3Nvpy+
	SD554RboDG/VTr433xuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJEJf-00000009QeT-2JIQ;
	Sat, 02 May 2026 17:39:47 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJEJc-00000009Qdt-3sGO
	for linux-rockchip@lists.infradead.org;
	Sat, 02 May 2026 17:39:46 +0000
Received: from killaraus.ideasonboard.com (2001-14ba-703d-e500--2a1.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::2a1])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9820E177;
	Sat,  2 May 2026 19:39:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1777743578;
	bh=jN37WTXJ4cQjjvlsoHSIcGjoOf0fYpj28ukSu7y+WGc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DolQjWiSSFljxQij1RRDmx0oSWbc3lof/HGlvv69Pb2SM2sBlfoCvzRxgzAO2riL8
	 O6P3UPZuUZARVo8+RHdtUqGI/DOaWTVt/vT5efvZfgvlgs23CpmPrSrwcrN6GqBdDw
	 Ns9VdFGZpvyo85eWWgCsRRfRxIZ/hMG062kIyDgI=
Date: Sat, 2 May 2026 20:39:37 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] media: uapi: rkisp: Correct name version enum
Message-ID: <20260502173937.GD488660@killaraus.ideasonboard.com>
References: <20260501190339.3449193-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260501190339.3449193-1-niklas.soderlund+renesas@ragnatech.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260502_103945_106039_7DD04994 
X-CRM114-Status: GOOD (  16.40  )
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

SGkgTmlrbGFzLAoKVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCgpPbiBGcmksIE1heSAwMSwgMjAy
NiBhdCAwOTowMzozOVBNICswMjAwLCBOaWtsYXMgU8O2ZGVybHVuZCB3cm90ZToKPiBUaGUgbmFt
ZSBvZiB0aGUgZW51bSB0byBob2xkIHRoZSBtYXBwaW5nIG9mIHBhcmFtZXRlciBidWZmZXIgdmVy
c2lvbnMKPiBoYXZlIGEgdHlwbyBpbiB0aGUgbmFtZSwgY29ycmVjdCBpdC4gV2hpbGUgdGhpcyBp
cyBhIHVBUEkgaGVhZGVyIHRoZQo+IGltcGFjdCBzaG91bGQgYmUgbWluaW1hbCBhcyB0aGUgZW51
bSBpcyBvbmx5IHVzZWQgYXMgYSBjb2xsZWN0aW9uIGZvcgo+IHRoZSBvbmUgdmVyc2lvbiBudW1i
ZXIgc3VwcG9ydGVkLgo+IAo+IEZpeGVzOiBlOWQwNWU5ZDVkYjEgKCJtZWRpYTogdWFwaTogcmtp
c3AxLWNvbmZpZzogQWRkIGV4dGVuc2libGUgcGFyYW1zIGZvcm1hdCIpCj4gU2lnbmVkLW9mZi1i
eTogTmlrbGFzIFPDtmRlcmx1bmQgPG5pa2xhcy5zb2Rlcmx1bmQrcmVuZXNhc0ByYWduYXRlY2gu
c2U+CgpSZXZpZXdlZC1ieTogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVh
c29uYm9hcmQuY29tPgoKPiAtLS0KPiAgaW5jbHVkZS91YXBpL2xpbnV4L3JraXNwMS1jb25maWcu
aCB8IDYgKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9ya2lzcDEtY29uZmln
LmggYi9pbmNsdWRlL3VhcGkvbGludXgvcmtpc3AxLWNvbmZpZy5oCj4gaW5kZXggYjJkMmE3MWY3
YmFmLi43NjM4YjIyMjA2MDAgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L3JraXNw
MS1jb25maWcuaAo+ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9ya2lzcDEtY29uZmlnLmgKPiBA
QCAtMTUzNSwxMSArMTUzNSwxMSBAQCBzdHJ1Y3Qgcmtpc3AxX2V4dF9wYXJhbXNfd2RyX2NvbmZp
ZyB7Cj4gIAlzaXplb2Yoc3RydWN0IHJraXNwMV9leHRfcGFyYW1zX3dkcl9jb25maWcpKQo+ICAK
PiAgLyoqCj4gLSAqIGVudW0gcmtzaXAxX2V4dF9wYXJhbV9idWZmZXJfdmVyc2lvbiAtIFJrSVNQ
MSBleHRlbnNpYmxlIHBhcmFtZXRlcnMgdmVyc2lvbgo+ICsgKiBlbnVtIHJraXNwMV9leHRfcGFy
YW1fYnVmZmVyX3ZlcnNpb24gLSBSa0lTUDEgZXh0ZW5zaWJsZSBwYXJhbWV0ZXJzIHZlcnNpb24K
PiAgICoKPiAgICogQFJLSVNQMV9FWFRfUEFSQU1fQlVGRkVSX1YxOiBGaXJzdCB2ZXJzaW9uIG9m
IFJrSVNQMSBleHRlbnNpYmxlIHBhcmFtZXRlcnMKPiAgICovCj4gLWVudW0gcmtzaXAxX2V4dF9w
YXJhbV9idWZmZXJfdmVyc2lvbiB7Cj4gK2VudW0gcmtpc3AxX2V4dF9wYXJhbV9idWZmZXJfdmVy
c2lvbiB7Cj4gIAlSS0lTUDFfRVhUX1BBUkFNX0JVRkZFUl9WMSA9IFY0TDJfSVNQX1BBUkFNU19W
RVJTSU9OX1YxLAo+ICB9Owo+ICAKPiBAQCAtMTYwMSw3ICsxNjAxLDcgQEAgZW51bSBya3NpcDFf
ZXh0X3BhcmFtX2J1ZmZlcl92ZXJzaW9uIHsKPiAgICoJKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKPiAgICoKPiAg
ICogQHZlcnNpb246IFRoZSBSa0lTUDEgZXh0ZW5zaWJsZSBwYXJhbWV0ZXJzIGJ1ZmZlciB2ZXJz
aW9uLCBzZWUKPiAtICoJICAgICA6Yzp0eXBlOmBya3NpcDFfZXh0X3BhcmFtX2J1ZmZlcl92ZXJz
aW9uYAo+ICsgKgkgICAgIDpjOnR5cGU6YHJraXNwMV9leHRfcGFyYW1fYnVmZmVyX3ZlcnNpb25g
Cj4gICAqIEBkYXRhX3NpemU6IFRoZSBSa0lTUDEgY29uZmlndXJhdGlvbiBkYXRhIGVmZmVjdGl2
ZSBzaXplLCBleGNsdWRpbmcgdGhpcwo+ICAgKgkgICAgICAgaGVhZGVyCj4gICAqIEBkYXRhOiBU
aGUgUmtJU1AxIGV4dGVuc2libGUgY29uZmlndXJhdGlvbiBkYXRhIGJsb2NrcwoKLS0gClJlZ2Fy
ZHMsCgpMYXVyZW50IFBpbmNoYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
