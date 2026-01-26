Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 426CED13C00
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jan 2026 13:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uebzenRwa3GBPNeKjurznvfA8IViGckbiZ1RGlMNt0=; b=0/q5C1k2TLghC+
	IzT27FTEwT2ss+xKCFPURDRxphyUZJcjOS+jMJPdGfWK4nLCJNxTY4pyBM9CVi4DcH1soX2MW7vsr
	xDHi6ML/yMxlls9xf3PuytCZESq5jCsr/rkrVqsTSSJV8wEPS+44VFdIyBBrIo+2qiB696tiTu0cV
	gpJXwA27gHIZ/PsnaJIPTVAuqUs5Y8MPFqdzNxEPPY9ojis5N8CXZHFhE3IEVUcerxNQ0FHlMyxEV
	1rVdQnms8x7WEebtzzkDLnmtqk7WrMuTj/c1+Z/hC40ZzWCD2Mu/smY3soOcS3rTDEgVGyNXbHNPL
	Pp85EapSCRJVeu295yXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkMxW-0000000CdwB-0pMn;
	Mon, 26 Jan 2026 13:48:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkMxU-0000000Cdvq-2Ept
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Jan 2026 13:48:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AFEA841927
	for <linux-rockchip@lists.infradead.org>; Mon, 26 Jan 2026 13:48:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 917C0C2BCAF
	for <linux-rockchip@lists.infradead.org>; Mon, 26 Jan 2026 13:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769435327;
	bh=YZiBoAKwxUPexmRiPzfvRsMZdbZ7xD4R5JqHHAEqDPM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=KwstrhMiJXG/Z433FNjrW3OybV+DMaz9UuAVHZRhhTnCMeEAr/fFY0oj++gSHkC6g
	 hwKnOVmCfzLqILJqDDUG+pRBg2u1RMPRYwkVjDOPKKj7yOxRcrN1muqEYX7Juv/s2s
	 8IjrW5LtMPcpjtjGo3Cl8ZpWSEx7DyuQPkCgtsayRdDBXviXta3uhCAan/EO5r1kPN
	 20yKvZdpPDiy8SVwRqp/YfozR6DDOTGkIH14/cdj/Xixwxn7qRyIbAhqw0gfbR0PhS
	 bCnmXanDqA0SdlPMGWd7YB9gbbhy75tMlCJ94FYGMvCw8lVHiuNXTtNfndjOfAxAUC
	 zOvuPKZqKUP6Q==
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-59b77f2e43aso6531981e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Jan 2026 05:48:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXpfAcTZduZMO0nTKR6Qivg9Dwvu2GNhWELuqnf/p0PG9XtxQEYRl+8iQdk5lJYyCDZenAosK1MuxUdcWiLXQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwcC+lqwMvc1N3HjDPhWdowXhDJ4GHP7cUOvXRIK+dnC63gk7Ny
	QgK3ECLUac/LGq4U0us0mXcBShJvoDrpAcJLuat0lBGxSU9lymO4Ri6AaaibaSmbEbDHCIWM0gY
	r/BVHMm9Xz/q+4I+wZznyZxy/vqcM4YYvHIf8eLgskQ==
X-Received: by 2002:a05:6512:224e:b0:59d:db30:8848 with SMTP id
 2adb3069b0e04-59df3608e97mr1612684e87.16.1769435326203; Mon, 26 Jan 2026
 05:48:46 -0800 (PST)
