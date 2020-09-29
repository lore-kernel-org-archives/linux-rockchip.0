Return-Path: <SRS0=Bn3x=DG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A442C4346E
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 07:18:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1D28420754
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 07:18:22 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="gVuUa7l0"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1D28420754
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ravnborg.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M5E8Mez8FtFt8LGintRsWtqF3XGn2yPgjqrw3Kjv2V8=; b=gVuUa7l0DY227dMoeJ/AVG1eo
	iknui3XBtP9lQqa+X1tSqmve5G7M3l4Riwe+i9Yyna7K2Nbj6eLFETme3YLDn9rej47TuwyT87LUO
	cPdPj1MurXVUBvLi6AENySs3AigYkDnTdD2vSRiC/a6bljwiT3YXhWAJW9mJygHxio8Fzk61jFDz9
	+GdevRLIs0WlxX4EmmOUCP4lZ6C+f3QVSkMox6D1yIpf9tzHLwJFzxm+gEULXsgf9KjFzkM8/ObeZ
	IB5n0zG73nN9zFh2G8gZsfokyGGzOhlWuqn0CEm1IlTKsD5Dsl3M3oqW0MJXknwp0JjaUghnQ8RHS
	oQs4eBLwA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kN9tr-0000bf-SB; Tue, 29 Sep 2020 07:18:11 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kN9tl-0000aN-Er; Tue, 29 Sep 2020 07:18:08 +0000
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 08D27804E5;
 Tue, 29 Sep 2020 09:17:55 +0200 (CEST)
Date: Tue, 29 Sep 2020 09:17:54 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v1 1/2] drm/rockchip: fix build due to undefined
 drm_gem_cma_vm_ops
Message-ID: <20200929071754.GA736868@ravnborg.org>
References: <20200925215524.2899527-1-sam@ravnborg.org>
 <20200925215524.2899527-2-sam@ravnborg.org>
 <83650213-3b09-aea0-4485-cd20de1d9548@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83650213-3b09-aea0-4485-cd20de1d9548@suse.de>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=A5ZCwZeG c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=IkcTkHD0fZMA:10 a=7gkXJVJtAAAA:8 a=nVws210Im4UeU8Tq7v4A:9
 a=QEXdDO2ut3YA:10 a=E9Po1WZjFZOl8hwRPBS3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_031805_636077_7C477ADA 
X-CRM114-Status: GOOD (  16.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 stable@vger.kernel.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBTZXAgMjksIDIwMjAgYXQgMDg6NTM6MDZBTSArMDIwMCwgVGhvbWFzIFppbW1lcm1h
bm4gd3JvdGU6Cj4gSGkgU2FtCj4gCj4gQW0gMjUuMDkuMjAgdW0gMjM6NTUgc2NocmllYiBTYW0g
UmF2bmJvcmc6Cj4gPiBDb21taXQgMGQ1OTBhZjMxNDBkICgiZHJtL3JvY2tjaGlwOiBDb252ZXJ0
IHRvIGRybV9nZW1fb2JqZWN0X2Z1bmNzIikKPiA+IGludHJvZHVjZWQgdGhlIGZvbGxvd2luZyBi
dWlsZCBlcnJvcjoKPiA+IAo+ID4gcm9ja2NoaXBfZHJtX2dlbS5jOjMwNDoxMzogZXJyb3I6IOKA
mGRybV9nZW1fY21hX3ZtX29wc+KAmSB1bmRlY2xhcmVkIGhlcmUKPiA+ICAgMzA0IHwgIC52bV9v
cHMgPSAmZHJtX2dlbV9jbWFfdm1fb3BzLAo+ID4gICAgICAgfCAgICAgICAgICAgICBefn5+fn5+
fn5+fn5+fn5+fn4KPiA+ICAgICAgIHwgICAgICAgICAgICAgZHJtX2dlbV9tbWFwX29iago+ID4g
Cj4gPiBGaXhlZCBieSBhZGRpbmcgbWlzc2luZyBpbmNsdWRlIGZpbGUuCj4gPiAKPiA+IFNpZ25l
ZC1vZmYtYnk6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KPiAKPiBEaWRuJ3QgeW91
IHJldmlldyBleGFjdGx5IHRoaXMgY2hhbmdlIHllc3RlcmRheT8gQW55d2F5LCB5b3Ugc2hvdWxk
IGFkZApZZXAuCgo+IAo+IEZpeGVzOiAwZDU5MGFmMzE0MGQgKCJkcm0vcm9ja2NoaXA6IENvbnZl
cnQgdG8gZHJtX2dlbV9vYmplY3RfZnVuY3MiKQo+IAo+IGFuZAo+IAo+IFJldmlld2VkLWJ5OiBU
aG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KPiAKPiBJdCBtaWdodCBoYXBw
ZW4gdGhhdCBJIGxhbmQgbXkgcGF0Y2ggZmlyc3QsIGRlcGVuZGluZyBvbiB0aGUgdXJnZW5jeSBv
Zgo+IHRoZSBpc3N1ZS4KSSBleHBlY3QgeW91IHRvIGxhbmQgdGhlIHBhdGNoIHlvdSBtYWRlIGFz
YXAgc28gd2UgY2FuIGhhdmUgdGhlIGJ1aWxkCmZpeGVkIGFnYWluLgoKCglTYW0KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
