Return-Path: <SRS0=Zsw1=PI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45E06C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 15:33:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0575061373
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 15:33:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0575061373
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHYQ1L2p0Y3i204PKDoPHUxAUmBDBBpeYjeielooyJs=; b=dmEU0kM23pvYQG
	57yrA1y6xOfl/Uf6Dem7n5fjCAxrvyc6rIRCoAkA0RGEI6dNl2rI9zbuxYyBCvvSZiMM7l6KHmsx+
	STtZqaidO5/joK4n2IMTVaSiRT6Vu3s6OI0jhfyNQVqs4YU4aaddpPViQhQdgdiJMqB7sTiujw+0F
	I7NRkeTHka0cl+HsyB9oNYE+K5wb2BT7KcMoep2AhUy4G3SaQ1y9NbL+RCJtihF+PTSRjeNDjsTQU
	cT3wyDX/XYfY8dt0Wht/VBdJhTx9dUcixle3Kahw82eiiCEOYziQvqtLUQuWU7a//At1NhYsuLT4R
	+5cKq3A+kN5DyeJkgQvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdDar-0053wq-MS; Wed, 20 Oct 2021 15:33:29 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdDV3-00515M-2m
 for linux-rockchip@lists.infradead.org; Wed, 20 Oct 2021 15:27:30 +0000
Received: by mail-ed1-x531.google.com with SMTP id z20so27487227edc.13
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Oct 2021 08:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=FULRWRoy+gFirZw/mkbBQ8q4cmksOwfrZ4guTg9Tl+U=;
 b=nex+L4XOCZL4tbASApL9Xuh4hwhhgN1r2dNtvKsccumvMfzlzHnB2ya0gT4hvAjmJw
 827pqm61slx4Acel7pjiOYQkc0mxObWKMnil/93jtkCedlJqgTVxNTzG0WHAzbSOonSV
 7BF4MCRJ/Dhap6Lr3BFTVT+PmXLV4HSgBvffAWLtkf+rUI3EFJF3jeyDyXgBpnEXeCVu
 Je1YBGxaTJRDbeTsBbVOun+xNeH1HMeqinOjh0PIL5+IqSkV1H8d6y/8G3g64ARjkhOc
 P01A37usngGKNmDkVoWSerl3pLBKsR9C7A7rmfrC9t6dGnsI0b9DLkx0lnFZXhwlSZlX
 FzGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FULRWRoy+gFirZw/mkbBQ8q4cmksOwfrZ4guTg9Tl+U=;
 b=hyGPu3qmBUKliyrtVRYpLXEySCOEqn9j0qnaxqe4z5m9FYSYeDPUzAx/HM3KLhXD0X
 OWPPbMcvIWDXchyGal93D2NR6KqM7xAERRGCHVsbycPr6L2XwpQnZdewwGDl+6QPzggB
 lid4agNKHWvrapBRzLlNjjGAmdlt0I5wfNrPh+wBJfuRMrOWdHUkQT5l/DcPKks/xtlY
 +pKzHX83lSZBZfhKmgpFUc4nxXHTC4ZHVDtIZG6Rnw/IRm7/q5sQ5sDOOrkDriJ67t4m
 i7BCLoebyo00biPEDvpdZs9Jtgu6QGprHFjRMZ73mrAd5aH7IYFW3LhYYuLv7dG1wI93
 t3tQ==
X-Gm-Message-State: AOAM532rTVIpOX/6li9DeehSiAClwWzDWneoJrk7rWlB1nHg2AEmz92O
 zvrr59vL68LPomTmvy2qzJEHSjg3/x0Yk82h51DE1A==
X-Google-Smtp-Source: ABdhPJynf5WOUxsBGg41X8Q4IxKp7op0CxQNUvHHG1TjyFF9SWSPhrPl3auMquoy9cL8gXK7A2UEISMfsGVCy9cAOqw=
X-Received: by 2002:a17:906:e011:: with SMTP id
 cu17mr21963ejb.244.1634743552270; 
 Wed, 20 Oct 2021 08:25:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210929160439.6601-1-andrzej.p@collabora.com>
 <11847752.O9o76ZdvQC@kista>
 <CAAEAJfBYwbUrjUFvs70u8YkuBgrCK6LuYdT9Y2Om7OLo6_cV1g@mail.gmail.com>
 <4350097.LvFx2qVVIh@kista>
