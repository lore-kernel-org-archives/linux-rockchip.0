Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E322FEA8550
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 08:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TQQ83XSjsiFfdyGsIBlQsQsCidcN0dGjRbWVmcQpqFw=; b=EOXNfCWEhJmS2oKwea2L9TmdDd
	ESX92SXGRTDd9BT91D4keLJmOnd9Hsbg35EBWtxrXQ19tVxPX5QY8UxHkCmM7RiOQmg7Y2/kvYOWc
	6+7RKLyvJejsrI5n0k4n/hCdjA9I1EuAMh4HIUujjdbow/JEgRTOviZszwKrrYCw821/eCIaZ4BZM
	1Zrb4a0wyFBeNmCshdnbqRnf3lJFqUveLUktIcO5K8lP6PVN2p9vSDw5TCkRmlsEKAcY+5eqer513
	LaPMuA0/okhkWDhGzXG5v7nQGrbU+7APH3Pm2C9Tv47Saw6MSfqo6XsrNbOAENfVoFKA7vAkQXstV
	xtaQYYyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzsvt-0000000910p-1gP0;
	Tue, 10 Mar 2026 08:59:17 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzsvs-0000000910T-0ukQ
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 08:59:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 96E3E60097
	for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 08:59:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44274C2BCAF
	for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 08:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773133155;
	bh=aNoRrpmsMc+cYEvSe6invRTy+zqTopZWXaN7o7akQrU=;
	h=References:In-Reply-To:From:Date:Subject:To:From;
	b=K09gTLDoKjSyE99nhOkMcw7DA+Qr0qRBXUiYz2l3EQB3P3s51zoCHWvI6LKbQOIkd
	 J16LNZMyyYTJ4CnV+fu+9cvW91621tuyKadK28ti7qi5xGXVo7LhxG5qESjMJI2Acv
	 Mvv2ntgEUmSy3fTRqYEprmg0MX3y/hQfv8YMVT6ihEleUzEClJ/oCWH4l5TrvehQMI
	 U5zJdV7vq7XOaAQlLtL/nhRMCIzdWHG0rR3teMK9Ne6zdvW8+9SQUmiFc1JSVVqu5m
	 BwHt86RY0AsaJTXoMDrNfDbUtLE98aWI2+/mEhbWw9kVNi0ju5H69ftaRDEmQQ3JVh
	 Pxrrq20HBbwuw==
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-64c9fcc24b3so9714226d50.1
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 01:59:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUHx1mExWu+poBC9HQYy6jIxJOO2JH9OU70eLxGTtydYcvl732dy2dURzgZl4polA91VKphJYe6TYsrb4VL/A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxoYfx554W8J0FkH1nU0oBV3ts+QiwaRuIWN7g0HHSrNIizaIp6
	wowHOauc7YlkmieIe6NBSPPwG34nZIva2YXc7P4y7FlgISuYgRe52QcVDpoOUj36HPRBM21Jn26
	v9zGbpMD4X7BIqBw6AWuEfFpuNq4uyGw=
X-Received: by 2002:a05:690e:4486:b0:649:c7dd:d2ea with SMTP id
 956f58d0204a3-64d141a0203mr9886891d50.39.1773133154629; Tue, 10 Mar 2026
 01:59:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260302202121.197288-1-matthijs@stdin.nl> <20260302202121.197288-3-matthijs@stdin.nl>
 <e439f2f7-0b25-41a5-951a-d8d3bc9f2bf2@kwiboo.se> <aa_cCCc7FqdSv8eX@login.tika.stderr.nl>
In-Reply-To: <aa_cCCc7FqdSv8eX@login.tika.stderr.nl>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 10 Mar 2026 09:59:03 +0100
X-Gmail-Original-Message-ID: <CAD++jLmFt6N=v4RsxWqWKcsOonxbyoe7F__j+xNr4c8LWdgR7g@mail.gmail.com>
X-Gm-Features: AaiRm502_1rkdLm1iaYa81yroOSRyRAo1lhawNhKOWuv7m5FNhD4eOYbJtZ1CkU
Message-ID: <CAD++jLmFt6N=v4RsxWqWKcsOonxbyoe7F__j+xNr4c8LWdgR7g@mail.gmail.com>
Subject: Re: [PATCH RESEND 1/2] arm64: dts: rockchip: rk3308: Add gpio-ranges properties
To: Matthijs Kooijman <matthijs@stdin.nl>, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
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

