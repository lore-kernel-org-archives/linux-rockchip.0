Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 342B9C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 12:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kixsp0INBKyZt0CsB+/FoDkDouNjJHmakC+OHSXWYSM=; b=FzrEejHWQHjVDo
	zdgNEpfGKqYjWzsRTYgCRr+Gk+B7IcFNxaib4UF4OYXSSGlBIQEnI8C5arysy55nmq974w2oBuDre
	+ZxQeGP7zRVwzQ5qZkFRaLIUZFdOZBePJsiCK7SGcaHWTsT7O7I81uZevECOqc8c05TNZk9oCOt9Z
	qY0h5r/Sv73hntQ4OA4EHmH4jwOOh03Iom5XTSfA4yhvb2hIO72ufvSwn5S425loZ2wHriA5yPUuo
	hJaOdxg6K5eCMu02X86+/usXxsAt+D5oDVrXTzTe0F+G9cnYp8oOW+VTJRVXP23oBULJuJFEmCe/i
	ccBgHwvNGbuAzqarQAEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6Ud-0000000CgHm-3lvk;
	Thu, 22 Aug 2024 12:00:43 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6UP-0000000CgAz-1ZfQ;
	Thu, 22 Aug 2024 12:00:31 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724327993; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=XmF4CXboFiO0+JxNj3/cf0PjAv48HwLyHaKFrCVFTibeaW6ClWVClgwFJNkyr1YVd8YPmyUoViDaa7zh6AWjZtR5ULvxvYxkyYAdTzRulKEkcppWq721rQLqfClGJKu1+jdWSR9avsY1oSnAtgaTaYe8qRF/oeKFEFs+CBS01Xk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724327993; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=F7zXwtoEV0ZT7LXN9/C4cFaG6cOzhkCyUyT3udVmG6k=; 
	b=Uq987caBLPycf+3ikEuo2XWI45j2KHLZxpL5iHsWzlsTvj9xzE3x4i2Cblkp9et4JbT0W+B3HtYZJ38u1QZu75YrEgt+x3EMBV4vnT+/6XYZXTl7fupVQbsAw+XTSrjhK+bc4qfxYDAXbmlVBoIZiTIhPkZ5qvyx0M0GfybU0Ew=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724327993;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=F7zXwtoEV0ZT7LXN9/C4cFaG6cOzhkCyUyT3udVmG6k=;
	b=kLm4xLi+CrDZ55gPpQ35KdlJ2sruQr5As9Lq9/k0KKBeZ2+s3XgjQUyD4AzgZBa+
	FlSpAO6esGIWCKKuGZRq0PMt7De22C1SvUN75e5nyQcurvZg3RX+18C6qDHpDRY0mT2
	cgqCQJt0l5d0j9amgxgPLv/CH2MDbzgcYX8Ytt/A=
Received: by mx.zohomail.com with SMTPS id 1724327990696635.433469686591;
	Thu, 22 Aug 2024 04:59:50 -0700 (PDT)
Message-ID: <7fc8cbc3-43d0-43d2-9272-350ac556e2b2@collabora.com>
Date: Thu, 22 Aug 2024 14:59:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller
To: Conor Dooley <conor@kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>
References: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com>
 <7E8109D4-A353-4FE3-9152-3C3C6CB7D634@sntech.de>
 <2085e998-a453-4893-9e80-3be68b0fb13d@collabora.com>
 <4167579.6PsWsQAL7t@diego> <20240822-pushchair-premises-f4055779216a@spud>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <20240822-pushchair-premises-f4055779216a@spud>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_050029_485441_C51BEC62 
X-CRM114-Status: GOOD (  15.78  )
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

