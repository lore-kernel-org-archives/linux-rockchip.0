Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5148AD29FA5
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Nov 2024 23:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4tzm1w9OMn8EgNPKZhN+BlaD3ibFXVp+u1GyZrlGl6I=; b=XlYJk2LQa1sEIN
	cesg4nuNmwDsNLXXlnBN6KojZUGMrdUkhGKQTI8NrXQRsPw9u1JZZwNrj67qk+iRjlAHdYjxr/XkQ
	HoeCP8JOs/G3zG284cQCXlmNpoWx6bzKN3rVRFeKFg2Q1alltHrMd88M0xTly9bxPL98iqCRpECqy
	47rTTZBAGPfOUoR2eqxwK7qcncTCLwHLqTIFnDZYrDSc0Pbq0Y5cdz9iQ5idvhBf/EoWVnDf9HXIO
	lsT+A0FmT40C512n189UQhs7nXL7fT4DvZ13wACVm4m0cFSxFWO5QnGtTjDvAQUHDCB7fCJzOYqnF
	0pXq8lcTZ7dRA+Y0AipA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8p47-00000005069-06hA;
	Wed, 06 Nov 2024 23:03:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8p1b-00000004znb-0cdk;
	Wed, 06 Nov 2024 23:01:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6530E5C4D92;
	Wed,  6 Nov 2024 23:00:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85BCCC4CEC6;
	Wed,  6 Nov 2024 23:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730934077;
	bh=lsZM1OifQMR0Ewkk9yEiN0OytYyrRhK0WgUktu0fm2s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=poBQhvWMcBUshJScA6qi+VoJHKUku76KrYRKcZmXbwDWEI6cPLvtn2nbafsCAIfWB
	 DuVj3zVc2G7Br0OzO5qRRqv/POtgTSYaYVvdwKPgdzzMHbq+mFw2UOso3RuatdyVtJ
	 shgjV94yLZYvIusjXNG1HhfGJBN9CLyhXQ4gpii59YUJramoLURM7WlsZKO1P0Njd0
	 K/xvVc2jxy1KVe6v7eDzmoYY+/OEglKrrzvDhLE+6sNpykrPv3P+UmuGOmZnLs65U7
	 dyjL1VsLLV0yBAknZRA93bx1ZuBGu5itBLLZ9zfn8lW0tgZ/oHnaKDI4Z9rRbqouyF
	 tdvSbC5m97xuQ==
Date: Thu, 7 Nov 2024 00:01:12 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Doug Anderson <dianders@chromium.org>
Cc: Jiasheng Jiang <jiashengjiangcool@gmail.com>, 
	rmk@dyn-67.arm.linux.org.uk, max.schwarz@online.de, david.wu@rock-chips.com, heiko@sntech.de, 
	vz@mleia.com, wsa@kernel.org, manabian@gmail.com, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] i2c: rk3x: Add check for clk_enable()
Message-ID: <fj2vssllh7zgl76a4jfakrcngcflwvqxzwwa2dhpkauli2u7wb@pz23fznmy25e>
References: <20241105161820.32512-1-jiashengjiangcool@gmail.com>
 <20241105161820.32512-3-jiashengjiangcool@gmail.com>
 <CAD=FV=VzqKa=fo4KRw4FSpPcH4mVnt8jBMo=FMzsGkdGrXCfxg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=VzqKa=fo4KRw4FSpPcH4mVnt8jBMo=FMzsGkdGrXCfxg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_150119_257432_F34F4E51 
X-CRM114-Status: GOOD (  23.73  )
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

