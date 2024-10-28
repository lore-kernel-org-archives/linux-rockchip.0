Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B364D5B156
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Oct 2024 21:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKaMf304uUqzEyqW4vxH02ACEeSLNyV4OmPQxbBzCnc=; b=ERUAYAwG+SikXu
	Hz1przm4sniGOjSr1SFMrRizx8tTjNgI07JPITeJ8RonjLMWF9oc1ZXsMsHg8iSmx7YQZFJAqV5y6
	uYpGF+vYc+RCMp+c8Uy0nnH3eiidpAQH+IuoVo2pH+HtS30Gb5WasKv+LfsR4YuhBMCly0H3nDBRK
	UbEbKcHlyxIQFgqRFthrE4imF8xwBvh1RJgCxd6GLalkFbgG4l9JANkj8GKR0oxzDMb6KMIgJa3DE
	V+E3HuEr48QQgvqukcnX2rX8f2wcsWqoSVpe7FlT9xEPFZHSDVODjc6uTiT28N/aC6zvz83rEgMKF
	9B6Y5bA4IXic/OLVdICA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5X6y-0000000CJYM-04Fg;
	Mon, 28 Oct 2024 21:17:16 +0000
Received: from mail-40133.protonmail.ch ([185.70.40.133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Wm2-0000000CGUS-26CM
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Oct 2024 20:55:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1730148931; x=1730408131;
	bh=o0OL5D3wRRnScnzyZ9auDpW3UVQiUgrhsjMKbblKCAs=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=LvLyWoWiUh9ggZTBZ8zvQN5/B8ObjInqvBYhRHgkDODoLIPoHwDpmzcKoCLpx7zTj
	 vW8CXBLVD4VHqjrSARPpXxEa8WG7lLfIBOgyu4y17E9N03LO4Nv13G24lyxJcnPB98
	 ojl2y1CTGAOMKBpUfMyVBIySZ4bL9i2t+iJnwOGWHyx4JQrCZgX95OysTKBSF+4cHx
	 UY+VtUJKyZl0Nrlb4xwUNMUqyTMpLTSa4HvWq/wqzglu6ysFWkrVVtEtgMdcSz9PKm
	 dE51KCNUudFfX0gaWEZti32YbEMyrgava2m14Xqz/qHrsNpKUbRq+Mfk8LHr7oX6hx
	 EjNYZ8PFu1/jg==
Date: Mon, 28 Oct 2024 20:55:28 +0000
To: Andy Yan <andyshrk@163.com>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, Daniel Stone <daniel@fooishbar.org>, Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re:Re: [PATCH v6] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <wXgQHAvchmtDzCTJX5pnEcLvGM1Rf2HTeooQ7GwE-6luNP_BLRQ2LW0wWSXcGWgARzDnfhKd1xQXeMMGYSAhIlX9m7pl3CZ6FxM1yc0qslg=@proton.me>
In-Reply-To: <-rVNN65kgfRzFJBJDIwQF3jNMfXIZFP8GibtUgB_p-eWGLBkNZhYFr-BXEas8IjjofHxWQUqNicUSTp5rb9XmuLi35XsDd0PzJPz79j-M-8=@proton.me>
References: <20241016223558.673145-2-pZ010001011111@proton.me> <DurUfF_0TBHKv4DHKIP3ggQh_85nRY0usYWn_fu_oJ45txO7dGKv-OK5rl6EDEPmX5l8WzrwPCzAvYz0xFPfeKGyx7enu1g-prsWIpilv88=@proton.me> <2bb58a1c.6287.192d1dc9b2d.Coremail.andyshrk@163.com> <-rVNN65kgfRzFJBJDIwQF3jNMfXIZFP8GibtUgB_p-eWGLBkNZhYFr-BXEas8IjjofHxWQUqNicUSTp5rb9XmuLi35XsDd0PzJPz79j-M-8=@proton.me>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: c6c0ed3cb59d5081b7c3f97d9c933c5ec18de402
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_135538_988555_E8CB6A22 
X-CRM114-Status: GOOD (  13.12  )
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

SGkgYWdhaW4KCk9uIE1vbmRheSwgT2N0b2JlciAyOHRoLCAyMDI0IGF0IDU6NDAgUE0sIFBpb3Ry
IFphbGV3c2tpIDxwWjAxMDAwMTAxMTExMUBwcm90b24ubWU+IHdyb3RlOgoKPiBPbiBNb25kYXks
IE9jdG9iZXIgMjh0aCwgMjAyNCBhdCA3OjQyIEFNLCBBbmR5IFlhbiBhbmR5c2hya0AxNjMuY29t
IHdyb3RlOgo+IAo+ID4gSGkgUGlvdHLvvIwKPiAKPiAKPiBIaSBBbmR5Cj4gCj4gPiBUZXN0ZWQg
b24gdG9wIG9mIExpbnV4IDYuMTItcmM1IHdpdGggcmszNTY2LWJveC1kZW1vIGluIGEgYnVpbGRy
b290ICsgd2VzdG9uIGVudmlyb25tZW50Ogo+ID4gd2VzdG9uIC0tYmFja2VuZD1kcm0tYmFja2Vu
ZC5zbyAtaSAwIC0tY29udGludWUtd2l0aG91dC1pbnB1dAo+ID4gd2VzdG9uLXNpbXBsZS1lZ2wK
PiAKPiAKPiBUaGFuayB5b3UgZm9yIHRlc3RpbmcgaXQhCj4gCj4gPiBzaW1wbGUtZWdsIHdpbGwg
ZHJhdyBhIHRyaWFuZ2xlIG9uIHRoZSBkZXNrdG9wLgo+ID4gQWZ0ZXIgdGhlIHBhdGNoIGFwcGxp
ZWTvvIx0aGUgdHJpYW5nbGUgd2lsbCBmbGlja2VyIGFnYWluIGFuZCBhZ2lhbuOAggo+ID4gU28g
aXQgYnJlYWsgc29tZSBmdW5jdGlvbuOAggo+IAo+IAo+IERpZCB5b3UgaGF2ZSBnYW1tYSBvbj8g
VGhlIHNjcmVlbiBmbGlja2VyZWQgZm9yIG1lIHdoZW4gSSByYW4gc29tZXRoaW5nCj4gd3JpdGlu
ZyBnYW1tYSBMVVQgZnJlcXVlbnRseSBiZWNhdXNlIG9mIGRpc2FibGUgc3RlcCBJIHJlY2tvbi4K
PiAKPiA+IEkndmUgYmVlbiBxdWl0ZSBidXN5IGxhdGVseSwgYW5kIGl0IHdpbGwgdGFrZSBzb21l
IHRpbWUgYmVmb3JlIEkgY2FuIGFuYWx5emUgd2hhdCB0aGUgc3BlY2lmaWMgcmVhc29uIGlzLgo+
IAo+IAo+IE5wLCBJIHdpbGwgdHJ5IHRvIHJlcHJvZHVjZSB0aGlzIGJlaGF2aW9yIHdpdGggd2Vz
dG9uIG9uIFBpbmV0YWIyIGluIHRoZQo+IG1lYW50aW1lLgo+CgpTbyBJIGdvdCB3ZXN0b24gKHZl
cnNpb24gMTMpIGFuZCByYW4gaXQgYXMgeW91IGRpZCwgdGhlbiByYW4gdGhlIHNhbWUKY2xpZW50
LiBOb3RoaW5nIGZsaWNrZXJlZC4gU2luY2Ugd2VzdG9uIGRvZXNuJ3Qgc3VwcG9ydCBnYW1tYSBj
b250cm9sLCBJCnJhbiBzd2F5IGluIHRoZSBvdGhlciB0dHkgYW5kIHNldCBjb2xvciB0ZW1wZXJh
dHVyZSB0aGVyZSB3aXRoIGBnYW1tYXN0ZXAKLU8gMzAwMGAuIFRoZW4gc3dpdGNoZWQgYWdhaW4g
dG8gd2VzdG9uIGFuZCBjb2xvciB0ZW1wLiB3YXNuJ3QgcmV0YWluZWQsCnRyaWFuZ2xlIGRpZG4n
dCBmbGlja2VyLiBUaGVuIEkgcmFuIHdlc3Rvbi1zaW1wbGUtZWdsIHVuZGVyIHN3YXkgKHdoaWxl
CmhhdmluZyBgZ2FtbWFzdGVwYCBydW5uaW5nIGFuZCBkb2luZyBnYW1tYSBsdXQgYWRqdXN0bWVu
dHMgZXZlcnkgfjUKc2Vjb25kcykgYW5kIHRoZSB0cmlhbmdsZSBkaWRuJ3QgZmxpY2tlciB0b28g
KGJ1dCB0aGVyZSB3ZXJlIF9leHBlY3RlZF8KZmxpY2tlcnMgZXZlcnkgfjUgc2Vjb25kcyBiZWNh
dXNlIG9mIGdhbW1hIGFkanVzdG1lbnRzIGJ5IGdhbW1hc3RlcCkuCgpCZXN0IFJlZ2FyZHMsIFBp
b3RyIFphbGV3c2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