T24gOC8yMi8yNCAxMTo0MSBBTSwgQ29ub3IgRG9vbGV5IHdyb3RlOgo+IE9uIFRodSwgQXVnIDIy
LCAyMDI0IGF0IDA5OjAxOjM0QU0gKzAyMDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBAQ29u
b3I6IGp1c3QgZm9yIG1lLCBkaWQgc29tZSBzaGlmdCBoYXBwZW4gaW4gb3VyIHVuZGVyc3RhbmRp
bmcgb2YgZHQtCj4+IGJlc3QtcHJhY3RpY2VzIGluIHRlcm1zIG9mIHN5c2NvbiB2aWEgcGhhbmRs
ZSB2cy4gc3lzY29uIHZpYSBjb21wYXRpYmxlPwo+Pgo+PiBCZWNhdXNlIFJvY2tjaGlwIGJvYXJk
cyBhcmUgcmVmZXJlbmNpbmcgdGhlaXIgR1JGcyB2aWEgcGhhbmRlcyBmb3JldmVyCj4+IGJ1dCBz
aW1pbGFyIHRvIHRoZSBzb2MgdnMgbm9uLXNvYyBub2RlIHRoaW5nLCBJJ2QgbGlrZSB0byBzdGF5
IG9uIHRvcCBvZgo+PiBiZXN0LXByYWN0aWNlcyA7LSkKPiAKPiBJZiBJUCBibG9ja3MsIGFuZCB0
aHVzIGRyaXZlcnMsIGFyZSBnb2luZyB0byBiZSByZXVzZWQgYmV0d2VlbiBkZXZpY2VzLAo+IHVz
aW5nIHRoZSBwaGFuZGxlcyBtYWtlcyBzZW5zZSBnaXZlbiB0aGF0IGl0IGlzIHVubGlrZWx5IHRo
YXQgc3lzY29uCj4gbm9kZXMgY2FuIG1ha2UgdXNlIG9mIGZhbGxiYWNrIGNvbXBhdGlibGVzIGR1
ZSB0byBiaXRzIHdpdGhpbiB0aGF0ICJnbHVlIgo+IGNoYW5naW5nIGJldHdlZW4gZGV2aWNlcy4g
SXQgYWxzbyBtYWtlcyBzZW5zZSB3aGVuIHRoZXJlIGFyZSBtdWx0aXBsZQo+IGluc3RhbmNlcyBv
ZiBhbiBJUCBvbiB0aGUgZGV2aWNlLCB3aGljaCBuZWVkIHRvIHVzZSBkaWZmZXJlbnQgc3lzY29u
cy4KPiBNeSBnb2FsIGlzIHRvIGFzayBwZW9wbGUgd2h5IHRoZXkgYXJlIHVzaW5nIHRoZXNlIHR5
cGUgb2Ygc3lzY29ucwo+IHBoYW5kbGUgcHJvcGVydGllcywgY29zIG9mdGVuIHRoZXkgYXJlIG5v
dCByZXF1aXJlZCBhdCBhbGwgLSBmb3IgZXhhbXBsZQo+IHdpdGggY2xvY2tzIHdoZXJlIHlvdSBl
ZmZlY3RpdmVseSBuZWVkIGEgd2hvbGUgbmV3IGRyaXZlciBmb3IgZXZlcnkKPiBzaW5nbGUgc29j
IGFuZCBoYXZpbmcgYSBwaGFuZGxlIHByb3BlcnR5IGJ1eXMgeW91IG5vdGhpbmcuCgpUaGF0IHdv
dWxkIGJlIGFsc28gdGhlIGNhc2UgZm9yIHRoaXMgSERNSSBjb250cm9sbGVyIC0gbmVlZCB0byBj
aGVjayB0aGUKc3BlY3MgZm9yIHRoZSBuZXdlciBSSzM1NzYgU29DLCBidXQgSSBleHBlY3QgdGhl
IHN5c2NvbnMgd291bGQgYmUgcXVpdGUKZGlmZmVyZW50IHdoZW4gY29tcGFyZWQgdG8gUkszNTg4
LCBoZW5jZSB3ZSBzaG91bGQga2VlcCBtYWtpbmcgdXNlIG9mCnRoZSBwaGFuZGxlcy4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