MIME-Version: 1.0
References: <bddc0469f25843ca5ae0cf578ab3671435ae98a7.1769429546.git.robin.murphy@arm.com>
In-Reply-To: <bddc0469f25843ca5ae0cf578ab3671435ae98a7.1769429546.git.robin.murphy@arm.com>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Mon, 26 Jan 2026 14:48:33 +0100
X-Gmail-Original-Message-ID: <CAMRc=MfQCrhgv7DcWrr3TWe8DtpZSRrkxb5KDHsGq1jPjUAHww@mail.gmail.com>
X-Gm-Features: AZwV_QjNZHR2bvqedgSwwPYoVFPn0kS27NdFWXw0akxEKyqmIJSBPYeJs72yKbU
Message-ID: <CAMRc=MfQCrhgv7DcWrr3TWe8DtpZSRrkxb5KDHsGq1jPjUAHww@mail.gmail.com>
Subject: Re: [PATCH] gpio/rockchip: Stop calling pinctrl for set_direction
To: Robin Murphy <robin.murphy@arm.com>, linusw@kernel.org
Cc: heiko@sntech.de, sebastian.reichel@collabora.com, m.szyprowski@samsung.com, 
	linux-rockchip@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_054848_600570_47153D7F 
X-CRM114-Status: GOOD (  11.66  )
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

T24gTW9uLCBKYW4gMjYsIDIwMjYgYXQgMToxMuKAr1BNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVy
cGh5QGFybS5jb20+IHdyb3RlOgo+Cj4gTWFya2luZyB0aGUgd2hvbGUgY29udHJvbGxlciBhcyBz
bGVlcGluZyBkdWUgdG8gdGhlIHBpbmN0cmwgY2FsbHMgaW4gdGhlCj4gLmRpcmVjdGlvbl97aW5w
dXQsb3V0cHV0fSBjYWxsYmFja3MgaGFzIHRoZSB1bmZvcnR1bmF0ZSBzaWRlIGVmZmVjdCB0aGF0
Cj4gbGVnaXRpbWF0ZSBpbnZvY2F0aW9ucyBvZiAuZ2V0IGFuZCAuc2V0LCB3aGljaCBjYW5ub3Qg
dGhlbXNlbHZlcyBzbGVlcCwKPiBpbiBhdG9taWMgY29udGV4dCBub3cgc3BldyBXQVJOKClzIGZy
b20gZ3Bpb2xpYi4KPgo+IEhvd2V2ZXIsIGFzIEhlaWtvIHBvaW50cyBvdXQsIHRoZSBkcml2ZXIg
ZG9pbmcgdGhpcyBpcyBhIGJpdCBzaWxseSB0bwo+IGJlZ2luIHdpdGgsIGFzIHRoZSBwaW5jdHJs
IC5ncGlvX3NldF9kaXJlY3Rpb24gaG9vayBkb2Vzbid0IGV2ZW4gY2FyZQo+IGFib3V0IHRoZSBk
aXJlY3Rpb24sIHRoZSBob29rIGlzIG9ubHkgdXNlZCB0byBjbGFpbSB0aGUgbXV4LiBBbmQgc3Vy
ZQo+IGVub3VnaCwgdGhlIC5ncGlvX3JlcXVlc3RfZW5hYmxlIGhvb2sgZXhpc3RzIHRvIHNlcnZl
IHRoaXMgdmVyeSBwdXJwb3NlLAo+IHNvIHN3aXRjaCB0byB0aGF0IGFuZCByZW1vdmUgdGhlIHBy
b2JsZW1hdGljIGJ1c2luZXNzIGVudGlyZWx5Lgo+Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5v
cmcKPiBGaXhlczogMjBjZjJhZWQ4OWFjICgiZ3Bpbzogcm9ja2NoaXA6IG1hcmsgdGhlIEdQSU8g
Y29udHJvbGxlciBhcyBzbGVlcGluZyIpCj4gU3VnZ2VzdGVkLWJ5OiBIZWlrbyBTdHVlYm5lciA8
aGVpa29Ac250ZWNoLmRlPgo+IFNpZ25lZC1vZmYtYnk6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVy
cGh5QGFybS5jb20+Cj4gLS0tCgpMaW51cywKCldpdGggeW91ciBBY2sgSSBjYW4gcXVldWUgdGhp
cyBmb3IgdjYuMTktcmM4LgoKQmFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