SGkgRG91ZywKCk9uIFR1ZSwgTm92IDA1LCAyMDI0IGF0IDAxOjI5OjQwUE0gLTA4MDAsIERvdWcg
QW5kZXJzb24gd3JvdGU6Cj4gT24gVHVlLCBOb3YgNSwgMjAyNCBhdCA4OjE44oCvQU0gSmlhc2hl
bmcgSmlhbmcKPiA+IEFkZCBjaGVjayBmb3IgdGhlIHJldHVybiB2YWx1ZSBvZiBjbGtfZW5hYmxl
KCkgaW4gb3JkZXIgdG8gY2F0Y2ggdGhlCj4gPiBwb3RlbnRpYWwgZXhjZXB0aW9uLiBNb3Jlb3Zl
ciwgY29udmVydCB0aGUgcmV0dXJuIHR5cGUgb2YKPiA+IHJrM3hfaTJjX2FkYXB0X2RpdigpIGlu
dG8gaW50IGFuZCBhZGQgdGhlIGNoZWNrLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEppYXNoZW5n
IEppYW5nIDxqaWFzaGVuZ2ppYW5nY29vbEBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+IENoYW5nZWxv
ZzoKPiA+Cj4gPiB2MSAtPiB2MjoKPiA+Cj4gPiAxLiBSZW1vdmUgdGhlIEZpeGVzIHRhZy4KPiA+
IDIuIFVzZSBkZXZfZXJyX3Byb2JlIHRvIHNpbXBsaWZ5IGVycm9yIGhhbmRsaW5nLgo+ID4gLS0t
Cj4gPiAgZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1yazN4LmMgfCA1MSArKysrKysrKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCsp
LCAxNCBkZWxldGlvbnMoLSkKPiAKPiBXb3csIHRoaXMgaXMgYSB3aG9sZSBsb3Qgb2YgY29kZSB0
byBhZGQgdG8gY2hlY2sgZm9yIGFuIGVycm9yIHRoYXQKPiBjYW4ndCByZWFsbHkgaGFwcGVuIGFz
IGZhciBhcyBJJ20gYXdhcmUuIFR1cm5pbmcgb24gYSBjbG9jayBpcyBqdXN0Cj4gc29tZSBNTUlP
IHdyaXRlcyBhbmQgY2FuJ3QgZmFpbCwgcmlnaHQ/IElzIHRoaXMgcmVhbGx5IHdvcnRoIGl0PyBN
YXliZQo+IGp1c3Qgd3JhcCBjbGtfZW5hYmxlKCkgYW5kIHNwYW0gYW4gZXJyb3IgdG8gdGhlIGxv
Z3MgaWYgaXQgZmFpbHM/IElmCj4gd2UgZXZlciBzZWUgdGhhdCBlcnJvciB3ZSBjYW4gZmlndXJl
IG91dCB3aGF0J3MgZ29pbmcgb24gYW5kIGlmCj4gdGhlcmUncyBhIHNlbnNpYmxlIHJlYXNvbiBp
dCBjb3VsZCBmYWlsIHdlIGNvdWxkIGFkZCB0aGUgbW9yZSBjb21wbGV4Cj4gY29kZS4KCldlJ3Zl
IGhhZCB0aGlzIGRpc2N1c3Npb24gc2V2ZXJhbCB0aW1lcy4gSSdtIG9mIHRoZSBzY2hvb2wgdGhh
dAppZiBhIGZ1bmN0aW9uIGNhbiByZXR1cm4gYW4gZXJyb3IsIHRoYXQgZXJyb3Igc2hvdWxkIGJl
IGNoZWNrZWQuCkl0J3Mgbm90IHNwYW0sIHdlIGRvIGl0IGV2ZXJ5d2hlcmUuCgpPbiB0aGUgb3Ro
ZXIgaGFuZCwgdGhlcmUgaXMgYW5vdGhlciBzY2hvb2wsIGJpZ2dlciB0aGFuIG1pbmUsCnRoYXQg
ZG9lc24ndCB3YW50IHN1Y2ggYSBjaGVjay4KCkkgZGVjaWRlZCBub3QgdG8gYm90aGVyLiBJZiBz
b21lb25lIGFkZHMgdGhlIGNoZWNrLCBJJ20gZ29pbmcgdG8KYWNjZXB0IGl0LiBJZiBzb21lb25l
IGRvZXNuJ3QgYWRkIHRoZSBjaGVjaywgSSB3b24ndCBib3RoZXIKYXNraW5nIGZvciBpdC4KClNh
aWQgdGhhdCwgTU1JTyByZWFkcyBhbmQgd3JpdGVzIGNhbiBmYWlsOiBpbiBvdGhlciBkcml2ZXJz
IEknbQpzZWVpbmcgYm9ndXMgcmVhZHMgZHVlIHRvIHNvbWUgZmlybXdhcmUgZmFpbHVyZXMgZHVy
aW5nIGRldmljZQpyZXNldC4KCkkgYWdyZWUgd2l0aCB5b3Ugd2l0aCB0aGUgcmVzdCBvZiB0aGUg
Y29tbWVudHMgYW5kIHRoYW5rcyBmb3IKY2hlY2tpbmcgdGhpcyBvdXQuCgpBbmRpCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
