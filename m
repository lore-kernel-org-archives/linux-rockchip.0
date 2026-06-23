Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 793A1CDB46F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jun 2026 09:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZXm7cmF9xrvJck5u7EEMY3L1CMpz8rove/Jf/8GeO4=; b=IpbhMx1B0tY2eK
	5zmnMBOzevyrvpkbthbFfKKie49GPm4aktgXD990sGFy1pwt/YNp8S4GIAmAev7RhVU3URwByDv7R
	hje99sXeP069SHpJBsWzTjMSYyeMDL4pWSwf/o8PyJx1vMe4J+Uvtzdo5ErhosWAQ60jiPymCyqMK
	jmTplZjem+51CM9l59dFx1qjktsDSnQuWjkl/2u1PtxFQXcEpQXxhuVfueS2H96IU8GisbtZp6iyI
	pt/5FPI9A12E9zsIl6qVnipFBJG+NRRmiNZOI47W0wirgKoYAtpKI5C9bWHK+LnW44j/PhwO1/rIn
	SYfPhQvFINtULiXvQalA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbxlQ-000000062MG-0eVx;
	Tue, 23 Jun 2026 09:49:52 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbxlN-000000062Lc-1pGJ
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jun 2026 09:49:51 +0000
Received: from neptunite.rasen.tech (unknown [IPv6:2404:7a81:160:2100:aa9e:184f:96b2:e40a])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 249D02D7;
	Tue, 23 Jun 2026 11:49:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1782208146;
	bh=oXV5U2weJ7HdA8YWcjefznLiGyuO0HmbnZ1rGXpm2SQ=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=Jg8m1k+U5Er6Ds31mv9TteH6npwzTuCMjf5K6Z+hTU3jfzrDTV8lIvE+5PAmcet5X
	 M+HEKCY4BdQMILzx11t44JMGlpB3wxdqz7DBnA9LBWLKdLgKhmhrU2H7Slb8SLIqZR
	 pu0nIsZ7r9YvcuS2JXj7DSMiOZPA+UZtVV3Wy9bQ=
MIME-Version: 1.0
In-Reply-To: <20260501190339.3449193-1-niklas.soderlund+renesas@ragnatech.se>
References: <20260501190339.3449193-1-niklas.soderlund+renesas@ragnatech.se>
Subject: Re: [PATCH] media: uapi: rkisp: Correct name version enum
From: Paul Elder <paul.elder@ideasonboard.com>
Cc: Niklas =?utf-8?q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Dafna Hirschfeld <dafna@fastmail.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Niklas =?utf-8?q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Tue, 23 Jun 2026 18:49:38 +0900
Message-ID: <178220817887.292172.8295943288467268239@neptunite.rasen.tech>
User-Agent: alot/0.0.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_024949_946863_78A2E8EF 
X-CRM114-Status: GOOD (  13.37  )
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

