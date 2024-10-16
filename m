Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35DD0D2A541
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 19:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgFEAD/x4mCnZiiXYz2WKUr49MIrxl1iRX87OaKIY6g=; b=Ve1wd5e80Y7u5h
	sQpFva0ZxSG1LcJZeoLQV/leLKjZQ2zez0nEsAHI0tVmJqK5CAvug36O8OWcsvz+gWhR55H2oNKfb
	CBiseMkvcMaNu9ZqTPXDPNGsThEYjnTQqRkdkk+HQrz9ikGPSPAy1MD5tWj/Sx/6zvCsKxnMJkK58
	qf7HudqF+FUFnvKk6ALPYqcML5Nj6XJxPgDNtyeY5ok6n1t8mCp2k62aeEDFefojkvlNoSEVUB4M9
	yowpYdwWAIaNdqV5u6jimYfgKnQOKSkzE03GD5q1Q9MtZKDh2sSHM03C6eRCWGbZL/KdxRkTEG1wv
	wqhAwioZAG5KGuiQLgHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t19aB-0000000Cmyk-1w9n;
	Wed, 16 Oct 2024 19:21:19 +0000
Received: from mail-4316.protonmail.ch ([185.70.43.16])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t19Y7-0000000CmiE-08du;
	Wed, 16 Oct 2024 19:19:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=bylu2pig5vgtbgkyzos4fvvlim.protonmail; t=1729106348; x=1729365548;
	bh=VokmqUex0gxEbClNcfMI1HcrZ3mz/pDmExmI02fcrHU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=es/QFLE+trj1jXjWwLbJDsxsgI6ZpXekFOwUB1GMPjFzmxT/lMlj5WU5LusWoHXSO
	 a4e1S8jOD+75MoYRIC4FnwAc/TL/K72JOgBs1DhuH+LO7uDKTRHjCb1XWDWOzvxnSy
	 V4pARN5UhVZjSQy+3HEVoyr22Kh8i5gEmLohrBQekUv6jVnOajDkY0o1KDIdfehT04
	 AjwkY16weo6/bzFDXceDOtu2A+Gx9zDvou/+hFrg5gPq8TRdSTw+7JdX1PpZPBvzDG
	 bAGQjHey8YX0i8uEquxoRlM1I/ATn3R8Q7ZblplwlKCN96NvPrifWeiOjVNAjvJbA3
	 2hG6WQIa2FNdw==
Date: Wed, 16 Oct 2024 19:19:05 +0000
To: Daniel Stone <daniel@fooishbar.org>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: Andy Yan <andyshrk@163.com>, hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re: Re:Re:[PATCH v5] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <kYKfHO8oonY1wP8ZvanmTnvgjGfw0uek8cmMIV99Bc6zO3EE32B2LKaypAphAxVJKx2I-Lnd3CzvyTRVAaM4xhj75z7dOzlp7xPMlFQKRN0=@proton.me>
In-Reply-To: <CAPj87rOmPyat12S4WUixiUBAsuAEEbyNX5VY2JS+wn5a1jux0A@mail.gmail.com>
References: <20241014222022.571819-4-pZ010001011111@proton.me> <7b45f190.452f.1928e41b746.Coremail.andyshrk@163.com> <o_Cyz_ARcHj4zNlovv75MBwslIRhn3YWlscoNrlpLVobh7eWIMEQR5bNv0yhHx2KEx_gbYi_gH-8Y-CdvRZs9lZscz3-lhAbM50GXUdtSKY=@proton.me> <30940542.b36d.19290215124.Coremail.andyshrk@163.com> <1974DYrs9gLrQrZ5VwCglFgKDDK686iyqnS_g6uPB-s9wZ_4CqfZXPjmYWihLgrkRu7ptNjpkFeqB0uTt73RFId6cL8FowQ8LFltPmaKCoI=@proton.me> <1ae9f15d.e52.19292e05e73.Coremail.andyshrk@163.com> <CAPj87rOmPyat12S4WUixiUBAsuAEEbyNX5VY2JS+wn5a1jux0A@mail.gmail.com>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: e2497491b4b02a9caaaac23dabf6ca08f7b82d0a
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_121911_698604_4C1105B6 
X-CRM114-Status: GOOD (  18.61  )
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

