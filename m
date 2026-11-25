Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEDE8606A326
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 17:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=M8/8qyMH;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=AdVePdR9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AqlHqnkUBjiusy31BqynEUUoGvouRigMXjcwh8afuE4=; b=M8/8qyMHlG1CuR7R5zTvRVXXnR
	crUYEnFBgQRP418LF1MPs/i/vXH1e9cbGfplzYixhIgjqTbuWAgL+PoQ6r2v29cZWgzdF17EWWZjW
	oLZY4gtntrTMlGttMziGwYln5rPDjKu2CH55Jh+bQeeuWQL9K2j2mAoYLwkUN1hBi7mAkjr1SpFJA
	y8H/BKg6SHa0rjYieBNVm6usB9h86Jg1JUl1bQ983QQ1J6rh70O1JkR5/U6lp85hzbFxN4Wuq97lv
	OJqGwbETgjUqFLEFuO+VkWN7p/I5pppTCrfZAM3t6zj1jcLxcdOxAmXYIA8C+SPP+n0OAyEtwLTGb
	p+MVSysQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWHE5-0000000AsyA-3tMd;
	Wed, 25 Nov 2026 17:56:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWHE2-0000000AsuK-3KTM
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 17:56:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4384B61F73
	for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 17:56:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1B831F000EB
	for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 17:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795629370;
	bh=f6MAiA1tU1RJJu+ItJqpHXoF/3Y5pGSsfxpH8J2NIlI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=AdVePdR9Juw+mex6/WfIGFmOG5lH+g7wvLnxsLNNl63ExwWNN/+KTfBWylHaRkbK+
	 1JD/L16FcBtDMT6o0BriKvlzsyEw5zJeFjgk5t23j3y0SB0OppAyGYBQHQ0IQRo/tu
	 NkDnmuF4csUTaHNnYgmmBJPuBWaUi/G1h5PL0QSGBxvmzAdRvRFQS6iAkOBTq8SHkw
	 EqMApbbRhS6XTqy4qdLBP0mZGoYJXTrUU2XeOAhcGFDMabFO5m9hQUJvXYJYjqWbgd
	 V5ITRTnkVXjGl8sr3ddGqIY6TTxyZuuI4iBZOhL6+YL460J7VHA6ibn0sdhwIlVbaS
	 JK4ex0kRY89aA==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-3ae6a0ffb55so53232541fa.2
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 09:56:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErFl0x2BY7ErjQDMXBcK6fbVIWHvY5s+CESW/VUT8SgXgxy28o53jBR0W6tPLjN4jRQbe9moTYOOjxe9llV3Nw==@lists.infradead.org
X-Gm-Message-State: APuU4Z+W2w86oR0MG4UJbJjfdKySugypI3jrYYMgInGwohZzNy+cHz5k
	scm0ZTUQQLhfyHJHI861/k2qttFP/2R35Spep+rEDCstv7p4oHTOCfmBPDRAlQeLTMnEh+mamPb
	jEE3uNX1uxSk1UzsgXkaBtpmQXnBVxwQ=
X-Received: by 2002:a05:6512:31cd:b0:5c0:b5c:4052 with SMTP id
 2adb3069b0e04-5c1bc6819c4mr5241312e87.2.1795629368690; Wed, 25 Nov 2026
 09:56:08 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261111-rk805-pinctrl-alias-v1-1-e0c6cdd5b823@iav.lv>
