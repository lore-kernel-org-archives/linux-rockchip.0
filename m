Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4363D778AE
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jan 2026 19:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7xbk79rr25r0ET7lz5iCvnNBDs8vi0xjJJ+UvKSlbE=; b=tTZruQoIbzXR5X
	/WtgO6rgsFeVYD9oerxenI7OJqzA3HSj1fwapW+UBrOA+zfCrKlayfXUnh8/28zSliDcxpONyXDb3
	voRLG4dnqh8+madcBYiIuxu84bGmZhTDAcdQHm0HVUpzuAXd/6RPP6NOiajBjoaD4PuUW6D7xQ2aa
	SA4Ka58oRtLlqfjFqqSe4NkkZKlRvpYnbKf8+h91rJkNhJRNnF9djgo+uf/A0FYtWQ0L5VQtxT4Wm
	MlR+kw4cSxvyRxzZ/vODp06blvDLykzzTP9pvdlCovJMA2p36Y/b+/DtzJ7ljropbDwbsnPLdlnlw
	Yva8Wmnm+ET25WlLTHTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjMoT-00000009QKq-3Rdu;
	Fri, 23 Jan 2026 19:27:21 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjMoS-00000009QKW-2HxO
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Jan 2026 19:27:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C4CB46011E
	for <linux-rockchip@lists.infradead.org>; Fri, 23 Jan 2026 19:27:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74075C116D0
	for <linux-rockchip@lists.infradead.org>; Fri, 23 Jan 2026 19:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769196439;
	bh=pIOjdspmv4mVKi5jWqfseDeXVzFTwtYPpKoKsC16Joc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ZHnmOeOYRdh1IBJMz8YI6GASYt6es1tB5i3Utnma3wd0m9eb9pSB1pl/unxMCpCda
	 ym0d0c5EPQRTQLS88HWNTlL7LnEE/rrlDJnWw2f2nJYB12uQcC5Dvc4NpJH0b3X6Wv
	 22uA83fwgn62Z/5az8/HNo3Pt5pIdwknQvkA1jNT0/pJnViudxrEnhDI3yOPh0jJOP
	 q1HV8xe9ymGJWeUXHYFd1I0WprLVeySEe2D0ublqs7CTL29VHjPZ8+qMMLJTYgw3Ty
	 e/bWNk40/mQ8pX642IBjwph2LW1uXuBqydTb5oytTC4xkSmSXAchk4TdV7C61x2cM2
	 jenPu/PTcjHZQ==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-385baa8afaaso22119821fa.2
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Jan 2026 11:27:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWkQYvTNDFc0eDc/XDshGDMqMeaaSbgG1uKPZbjfUapKy7gIJPXVqPTCLfMXtXxSZjHWFPopN6llD45l2Feog==@lists.infradead.org
X-Gm-Message-State: AOJu0YxKMM6e6fqawgKAzLiqHf8YIZ3TaiR7ePucBeX1MnQJrUeqAXf3
	B7eaXPfnE3Hl/zvytIeaHWMFOMBhU1kj1JyVi0PvdwJ575NAgHaKZcx7ok2UEBYlwW8y6SzKTZw
	jDHcEYOOQXJpWlYdsHqHb310AZuMVZAvRsWGwFZWmVQ==
X-Received: by 2002:a2e:a884:0:b0:383:1704:2203 with SMTP id
 38308e7fff4ca-385e1bbf407mr7131441fa.27.1769196438100; Fri, 23 Jan 2026
 11:27:18 -0800 (PST)
MIME-Version: 1.0
References: <20260106090011.21603-1-bartosz.golaszewski@oss.qualcomm.com>
 <aWGSQYCXP4R08koQ@venus> <CAMRc=Mf0tRxRrh7tn5OaDn3a47N_qvUcjO=zqbTi-GhY-Y9hOg@mail.gmail.com>
 <447e8d5a-916b-4d58-b39c-3467c152379c@arm.com>
