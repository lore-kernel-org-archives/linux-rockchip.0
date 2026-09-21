Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 355E9C982E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 22:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cNlxYrmw1+naCwLBKpz60Gep3ynEsS2vHBxFoU3wIgM=; b=f6Zg0PjdLRwLBw
	NR1IXIwN0PV9teBcBhVNdS+ULaTTu3iZu7CJZN0ybpwV2JJcuatDR38n/N/iMjz7bTgYNujG8fA1S
	BlAkCuw+APSCWnO3KGn60Mk1zFXTjGY+/iXb124HSa/lAiaZwlMNOUbPn2H1qBawdecfvisJYO2v4
	xcbVNaP9WCrd9+hzFuj6a/bgRh/rlNpBw7/PW09e5uLit7xrm1shNvuRa4hhIWbw6Xg7+cNRouSZR
	CoqkbUUQ9rvPaACo93p+YKCkbvLwScLFe1lZvAQIQCvMjJym7fY6bPXkA4+adfakWu/r8GR4cL96o
	YMQVcz1J9dpHb1IrO5LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8m9r-00000003XFk-1xYw;
	Mon, 21 Sep 2026 22:06:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8m9m-00000003XEd-1M7h;
	Mon, 21 Sep 2026 22:06:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Xh7r+wBULLX7xOhkCrEp64UsGuqdkH4pf7taI2bfz/Y=; b=VdwN1/m6cob8uyb69bcrs6kzSx
	wtZUqa2i/g68w6+aAstSNytJPJAdb7p0plB3mUGSxy1VC/EHfNYwPRyrZz8tiSDF1anBMUg7gK6rU
	eQC9D04+lNHkSnHgdukiwNCNsh6MSaUxYoATm8yDqOfGvbbi0V+WgZQImmgt9bArxhDuBZEaWhj7c
	xHLDzjwwbJGJ/pM0PyQX75uvDyz/O1A8n2E8GYOXOv5ZfHn9Z00J6AGt7DHP+YSCA3KUqgEzYDLnK
	EuCneA+xU2pEcqJX7T4gH5Qqo/H26phoAVxLkUy4Gsmj2RFiVxQ/hSIlSwLVSOTfYjm57u1SHLhSL
	t0eaVU+Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: tomeu@tomeuvizoso.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 ulfh@kernel.org, p.zabel@pengutronix.de, ogabbay@kernel.org,
 zhangqing@rock-chips.com, Jiaxing Hu <gahing@gahingwoo.com>
Cc: royalnet026@gmail.com, abel.vesa@oss.qualcomm.com,
 sebastian.reichel@collabora.com, sidong.yang@furiosa.ai,
 u.kleine-koenig@baylibre.com, chaoyi.chen@rock-chips.com,
 diederik@cknow-tech.com, alchark@flipper.net,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jiaxing Hu <gahing@gahingwoo.com>
Subject: Re: [PATCH v13 09/14] pmdomain: rockchip: add optional per-domain power-on
 settle delay
Date: Tue, 22 Sep 2026 00:06:12 +0200
Message-ID: <15844283.tv2OnDr8pf@phil>
In-Reply-To: <20260915104328.45901-10-gahing@gahingwoo.com>
References: <20260915104328.45901-1-gahing@gahingwoo.com>
 <20260915104328.45901-10-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_150638_392523_E10EF74E 
X-CRM114-Status: GOOD (  11.09  )
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

SGksCgpBbSBEaWVuc3RhZywgMTUuIFNlcHRlbWJlciAyMDI2LCAxMjo0MzoyMyBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEppYXhpbmcgSHU6Cj4gVGhlIFJLMzU3NiBOUFUg
ZG9tYWlucyBuZWVkIGEgc2hvcnQgc2V0dGxlIHRpbWUgYWZ0ZXIgdGhlIGlkbGUgcmVxdWVzdCBp
cwo+IHJlbGVhc2VkIGJlZm9yZSB0aGUgcmVnaXN0ZXJzIGJlaGluZCB0aGUgZG9tYWluIGFuc3dl
ci4gV2l0aG91dCBpdCB0aGUgUW9TCj4gd3JpdGVzIHRoYXQgcm9ja2NoaXBfcG11X3Jlc3RvcmVf
cW9zKCkgaXNzdWVzIGxhbmQgd2hpbGUgdGhlIGRvbWFpbiBpcwo+IHN0aWxsIGNvbWluZyB1cCwg
YW5kIHRoZSBOUFUgdGhyb3dzIGFuIGFzeW5jIFNFcnJvciBvbiB0aGUgZmlyc3QgY29sZAo+IHBv
d2VyLW9uLgoKYXJlIHlvdSByZWFsbHkgcmVhbGx5IHN1cmUsIHRoaXMgaXMgdGhlIGZhdWx0IG9m
IHRoZSBkb21haW4gaXRzZWxmPwoKVGhlIHJlZ3VsYXRvciBhbHNvIGNhbiBqdXN0IG5lZWQgYSBs
b25nZXIgdGltZSB0byBicmluZyB1cCB0aGUgcG93ZXIuCkxvb2tpbmcgYXQgWzBdLCBpdCBzZWVt
cyBJIGFjdHVhbGx5IGVuY291bnRlcmVkIHRoZSBzYW1lIHRoaW5nIGJhY2sKb24gdGhlIFJLMzU4
OC4KCk9ubHkgZGlmZmVyZW5jZSBpcywgb24gUkszNTg4IGEgZmFuNTM1NS10eXBlIHJlZ3VsYXRv
ciBub3JtYWxseSBkb2VzCnByb3ZpZGUgdGhlIG5wdSBzdXBwbHksIHdoaWxlIG9uIHlvdXIgYm9h
cmQgaXQgY29tZXMgZnJvbSB0aGUgbWFpbiBwbWljLgoKQ2FuIHlvdSBwbGVhc2UgdHJ5IHRoZSBm
b2xsb3dpbmc6Ci0gc2V0IHlvdXIgcG93ZXItZG9tYWluIHJlZ3VsYXRvciB0byBhbHdheXMtb24g
aW4gdGhlIERUIChzbyBpdCBzdGF5cwogIG9uIGV2ZW4gd2hlbiB0aGUgZG9tYWluIGdldHMgdHVy
bmVkIG9mZikKLSB0cnkgdG8gcmVwcm9kdWNlIHlvdXIgU0Vycm9yIGlzc3VlIGFuZCBzZWUgaWYg
aXQgc3RpbGwgYXBwZWFycwoKCkFuZCBmb3IgdGhlIG90aGVyIGNhc2UsIGxvb2sgdGhyb3VnaCB0
aGUgcG1pYyBkYXRhc2hlZXQgdG8gZmluZCB0aGUKZW5hYmxlLXRpbWUgdmFsdWVzIGFuZCBkbyBz
b21ldGhpbmcgc2ltaWxhciBmb3IgdGhlIFJLODA2LgoKClRoYW5rcyBhIGxvdApIZWlrbwoKClsw
XSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxk
cy9saW51eC5naXQvY29tbWl0Lz9pZD04YWNmYjE2NWE0OTIyNTFhMDhhMjJhNGZhNjQ5N2ExMzFl
OGMyNjA5CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