In-Reply-To: <20261111-rk805-pinctrl-alias-v1-1-e0c6cdd5b823@iav.lv>
From: Linus Walleij <linusw@kernel.org>
Date: Wed, 25 Nov 2026 18:55:54 +0100
X-Gmail-Original-Message-ID: <CAD++jLn=+O55bh46owFdqb_TvQ+9KYfpLp6afsrO07v1JNd9Fw@mail.gmail.com>
X-Gm-Features: Aa3M54qcfqetMqqeazuNtJAXHuKFVrLAs7ZwHievoGEVbmIindCmaMEjBUdUnhw
Message-ID: <CAD++jLn=+O55bh46owFdqb_TvQ+9KYfpLp6afsrO07v1JNd9Fw@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rk805: Add the platform module alias
To: iav@iav.lv
Cc: Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCBOb3YgMTEsIDIwMjYgYXQgMzowNeKAr0FNIElnb3IgVmVsa292IHZpYSBCNCBSZWxh
eQo8ZGV2bnVsbCtpYXYuaWF2Lmx2QGtlcm5lbC5vcmc+IHdyb3RlOgoKPiBGcm9tOiBJZ29yIFZl
bGtvdiA8aWF2QGlhdi5sdj4KPgo+IFRoZSByazh4eCBNRkQgY29yZSByZWdpc3RlcnMgdGhlIHBp
biBjb250cm9sbGVyIG9mIHRoZSBSSzgwNSwgUks4MDYgYW5kCj4gUks4MTYgYXMgYSBwbGF0Zm9y
bSBkZXZpY2UgbmFtZWQgInJrODA1LXBpbmN0cmwiLCBidXQgdGhlIGRyaXZlciBoYXMKPiBuZWl0
aGVyIGEgTU9EVUxFX0FMSUFTIG5vciBhIHBsYXRmb3JtX2RldmljZV9pZCB0YWJsZS4gQnVpbHQg
YXMgYSBtb2R1bGUKPiBpdCBpcyBuZXZlciBsb2FkZWQgb24gaXRzIG93biwgYW5kIGV2ZXJ5dGhp
bmcgdGhhdCB1c2VzIHRoZSBQTUlDIEdQSU9zCj4gd2FpdHMgZm9yIGl0OiBvbiB0aGUgUGluZTY0
IFJPQ0s2NCB0aGUgZ3Bpby1sZWRzIGRldmljZSB3aXRoIGJvdGgKPiBMRURzIHN0YXlzIGluIGRl
ZmVycmVkIHByb2JlLgo+Cj4gVGhlIG90aGVyIHJrOHh4IGNlbGwgZHJpdmVycyAocms4MDUtcHdy
a2V5LCByazgwOC1yZWd1bGF0b3IsIHJ0Yy1yazgwOCwKPiBjbGstcms4MDgpIGNhcnJ5IHN1Y2gg
YW4gYWxpYXMuIEFkZCBvbmUgaGVyZSBhcyB3ZWxsLgo+Cj4gRml4ZXM6IGVhNDc5OTk2Yzc5YiAo
InBpbmN0cmw6IEFkZCBwaW5jdHJsIGRyaXZlciBmb3IgdGhlIFJLODA1IFBNSUMiKQo+IENjOiBz
dGFibGVAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogSWdvciBWZWxrb3YgPGlhdkBp
YXYubHY+Cj4gLS0tCj4gVGVzdGVkIG9uIGEgUGluZTY0IFJPQ0s2NCAoUks4MDUpIHdpdGggdjcu
My40IGFuZCBDT05GSUdfUElOQ1RSTF9SSzgwNT1tOgo+IHdpdGhvdXQgdGhlIGFsaWFzIHRoZSBt
b2R1bGUgaXMgbm90IGxvYWRlZCBhbmQgYm90aCBMRURzIHN0YXkgaW4KPiBkZWZlcnJlZCBwcm9i
ZSBvdmVyIHRocmVlIGJvb3RzOyB3aXRoIGl0IHRoZSBtb2R1bGUgbG9hZHMgYXQgYm9vdCwgYm90
aAo+IExFRHMgcmVnaXN0ZXIgYW5kIHRoZSBkZWZlcnJlZCBsaXN0IGlzIGVtcHR5LgoKTm8gcmVh
Y3Rpb24gZnJvbSB0aGUgbWFpbnRhaW5lcnMgc28gcGF0Y2ggYXBwbGllZCEKCllvdXJzLApMaW51
cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
