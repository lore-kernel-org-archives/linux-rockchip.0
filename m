Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89E94C44508
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 08:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XcayQ21fSp8zXVS5jxWMD6MN8bi/mvfM6bnvFJJUnCQ=; b=ZoKI7s4mMRB5AB
	IFoCb78yDhkRfNTR27KXAeYC6U5xmTVrAEglhuuxQ74bmKb+oeq/QZKtWhw7u+L/Zx8BFjxvZW9iF
	LpuHzqXdfdbp0nFzmtUFPKqclxAkgcwfFaoXwICVLE2SL+Eisz6TOo2ZxvZe/pw9JPVaS96B5YUf7
	oCyGTeDvHH3BUatc8gQJksmtUI3+VYsm2Z+4s4QVEPBqi4BoUEDTK1m+9VyKUkOSmecVFWUeAbAa2
	m1RsK5mad+CAqMYxQrz5ESvlFM7HxJdYZtFv3IqqiLU/nz8Cxrv0k8FdnH4+YKZKLAfUA5BpYxhXc
	ZGspcqbEi4AA99HXZZ2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjuog-0000000E8xJ-43le;
	Wed, 15 Jul 2026 08:18:06 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjuod-0000000E8vp-3J2I
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jul 2026 08:18:05 +0000
Received: by mail-ej1-x643.google.com with SMTP id a640c23a62f3a-c15e03c2763so377740466b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jul 2026 01:18:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784103482; cv=none;
        d=google.com; s=arc-20260327;
        b=Ei+kS91RGflPH4mhR3Cg/tB5O25aDNYrNIhcCZLFF3I3FnRJ+cnT1SApUQS9g+mIOd
         gdiNC3bX0j1pI57RVxIHkK5br5rCgZgePc+1kLIrX2VMNaTHgI2yytzaZgzEalstRxJ5
         k8AzQ7bDRd7/BfThUhAGKNmkLIFnyrJdjsl8YXtR9ZRzSmc6AcpvRmT8EVNYkdzbvd+Y
         TveT1IZ+N8b1M1ziXboSTByrD5OqabRzX45BdffgatUkMLypolHTZiWxInztmSlPnHLb
         1KybBgJJSvot4qG+ybJ8p/jQarHulw7JbYYuXUE57IO3x6Z/j5c5uC72JZwe6tIjjp9p
         USZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=D1M03uqUJX0kuAkqVXmzpq08Mjp3bxAKOr4K6xCx7KU=;
        fh=FnE8vHa4hhDSnozSSwDeGSoCEyHA2vHjFsAA3VDQySA=;
        b=DSTltWO27WvRZt0I74u1Xug4PKw3UeN9sRUVfGn7YzN0kOC9No8KCpkoPRB7FqXOuu
         3hpAJ+r9Cdhqpdbt6E99uPFMCp2t56jAJMZme1BvexMlMQCCayrcjcHvkE0trC3k9+hX
         zKJ6WdNw6zCbEYgwJ6kx5hZJudX68940Ph3IP7gYSWM08jfiaqPoUqzRvs23pJu7UQhl
         EOrEsySeZ66FOtp1gkBiPJ18E0j4pMTCOLOljncHgdrThIEFPBoGyQPFghPuz8NtFjA6
         IxX0WaNB+oUCUTTCs+kRJlonxivzWIJRCAw1gOgq/pAJz36qbqesXpRC4CMgksioCOnk
         E0Fg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784103482; x=1784708282; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=D1M03uqUJX0kuAkqVXmzpq08Mjp3bxAKOr4K6xCx7KU=;
        b=fKWC+lqqONs44YM5V30IYbZ6XslaJK49EvFaO4hUdZ6ChsP6NlLNm8KpuDXcuwj2T+
         9xPQAPuZnS+9Y3WWhxdVe8Zv/LwDkUvvlmJ9lfHorwRrDWGlrU1PFHUfatarlB5zTr+Q
         u0oJUByMdNwxjuOtyAvFnQLHoYR8QRBA1svAnvn+9IggRVVoLL/8mGVDrVXTICR0L8i4
         ciZhrSO/WG+axUy7pXqdBGBAhK5LfCB4LSCKwm66up4HjhaI5iKtjjgOmiVW0UCOvFL9
         sgLol9xPmIUUxm92vXyY/rIUDaDNys2fkJ2cJ+eTIjzudp3BtGIEurBYkNKMNHNQs67r
         3IBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784103482; x=1784708282;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=D1M03uqUJX0kuAkqVXmzpq08Mjp3bxAKOr4K6xCx7KU=;
        b=gANDRlAUyzCFxAD9ceCsjkASi+bT1anmvLSB5PJ+7XmUgxHUn0PmOsxEpDqqyTWNAY
         2d3ThjsHYUGw07t9LHQIhIwbiQ/vp5TNPEIYp6ziTX41FX0vbkqkc+m+qzOEiV3OBe06
         07+42m7H3Id9Zy5f8Aomw5VBXxLJZA7UFLkUtyWYUy3G6FMLqqIC16BkOBqIWua/Ye4Q
         +dTJS2BIdyKfvFCkT51ADswqUj84YNeO78zW+iK8Q8Werl7XtG1SEPhgFmHUTWn+pbjB
         CqRiBB9SIUfsO4PzRxi2sA8PCr9fTzYYdN7CqAbJkDvPc7cgnFuD6Z3N9Tg1yqo5cgA0
         HKeA==
