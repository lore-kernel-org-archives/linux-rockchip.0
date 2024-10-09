Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7A8ECED611
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 23:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1QI/lodb1FMhZg9kgECvthctOnex/VCaVxPDiV2Sd0A=; b=msXftc0E7cPdCD
	o9pxFqRdcydIKQfCPma7wpcewOu6uKoWX0wykiU5dMZRePYrmXfuWOqOpHwwiXlOrM1CEu4JJ3rof
	BVkFBEnJ3iJIklPftE3d5oG9L4LMqipXizinx0/0y7/cF0OMSCL2uqbK3K+v3JGZoOsQbFwczlJQl
	34Vrx4TlPfddKXxGc5QSZQNHRU/LvmABS6xdUmbLDTGJ8fLE6RdTaNXpDdmLTcPNT5NfxOmForZHB
	yiMnY48yezuYnLjYnRG+9/oXAVPiSRhePNf6gAply3LqC8dkHj6d/hstugWXIGVd9UmP6vbvpqsYy
	TvfKNw298V53Qte/NuTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syfip-0000000Azmg-0kt3;
	Wed, 09 Oct 2024 23:03:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syfhS-0000000AzeG-467Q;
	Wed, 09 Oct 2024 23:02:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 02FE65C5E48;
	Wed,  9 Oct 2024 23:02:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4211C4CECE;
	Wed,  9 Oct 2024 23:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728514953;
	bh=7BhRtVer07YSmf3uJk8dkE+ru60nI1c5gbZWmRKLx4U=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=E9j1wj/IK8+zWVsw3GDXc32fzQBV56e6s919r8ISQ7Gxx8Zi29WFJOzG+XEIlfNje
	 gYQbj1E0ZSi3Nk+UOCSGiIdJ2NEwGzL9gfq4p57K9Df1xEPhIHwCLOopfFIVahkuBX
	 9BNTMujE04hylORPvpd8l18Ska1agjNl0mGPYMHy/E8lySPIXjH3inWgLRD/uBNAe5
	 jsH+ZOVPrR7v2vAGPyibHz7BRiN5OKV2yevpdkQickYBoPRKShj1pj+X5eMveFfOFj
	 2+kPOjYJ+Zc/mH9K50VV/mAgr3OZei6nZj1QkaJ0bogpzj4atf3UCtIcgE8skqIxrI
	 FJclfe/LR2xVA==
Message-ID: <6421c16edc9f5f7e7a2d24a17309a69d.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <5815159.DvuYhMxLoT@diego>
References: <20240912133204.29089-2-ziyao@disroot.org> <5815159.DvuYhMxLoT@diego>
Subject: Re: [PATCH] clk: rockchip: fix finding of maximum clock ID
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Yao Zi <ziyao@disroot.org>
To: Heiko =?utf-8?q?St=C3=BCbner?= <heiko@sntech.de>, Michael Turquette <mturquette@baylibre.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Yao Zi <ziyao@disroot.org>
Date: Wed, 09 Oct 2024 16:02:30 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_160235_080601_A30A73D4 
X-CRM114-Status: UNSURE (   9.59  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

UXVvdGluZyBIZWlrbyBTdMO8Ym5lciAoMjAyNC0wOS0xNCAwMjo1NzozNSkKPiBBbSBEb25uZXJz
dGFnLCAxMi4gU2VwdGVtYmVyIDIwMjQsIDE1OjMyOjA1IENFU1Qgc2NocmllYiBZYW8gWmk6Cj4g
PiBJZiBhbiBJRCBvZiBhIGJyYW5jaCdzIGNoaWxkIGlzIGdyZWF0ZXIgdGhhbiBjdXJyZW50IG1h
eGltdW0sIHdlIHNob3VsZAo+ID4gc2V0IG5ldyBtYXhpbXVtIHRvIHRoZSBjaGlsZCdzIElELCBp
bnN0ZWFkIG9mIGl0cyBwYXJlbnQncy4KPiA+IAo+ID4gRml4ZXM6IDJkYzY2YTVhYjJjNiAoImNs
azogcm9ja2NoaXA6IHJrMzU4ODogZml4IENMS19OUl9DTEtTIHVzYWdlIikKPiA+IFNpZ25lZC1v
ZmYtYnk6IFlhbyBaaSA8eml5YW9AZGlzcm9vdC5vcmc+Cj4gCj4gUmV2aWV3ZWQtYnk6IEhlaWtv
IFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gCj4gQFN0ZXBoZW46IGNhbiB5b3UgcHV0IHRo
YXQgb24gdG9wIG9mIHRoZSBvdGhlciBSb2NrY2hpcCBjaGFuZ2VzIGZvciA2LjEyCj4gcGxlYXNl
Pwo+IAoKU29ycnkgSSBtaXNzZWQgdGhpcyBvbmUuIEknbGwgcHV0IGl0IG9uIGNsay1maXhlcy4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
