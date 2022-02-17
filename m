Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DC02C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 13:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=piJ2/OBU5k1034YhlR+cza1bX3VLYf8/F1/6UB7nufE=; b=O8QG435umDiKB1
	XVSYzKfbBl9/cUTc97vmBs+1/b2vOAl9UrfGpYNJ0EMgFnbSpIzopibzWzvi/nak2MdgnHB/FSOVc
	rQ3oLb6hprONuFFY8MCvZjWgohcVkccH+lB6eQhgmTOqj5hwwH62aJ1t8np9izcTaSLh7p4I7X9ip
	HuqggmLdTk/NfEyty9wLahs5JYl2OXtZNC0qgvuWcI5fWIJrl5INI7fPo29kGvm0c7uBEe/3KCySE
	pUv5+r/mWVS5i8uOw7DWFzntnu42fd3LfcH3c7NK4PK2sampavGkTpTapcEgY6urhi0f/lKqARLCT
	0urpWLFBJL95KML9kPpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKgyc-00Af0u-NW; Thu, 17 Feb 2022 13:37:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKgyZ-00Af06-Lv
 for linux-rockchip@lists.infradead.org; Thu, 17 Feb 2022 13:37:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nKgyP-00031E-SV; Thu, 17 Feb 2022 14:37:29 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nKgyN-0000Wu-5O; Thu, 17 Feb 2022 14:37:27 +0100
Date: Thu, 17 Feb 2022 14:37:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 02/23] drm/rockchip: dw_hdmi: rename vpll clock to
 reference clock
Message-ID: <20220217133727.GQ18637@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-3-s.hauer@pengutronix.de>
 <0fa21d91-b15f-8049-d776-8c6e9e9334b2@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0fa21d91-b15f-8049-d776-8c6e9e9334b2@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:27:28 up 68 days, 22:13, 86 users,  load average: 0.20, 0.15, 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_053739_727727_F9EC0F16 
X-CRM114-Status: GOOD (  19.60  )
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

T24gVGh1LCBGZWIgMTcsIDIwMjIgYXQgMDQ6MjA6MTVQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOgo+IDE3LjAyLjIwMjIgMTE6MjksIFNhc2NoYSBIYXVlciDQv9C40YjQtdGCOgo+ID4g
KwloZG1pLT5yZWZfY2xrID0gZGV2bV9jbGtfZ2V0KGhkbWktPmRldiwgInJlZiIpOwo+ID4gKwlp
ZiAoUFRSX0VSUihoZG1pLT5yZWZfY2xrKSA9PSAtRU5PRU5UKQo+ID4gKwkJaGRtaS0+cmVmX2Ns
ayA9IGRldm1fY2xrX2dldChoZG1pLT5kZXYsICJ2cGxsIik7Cj4gPiArCj4gPiArCWlmIChQVFJf
RVJSKGhkbWktPnJlZl9jbGspID09IC1FTk9FTlQpIHsKPiA+ICsJCWhkbWktPnJlZl9jbGsgPSBO
VUxMOwo+IAo+IEkgbWlzc2VkIGluIHY1IHRoYXQgZGV2bV9jbGtfZ2V0X29wdGlvbmFsKCkgY291
bGQgYmUgdXNlZCBoZXJlLiBCdXQgdGhpcwo+IGRvZXNuJ3Qgd29ydGggdGhlIHY3IGJ5IGl0c2Vs
Zi4KCkkgbG9va2VkIGludG8gaXQgYW5kIGNhbWUgdG8gdGhlIGNvbmNsdXNpb24gdGhhdCBJIGNh
bid0IHVzZSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwKZm9yIHRoZSAicmVmIiBjbGsgYmVjYXVzZSB0
aGVuIEkgY291bGRuJ3QgZG8gdGhlIGlmIChQVFJfRVJSKGhkbWktPnJlZl9jbGspID09IC1FTk9F
TlQpCnBhcnQuCgpMb29raW5nIGF0IGl0IGFnYWluIEkgY291bGQgZG86CgoJaGRtaS0+cmVmX2Ns
ayA9IGRldm1fY2xrX2dldF9vcHRpb25hbChoZG1pLT5kZXYsICJyZWYiKTsKCWlmICghaGRtaS0+
cmVmX2NsaykpCgkJaGRtaS0+cmVmX2NsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbChoZG1pLT5k
ZXYsICJ2cGxsIik7CgpJJ2xsIGNoYW5nZSB0aGF0IHNob3VsZCBJIGhhdmUgdG8gcmVzZW5kLgoK
U2FzY2hhCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAg
ICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGls
ZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkx
Ny0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4
OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