UXVvdGluZyBOaWtsYXMgU8O2ZGVybHVuZCAoMjAyNi0wNS0wMiAwNDowMzozOSkKPiBUaGUgbmFt
ZSBvZiB0aGUgZW51bSB0byBob2xkIHRoZSBtYXBwaW5nIG9mIHBhcmFtZXRlciBidWZmZXIgdmVy
c2lvbnMKPiBoYXZlIGEgdHlwbyBpbiB0aGUgbmFtZSwgY29ycmVjdCBpdC4gV2hpbGUgdGhpcyBp
cyBhIHVBUEkgaGVhZGVyIHRoZQo+IGltcGFjdCBzaG91bGQgYmUgbWluaW1hbCBhcyB0aGUgZW51
bSBpcyBvbmx5IHVzZWQgYXMgYSBjb2xsZWN0aW9uIGZvcgo+IHRoZSBvbmUgdmVyc2lvbiBudW1i
ZXIgc3VwcG9ydGVkLgo+IAo+IEZpeGVzOiBlOWQwNWU5ZDVkYjEgKCJtZWRpYTogdWFwaTogcmtp
c3AxLWNvbmZpZzogQWRkIGV4dGVuc2libGUgcGFyYW1zIGZvcm1hdCIpCj4gU2lnbmVkLW9mZi1i
eTogTmlrbGFzIFPDtmRlcmx1bmQgPG5pa2xhcy5zb2Rlcmx1bmQrcmVuZXNhc0ByYWduYXRlY2gu
c2U+CgpSZXZpZXdlZC1ieTogUGF1bCBFbGRlciA8cGF1bC5lbGRlckBpZGVhc29uYm9hcmQuY29t
PgoKPiAtLS0KPiAgaW5jbHVkZS91YXBpL2xpbnV4L3JraXNwMS1jb25maWcuaCB8IDYgKysrLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9ya2lzcDEtY29uZmlnLmggYi9pbmNsdWRl
L3VhcGkvbGludXgvcmtpc3AxLWNvbmZpZy5oCj4gaW5kZXggYjJkMmE3MWY3YmFmLi43NjM4YjIy
MjA2MDAgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L3JraXNwMS1jb25maWcuaAo+
ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9ya2lzcDEtY29uZmlnLmgKPiBAQCAtMTUzNSwxMSAr
MTUzNSwxMSBAQCBzdHJ1Y3Qgcmtpc3AxX2V4dF9wYXJhbXNfd2RyX2NvbmZpZyB7Cj4gICAgICAg
ICBzaXplb2Yoc3RydWN0IHJraXNwMV9leHRfcGFyYW1zX3dkcl9jb25maWcpKQo+ICAKPiAgLyoq
Cj4gLSAqIGVudW0gcmtzaXAxX2V4dF9wYXJhbV9idWZmZXJfdmVyc2lvbiAtIFJrSVNQMSBleHRl
bnNpYmxlIHBhcmFtZXRlcnMgdmVyc2lvbgo+ICsgKiBlbnVtIHJraXNwMV9leHRfcGFyYW1fYnVm
ZmVyX3ZlcnNpb24gLSBSa0lTUDEgZXh0ZW5zaWJsZSBwYXJhbWV0ZXJzIHZlcnNpb24KPiAgICoK
PiAgICogQFJLSVNQMV9FWFRfUEFSQU1fQlVGRkVSX1YxOiBGaXJzdCB2ZXJzaW9uIG9mIFJrSVNQ
MSBleHRlbnNpYmxlIHBhcmFtZXRlcnMKPiAgICovCj4gLWVudW0gcmtzaXAxX2V4dF9wYXJhbV9i
dWZmZXJfdmVyc2lvbiB7Cj4gK2VudW0gcmtpc3AxX2V4dF9wYXJhbV9idWZmZXJfdmVyc2lvbiB7
Cj4gICAgICAgICBSS0lTUDFfRVhUX1BBUkFNX0JVRkZFUl9WMSA9IFY0TDJfSVNQX1BBUkFNU19W
RVJTSU9OX1YxLAo+ICB9Owo+ICAKPiBAQCAtMTYwMSw3ICsxNjAxLDcgQEAgZW51bSBya3NpcDFf
ZXh0X3BhcmFtX2J1ZmZlcl92ZXJzaW9uIHsKPiAgICogICAgICstLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCj4gICAq
Cj4gICAqIEB2ZXJzaW9uOiBUaGUgUmtJU1AxIGV4dGVuc2libGUgcGFyYW1ldGVycyBidWZmZXIg
dmVyc2lvbiwgc2VlCj4gLSAqICAgICAgICAgIDpjOnR5cGU6YHJrc2lwMV9leHRfcGFyYW1fYnVm
ZmVyX3ZlcnNpb25gCj4gKyAqICAgICAgICAgIDpjOnR5cGU6YHJraXNwMV9leHRfcGFyYW1fYnVm
ZmVyX3ZlcnNpb25gCj4gICAqIEBkYXRhX3NpemU6IFRoZSBSa0lTUDEgY29uZmlndXJhdGlvbiBk
YXRhIGVmZmVjdGl2ZSBzaXplLCBleGNsdWRpbmcgdGhpcwo+ICAgKiAgICAgICAgICAgIGhlYWRl
cgo+ICAgKiBAZGF0YTogVGhlIFJrSVNQMSBleHRlbnNpYmxlIGNvbmZpZ3VyYXRpb24gZGF0YSBi
bG9ja3MKPiAtLSAKPiAyLjU0LjAKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
