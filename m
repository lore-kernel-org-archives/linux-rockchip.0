Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2F0BE67A8A
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 07:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ekXUvEOkjLwaNPYhTRCIqzaQDkaZQ9LxaZ96lCVAv0M=; b=BE9ZAXJRkobAmS
	G0ueC+yetmcw30JsYRE7wuz2QQWtTVWLRnx/R20ZFMz84Kq1KBEPMWXkNShNJNucJidoFbSLr19cV
	GK6k+pKuvP+/pBU9A+79FFAbFZMkSDbPbZFLk3t5vK+22lTsQw1FhZ4LhjMNKy4MIfb0pkPj/MhBM
	eOe5pnKi5LoJgsnH3YRhQp1AnPyOsMmEif95r2a6eNcK4HJPPT6/rEh4psYsVhJH+gwWa6XAUQ/Y2
	z/nEtzdYmF3t1y9LLt8eK26qy6R/LAKrq+/IixNhDlda32Yu2Kupjf7ZPIDaqHmCUgkUZuPTbLXUD
	OKA1bplfZsJHNRbkB+Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxKIn-0000000EhC8-21Z7;
	Tue, 03 Mar 2026 07:36:21 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxKIl-0000000EhBX-3hTd
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Mar 2026 07:36:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 56394600AE
	for <linux-rockchip@lists.infradead.org>; Tue,  3 Mar 2026 07:36:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BDE2C2BC87
	for <linux-rockchip@lists.infradead.org>; Tue,  3 Mar 2026 07:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772523377;
	bh=ysUU86+hk8VMdhuf7L5Kyqho/5jCGSODvWrJZzPYzqY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Y0TkiP4MvyRgjxz9+uwHQ/XKgASMG4o7JhqcTcgE8iACu+ncUs3CD9400ClPKUta7
	 xa/E4bWWVBa8FMQE5/1RF2vVbOUoN6dEeJ3fAl/KTNSVtdqU14pyRBsynx+Ts30e41
	 m8e7Rb0RjHcryOtcNK6bVwVTly5sV09olQ4o6mwZsxxNbNPFRkVKirf19RqKAMZ7lf
	 1dD3MaELzZAdWBCIO8sYm4QaN3WI5yadVO/tQ8rRmyWlBFzyz3S466OlFEKi6x6qCT
	 qaxF3CvODdtRgktG6yssbsEVi9e48gOJSsR/HqldenlpQYWKTzHABaNpMJbL2PG5TO
	 a223GySvp3GdQ==
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-64c97997b0fso3638581d50.3
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Mar 2026 23:36:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXEDET7BrnbTiGy4GT65rSaq7UyYXsRbZQeXqGTUscTrFVqjgqyhh7/ffOp+h9llZImxxwlNoW5QsBVk5jKVQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyv57Tz4RZS/2u5szx63xWpMbp8ledeIWe5ZyBfi6rPLT3Fk9Mh
	Lqhcka4thZ4wZ+ng8frBFB7zWBuXL0VevWfcJrvj/rcVbyGHno/LDPQCxCODNzQR+60swlvPBp2
	LX9PHOCbRw+AsQLj2/4scY2uTugRZKTk=
X-Received: by 2002:a53:ee65:0:b0:649:b4cd:b539 with SMTP id
 956f58d0204a3-64cc20e44c6mr9939462d50.35.1772523376334; Mon, 02 Mar 2026
 23:36:16 -0800 (PST)
MIME-Version: 1.0
References: <20260302202121.197288-1-matthijs@stdin.nl> <20260302202121.197288-6-matthijs@stdin.nl>
In-Reply-To: <20260302202121.197288-6-matthijs@stdin.nl>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 3 Mar 2026 08:36:05 +0100
X-Gmail-Original-Message-ID: <CAD++jLnc_QQTJEXg+Ni4TMUOs1WqyQbxCZEaMS1OM4Gc5L8K6Q@mail.gmail.com>
X-Gm-Features: AaiRm5143h4ct3A_F4_UOrUD05wVxmCxLMdDce85bBMpXerr7LbAQDDVfsP6ozA
Message-ID: <CAD++jLnc_QQTJEXg+Ni4TMUOs1WqyQbxCZEaMS1OM4Gc5L8K6Q@mail.gmail.com>
Subject: Re: [PATCH RESEND 2/2] gpio: rockchip: Call pinctrl for gpio config
To: Matthijs Kooijman <matthijs@stdin.nl>
Cc: Heiko Stuebner <heiko@sntech.de>, Bartosz Golaszewski <brgl@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
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

T24gTW9uLCBNYXIgMiwgMjAyNiBhdCA5OjIy4oCvUE0gTWF0dGhpanMgS29vaWptYW4gPG1hdHRo
aWpzQHN0ZGluLm5sPiB3cm90ZToKCj4gUGluY3RybCBpcyByZXNwb25zaWJsZSBmb3IgYmlhcyBz
ZXR0aW5ncyBhbmQgcG9zc2libHkgb3RoZXIgcGluIGNvbmZpZywKPiBzbyBjYWxsIGdwaW9jaGlw
X2dlbmVyaWNfY29uZmlnIHRvIGFwcGx5IHN1Y2ggY29uZmlnIHZhbHVlcy4gVGhpcyBtaWdodAo+
IGFsc28gaW5jbHVkZSBzZXR0aW5ncyB0aGF0IHBpbmN0cmwgZG9lcyBub3Qgc3VwcG9ydCwgYnV0
IHRoZW4gaXQgY2FuCj4gcmV0dXJuIEVOT1RTVVBQIGFzIGFwcHJvcHJpYXRlLgo+Cj4gU2lnbmVk
LW9mZi1ieTogTWF0dGhpanMgS29vaWptYW4gPG1hdHRoaWpzQHN0ZGluLm5sPgoKVGhpcyBwYXRj
aCAyLzIgYXBwbGllZCB0byB0aGUgcGluY3RybCB0cmVlLgoKWW91cnMsCkxpbnVzIFdhbGxlaWoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
