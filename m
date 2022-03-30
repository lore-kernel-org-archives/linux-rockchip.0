Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79535C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 19:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Ny6XvmDtAddSVawnJfYNbFvwj+AzcH79nB4yFGvYV8=; b=F5Mw6xKcfKI/wz
	zqX1vHgGcvqymeI7apv1UIibRri1YTyWk9hJgL4u/bI78WenUCh/syNIEEQzNFMlAxbEkgkLz6dCe
	R5EwXeBRLRx9S3daJ4mXMU2hbVGRhWP/GiV1Wm3VDmpEKtoFqz8crldo917r/DTuyUw08nS62zc9U
	VW84b83H5HKJmRbHNVU3ZH9YMXkh4BOjYxGs26uNXTb38eqZRjInj9HIGhyijWaDXUN7bK76zJOjT
	8xcgaD0BXLf5YwkgvVuG541j8x7YHb+qi4NKWGrhVMWrYK8HFuS6N4yBCFGwamo7zoHc8Yrh78BTN
	RTkuLJdGjeMIkSvPCrDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZeTy-00HOIQ-LU; Wed, 30 Mar 2022 19:59:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZeTp-00HOEC-Re
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 19:59:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZeTi-0004fP-Gp; Wed, 30 Mar 2022 21:59:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZeTg-000628-6e; Wed, 30 Mar 2022 21:59:36 +0200
Date: Wed, 30 Mar 2022 21:59:36 +0200
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
Message-ID: <20220330195936.GB4012@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
 <4B10A821-DB1E-41EA-B5C2-364F2DE53F93@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4B10A821-DB1E-41EA-B5C2-364F2DE53F93@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 21:53:32 up  8:23, 35 users,  load average: 0.28, 0.11, 0.07
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_125945_921971_020FB459 
X-CRM114-Status: GOOD (  23.21  )
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

T24gV2VkLCBNYXIgMzAsIDIwMjIgYXQgMDk6MzU6MTdQTSArMDIwMCwgUGlvdHIgT25pc3pjenVr
IHdyb3RlOgo+IAo+IAo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogU2FzY2hhIEhhdWVy
IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiB3IGRuaXUgMzAuMDMuMjAyMiwgbyBnb2R6LiAyMToy
MDoKPiA+IAo+ID4+IFNvIGkgdHJpZWQgZm9sbG93aW5nIGNvbWJpbmF0aW9ucwo+ID4+IAo+ID4+
IC1ib290Cj4gPj4gLW1vZGV0ZXN0IC1zIDY5QDY3OjE5MjB4MTA4MCAtPiBvawo+ID4+IC1tb2Rl
dGVzdCAtUCA0M0A2NzoxOTIweDEwODBATlYxMiAtPiBncmVlbiBzY3JlZW4KPiA+IAo+ID4gSSBo
YXZlIG5vIGlkZWEgd2hhdCBpcyBnb2luZyBvbiBoZXJlLiBUaGVyZSBzYW1lIGNvbW1hbmRzIHdv
cmsgZm9yIG1lLgo+ID4gWW91IGNvdWxkIHByb3ZpZGUgbWUgeW91ciBrZXJuZWwgY29uZmlnIGFu
ZCB1cHN0cmVhbSBjb21taXRpc2ggeW91IGFyZQo+ID4gd29ya2luZyBvbiwgbWF5YmUgdGhhdCBn
ZXRzIG1lIGNsb3NlciB0byB5b3VyIHNldHVwLgo+IAo+IFNhc2NoYQo+IAo+IE1heSB5b3UgdHJ5
IHdpdGggbXkga2VybmVsIGNvbmZpZz8KPiBodHRwczovL2dpdGh1Yi5jb20vd2FycG1lL21pbmlt
eXRoMi9ibG9iL21hc3Rlci9zY3JpcHQva2VybmVsL2xpbnV4LTUuMTcvZmlsZXMvbGludXgtNS4x
Ny1hcm02NC1hcm12OC5jb25maWcKClRoaXMgd29ya3MgZm9yIG1lIGFzIHdlbGwuCgo+IAo+IElm
IHRoaXMgY29uZmlnIHdpbGwgd29yayBmb3IgeW91IHRoZW46Cj4gCj4gaSdsbCB0cnkgdG8gYnVp
bGQgdmFuaWxsYSA1LjE3ICsgbWluaW1hbCBwb3NzaWJsZSBzZXQgb2YgcGF0Y2hlcyBhbGxvd2lu
ZyBtZSB0byBnZXQgdmlkZW8gZGVjb2RlciB3b3JraW5nIG9uIHJrMzU2Ni4KCllvdSBzaG91bGRu
J3QgbmVlZCBhIHZpZGVvIGRlY29kZXIgZm9yIHRoaXMgdGVzdC4KCkZvciB5b3VyIGNvbnZlbmll
bmNlIEkgcHVzaGVkIHRoZSBicmFuY2ggSSBqdXN0IHRlc3RlZCB0bzoKCmdpdDovL2dpdC5wZW5n
dXRyb25peC5kZS9zaGEvbGludXggcm9ja2NoaXAtdm9wMi12OQoKU2FzY2hhCgotLSAKUGVuZ3V0
cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwg
aHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAg
ICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmlj
aHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkx
Ny01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
