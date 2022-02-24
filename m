Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACEC6C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Feb 2022 07:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Om4bYi54Tdqt/YiYBA6KpXtSK+UuzSkwSOq5nPBB788=; b=PGWmAcw7WFi6k0
	xvYx7uiIhiFZK6hZeOqH9p32G5+u9x0xOJORpDHFj+LnuLvruIrpurOATKhDyA0ArJi1voFP8q46l
	Aug4zp/1KaWN4f9cIaeFEb1APUccD4XFcAWmPxfxBqIVyBdz5wtozYvzXBmxoBfKpHs+3BKp9u9rg
	nwlBYR/b1e10N0naNQaqgNCf4W+KHCGlwpsZt1bVOn7duL1eAcNM4yno9KWrsp+6Sra4gHbT7Jwjr
	qyGI4IHFUp2sJ2OftSlejc1kM6t1x/BmGAsxDm8ajTQOAWlW5krxi8uRdcwYTSM5j6PKTemgolbcK
	GIWW2k/VBqwJaAVMDQpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nN8r6-00HA82-NA; Thu, 24 Feb 2022 07:48:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nN8r3-00HA5a-CU
 for linux-rockchip@lists.infradead.org; Thu, 24 Feb 2022 07:48:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nN8qv-0006vD-AC; Thu, 24 Feb 2022 08:47:53 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nN8qs-0005n6-Mj; Thu, 24 Feb 2022 08:47:50 +0100
Date: Thu, 24 Feb 2022 08:47:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 21/23] drm: rockchip: Add VOP2 driver
Message-ID: <20220224074750.GR9136@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-22-s.hauer@pengutronix.de>
 <b9b59c1d-5808-f348-62fb-257746df134d@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9b59c1d-5808-f348-62fb-257746df134d@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:39:49 up 75 days, 16:25, 81 users,  load average: 0.90, 0.38, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_234801_437470_9579FD1E 
X-CRM114-Status: GOOD (  21.02  )
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

T24gVGh1LCBGZWIgMTcsIDIwMjIgYXQgMDQ6MjQ6MjlQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOgo+IDE3LjAyLjIwMjIgMTE6MjksIFNhc2NoYSBIYXVlciDQv9C40YjQtdGCOgo+ID4g
QEAgLTI4LDYgKzI4LDEyIEBAIGNvbmZpZyBST0NLQ0hJUF9WT1AKPiA+ICAJICBUaGlzIHNlbGVj
dHMgc3VwcG9ydCBmb3IgdGhlIFZPUCBkcml2ZXIuIFlvdSBzaG91bGQgZW5hYmxlIGl0Cj4gPiAg
CSAgb24gYWxsIG9sZGVyIFNvQ3MgdXAgdG8gUkszMzk5Lgo+ID4gIAo+ID4gK2NvbmZpZyBST0NL
Q0hJUF9WT1AyCj4gPiArCWJvb2wgIlJvY2tjaGlwIFZPUDIgZHJpdmVyIgo+ID4gKwloZWxwCj4g
PiArCSAgVGhpcyBzZWxlY3RzIHN1cHBvcnQgZm9yIHRoZSBWT1AyIGRyaXZlci4gWW91IHNob3Vs
ZCBlbmFibGUgaXQKPiA+ICsJICBvbiBhbGwgbmV3ZXIgU29DcyBiZWdpbm5pbmcgZm9ybSBSSzM1
NjguCj4gCj4gcy9mb3JtL2Zyb20vCj4gCj4gVGhlIFJPQ0tDSElQX1ZPUCBvcHRpb24gaXMgImRl
ZmF1bHQgeSIuIERvIHlvdSByZWFsbHkgd2FudCAiZGVmYXVsdCBuIgo+IGZvciB0aGUgVk9QMj8K
ClJPQ0tDSElQX1ZPUCBpcyBvbmx5IGRlZmF1bHQgeSB0byBrZWVwIHRoZSBWT1AgZHJpdmVyIGVu
YWJsZWQgZm9yCmV4aXN0aW5nIGRlZmNvbmZpZyB0aGF0IHdlcmUgZ2VuZXJhdGVkIGJlZm9yZSB0
aGUgaW50cm9kdWN0aW9uIG9mCnRoYXQgc3ltYm9sLgpXZSBkb24ndCBoYXZlIHRoaXMgcHJvYmxl
bSBmb3IgVk9QMiwgc28gbm8gbmVlZCB0byBtYWtlIGl0IGRlZmF1bHQgeS4KClNhc2NoYQoKLS0g
ClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAg
ICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdl
cm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFt
dHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEy
MS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
