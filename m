Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED42BC43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jun 2022 17:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsZXjJbRMnOjhfCg12Bw38FVnzbi4iEgRDXvbluHSyo=; b=315t4JSfMnNQ/A
	mMJWWCwjK54V1NKnbJd3bUECQB6gtXsPdGKR/4KEwGgMVEYynEHp9DLanMNtR7UhdUznk6v9eq+l5
	/wsAQvlNRYbF1bDN+x6hZFEc2OAnO0EXbj8iNHS0gcOnkyqWL+ttYoHr+0maw8EXIEWDY7+264iTY
	eivE1kk4BgD6T6VY7uG0N8W7THlPLBIobUlpQwxywec0FNNtR+jnm22YNm/hSgZEdXuVSzgT/L6qv
	yEJUEmIEl3qDGCp9y88pCEsf6+5/6MJooizD+pQjpGrY4kZXNwGU9t2uCQHC7CaXltaOoR5bfvYD2
	lPHci/JPrwryQ83+AU8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwRpc-00HEfi-AX; Wed, 01 Jun 2022 17:08:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwRpQ-00HEd6-JE; Wed, 01 Jun 2022 17:08:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: nicolas)
	with ESMTPSA id BFCB01F44545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654103285;
	bh=lDyn2UbNzkXVPb/r+aeas5dM5cMmLSiPAoFFx/mTR58=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=hKGgtAuVB/nM+RjHwYL+SUADwNRxvkeD0OOE0Xkh3764zMjQ92J/2r2cDWOvtwLtA
	 WT/s4wQRkJt96DwrP9M7yZYgRt4y71zelr1LfexyI+jRaI6gHdb0E1sTnrvEZABY5y
	 21N9XIkghcREUOPPp8B5HQWamxjyZW6fwx4Umsf4j1J0onpoJ1kzyFEDRxc6qbeOc8
	 BlN8zlc1nksMAVK0rAfAaXPyTaZbuz4d0lNd2+R1znGqe4JtrpIu1aq3nhnbGD9dyT
	 IC+uoGmLlLBbxzAUP1c1gII+oYMo3SjMcZF4s2zHjYT63c+q0AHHdrIUoEWsdYj1Pc
	 dO4VROiQlm04A==
Message-ID: <763308daa3304ef3cf011b4ca7b9c5c006627c90.camel@collabora.com>
Subject: Re: [PATCH v6 11/17] media: uapi: Add
 V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS control
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Jernej =?UTF-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>, 
 mchehab@kernel.org, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, 
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com,  wens@csie.org, samuel@sholland.org,
 andrzej.p@collabora.com, Hans Verkuil <hverkuil@xs4all.nl>, Benjamin
 Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	kernel@collabora.com
Date: Wed, 01 Jun 2022 13:07:54 -0400
In-Reply-To: <11988268.O9o76ZdvQC@jernej-laptop>
References: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
	 <2102878.irdbgypaU6@kista>
	 <95261aa18425e8f5571888a41ee03d9dfd2814b9.camel@collabora.com>
	 <11988268.O9o76ZdvQC@jernej-laptop>
User-Agent: Evolution 3.44.1 (3.44.1-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_100816_804151_1F83B330 
X-CRM114-Status: GOOD (  14.11  )
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

TGUgbWVyY3JlZGkgMDEganVpbiAyMDIyIMOgIDE4OjM1ICswMjAwLCBKZXJuZWogxaBrcmFiZWMg
YSDDqWNyaXTCoDoKPiA+IEkgYmVsaWV2ZSBpdHMgZGVmaW5lZCBmb2xsb3dpbmcgIlRhYmxlIEEu
OCDigJMgR2VuZXJhbCB0aWVyIGFuZCBsZXZlbCBsaW1pdHMiLgo+ID4gV2l0aCB0aGUgYXNzdW1w
dGlvbiB0aGVyZSB3aWxsIG5ldmVyIGJlIGEgbGV2ZWwgNyAod2hpY2ggSSB0aGluayBpcyBmYWly
KS4KPiA+IElmIGFueW9uZSBzYXcgb3RoZXIgcmVhc29ucyBmb3IgdGhpcyBsaW1pdCwgbGV0IG1l
IGtub3cuCj4gPiAKPiA+IFRoaXMgaXMgYSB3b3JzZSBjYXNlIHNjZW5hcmlvLCB0aGlzIGlzIHF1
aXRlIHVubGlrZWx5IGluIHByYWN0aWNlLCBzbyB3aGlsZQo+ID4gcGVyZm9ybWFuY2UgbWlnaHQg
YmUgYSBkaXNhc3RlciBpZiB5b3VyIGNyYWZ0IGEgc3RyZWFtIGZvciB0aGF0IGNhc2UsIEkKPiA+
IGRvbid0IHRoaW5rIGl0IHdpbGwgZXZlciBoYXBwZW4gaW4gcmVhbCBsaWZlLgo+IAo+IEJ1dCBk
byB3ZSByZWFsbHkgbmVlZCB0byBjb3ZlciB3b3JzdCBjYXNlIHNjZW5hcmlvPyBJbiB0aGVvcnks
IG9uZSBkcml2ZXIgY2FuIAo+IHNldCBsaW1pdCB0byAoZm9yIGV4YW1wbGUpIG1heCAxMDAgc2xp
Y2VzIGFuZCBpZiB0aGVyZSBpcyBhIGZyYW1lIHdpdGggNjAwIAo+IHNsaWNlcywgdXNlcnNwYWNl
IGFwcCB3b3VsZCBzdWJtaXQgNiBkZWNvZGUgcmVxdWVzdHMuIEJhc2ljYWxseSB0aGUgc2FtZSB3
YXkgCj4gaXQncyBkb25lIHRvZGF5LiBXaGlsZSBub3QgYXMgcGVyZm9ybWFudCwgaXQgd291bGQg
YmUgZ29vZCBjb21wcm9taXNlIGJldHdlZW4gCj4gcmVzb3VyY2VzIGFuZCBzcGVlZC4KClRoZSBs
aW1pdCBoZXJlIGlzIHRvIHByZXZlbnQgdXNlcmxhbmQgZnJvbSB0cmlja2luZyB0aGUga2VybmVs
IGludG8gZG9pbmcgdmVyeQpiaWcgYWxsb2NhdGlvbi4gQnV0IHdpdGggZHluYW1pYyBhcnJheSwg
eW91J2xsIGFsbG9jYXRlIGp1c3QgdGhlIHJpZ2h0IGFtb3VudC4KCk5pY29sYXMKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
