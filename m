Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84451C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jan 2022 15:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7YBgKIxXgbBFkc6+Q37A9MR6WLioF6opYBGvysN+2s=; b=42nVd9yzlE6UjB
	z8+JLJ5MofO/8fevYEH0NaixkdnUU5YYOjfseVZxYkJWZEmV5CepcJBUbWuMK/iEs4RMT2mBw6KF4
	DGwkZSUtaGOXoAjXvzZAg87NiyIPM2fyq4QazdN4/pD/RcrRCYxAW3R4kGQi40s2nNyqiTv6QR1Vd
	BklCpmzGD3XCt/nMApGB/15ARSy0PE3/1/RO7HtEMi7LTogG9rYW3Bw/S05BczawmHAoQE6Q0Gd7E
	2TAxUbuIF1MjMabuGmOk/2FieiX6uIMMgIwd3NGH/oZTL9idKv9RCxT8eiD6f4AuUiE1InR0SGzyK
	HxYEFqTtHkO9vhYZ2tNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAw50-00FVGO-Nb; Fri, 21 Jan 2022 15:43:58 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAw4o-00FVFI-Qw; Fri, 21 Jan 2022 15:43:48 +0000
Received: by mail-lf1-x129.google.com with SMTP id u6so2976557lfm.10;
 Fri, 21 Jan 2022 07:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0IQlKjnnKeNHzaC+tXi/PTRE2Oz7fqwhjlXjoMrnJzs=;
 b=hTsh8w4JEfQxMuE1YG5sEQ6WWb3ORoeadqwCS1bbOYNIa6qA9iXfxL+y4wcJeP/EzI
 Wj0kQ8pOK+I+yE0Togpo5Um6XSGBAeApogCY691ywwhhOYv87/2ZswD46USxCJ29lvq4
 5tbE7mdv9oU4lvyrwzuhiJWI82a8kNS9iDGUe3io1IyyMnQXRH8qGGuJQcxzE3CztfjX
 Ara2HUFQkEV0PchizcDF4EK1/aZSsEWyUimxQWc3I69CRFapTCc/yceYmF0NHLMI+TME
 WDft1x1OodIUA6IlaYf25vOhlsTJEdjZme6LLST14LXCfHJqtQNFwXRLt6Gll5KfqoXS
 zlSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0IQlKjnnKeNHzaC+tXi/PTRE2Oz7fqwhjlXjoMrnJzs=;
 b=MZmu79rk7c3THEBdRtKDK+jpa3MsqmZ20fz5NlZlO39Zda4vsujOB5OxKrpEysXAUW
 h7tbMYYi7nFT1c5ScwBRStpScI6dBEaj9ipTdEVMxf6W4MWlvn7UgnaPdZh5Cp6ZE6bm
 GtJeRZ9T9aXWs/CPVWm6j/rOMAS1cUFC4ic6x9Y5ZJhLRSgSX43TUFNxezU/jk9yC+XT
 dQND1XSK5CP0JCbic3vreuR8SEasj/lpXWgkqDqTlPElUJ+EEwnlsTaEUKJGxxJ4pgiD
 DzyZxYLFrEqwn/vi3iARraJOR2CMluAaEgXQd6nlkGu25Bb9UExTOGN+7zMjzFii+C5g
 iGJQ==
X-Gm-Message-State: AOAM5337Tzm45mUs/A/Qrc0RIIOKj4Av4A2uv6EDtHsFLsxFJH+4ZiM2
 GIuFTMsFJ4rZJFn9e+LAg90=
X-Google-Smtp-Source: ABdhPJzHH+Dty7JNy7NWcmObRj9g7VPT34BQZJ46+jLYh36xPQfXtg307iHEs6dE/6zi4OGBXGkMew==
X-Received: by 2002:a05:6512:1093:: with SMTP id
 j19mr4019418lfg.360.1642779824476; 
 Fri, 21 Jan 2022 07:43:44 -0800 (PST)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id s10sm287569lfb.248.2022.01.21.07.43.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jan 2022 07:43:43 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v3 00/22] drm/rockchip: RK356x VOP2 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220121103245.GT23490@pengutronix.de>
Date: Fri, 21 Jan 2022 16:43:41 +0100
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 linux-rockchip@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Message-Id: <44C87C12-A194-4AC8-922B-C4C215474AC9@gmail.com>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <AA3A26CB-6282-4A6B-99DC-8042DC8926BB@gmail.com>
 <20220121103245.GT23490@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220121_074346_896856_E565B6B0 