X-Forwarded-Encrypted: i=1; AHgh+Rq0yekQ8iroR4+NYJGlIVvUsYkUYv80hyGIRp8Lgkk9U7uNwiq7KClMmCcKawFbGKvRtp+crwWb9kb+tPrCbQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwCtp7N4rayhjSG3Ih9wfY6mYf1X36h7RCYRSydjB/QDw+RZ9dc
	32Amt8dqjLl70t8Uh91EenS5LY7IN9y14jJXC8bIzOJ/jGv90WHdBuEvV0Z+zVBULxaQ2pJE6/J
	sjl08iEUKaVQEXF9oU37EBHB4D1kg4YI=
X-Gm-Gg: AfdE7cl0LSryc5qgaKFDYMkYGXoSHli0/bQhYdeBYICutBMkz1XEDHaesJc7iu1lljj
	F8tcwbdlDJXaeihdE48wcL4sj8l2uvAXt9i1sY7rI5Jixj+5LKuhdHJ4cNvcvvdWhp5bzlCLDov
	HLjVRs6oVhq7boxWLyq3RCeUP045raJJJ1QOnBEDmAQlR1/xduFGoDAkYm9JdbJYqfwRUsMv9Sw
	rSVceaax7rk+PXDQ9ROc/p5NUE80CR30REKzP6Wd6PApogTgAMP5h6SFkmqMrBJSZ7hVPsSI4IY
	PHl8N2ASzVo=
X-Received: by 2002:a17:907:d587:b0:c12:58c0:db2 with SMTP id
 a640c23a62f3a-c15fe781907mr1024570366b.18.1784103481564; Wed, 15 Jul 2026
 01:18:01 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-2-coiaprant@gmail.com>
 <dc21b2fc-ae11-4fde-a5b9-09e2c6bee5c9@bootlin.com>
In-Reply-To: <dc21b2fc-ae11-4fde-a5b9-09e2c6bee5c9@bootlin.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 15 Jul 2026 16:17:50 +0800
X-Gm-Features: AUfX_mxch48mUromtsSVd92z4I08mky6NZMzT4EVIwR-2P4_-bFyj_YHpBs-rv8
Message-ID: <CALj3r0gWyfHHp0S4=71M1-TjgHKcgGax4Lr0DzPi37Q69-iCwA@mail.gmail.com>
Subject: Re: [RFC PATCH 01/10] net: stmmac: move XPCS lifetime management to
 platform drivers
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc: kuba@kernel.org, davem@davemloft.net, edumazet@google.com, 
	pabeni@redhat.com, andrew+netdev@lunn.ch, robh@kernel.org, krzk+dt@kernel.org, 
	heiko@sntech.de, netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, Christian Marangi <ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_011803_850004_AE90BF47 
X-CRM114-Status: GOOD (  18.94  )
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

