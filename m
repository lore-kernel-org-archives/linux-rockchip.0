Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30E63C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 09:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPNQIUrdNKGARGimwRqfYjXoTP4MDBprX0IRsfAqrn0=; b=AQsrkFBynmNQWZ
	30w2L6vnZ25JcsfdazGQFDfTgfbdhgWNUZQAiOJThf7O2FUSWMVISI49v5lNBAUY1fp/fXOlhy9Ix
	IMso6oeSPEbTysZEmrVE4Gxy/7C58UVq+GXVl24OzltWsVxi9k5a6yaDR/oR5OabW2Wq+rlPJ5NaR
	Vhu7KOVtq8ltGDoqWic3ZBVHWcd9f4EUPj2zd+WRVv/tLm7kqqb9R/9/Su7tfsjfHH73G8m4WXpXt
	y14ojn4kOtdOCRt8MvKdk+xsRguVx/KHHPLwNb4PaPKbFkeOChWd2BwGkilOlB9RJsaaalYPUjILr
	FmxiC+BWYF6MCClD7ySA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7ue6-004m9n-1u;
	Tue, 28 Nov 2023 09:44:46 +0000
Received: from mail-m15589.qiye.163.com ([101.71.155.89])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7ue3-004m8X-0h
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 09:44:44 +0000
DKIM-Signature: a=rsa-sha256;
	b=GHnwIiTvHd8Z9J4E/ZBCqGbm0sE+Myj68broo3EMS76znDianpdQCLjgyjL7sx/et1OENuqhQBhFc29jtM4xoNSLKmKpyj78DpUArInIW5HPPg2OrUQl+1YJrKo9AGMPQKBILJWfCRpdN0b9PxYp5qBVyymvHXMWRqie5XxU1Ts=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=GqNr712t8gfptmgAaOy9rxShrLDz8k6UGxNqr2/clXs=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12762.qiye.163.com (Hmail) with ESMTPA id 8D62B5C03A2;
	Tue, 28 Nov 2023 17:44:19 +0800 (CST)
Message-ID: <4e356146-979f-4c30-a230-a0c95c518738@rock-chips.com>
Date: Tue, 28 Nov 2023 17:44:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/12] drm/rockchip: vop2: clear afbc en and transform
 bit for cluster window at linear mode
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com, s.hauer@pengutronix.de
References: <20231122125316.3454268-1-andyshrk@163.com>
 <3927498.QCnGb9OGeP@diego>
 <ebe46d19-954d-4dbb-82ba-a443058e9f4e@rock-chips.com>
 <15178289.EVyyLHbfrO@diego>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <15178289.EVyyLHbfrO@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0NKSVZOTR9NSENOGUtIHxpVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c1550b4b4b229kuuu8d62b5c03a2
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Py46Pzo4Lzw4Sx4KCTwNOjwU
	KgJPCUJVSlVKTEtKSk1PTU1LT0JMVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSE1OQjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_014443_414826_836B889A 
X-CRM114-Status: GOOD (  15.10  )
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