In-Reply-To: <4350097.LvFx2qVVIh@kista>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Wed, 20 Oct 2021 12:25:40 -0300
Message-ID: <CAAEAJfDkOUp_kzrR-eAUiwO4EGHcuQVpCxBJwJr5_pZZqr-xwg@mail.gmail.com>
Subject: Re: Re: Re: [PATCH v7 11/11] media: hantro: Support NV12 on the G2
 core
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc: linux-media <linux-media@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>, 
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Boris Brezillon <boris.brezillon@collabora.com>,
 Fabio Estevam <festevam@gmail.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Heiko Stuebner <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_082729_151454_D86E9B87 
X-CRM114-Status: GOOD (  36.63  )
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

T24gV2VkLCAyMCBPY3QgMjAyMSBhdCAxMjowNCwgSmVybmVqIMWga3JhYmVjIDxqZXJuZWouc2ty
YWJlY0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gRG5lIHNyZWRhLCAyMC4gb2t0b2JlciAyMDIxIG9i
IDEzOjA2OjU5IENFU1QgamUgRXplcXVpZWwgR2FyY2lhIG5hcGlzYWwoYSk6Cj4gPiBIaSBKZXJu
ZWosCj4gPgo+ID4gT24gVHVlLCAxOSBPY3QgMjAyMSBhdCAxMzozOCwgSmVybmVqIMWga3JhYmVj
IDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+Cj4gd3JvdGU6Cj4gPiA+Cj4gPiA+IEhpIEFuZHJ6
ZWohCj4gPiA+Cj4gPiA+IERuZSBwZXRlaywgMTUuIG9rdG9iZXIgMjAyMSBvYiAxOToxOTo0NyBD
RVNUIGplIEFuZHJ6ZWogUGlldHJhc2lld2ljego+ID4gPiBuYXBpc2FsKGEpOgo+ID4gPiA+IEhp
IEplcm5laiwKPiA+ID4gPgo+ID4gPiA+IFcgZG5pdSAxNC4xMC4yMDIxIG8gMTk6NDIsIEplcm5l
aiDFoGtyYWJlYyBwaXN6ZToKPiA+ID4gPiA+IEhpIEFuZHJ6ZWohCj4gPiA+ID4gPgo+ID4gPiA+
ID4gRG5lIHNyZWRhLCAyOS4gc2VwdGVtYmVyIDIwMjEgb2IgMTg6MDQ6MzkgQ0VTVCBqZSBBbmRy
emVqCj4gUGlldHJhc2lld2ljego+ID4gPiA+ID4gbmFwaXNhbChhKToKPiA+ID4gPiA+PiBUaGUg
RzIgZGVjb2RlciBibG9jayBwcm9kdWNlcyBOVjEyIDR4NCB0aWxlZCBmb3JtYXQgKE5WMTJfNEw0
KS4KPiA+ID4gPiA+PiBFbmFibGUgdGhlIEcyIHBvc3QtcHJvY2Vzc29yIGJsb2NrLCBpbiBvcmRl
ciB0byBwcm9kdWNlIHJlZ3VsYXIgTlYxMi4KPiA+ID4gPiA+Pgo+ID4gPiA+ID4+IFRoZSBsb2dp
YyBpbiBoYW50cm9fcG9zdHByb2MuYyBpcyBsZXZlcmFnZWQgdG8gdGFrZSBjYXJlIG9mCj4gYWxs
b2NhdGluZwo+ID4gPiA+ID4+IHRoZSBleHRyYSBidWZmZXJzIGFuZCBjb25maWd1cmUgdGhlIHBv
c3QtcHJvY2Vzc29yLCB3aGljaCBpcwo+ID4gPiA+ID4+IHNpZ25pZmljYW50bHkgc2ltcGxlciB0
aGFuIHRoZSBvbmUgb24gdGhlIEcxLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFF1aWNrIHN1bW1hcnkg
b2YgZGlzY3Vzc2lvbiBvbiBMaWJyZUVMRUMgU2xhY2s6Cj4gPiA+ID4gPiBXaGVuIHVzaW5nIE5W
MTIgZm9ybWF0IG9uIEFsbHdpbm5lciBINiB2YXJpYW50IG9mIEcyIChuZWVkcyBzb21lCj4gZHJp
dmVyCj4gPiA+ID4gPiBjaGFuZ2VzKSwgSSBnZXQgZnJhbWVzIG91dCBvZiBvcmRlci4gSWYgSSB1
c2UgbmF0aXZlIE5WMTIgdGlsZWQKPiBmb3JtYXQsCj4gPiA+IGZyYW1lcwo+ID4gPiA+ID4gYXJl
IG9yZGVyZWQgY29ycmVjdGx5Lgo+ID4gPiA+ID4KPiA+ID4gPiA+IEN1cnJlbnRseSBJJ20gbm90
IHN1cmUgaWYgdGhpcyBpcyBpc3N1ZSB3aXRoIG15IGNoYW5nZXMgb3IgaXMgdGhpcwo+IGdlbmVy
YWwKPiA+ID4gPiA+IGlzc3VlLgo+ID4gPiA+ID4KPiA+ID4gPiA+IEkgd291bGQgYmUgZ3JhdGVm
dWwgaWYgYW55b25lIGNhbiB0ZXN0IGZyYW1lIG9yZGVyIHdpdGggYW5kIHdpdGhvdXQKPiA+ID4g
PiA+IHBvc3Rwcm9jZXNzaW5nIGVuYWJsZWQgb24gaW14OC4gVGFrZSBzb21lIGR5bmFtaWMgdmlk
ZW8gd2l0aCBhIGxvdCBvZgo+ID4gPiBzaG9ydAo+ID4gPiA+ID4gc2NlbmVzLiBJdCdzIHByZXR0
eSBvYnZpb3VzIHdoZW4gZnJhbWVzIGFyZSBvdXQgb2Ygb3JkZXIuCj4gPiA+ID4gPgo+ID4gPiA+
Cj4gPiA+ID4gSSBjaGVja2VkIG9uIGlteDggYW5kIGNhbm5vdCBvYnNlcnZlIGFueSBzdWNoIGFy
dGlmYWN0cy4KPiA+ID4KPiA+ID4gSSBmaW5hbGx5IGZvdW5kIHRoZSBpc3N1ZS4gQXMgeW91IG1l
bnRpb25lZCBvbiBTbGFjaywgcmVnaXN0ZXIgd3JpdGUgb3JkZXIKPiBvbmNlCj4gPiA+IGFscmVh
ZHkgYWZmZWN0ZWQgZGVjb2RpbmcuIFdlbGwsIGl0J3MgdGhlIGNhc2UgYWdhaW4uIEkgbWFkZSBo
YWNreSB0ZXN0IGFuZAo+ID4gPiBtb3ZlZCBwb3N0cHJvYyBlbmFibGUgY2FsbCBhZnRlciBvdXRw
dXQgYnVmZmVycyBhcmUgc2V0IGFuZCBpdCB3b3JrZWQuIFNvLAo+IHRoaXMKPiA+ID4gaXMgYWN0
dWFsbHkgY29yZSBxdWlyayB3aGljaCBpcyBvYnZpb3VzbHkgZml4ZWQgaW4gbmV3ZXIgdmFyaWFu
dHMuCj4gPiA+Cj4gPgo+ID4gVWdoLCBnb29kIGNhdGNoLgo+ID4KPiA+IFdoYXQgaGFwcGVucyBp
ZiB5b3UgbW92ZSBhbGwgdGhlIGNhbGxzIHRvIEhBTlRST19QUF9SRUdfV1JJVEVfUwo+ID4gKEhB
TlRST19QUF9SRUdfV1JJVEUgZG9lcyBhIHJlbGF4ZWQgd3JpdGUpPwo+ID4KPiA+IE9yIHdoYXQg
aGFwcGVucyBpZiB0aGUgSEFOVFJPX1BQX1JFR19XUklURSh2cHUsIG91dF9sdW1hX2Jhc2UsIGRz
dF9kbWEpCj4gPiBpcyBtb3ZlZCB0byBiZSBkb25lIGFmdGVyIGFsbCB0aGUgb3RoZXIgcmVnaXN0
ZXJzPwo+Cj4gVGhvc2UgdHdvIG1hY3JvcyBhcmVuJ3QgdXNlZCBvbiBHMi4gQW5kcnplaiBpbnRy
b2R1Y2VkIG5ldyBwb3N0cHJvYyBoZWxwZXJzCj4gZm9yIEcyLgo+CgpBaCwgc28gdGhlIGlzc3Vl
IGlzIHNwZWNpZmljIG9uIHRoZSBHMiBwb3N0LXByb2Nlc3Nvci4KCj4gVGhpcyBjb21taXQgc29s
dmVzIGlzc3VlIGZvciBINjoKPiBodHRwczovL2dpdGh1Yi5jb20vamVybmVqc2svbGludXgtMS9j
b21taXQvCj4gYTc4M2E5NzdjMDg0M2JiNGI1NTVkYzlkMGI1ZDY0OTE1Y2QyMTllNwo+CgpSaWdo
dCwgYnV0IHNlZSB0aGlzIGNvbW1lbnQ6CgogICAgLyogVHVybiBvbiBwaXBlbGluZSBtb2RlLiBN
dXN0IGJlIGRvbmUgZmlyc3QuICovCiAgICBIQU5UUk9fUFBfUkVHX1dSSVRFX1ModnB1LCBwaXBl
bGluZV9lbiwgMHgxKTsKCkkgaGF2ZSB2YWd1ZSByZWNvbGxlY3Rpb24gb2Ygd2h5IHdlIGhhdmUg
dGhhdCBjb21tZW50LApidXQgSSdtIHJlbHVjdGFudCB0byBtb3ZlIHBvc3QtcHJvYyBlbmFibGUg
dG8gdGhlIGVuZC4KKG9yIGF0IGxlYXN0IG5vdCBkbyBpdCBvbiBHMT8pLgoKPiA+Cj4gPiA+IFRo
aXMgbWFrZXMgdGhpcyBzZXJpZXMgd2l0aCBtaW5vciBhZGFwdGF0aW9ucyBjb21wbGV0ZWx5IHdv
cmtpbmcgb24gSDYuIEkKPiBzZWUKPiA+ID4gbm8gcmVhc29uIG5vdCB0byBtZXJnZSB3aG9sZSBz
ZXJpZXMuCj4gPiA+Cj4gPgo+ID4gRG8geW91IGhhdmUgcGxhbnMgdG8gc3VibWl0IHlvdXIgSDYg
d29yayBvbiB0b3Agb2YgdGhpcz8KPgo+IE9mIGNvdXJzZSwgd2h5IHdvdWxkIEkgd29yayBvbiB0
aGlzIG90aGVyd2lzZT8gOikgQnV0IGJlZm9yZSBJIGRvIHRoYXQsIEkgaGF2ZQo+IHRvIGNsZWFu
IHVwIGFuZCBzcGxpdCBvbmUgY29tbWl0LCB3aGljaCBhZGFwdHMgVlA5IEcyIGNvZGUgZm9yIEg2
IHZhcmlhbnQuCj4KCk9LLCBzb3VuZHMgZ29vZC4KCj4gSWYgeW91J3JlIGludGVyZXN0ZWQgaW4g
Y2hhbmdlcywgdGFrZSBhIGxvb2sgaGVyZToKPiBodHRwczovL2dpdGh1Yi5jb20vamVybmVqc2sv
bGludXgtMS9jb21taXRzL3ZwOQo+CgpXaWxsIHRha2UgYSBsb29rLgoKVGhhbmtzLApFemVxdWll
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
