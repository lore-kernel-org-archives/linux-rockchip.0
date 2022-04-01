Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 198FBC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 07:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2pUrnSe89ahiDT+srFwFiGP8pNAgqFoY/vpyuiwpO4w=; b=s92vvqgOvXnSJ5
	UCo2mLjjBKiznlwI6s8rr2KFVRBhkZW8QWCT2Uxmh3CV7D+rCxJ47UTYSFSxEYfn2U0cJKFwVi7l0
	TaOG1JRF+LVSMs8TRjJQobL5Cy44ZjlFaNQ220LCTmOKrpLHBnQV9LIVUY63ZLtLHwG0+N2MvLJT1
	A85xUnm/JCMQlYbjSVnpMAZtkfRCrRoNtbpiaRs+4EFDLqEQqcJhv9UIadz1hQ4UBvEy9iN3SG1xM
	1PvET3af1qW2UW+eBz+zFo9FBmgXFaZhWA0fsZ+Uw6Q4fvqAR7zS78NJDipJ7YLZfZUJSEB5IgNi2
	X2sgEmRnL0+VeQ9holrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naBN2-004j1G-At; Fri, 01 Apr 2022 07:06:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naBMz-004j0K-U8
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 07:06:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1naBMr-0003Ic-Rk; Fri, 01 Apr 2022 09:06:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1naBMn-0006zI-VN; Fri, 01 Apr 2022 09:06:41 +0200
Date: Fri, 1 Apr 2022 09:06:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Message-ID: <20220401070641.GJ4012@pengutronix.de>
References: <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
 <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
 <B7CD9D55-9F2D-42F4-9D04-17C6A5FEBB08@gmail.com>
 <622c8786-2c3f-13ff-66b7-ad9c8cb9425e@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <622c8786-2c3f-13ff-66b7-ad9c8cb9425e@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:02:52 up 1 day, 19:32, 45 users,  load average: 0.80, 0.40, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_000654_019609_337FEFFF 
X-CRM114-Status: GOOD (  21.18  )
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