SGkgRGFuaWVsLAoKT24gV2VkbmVzZGF5LCBPY3RvYmVyIDE2dGgsIDIwMjQgYXQgMjoyNyBQTSwg
RGFuaWVsIFN0b25lIDxkYW5pZWxAZm9vaXNoYmFyLm9yZz4gd3JvdGU6Cgo+IEhpIGFsbCwKPgo+
IE9uIFdlZCwgMTYgT2N0IDIwMjQgYXQgMDI6MTEsIEFuZHkgWWFuIGFuZHlzaHJrQDE2My5jb20g
d3JvdGU6Cj4KPiA+IEF0IDIwMjQtMTAtMTYgMDQ6MTM6NDAsICJQaW90ciBaYWxld3NraSIgcFow
MTAwMDEwMTExMTFAcHJvdG9uLm1lIHdyb3RlOgo+ID4KPiA+ID4gT2sgSSBnZXQgaXQgbm93LiBJ
cyBzdWNoIHJld29yayBjb3JyZWN0PyAtIHdoZW4gZ2FtbWEgTFVUIGZvciByazM1NnggaXMKPiA+
ID4gYmVpbmcgc2V0LCBpbnN0ZWFkIG9mIGRpc2FibGluZyB0aGUgTFVUIGJlZm9yZSB0aGUgZ2Ft
bWEgTFVUIHdyaXRlIGZvciB0aGUKPiA+ID4gY3VycmVudCBDUlRDJ3MgdmlkZW8gcG9ydCwgYWN0
aXZlIHZpZGVvIHBvcnQgaXMgc2VsZWN0ZWQuIFNlbGVjdGlvbiBpcwo+ID4gPiBiYXNlZCBvbiBp
ZiBEU1AgTFVUIEVOIGJpdCBpcyBzZXQgZm9yIHBhcnRpY3VsYXIgdmlkZW8gcG9ydC4gZWc6Cj4g
Pgo+ID4gSWYgdGhlIHVzZXJzcGFjZSB3YW50IHRvIHNldCBnYW1tYSBmb3IgQ1JUQ3gsIHRoZW4g
dGhhdCBpcyBpbmRlZWQgd2hlcmUgdGhleSB3YW50IHRvIHNldCB0aGUKPiA+IGdhbW1hIG9u44CC
VGhlIGRyaXZlciBzaWxlbnRseSBzZXRzIHRoZSBnYW1tYSBvbiBhbm90aGVyIENSVEMsIHdoaWNo
IGlzIG5vdCB3aGF0IHRoZSB1c2VyIHdhbnRzLgo+ID4KPiA+IEkgdGhpbmsgdGhlcmUgYXJlIHR3
byBvcHRpb25z77yaCj4gPiDvvIgx77yJcmV0dXJuIGEgZXJyb3IgaWYgZ2FtbWEgaXMgZW5hYmxl
IG9uIG90aGVyIENSVEPvvIwgdGhpcyBpcyB3aGF0IHdlIGRvbmUgaW4gb3VyIEJTUCBjb2RlWzFd
Cj4gPiAoMikgZGlzYWJsZSB0aGUgZHNwX2x1dCBvbiBwcml2aW91cyBDUlRDLCB0aGVuIHN3aXRj
aCB0byB0aGUgY3VycmVudCBDUlRDIHdoaWNoIHVzZXJzcGFjZSB3YW50cy4KPgo+Cj4gMSBpcyB0
aGUgb25seSBzb2x1dGlvbiB0aGF0IGNhbiB3b3JrLiBTaWxlbnRseSBjaGFuZ2luZyB0aGUgY29s
b3VyCj4gcHJvcGVydGllcyBvZiBhIHNlcGFyYXRlIENSVEMgaXMgbm90IE9LLCBzaW5jZSB0aGlz
IGNhbiBsZWFkIHRvCj4gZGlzcGxheWluZyBpbmNvcnJlY3QgY29udGVudC4KCk9rIHJpZ2h0IGtl
cm5lbCBrZWVwcyB0cmFjayBvZiB0aGUgc3RhdGUgYW5kIHNlZXMgZ2FtbWEgYXMgZW5hYmxlZCBl
dmVuIGlmIApkc3AgbHV0IGVuIGJpdCB3YXMgY2xlYXJlZC4KCldvdWxkIGl0IGJlIGJldHRlciB0
byBjaGVjayBpZiBnYW1tYSBpcyBhbHJlYWR5IGVuYWJsZWQgb24gYW5vdGhlciBDUlRDIGluIAph
dG9taWNfY2hlY2sgcmF0aGVyIHRoYW4gYXRvbWljX2JlZ2luL2F0b21pY19mbHVzaCAoYW5kIHNp
bGVudGx5IGZhaWwpIGxpa2UKaW5bMV0/CgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL2FybWJpYW4v
bGludXgtcm9ja2NoaXAvYmxvYi9yazM1NzYtNi4xLWRldi0yMDI0XzA0XzE5L2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jI0wzNjY2CgpCZXN0IHJlZ2FyZHMsIFBp
b3RyIFphbGV3c2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
