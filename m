Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42488C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 19:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fmUvip+OooyhzkoIiFdE7JQ0vOfYvov8pXBSfS6Tmtg=; b=NxErfQojwjIZLI
	oSG+LeQb0g86vgKFmHiDxS1GqEN6RGhfSGGn8AU+qLBTu6wJVU6CefCqI2RiWWx9WrOelzcfGFG2L
	0JJd0PBjvglDOWQTPnNGfZcY9wGj0vaNIw9XVFiC3y3a2sTEuAq97lEY8Bdrc3KSNicerCKAEC+NB
	5f+okUbv4p9YHANyQgj3N0OzqOXwUzFceh9gMPMaO4ZGDHu8afRhMLDqKeH1N8iAFMwDCj03jVsWA
	/fhHiCwwguR2bmvOfFsgZz9vMbE7XSNbwxE1qroCnLxfzunSh8DG1w8iMb4HYnfHiIv2SKiJ2Ijo7
	g0tz1Po81Bbf5gaHX+zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZdso-00HIYl-VO; Wed, 30 Mar 2022 19:21:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZdsQ-00HIPn-78
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 19:21:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZdsH-0000qq-Hs; Wed, 30 Mar 2022 21:20:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZdsE-0004wl-U1; Wed, 30 Mar 2022 21:20:54 +0200
Date: Wed, 30 Mar 2022 21:20:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Message-ID: <20220330192054.GA4012@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 21:07:09 up  7:36, 35 users,  load average: 0.21, 0.24, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_122106_325460_1D83C16E 
X-CRM114-Status: GOOD (  18.26  )
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

T24gV2VkLCBNYXIgMzAsIDIwMjIgYXQgMDQ6NTI6MjJQTSArMDIwMCwgUGlvdHIgT25pc3pjenVr
IHdyb3RlOgo+IAo+IAo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogU2FzY2hhIEhhdWVy
IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiB3IGRuaXUgMzAuMDMuMjAyMiwgbyBnb2R6LiAxMjoy
MDoKPiA+IAo+ID4gRG9lcyBpdCBjaGFuZ2UgYW55dGhpbmcgaWYgeW91IGRvIGEgIm1vZGV0ZXN0
IC1zIDY5QDY3OjE5MjB4MTA4MCIgYmVmb3JlCj4gPiBzdGFydGluZyB0aGUgYXBwPyBPciBpZiB5
b3UgcnVuICJtb2RldGVzdCAtUCA0M0A2NzoxOTIweDEwODBATlYxMiIKPiA+IGJlZm9yZSBzdGFy
dGluZyB0aGUgYXBwPyBPciBvdGhlciBjb21iaW5hdGlvbnMgdGhlcmVvZj8KPiAKPiBTbyBpIHRy
aWVkIGZvbGxvd2luZyBjb21iaW5hdGlvbnMKPiAKPiAtYm9vdAo+IC1tb2RldGVzdCAtcyA2OUA2
NzoxOTIweDEwODAgLT4gb2sKPiAtbW9kZXRlc3QgLVAgNDNANjc6MTkyMHgxMDgwQE5WMTIgLT4g
Z3JlZW4gc2NyZWVuCgpJIGhhdmUgbm8gaWRlYSB3aGF0IGlzIGdvaW5nIG9uIGhlcmUuIFRoZXJl
IHNhbWUgY29tbWFuZHMgd29yayBmb3IgbWUuCllvdSBjb3VsZCBwcm92aWRlIG1lIHlvdXIga2Vy
bmVsIGNvbmZpZyBhbmQgdXBzdHJlYW0gY29tbWl0aXNoIHlvdSBhcmUKd29ya2luZyBvbiwgbWF5
YmUgdGhhdCBnZXRzIG1lIGNsb3NlciB0byB5b3VyIHNldHVwLgoKU2FzY2hhCgotLSAKUGVuZ3V0
cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwg
aHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAg
ICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmlj
aHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkx
Ny01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