TWF4aW1lIENoZXZhbGxpZXIgPG1heGltZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tPiDkuo4yMDI2
5bm0N+aciDE15pel5ZGo5LiJIDE1OjMx5YaZ6YGT77yaCj4KPiBIaSwKPgo+ICtDaHJpc3RpYW4K
Pgo+IE9uIDcvMTQvMjYgMjE6MDgsIENvaWEgUHJhbnQgd3JvdGU6Cj4gPiBUaGUgY3VycmVudCBY
UENTIGNyZWF0aW9uIGxvZ2ljIGluIHN0bW1hY19wY3Nfc2V0dXAoKSBpcyBwcm9ibGVtYXRpYwo+
ID4gZm9yIHNldmVyYWwgcmVhc29ucy4KPiA+Cj4gPiBGaXJzdCwgaWYgYSBkZXZpY2UgdHJlZSBz
cGVjaWZpZXMgYSAicGNzLWhhbmRsZSIgYnV0IG5vIHNlbGVjdF9wY3MoKQo+ID4gY2FsbGJhY2sg
aXMgcHJvdmlkZWQgYnkgdGhlIHBsYXRmb3JtIGRyaXZlciwgdGhlIGNyZWF0ZWQgWFBDUyBpcyBu
ZXZlcgo+ID4gdXNlZC4gVGhlIHBoeWxpbmsgZnJhbWV3b3JrIHJlcXVpcmVzIHNlbGVjdF9wY3Mo
KSB0byBhY3R1YWxseSByZXR1cm4KPiA+IHRoZSBQQ1MgdG8gdGhlIGNvcmUsIHNvIHRoZSBwY3Mt
aGFuZGxlIHByb3BlcnR5IGJlY29tZXMgZWZmZWN0aXZlbHkKPiA+IHVzZWxlc3Mgd2l0aG91dCB0
aGUgbWF0Y2hpbmcgY2FsbGJhY2suIFRoaXMgaXMgY29uZnVzaW5nIGZvciBkZXZlbG9wZXJzCj4g
PiB3aG8gZXhwZWN0IHRoYXQgc3BlY2lmeWluZyBhIHBjcy1oYW5kbGUgaW4gdGhlaXIgZGV2aWNl
IHRyZWUgc2hvdWxkIGJlCj4gPiBzdWZmaWNpZW50IHRvIGVuYWJsZSB0aGUgUENTLgo+Cj4gSSB0
aGluayBDaHJpc3RpYW4ncyB3b3JrIG9uIGZ3bm9kZSBQQ1Mgd291bGQgaGVscCBhIGxvdCB3aXRo
IHRoYXQgUENTCj4gaGFuZGxpbmcgaW4gc3RtbWFjOgo+Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbmV0ZGV2LzIwMjYwNjE4MTI1NzUyLjEyMjMtMS1hbnN1ZWxzbXRoQGdtYWlsLmNvbS8KPgo+
IEkgZG9uJ3Qga25vdyB3aGVuIENocmlzdGlhbiBwbGFucyB0byBpdGVyYXRlLCBpdCBjb3VsZCBi
ZSB3b3J0aCB1c2luZwo+IHRoYXQgbmV3IGZ3bm9kZSBtZWNoYW5pc20gaGVyZSA/Cj4KPiBNYXhp
bWUKCkhpIE1heGltZSwKClRoYW5rcyBmb3IgcG9pbnRpbmcgbWUgdG8gQ2hyaXN0aWFuJ3Mgd29y
ay4gVGhpcyBsb29rcyBsaWtlIGEKbXVjaC1uZWVkZWQgaW1wcm92ZW1lbnQuCgpJIGFjdHVhbGx5
IHNwZW50IGFsbCBuaWdodCBkZWJ1Z2dpbmcgY2FsbCB0cmFjZXMgY2F1c2VkIGJ5IHRoZSBjdXJy
ZW50CnN0bW1hYyBQQ1MgbGlmZXRpbWUgbWFuYWdlbWVudCwgYW5kIGl0IHdhcyBub3QgYSBwbGVh
c2FudCBleHBlcmllbmNlLgpUaGUgY29kZSBmZWVscyBsaWtlIGFjY3VtdWxhdGVkIHRlY2huaWNh
bCBkZWJ0IHRoYXQgc2hvdWxkIGJlIGNsZWFuZWQKdXAuCgpSZWdhcmRpbmcgdGltZWxpbmU6IHNp
bmNlIENocmlzdGlhbidzIHNlcmllcyBpcyBzdGlsbCBpbiBSRkMgd2l0aCBhbgp1bmNlcnRhaW4g
bWVyZ2UgZGF0ZSwgSSdkIHByZWZlciB0byBrZWVwIHRoaXMgc2VyaWVzIGFzLWlzIGZvciBub3cs
IGFzCml0IHNvbHZlcyB0aGUgcHJvYmxlbSBmb3IgUm9ja2NoaXAgYW5kIGhhcyBhbHJlYWR5IHN0
YXJ0ZWQgcmVjZWl2aW5nCnJldmlldyBmZWVkYmFjay4gT25jZSBDaHJpc3RpYW4ncyBmd25vZGUg
UENTIHdvcmsgbGFuZHMgaW4gbmV0LW5leHQsCkknbSBoYXBweSB0byByZWJhc2UgYW5kIGNvbnZl
cnQgdGhlIFJvY2tjaGlwIGdsdWUgZHJpdmVyIHRvIHRoZSBuZXcKaW50ZXJmYWNlLgoKT25lIHRo
aW5nIEknZCByZWFsbHkgbGlrZSB0byBzZWU6IHRoZSBhYmlsaXR5IHRvIHNwZWNpZnkgdGhlIGxv
Z2ljYWwKTUlJIHBvcnQgaW5zdGFuY2UgdmlhIHNvbWV0aGluZyBsaWtlOgoKICAgIHBjcy1oYW5k
bGUgPSA8JnBjcyBNSUlfUG9ydFg+OwoKVGhhdCB3b3VsZCBtYWtlIHRoZSBEVCBiaW5kaW5nIG11
Y2ggY2xlYW5lciBhbmQgbW9yZSBmbGV4aWJsZSBmb3IKbXVsdGktcG9ydCBjb25maWd1cmF0aW9u
cy4KClRoYW5rcywKQ29pYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