In-Reply-To: <447e8d5a-916b-4d58-b39c-3467c152379c@arm.com>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Fri, 23 Jan 2026 20:27:06 +0100
X-Gmail-Original-Message-ID: <CAMRc=Md0h5b=N9CqV-9L9sOtCNbiL1-y6RE0x4+w9HYXE8=pEQ@mail.gmail.com>
X-Gm-Features: AZwV_QjQbGS9oFegdz7_zzo5pejoUBgMNWZYbLLOHYRKiiTOeEXbzmNqH6cpZ_E
Message-ID: <CAMRc=Md0h5b=N9CqV-9L9sOtCNbiL1-y6RE0x4+w9HYXE8=pEQ@mail.gmail.com>
Subject: Re: [PATCH] gpio: rockchip: mark the GPIO controller as sleeping
To: Robin Murphy <robin.murphy@arm.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, Linus Walleij <linusw@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	Marek Szyprowski <m.szyprowski@samsung.com>
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

T24gRnJpLCBKYW4gMjMsIDIwMjYgYXQgMjoyN+KAr1BNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVy
cGh5QGFybS5jb20+IHdyb3RlOgo+Cj4gPj4KPiA+PiBJdCdzIG5vdCBhIGJpZyBpc3N1ZSBmb3Ig
dGhlIGhkbWlyeCBkcml2ZXIgc3BlY2lmaWNhbGx5LCBidXQgSSB3b25kZXIKPiA+PiBob3cgbWFu
eSBtb3JlIChsZXNzIG9mdGVuIHRlc3RlZCkgcm9ja2NoaXAgZHJpdmVycyB1c2UgR1BJT3MgZnJv
bSB0aGVpcgo+ID4+IElSUSBoYW5kbGVyLgo+Cj4gWWVhaCwgc2VlbXMgdGhpcyBmaW5hbGx5IHJl
YWNoZWQgbXkgZGlzdHJvIGtlcm5lbCBhbmQgbm93IHRoZSBrZXJuZWwgbG9nCj4gb24gb25lIG9m
IG15IGJvYXJkcyBpcyB0b3RhbGx5IGZsb29kZWQgZnJvbSBncGlvX2lyX3JlY3ZfaXJxKCkKPiAo
bGVnaXRpbWF0ZWx5KSBjYWxsaW5nIGdwaW9fZ2V0X3ZhbHVlKCkuLi4gdGhhdCdzIG5vdCByZWFs
bHkgT0sgOi8KPgoKVGhpcyBoYXMgYWx3YXlzIGJlZW4gYSBzbGVlcGluZyBkcml2ZXIuIFRoZSBk
cml2ZXIgZG9lcyBub3Qga25vdyB0aGUKZmlybXdhcmUgY29uZmlndXJhdGlvbiBpdCdsbCBiZSBw
YXNzZWQgYW5kIC0gYXMgSSBleHBsYWluZWQgYWJvdmUgLQpkZXBlbmRpbmcgb24gdGhlIGxvb2t1
cCBmbGFncywgd2UgbWF5IGNhbGwgLmRpcmVjdGlvbl9vdXRwdXQoKSBhbmQKZGVzY2VuZCBpbnRv
IHBpbmN0cmwgd2hpY2ggdXNlcyBtdXRleGVzLiBJZGVhbGx5LCB3ZSdkIG1ha2UKR1BJTy1mYWNp
bmcgcGluY3RybCBvcGVyYXRpb25zIG5vdCBzbGVlcGluZyBidXQgdGhpcyBpcyBhIGxvbmctdGlt
ZQpwcm9qZWN0IGFuZCBxdWl0ZSBjb21wbGV4LiBUZWxsaW5nIHRoZSBHUElPIGNvcmUgdGhhdCBp
dCBjYW5ub3Qgc2xlZXAKaXMgc2ltcGx5IGluY29ycmVjdCAtIGV2ZW4gaWYgaXQgd29ya2VkIGZv
ciB0aGlzIHBhcnRpY3VsYXIgdXNlLWNhc2UgLQphbmQgaGFzIGFuIGltcGFjdCBvbiBwYXRocyB3
ZSdyZSBjaG9vc2luZy4KCkNhbiB0aGUgR1BJTyByZWFkaW5nIGluIHRoZSBncGlvLWlyLXJlY3Yg
ZHJpdmVyIGJlIGRvbmUgZnJvbSBhCmhpZ2gtcHJpb3JpdHkgd29ya3F1ZXVlIGJ5IGFueSBjaGFu
Y2U/IE9yIGNhbiB3ZSBtYWtlIGl0IGEgdGhyZWFkZWQKaW50ZXJydXB0PwoKQmFydG9zegoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
