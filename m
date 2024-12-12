Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 646BEE7717F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 17:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDmwb9cdJIhI1mdVBj+A3nt/0TOuKdywDzsX5hEtr+Y=; b=zmIpi3Z9HjS5DU
	Nx0JMJWK9yfzExnR3P+JE6IUVguBokSMWOhwjOeaOmF6Mb+1aaUDbYXq/+lbGi2s7XtKlfSg7UKSI
	DJvkgVnO7IiAkpOcekcM8lfJ++/+0rKp7kE8blT9Pc1PtYaXfC0E5t/MQdHiko8e4bGLO+IUQ+jpn
	veKPSFZ5BN2lP5Pv+oMUnoidPNL7XuOrWbCU113YOtDuS04TP70r5NYq3lPFeMmNCHhWEeopTfGws
	o7EaM/DUfvTUOefEm8TYjmVtpTl01aJZPfYSqsyp+MjEei16aSMOJyAiwPEeNzH0JVI3/ju9xKvJu
	d0JwT6/+o0Ys0a80djBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLmin-0000000182W-1xA7;
	Thu, 12 Dec 2024 17:11:29 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLlqb-00000000vZL-0QAT;
	Thu, 12 Dec 2024 16:15:30 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1734020117; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=nFIkIZJ1xuLhG7CnV7y/LlyF7GMO4DNKYynUuDDfONJ9IJ/6c+vLKjieOSVWF2MEyhdi36wNFpuHUWzE6/Jd5Ow1DDEUVhLGM+EIG4tYMSpLYAgekkJy91EIknKTvNPIqJhzxWqmjKO6Ns6rqBLgg/xTG/qCWUXUYKKK0w1vJqI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1734020117; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=PBCtB4P7LoVsX+UGrbBFWgz4hUvi2N2icOGRXyods1c=; 
	b=D3EwNniM2uODf0UlYsxmeJoz5wZstD1V5P9/VWDm8fwnImRVr9FbdlONAO7bSWeOlw2KNZNIg7A9GhmecqhryYamQTVgVmJk46j51nI0+gr5GBhawmwwYa5yOxOOfl0Y+DHGitxF9MqpYS6Vg50X6k+nf89CZS1x3z5IC72Pb+Q=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1734020117;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=PBCtB4P7LoVsX+UGrbBFWgz4hUvi2N2icOGRXyods1c=;
	b=R3TgZfLusnXNGOwnGXLv3tZEKdrfCkswpUKAUHr2kRAxHcU6ZcG0YTqR1hkLY9Vl
	UDFK3dWbQZZy+kUHhKocKBZcAnpDtMkNc0C7jRavwZp8UCv6sXHqrTwgc87sUGaqj9e
	P65sFgEsSoMlRX7NYmIBLHqUlOGQjxdXmsFAaIzo=
Received: by mx.zohomail.com with SMTPS id 17340201149634.725551844082247;
	Thu, 12 Dec 2024 08:15:14 -0800 (PST)
Message-ID: <21db56f1-ee5d-4309-8fa6-5aaf92782885@collabora.com>
Date: Thu, 12 Dec 2024 17:15:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] media: verisilicon: fix reference padding issue
To: Fabio Estevam <festevam@gmail.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com
References: <01020193bb8a24ad-99eafebb-3b0b-40c0-9b28-3a0dbc84327a-000000@eu-west-1.amazonses.com>
 <CAOMZO5DgW3YrpMJPCTzQ-LZCopB4tNPoJhyFQrr6RBvbnBu4VA@mail.gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <CAOMZO5DgW3YrpMJPCTzQ-LZCopB4tNPoJhyFQrr6RBvbnBu4VA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_081529_205172_F50896F4 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDEyLzEyLzIwMjQgw6AgMTc6MTAsIEZhYmlvIEVzdGV2YW0gYSDDqWNyaXTCoDoKPiBPbiBU
aHUsIERlYyAxMiwgMjAyNCBhdCAxMjo0M+KAr1BNIEJlbmphbWluIEdhaWduYXJkCj4gPGJlbmph
bWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+PiBIYW50cm8gaGFyZHdhcmUgaXMg
c3BsaXRlZCBpbnRvIHR3byBwYXJ0czogdGhlIGRlY29kZXIgd2hpY2ggcHJvZHVjZQo+PiB0aWxl
ZCBwaXhlbHMgZm9ybWF0cyBhbmQgdGhlIHBvc3QtcHJvY2Vzc29yIHdoaWNoIHByb2R1Y2UgcmFz
dGVyIHBpeGVscwo+PiBmb3JtYXRzLgo+PiBXaGVuIHBvc3QtcHJvY2Vzc29yIGlzIHVzZWQgdGhl
IHNlbGVjdGVkIHBpeGVscyBmb3JtYXQgbWF5IG5vdCBoYXZlIHRoZQo+PiBzb21lIHBhZGRpbmcv
c3RyaWRlIHRoYW4gdGhlIGRlY29kZXIgb3V0cHV0IHBpeGVscyBmb3JtYXQuIFRoaXMgbGVkIHRv
Cj4+IG1pc2NvbXB1dGluZyBjaHJvbWEgYW5kIG1vdGlvbiB2ZWN0b3JzIG9mZnNldHMgc28gZGF0
YSBhcmUgb3ZlcmxhcHBpbmcuCj4+IFRoaXMgc2VyaWVzIGludHJvZHVjZSBhIHJlZmVyZW5jZSBw
aXhlbHMgZm9ybWF0IHRoYXQgZGVjb2RlciB1c2UgdG8KPj4gY29tcHV0ZSB0aGUgdmFyaW91cyBu
ZWVkZWQgb2Zmc2V0cyBhbmQgc2l6ZS4KPj4KPj4gV2l0aCB0aGlzIHNlcmllcyBGbHVzdGVyIGZv
ciBWUDkgdGVzdHMgaXMgbm93IDIwNy8zMDUgdnMgMTQ1LzMwNS4KPj4gSEVWQyB0ZXN0IHNjb3Jl
IGlzbid0IGltcGFjdGVkIGJ5IHRoZXNlIHBhdGNoZXMgKHN0aWxsIDE0MS8xNDcpLgo+Pgo+PiBW
ZXJzaW9uIDI6Cj4+IC0gcmViYXNlZCBvbiB0b3Agb2YgbWVkaWEtY29tbWl0ZXIvbmV4dAo+PiAt
IEFkZCByZXZpZXdlZC1ieSB0YWdzCj4+Cj4+IEJlbmphbWluIEdhaWduYXJkICgyKToKPj4gICAg
bWVkaWE6IHZlcmlzaWxpY29uOiBTdG9yZSByZWZlcmVuY2UgZnJhbWVzIHBpeGVscyBmb3JtYXQK
Pj4gICAgbWVkaWE6IHZlcmlzaWxpY29uOiBGaXggSU1YOCBuYXRpdmUgcGl4ZWxzIGZvcm1hdCBz
dGVwcyB2YWx1ZXMKPiBEbyBib3RoIHBhdGNoZXMgZGVzZXJ2ZSBhIEZpeGVzIHRhZz8KClRoZXJl
IGlzIGRlcGVuZGVuY3kgaW4gYXJvdW5kIGhldmMgY29tcHJlc3MgZmVhdHVyZSBpbiBwb3N0LXBy
b2MgY29kZS4KSSBkb24ndCB0aGluayBpdCBjb3VsZCBiZSBhcHBsaWVkIG9uIHN0YWJsZSBrZXJu
ZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