X-CRM114-Status: GOOD (  15.79  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5n
dXRyb25peC5kZT4gdyBkbml1IDIxLjAxLjIwMjIsIG8gZ29kei4gMTE6MzI6Cj4gCj4+IAo+PiAx
LiBob3cgc3VwcG9ydCBmb3IgQ0VDIGxvb2tzL3Byb3NwZWN0cyAocGxhbnMgZm9yIGZ1dHVyZSwg
bm90IGluIHRoaXMgY29kZSwgZXhwZWN0aW5nIG90aGVycyBzaG91bGQgaW1wbGVtZW50LCBldGMp
Pwo+IAo+IEkgaGFkIHRvIGdvb2dsZSB3aGF0IENFQyBhY3R1YWxseSBpcy4gV2UgZG9uJ3QgaGF2
ZSBwbGFucyBzdXBwb3J0aW5nIGl0Lgo+IEl0IGxvb2tzIGxpa2UgdGhpcyBpcyBhIG1hdHRlciBv
ZiB0aGUgSERNSSBkcml2ZXIgc3VwcG9ydGluZyB0aGlzIGFuZAo+IG5vdCBib3VuZCB0byB0aGUg
cm9ja2NoaXAgZHJpdmVyLgoKQWggb2suIHN1cmUuIGdvdCBpdCEKKEkgYXNrZWQgYXMgUm9ja2No
aXAgaGRtaSBkcml2ZXIgYWxyZWFkeSB3ZWxsIHN1cHBvcnRzIENFQyAtIHNvIGkgd2FzIHRoaW5r
aW5nIG9uIHJrMzU2NiB0aGlzIGlzIG1vcmUgb2YgZW5hYmxpbmcgdGhhbiB3cml0aW5nIHN1cHBv
cnQgY29kZSkuCgo+IFlvdSBlbmFibGVkIHRoZSBwYW5mcm9zdCBkcml2ZXIgd2l0aCBvdGhlciBw
YXRjaGVzLCByaWdodD8KCk9oIC0gaSB3YXNuJ3QgYXdhcmUgYW55IHBhdGNoZXMgYXJlIG5lZWRl
ZCBmb3IgTWVzYSBmb3IgcmszNTY2Li4uLgpJZiBzbyAtIG1heSB5b3UgcGxzIHBvaW50IG1lIGZv
ciBsYXRlc3QvY29ycmVjdCBwYXRjaGVzIGZvciByazM1NjY/IAoKPiAKPj4gCj4+IDMuIGluIGtl
cm5lbCBkbWVzZyBJIGhhdmUgbWFueToKPj4gCj4+ICJyb2NrY2hpcC1kcm0gZGlzcGxheS1zdWJz
eXN0ZW06IFtkcm1dICpFUlJPUiogVW5zdXBwb3J0ZWQgZm9ybWF0IG1vZGlmaWVyIDB4ODEwMDAw
MDAwMDAwMDAxIi4KPiAKPiBUaGlzIG1lc3NhZ2UgaXMgY29ycmVjdC4gVGhpcyBjb3JyZXNwb25k
cyB0bwo+IERSTV9GT1JNQVRfTU9EX0FSTV8xNlgxNl9CTE9DS19VX0lOVEVSTEVBVkVEIGFuZCB0
aGUgVk9QMiBkcml2ZXIgZG9lc24ndAo+IHN1cHBvcnQgdGhpcy4gSSBoYXZlIGEgc2ltaWxhciBw
cm9ibGVtIGhlcmUgd2l0aAo+IHdlc3Rvbi1zaW1wbGUtZG1hYnVmLWVnbC4gIEJ5IGRlZmF1bHQg
dGhpcyB1c2VzIERSTV9GT1JNQVRfWFJHQjg4ODgKPiB3aGljaCBlbmRzIHVwIGJlaW5nIFBJUEVf
Rk9STUFUX0I4RzhSOF9VTk9STSBpbiBNRVNBLgoKQWggb2suIENsZWFyIG5vdy4KClRoeCEKCmJ0
dzogaSBhZGRlZCBzdXBwb3J0IGZvciBhcmdiODg4OCBpbiBteSBhcHAgYW5kIG5vdyBhbGwgaXMg
b2suIApubyBhbnltb3JlIGVycm9ycyBpbiBkbWVzZyA6LSkKCnNvIHN1bW1hcmlzaW5nOgp5b3Vy
IHZvcDIgY29kZSB3b3JrcyBmb3IgbWUgaW4gYWxsIHN1cHBvcnRlZCB2aWRlbyBwaXBlbGluZSB2
YXJpYW50czoKCi14MTEvR2xhbW91cgotV2F5bGFuZC1FR0wKLUVHTEZTL0VHTC1kbWFidWYKLUVH
TEZTL0RSTSBQbGFuZXMgCgpZb3VyIHZvcDIgd29yayBpcyBpbXByZXNzaXZlIQoKYnR3Ogp5b3Ug
bWVudGlvbjoKCj4gSW4gd2VzdG9uLXNpbXBsZS1kbWFidWYtZWdsIEkgY2FuIHBhc3MgYSBzdWl0
YWJsZSBmb3JtYXQgb24gdGhlIGNvbW1hbmQKPiBsaW5lLCBpbiBteSBjYXNlIEkgdXNlIERSTV9G
T1JNQVRfQUJHUjg4ODggKHdoaWNoIGJlY29tZXMKPiBQSVBFX0ZPUk1BVF9SOEc4QjhBOF9VTk9S
TSkuIFdpdGggdGhpcyB0aGUgcGFuZnJvc3QgZHJpdmVyIGRvZXMgQUZCQwo+IHdoaWNoIHRoZW4g
Y2FuIGJlIHJlbmRlcmVkIGluIHRoZSBWT1AyIGNsdXN0ZXIgd2luZG93IG92ZXJsYXkuCgppcyB0
aGlzIG1lYW4gdGhhdDogd2hlbiBteSBhcHAgaXMgdXNpbmcgQVJHQjg4ODggZm9ybWF0IC0gdGhl
biBJIGhhdmUgQUZCQyBvbiByazM1NjY/CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