T24gVHVlLCBNYXIgMTAsIDIwMjYgYXQgOTo1M+KAr0FNIE1hdHRoaWpzIEtvb2lqbWFuIDxtYXR0
aGlqc0BzdGRpbi5ubD4gd3JvdGU6Cgo+IEFoLCBJIGhhZCBub3QgcmVhbGl6ZWQgdGhlc2UgYWxp
YXNlcyBleGlzdGVkLiBIb3dldmVyLCBpdCBzZWVtcyB0aGV5IGFyZQo+IG5vdCBhY3R1YWxseSBy
ZWxldmFudCBpbiB0aGlzIGNhc2UuIE15IGFzc3VtcHRpb24gd2FzIHRoYXQgZ3Bpbwo+IG51bWJl
cmluZyB3YXMgYmFzZWQgb24gaW5pdGFsaXphdGluZyBvcmRlciwKCkl0IHVzdWFsbHkgaXMuCgpX
ZSBkbyBub3QgbGlrZSBpdCB3aGVuIHBlb3BsZSBkZXBlbmQgb24gdGhlIGdsb2JhbCBHUElPIG51
bWJlcmluZy4KCj4gYnV0IEkgc2VlIGluIHRoZSBjb2RlIHRoYXQKPiBHUElPIGRyaXZlcnMgZGVj
aWRlIHRoZW1zZWx2ZXMgKGJ5IHNldHRpbmcgZ2MtPmJhc2Ugc3RhdGljYWxseSBvciBtYXliZQo+
IGJhc2VkIG9uIERUKS4KClRoZXkgKmNhbiogYnV0IHRoZXkgcmVhbGx5IHNob3VsZG4ndC4gVGhp
cyBtZWNoYW5pc20gZXhpc3RzIGZvcgpsZWdhY3kgcmVhc29ucy4KCk5laXRoZXIga2VybmVsIGRy
aXZlcnMgbm9yIHVzZXJzcGFjZSBzaG91bGQgZGVwZW5kIG9uIHRoZQpnbG9iYWwgR1BJTyBudW1i
ZXIuCgpXZSBldmVuIHJlcGxhY2VkIHRoZSBzeXNmcyB3aXRoIGEgbWVjaGFuaXNtIHRoYXQgYXZv
aWRzIHVzaW5nCnRoZSBnbG9iYWwgR1BJTyBudW1iZXIgaW4gZmF2b3VyIG9mIGNoaXAtbG9jYWwg
b2Zmc2V0cyB0byBkcml2ZQpob21lIHRoZSBwb2ludC4KClRoZSByZWFzb25pbmcgYmVoaW5kIHRo
aXMgaXMgY2xlYXI6IGl0IGlzIGltcG9zc2libGUgdG8gbWFpbnRhaW4KdGhlIGdsb2JhbCBudW1i
ZXJzcGFjZSBpbiBhbnkgc3lzdGVtIHdpdGggZW5vdWdoIGhvdC1wbHVnZ2FibGUKR1BJTyBleHBh
bmRlcnMgc3VjaCBhcyBvbiBVU0IgYW5kIHRvIHNvbWUgZXh0ZW50IG90aGVyCnNsb3cgYnVzZXMu
IERvIHdlIGtub3cgaG93IG1hbnkgd2lsbCBiZSBwbHVnZ2VkIGluPyBOby4KU28gd2UgY2FuJ3Qg
aGF2ZSBhbnkgcmVsaWFibGUgbnVtYmVyc3BhY2UuCgpJdCdzIG9ubHkgZW1iZWRkZWQgZGV2ZWxv
cGVycyB3aG8gaGFzIG5ldmVyIHNlZW4gYSBVU0IKR1BJTyBleHBhbmRlciB3aG8gdGhpbmtzIHRo
ZSBnbG9iYWwgbnVtYmVyc3BhY2UgY2FuIHdvcmsuCgpZb3VycywKTGludXMgV2FsbGVpagoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
