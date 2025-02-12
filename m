Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 310BDC02198
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Feb 2025 17:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gfrq1Kz9wJM71qOuIBa11oIlOBxoPybYu11rVeOfCgY=; b=tLjK5rVBfFgKUo
	T5gp2mLSh2IRKSk0/+SO789T4V39ZrjWz7udhucsRVotaiF9pjgycEcUJFPe5P40OLTVJZqtkgUoK
	uUxoTEcB3aa218hsnkrx6qizZ16UjNLE19lTi9XuxUtDliWCA9Ztl4lNOnemWlExbq9A6e/rHYcw9
	+vB8N833KnRQRUcxgwOMgjZJSZOQKznVsFr8dEWUgqLjlgf+0uQXZ7I2b4O97AnU7HHXF+PBmKn6X
	j1CaSUrejCEpmGeB49AaLGljz7LrgY0vvOooa2hWLpN5mC1Z4wOF+ek/z/z6aKFtEYLIHlNB/2v4C
	THdNWRZS+Bzz/rYXRxYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiGKG-00000008H4z-34zf;
	Wed, 12 Feb 2025 17:15:04 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiG8a-00000008CxH-1hYp
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Feb 2025 17:03:01 +0000
Received: from ideasonboard.com (93-61-96-190.ip145.fastwebnet.it [93.61.96.190])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C0ACE455;
	Wed, 12 Feb 2025 18:01:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1739379697;
	bh=i2aViueIDXo730VZY/wT8GO2tY32x7UCeDuXUElhWPw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AgFdjHyPzC23SNzBXb/1H8nbRcJ0W6G8UlTDZOdc1QtT5vxQxzzz4Tvypazns32me
	 X8PuR2BlGRIi0+/tUINmT38nm61481GBDBN4S8STz/jmLQnBDYk2ioRczFs7uKngtT
	 ssjaIQiXny9In+p0L5CNZmdptSrKYSkugeJRCvGM=
Date: Wed, 12 Feb 2025 18:02:52 +0100
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Paul Elder <paul.elder@ideasonboard.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] media: uapi: rkisp1-config: Fix typo in extensible
 params example
Message-ID: <e275man56x7ympofkwptm32h3cbfjbw5pn6dkez4f5obhuhxen@gkxnt3ewsbnt>
References: <20250212165053.3378513-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250212165053.3378513-1-niklas.soderlund+renesas@ragnatech.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_090300_579454_7A7DD3BB 
X-CRM114-Status: GOOD (  15.85  )
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

SGkgTmlrbGFzCgpPbiBXZWQsIEZlYiAxMiwgMjAyNSBhdCAwNTo1MDo1M1BNICswMTAwLCBOaWts
YXMgU8O2ZGVybHVuZCB3cm90ZToKPiBUaGUgZGVmaW5lIHVzZWQgZm9yIHRoZSB2ZXJzaW9uIGlu
IHRoZSBleGFtcGxlIGRpYWdyYW0gZG8gbm90IG1hdGNoIHdoYXQKPiBpcyBkZWZpbmVkIGluIGVu
dW0gcmtzaXAxX2V4dF9wYXJhbV9idWZmZXJfdmVyc2lvbiwgbm9yIHRoZSBkZXNjcmlwdGlvbgo+
IGFib3ZlIGl0LiBDb3JyZWN0IHRoZSB0eXBvIHRvIG1ha2UgaXQgY2xlYXIgd2hpY2ggZGVmaW5l
IHRvIHVzZS4KPgo+IEZpeGVzOiBlOWQwNWU5ZDVkYjEgKCJtZWRpYTogdWFwaTogcmtpc3AxLWNv
bmZpZzogQWRkIGV4dGVuc2libGUgcGFyYW1zIGZvcm1hdCIpCj4gU2lnbmVkLW9mZi1ieTogTmlr
bGFzIFPDtmRlcmx1bmQgPG5pa2xhcy5zb2Rlcmx1bmQrcmVuZXNhc0ByYWduYXRlY2guc2U+CgpU
aGFua3MgZm9yIHNwb3R0aW5nCkFja2VkLWJ5OiBKYWNvcG8gTW9uZGkgPGphY29wby5tb25kaUBp
ZGVhc29uYm9hcmQuY29tPgoKPiAtLS0KPiAgaW5jbHVkZS91YXBpL2xpbnV4L3JraXNwMS1jb25m
aWcuaCB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCj4KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L3JraXNwMS1jb25maWcuaCBi
L2luY2x1ZGUvdWFwaS9saW51eC9ya2lzcDEtY29uZmlnLmgKPiBpbmRleCA0MzBkYWNlYWZhYzcu
LjJkOTk1ZjNjMWNhMyAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvcmtpc3AxLWNv
bmZpZy5oCj4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L3JraXNwMS1jb25maWcuaAo+IEBAIC0x
NTI4LDcgKzE1MjgsNyBAQCBlbnVtIHJrc2lwMV9leHRfcGFyYW1fYnVmZmVyX3ZlcnNpb24gewo+
ICAgKiBUaGUgZXhwZWN0ZWQgbWVtb3J5IGxheW91dCBvZiB0aGUgcGFyYW1ldGVycyBidWZmZXIg
aXM6Ogo+ICAgKgo+ICAgKgkrLS0tLS0tLS0tLS0tLS0tLS0tLS0gc3RydWN0IHJraXNwMV9leHRf
cGFyYW1zX2NmZyAtLS0tLS0tLS0tLS0tLS0tLS0tKwo+IC0gKgl8IHZlcnNpb24gPSBSS0lTUF9F
WFRfUEFSQU1TX0JVRkZFUl9WMTsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+ICsg
Kgl8IHZlcnNpb24gPSBSS0lTUDFfRVhUX1BBUkFNX0JVRkZFUl9WMTsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfAo+ICAgKgl8IGRhdGFfc2l6ZSA9IHNpemVvZihzdHJ1Y3Qgcmtpc3Ax
X2V4dF9wYXJhbXNfYmxzX2NvbmZpZykgICAgICAgICAgICAgfAo+ICAgKgl8ICAgICAgICAgICAr
IHNpemVvZihzdHJ1Y3Qgcmtpc3AxX2V4dF9wYXJhbXNfZHBjY19jb25maWcpOyAgICAgICAgICAg
fAo+ICAgKgl8ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tIGRhdGEgIC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLSsgfAo+IC0tCj4gMi40OC4xCj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