SGkgSGVpa286CgpPbiAxMS8yOC8yMyAxNjozMCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0g
RGllbnN0YWcsIDI4LiBOb3ZlbWJlciAyMDIzLCAwOTowMzo0NiBDRVQgc2NocmllYiBBbmR5IFlh
bjoKPj4gSGkgSGVpa286Cj4+Cj4+IE9uIDExLzI3LzIzIDIzOjAyLCBIZWlrbyBTdMO8Ym5lciB3
cm90ZToKPj4+IEFtIE1pdHR3b2NoLCAyMi4gTm92ZW1iZXIgMjAyMywgMTM6NTQ6MjUgQ0VUIHNj
aHJpZWIgQW5keSBZYW46Cj4+Pj4gRnJvbTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMu
Y29tPgo+Pj4+Cj4+Pj4gVGhlIGVuYWJsZSBiaXQgYW5kIHRyYW5zZm9ybSBvZmZzZXQgb2YgY2x1
c3RlciB3aW5kb3dzIHNob3VsZCBiZQo+Pj4+IGNsZWFyZWQgd2hlbiBpdCB3b3JrIGF0IGxpbmVh
ciBtb2RlLCBvciB3ZSBtYXkgaGF2ZSBhIGlvbW11IGZhdWx0Cj4+Pj4gaXNzdWUuCj4+Pj4KPj4+
PiBTaWduZWQtb2ZmLWJ5OiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4+PiBJ
IGd1ZXNzIHNhbWUgaGVyZT8KPj4+Cj4+PiBGaXhlczogNjA0YmU4NTU0N2NlICgiZHJtL3JvY2tj
aGlwOiBBZGQgVk9QMiBkcml2ZXIiKQo+Pgo+PiBJJ20gbm90IHN1cmUgaWYgd2UgbmVlZCBhIEZp
eGVzIHRhZyBoZXJlLCAgaW4gZmFjdCB0aGlzIGlzc3VlIG5ldmVyIGhhcHBlbnMgb24KPj4KPj4g
cmszNTY2LzggLCBiZWNhdXNlIHRoZSBjbHVzdGVyIHdpbmRvd3Mgb2YgcmszNTZ4IG9ubHkgc3Vw
cG9ydCBhZmJjIGZvcm1hdCwKPj4KPj4gdGhleSBkb24ndCBoYXZlIGEgY2hhbmNlIHRvIHN3aXRj
aCBiZXR3ZWVuIGFmYmMgYW5kIGxpbmVhciBtb2RlLgo+Pgo+PiBPZiBjb3Vyc2UsIHRoZSBsYWNr
IHN1cHBvcnQgb2YgbGluZWFyIG1vZGUgb2YgcmszNTZ4IGNsdXN0ZXIgd2luZG93cyBpcyBhIHRo
b3VnaHRsZXNzCj4+Cj4+IG9mIElDIGRlc2lnbiwgaWYgaXQgcmVhbGx5IHN1cHBvcnQgYm90aCBh
ZmJjIGFuZCBsaW5lYXIgZm9ybWF0LCB3ZSBpbmRlZWQgbmVlZCB0aGlzIGZpeC4KPj4KPj4gVGhl
IHNpdHVhdGlvbiBpcyB0aGUgc2FtZSBhcyBwYXRjaCAwMy8xMi4KPj4KPj4gU28gSSBob3BlIGZv
bGxvdyB5b3VyIGFkdmljZSwgaWYgaXQgbmVlZCBhIEZpeGVzIHRhZyBoZXJlLgo+IGFoIG9rLCB0
aGFua3MgZm9yIHRoZSBleHBsYW5hdGlvbi4gVGhlbiBJIGd1ZXNzIHdlIGRvbid0IG5lZWQgYSBm
aXhlcyB0YWcKPiB3aGVuIHRoZSByazM1NjggaXMgbm90IGFmZmVjdGVkIGJ5IHRoaXMuCj4KPiBT
YW1lIGZvciB0aGUgb3RoZXIgcGF0Y2guIElmIHlvdSdyZSByZS1zZW5kaW5nIHlvdSBjb3VsZCBh
ZGQgdGhpcyBpbmZvcm1hdGlvbgo+IHRvIHRoZSBjb21taXQgbWVzc2FnZSB0aG91Z2guIChleGlz
dGluZyBzdXBwb3J0IGZvciByazM1Njggb25seSBzdXBwb3J0cwo+IGFmYmMgY2x1c3RlciB3aW5k
b3dzIGFuZCBpcyB0aGVyZWZvcmUgbm90IGFmZmVjdGVkKQoKCk9rLCB3aWxsIGRvbmUuCgo+Cj4K
PiBUaGFua3MKPiBIZWlrbwo+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