T24gRnJpLCBBcHIgMDEsIDIwMjIgYXQgMDk6NTI6MDFBTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6
Cj4gICAgSGkgUGlvdHI6Cj4gCj4gICAgT24gMy8zMS8yMiAyMjo1MywgUGlvdHIgT25pc3pjenVr
IHdyb3RlOgo+IAo+IAo+IAo+ICBXaWFkb21vxZvEhyBuYXBpc2FuYSBwcnpleiBBbmR5IFlhbiBb
MV08YW5keS55YW5Acm9jay1jaGlwcy5jb20+IHcgZG5pdSAzMS4wMy4yMDIyLCBvIGdvZHouIDE0
OjEzOgo+IAo+IAo+ICBQaW90cjoKPiAKPiAgV2hhdCBzb2MgaXMgb24geW91IGJvYXJkPyByazM1
NjYgb3IgcmszNTY4Pwo+IAo+ICBpdCBpcyByazM1NjYgaW4geDk2LXg2IHR2Ym94Cj4gCj4gICAg
UkszNTY2P8KgIE1heWJlIHRoYXQgaXMgdGhlIHByb2JsZW0uCgpMaWtlbHksIHllcy4KCj4gCj4g
ICAgcGxhbmVbNDNdOiBFc21hcnQxLXdpbjAKPiAgICBjcnRjPShudWxsKQo+ICAgIGZiPTAKPiAg
ICBjcnRjLXBvcz0weDArMCswCj4gICAgc3JjLXBvcz0wLjAwMDAwMHgwLjAwMDAwMCswLjAwMDAw
MCswLjAwMDAwMAo+ICAgIHJvdGF0aW9uPTEKPiAgICBub3JtYWxpemVkLXpwb3M9MQo+ICAgIGNv
bG9yLWVuY29kaW5nPUlUVS1SIEJULjYwMSBZQ2JDcgo+ICAgIGNvbG9yLXJhbmdlPVlDYkNyIGxp
bWl0ZWQgcmFuZ2UKPiAKPiAgICBGcm9tIHlvdXIgZHJpL3N0YXRlIGR1bXAsIFBsYW5lIDQzIGlz
IEVzbWFydDEuCj4gCj4gICAgQ2x1c3RlcjEsIEVzbWFydDEsIFNtYXJ0MSBhcmUgc3BlY2lhbCBv
biByazM1NjYsIHRoZXkgYXJlCj4gCj4gICAgbWlycm9yIHdpbmRvdyBvZiBDbHVzdGVyMCwgRXNt
YXJ0MCwgRXNtYXJ0MC4gVGhhdCBtZWFucwo+IAo+ICAgIHRoZSBzb2Z0d2FyZSBjYW4ndCBwcm9n
cmFtwqAgYSBpbmRlcGVuZGVudCBmcmFtZWJ1ZmZlciBmb3IKPiAKPiAgICB0aGVzZSB0aHJlZSB3
aW5kb3dzLiBUaGV5IGNhbiBvbmx5IHNoYXJlIHRoZSBmYiBhZGRyZXNzIHNldAo+IAo+ICAgIGlu
IENsdXN0ZXIwLCBFc21hcnQwLCBTbWFydDAuCgpEb3duc3RyZWFtIEtlcm5lbCBoYXMgdGhpczoK
CnN0YXRpYyBib29sIHZvcDJfaXNfbWlycm9yX3dpbihzdHJ1Y3Qgdm9wMl93aW4gKndpbikKewog
ICAgICAgIHJldHVybiBzb2NfaXNfcmszNTY2KCkgJiYgKHdpbi0+ZmVhdHVyZSAmIFdJTl9GRUFU
VVJFX01JUlJPUik7Cn0KCnN0YXRpYyBpbnQgdm9wMl9jcmVhdGVfY3J0YyhzdHJ1Y3Qgdm9wMiAq
dm9wMikKewoJLi4uCgogICAgICAgIGZvciAoaiA9IDA7IGogPCB2b3AyLT5yZWdpc3RlcmVkX251
bV93aW5zOyBqKyspIHsKICAgICAgICAgICAgICAgIHdpbiA9ICZ2b3AyLT53aW5bal07CgogICAg
ICAgICAgICAgICAgaWYgKHdpbi0+dHlwZSAhPSBEUk1fUExBTkVfVFlQRV9PVkVSTEFZKQogICAg
ICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKICAgICAgICAgICAgICAgIC8qCiAgICAgICAg
ICAgICAgICAgKiBPbmx5IGR1YWwgZGlzcGxheSBvbiByazM1Njgod2hpY2ggbmVlZCB0d28gY3J0
Y3MpIG5lZWQgbWlycm9yIHdpbgogICAgICAgICAgICAgICAgICovCiAgICAgICAgICAgICAgICBp
ZiAocmVnaXN0ZXJlZF9udW1fY3J0Y3MgPCAyICYmIHZvcDJfaXNfbWlycm9yX3dpbih3aW4pKQog
ICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKCgkJLi4uCgogICAgICAgICAgICAgICAg
cmV0ID0gdm9wMl9wbGFuZV9pbml0KHZvcDIsIHdpbiwgcG9zc2libGVfY3J0Y3MpOwoJfQoKCS4u
Lgp9CgoiU21hcnQxLXdpbjAiIGFuZCAiRXNtYXJ0MS13aW4wIiBoYXZlIHRoaXMgV0lOX0ZFQVRV
UkVfTUlSUk9SIGJpdCBzZXQuIEl0CnNlZW1zIHdlIGp1c3Qgc2hvdWxkIGp1c3QgZG9uJ3QgcmVn
aXN0ZXIgdGhlc2Ugd2luZG93cyBmb3IgcmszNTY2LgoKU2FzY2hhCgotLSAKUGVuZ3V0cm9uaXgg
ZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cDov
L3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAg
ICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGls
ZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1
IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
