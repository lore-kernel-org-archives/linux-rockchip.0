Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F247CD80D3
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 13:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKREFIMz2nE118Iov+9K9d7xHdtygYzy2EOihFghTuA=; b=WyDYrzggDyN699
	KOa0hlNNJPlz3kCqElZEck/IDBFdKPNpmYx/ZjCQ+d3zx1B+iwkzKDYthuiQbW4El5hrw0xOdY7r+
	FqUzGswKLC7t4hBzSlVjnJEF2yrweAqWAnEJAEOz1DEB1LlpNUSETtCBLhi//0oHlxqReaeWgZVaC
	FJtE+iDJjCc9qAjSKFauU7XZIbxXKxFENraYdADkFw3jDmUSiqcvbqnlIieSOU8yuPtetAjin+ElD
	5zAmctrj1ZQo9e16BRIf94X4W7jM0nx7EtN/Pk4Io5dBbB8UzHBMNkFZYdVAguqxGNWtQ9UVU8wNy
	PNtQRksF/l+JAGbUAU4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqCyy-00DTR7-1A;
	Tue, 10 Oct 2023 13:41:08 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqCyu-00DTNl-1y
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Oct 2023 13:41:06 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-5a7ac4c3666so16844087b3.3
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Oct 2023 06:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696945251; x=1697550051; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NHv90yeM59s0sxqLXofNmRkQi512BP/YIHCc5n2XRV8=;
        b=bdwN21hMXoEUuRByw3LLclsFptVFe2SKNFwQLD7/vN+wNu7Hms1E5Fc1jHTiSLWEdx
         Yow0Yx+WIb3QTVgTlMFmTV/j9Q+DfxrZBRt0evL0PHNcNbQB60lL0d/rUGXCwZ3v7qG1
         Dxn52kTqHcMyUDkvRBMk189UHBmVSIsRHc+2VkO3RGwK0Kiqh1juRuUNEFKUN7rilAyq
         iLEYc4bhicjChb61je6e+uEmvfF4xHBwLuzg11b4EujvYJZ5GHw7orkZ9ZjicVUe/AK0
         hE025PqZCIZ36y+HyDhToIx9yZ4O9hL0HKm6PGjh07oKZJCpwX3GzjfEConGBnSJmCjH
         Q69A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696945251; x=1697550051;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NHv90yeM59s0sxqLXofNmRkQi512BP/YIHCc5n2XRV8=;
        b=WTqqwXRs+kide0QXc/zbExz6EVKkLz7afeGkhZgfO4T4Fs1RnwQDJkU5wyJqhc6YCq
         nJ4tUauDRG8A0YMVdpf3SEGNLMgfEo6U0KRLRig8i9GCiqbLmMjW7fru63z4IdKrjIgx
         5F6BRpZGrOL9efxRZlILcW9HNEF60ukjqS+/PQ/eKgn07vXtWQOvUZvp9iaXXd1Z9l/j
         P1V1dwHcNxJwNJfN9vpqy6rQ8XFMAjQzy58EJehKXpTSa1GPmNndIH+WsLoPeCFCC4cP
         m/xfiD0HZjJOvz43qS1FsArUuqvz+d0QNuBvJliK2aqwTqEoH2lXgmH/ibHvhXFUT2ex
         s6Gw==
X-Gm-Message-State: AOJu0Yx0Uixf3iMrPJXVjAtdLC4dGzmdUeWAsQ82RuLg9TIPgpVoSwJt
	KDw/jZmULt4wG5VMsT9eqA/p88CwsAmqTvQXtL4b/Q==
X-Google-Smtp-Source: AGHT+IGOCL6NKf3nzx2Pa69/6i9SrcFhRt4AqwUpt0J5Zw5mg1OM29h2nJLtims1aZtxjvzoE4vGYhHQhmPLsY6MmUg=
X-Received: by 2002:a81:7c04:0:b0:583:d9dd:37fd with SMTP id
 x4-20020a817c04000000b00583d9dd37fdmr17710832ywc.31.1696945251491; Tue, 10
 Oct 2023 06:40:51 -0700 (PDT)
MIME-Version: 1.0
References: <20231009083856.222030-1-u.kleine-koenig@pengutronix.de> <20231009083856.222030-12-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20231009083856.222030-12-u.kleine-koenig@pengutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Oct 2023 15:40:39 +0200
Message-ID: <CACRpkdaZmMXKFMoXLtv92Oqz9A2f_3TMqrdxwcZkWfgt=5OriA@mail.gmail.com>
Subject: Re: [PATCH 11/20] pinctrl: rockchip: Convert to platform remove
 callback returning void
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_064104_650463_9D6BA75B 
X-CRM114-Status: GOOD (  12.73  )
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

T24gTW9uLCBPY3QgOSwgMjAyMyBhdCAxMToyMuKAr0FNIFV3ZSBLbGVpbmUtS8O2bmlnCjx1Lmts
ZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgoKPiBUaGUgLnJlbW92ZSgpIGNhbGxi
YWNrIGZvciBhIHBsYXRmb3JtIGRyaXZlciByZXR1cm5zIGFuIGludCB3aGljaCBtYWtlcwo+IG1h
bnkgZHJpdmVyIGF1dGhvcnMgd3JvbmdseSBhc3N1bWUgaXQncyBwb3NzaWJsZSB0byBkbyBlcnJv
ciBoYW5kbGluZyBieQo+IHJldHVybmluZyBhbiBlcnJvciBjb2RlLiBIb3dldmVyIHRoZSB2YWx1
ZSByZXR1cm5lZCBpcyBpZ25vcmVkIChhcGFydAo+IGZyb20gZW1pdHRpbmcgYSB3YXJuaW5nKSBh
bmQgdGhpcyB0eXBpY2FsbHkgcmVzdWx0cyBpbiByZXNvdXJjZSBsZWFrcy4KPgo+IFRvIGltcHJv
dmUgaGVyZSB0aGVyZSBpcyBhIHF1ZXN0IHRvIG1ha2UgdGhlIHJlbW92ZSBjYWxsYmFjayByZXR1
cm4KPiB2b2lkLiBJbiB0aGUgZmlyc3Qgc3RlcCBvZiB0aGlzIHF1ZXN0IGFsbCBkcml2ZXJzIGFy
ZSBjb252ZXJ0ZWQgdG8KPiAucmVtb3ZlX25ldygpLCB3aGljaCBhbHJlYWR5IHJldHVybnMgdm9p
ZC4gRXZlbnR1YWxseSBhZnRlciBhbGwgZHJpdmVycwo+IGFyZSBjb252ZXJ0ZWQsIC5yZW1vdmVf
bmV3KCkgd2lsbCBiZSByZW5hbWVkIHRvIC5yZW1vdmUoKS4KPgo+IFRyaXZpYWxseSBjb252ZXJ0
IHRoaXMgZHJpdmVyIGZyb20gYWx3YXlzIHJldHVybmluZyB6ZXJvIGluIHRoZSByZW1vdmUKPiBj
YWxsYmFjayB0byB0aGUgdm9pZCByZXR1cm5pbmcgdmFyaWFudC4KPgo+IFNpZ25lZC1vZmYtYnk6
IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+CgpQYXRj
aCBhcHBsaWVkLgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
