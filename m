Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E013C001B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Aug 2023 22:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKA6NpJZ+gl7IHjkybho1OAcUWWj/8i83rNMKRvG5j0=; b=vOEJroJL9fGLiV
	Uf+h6gywWHunSrYS/NOfJ4STlMl7KO85xz5nhN/oXQOSvbq1BzoEQBRPMDtJgLqeySOkoY06Jpy07
	EhO0SpFM7ThkFSUxUrGjnpMWs+N6Wdu8nm6icexHiPIsC6GFLyOSSTIcfPFTyvpCqBoEUXETwpUlQ
	WFn9HqtMMLV78znBRTRK33gkVMWhjFeZNu+x91qEDCoTFccY871ti5acxOv/PrH/+KBI88KRUxXH+
	uoyWuDPkgGKtUjg0kw4pBBEQxNFdD/vMtyiMUsPt6qklkdScI3SwD9AGz1tm2pFJWimrmjthR9Sns
	VpKuNlr5I/Pnv0W6mfaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVfdn-000Qav-0z;
	Mon, 14 Aug 2023 22:02:23 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVfdi-000QZt-2Z
	for linux-rockchip@lists.infradead.org;
	Mon, 14 Aug 2023 22:02:21 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-6459a873237so13729146d6.0
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Aug 2023 15:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1692050533; x=1692655333;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4mwYC5y1w73XOQ+JQk9ab6pGT6BUQ0RtEcIvzv4bMiU=;
        b=dQh/oXzkAnSIrtDNcO6e5Rb9npBij+9Md2DDJpcMtgE5V8lMFH5fyRAzbjpcFej7ny
         cX6f8nkjPkuSyNj5VM+zEv3PTAUz1cC+taVXXaoZ0oS3wMR3Veesfh8jNGbx3l8U9MGF
         Dpxwc9pmNuy4v4KqYuUXV75tqbymxCExp0+zuG8YJ4erqXWQmWTUdjNvCCZkyDP0NgeY
         X0u4oa0AIVXaRRaVlJZWADjWzeknVdpAHD6sTaG8BzJoBAIcFze2JrJgFesxQULRYkzI
         smkBvJOcq9uvREbJklJeMrJQ8VEQ0TnnG2TwXZFtC2AKVNL27f2ThO/PQeAHZ9Xl9H5/
         zDag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692050533; x=1692655333;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4mwYC5y1w73XOQ+JQk9ab6pGT6BUQ0RtEcIvzv4bMiU=;
        b=efhhukdOtrmYlNpuM7hVsdi+RliXyseXInuXrumXaVm/BH5wdxEnT/IXW9VVmDBQEf
         2LWe6v5Y8095ON9T2L8Bvtjtjm7rtcy1Fq/AOz8jx5DRRRU0ey2XEPT7r7mJYWcXcnPA
         I4ndpEUpBsWrEeYCw/goohSvLWXRX3sxnlH6rxzV0CyD6L8wOs3yx2/GqaVNP/2bGQIb
         ZuLNbudO0qTjJhukuc4MOdR3ja95qFycuCItx7lrLGJN899x5gI2yrEaWAskz/RfHB+Z
         WstZ3aq39W7prHZhLRWEyv+olcWFsLDISQKzfzmCRRt4DwQhU1w4qw69/RTPs581cOW+
         Vtrw==
X-Gm-Message-State: AOJu0Yw3P1QzOF2PBFvnEQj7Ux/ylrPxKWs3BCV9uNds8wQNTXHVwpD9
	gMY75i3VFAVxWscBD/nein+TARfHKWd2PsHI3qZ8yA==
X-Google-Smtp-Source: AGHT+IH6wivOZHs37QX+AYcNTOVvJhfdvZs2Fe6L0Y0X/5iqhnofg4KtZ94BhgTJQ2RzI2U8jlPbdkhVTSh/ljoySZ4=
X-Received: by 2002:a0c:f444:0:b0:647:27ee:4853 with SMTP id
 h4-20020a0cf444000000b0064727ee4853mr2741059qvm.5.1692050533527; Mon, 14 Aug
 2023 15:02:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 14 Aug 2023 15:02:02 -0700
Message-ID: <CAKwvOdm5kiTho-b1yagjjCGX5-=HGKutGZR3NkDeYh5RRBHJ_A@mail.gmail.com>
Subject: Re: [PATCH 1/4] ASoC: aw88261: Fix unitialized ret of aw88261_reg_update()
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
	Nathan Chancellor <nathan@kernel.org>, Tom Rix <trix@redhat.com>, alsa-devel@alsa-project.org, 
	linux-kernel@vger.kernel.org, patches@opensource.cirrus.com, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	llvm@lists.linux.dev, Andi Shyti <andi.shyti@kernel.org>, Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_150218_874171_33260B17 
X-CRM114-Status: GOOD (  19.74  )
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

T24gVGh1LCBBdWcgMTAsIDIwMjMgYXQgMzo0N+KAr0FNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBUaGVyZSBpcyBhIGJyYW5j
aCBpbiBpZigpIGNsYXVzZSB3aGVyZSBhdzg4MjYxX3JlZ191cGRhdGUoKSBjb3VsZCByZXR1cm4K
PiB1bmluaXRpYWxpemVkIHZhbHVlLiAgUG91bnRlZCBvdXQgYnkgVz0xIGNsYW5nIGJ1aWxkOgo+
Cj4gICBzb3VuZC9zb2MvY29kZWNzL2F3ODgyNjEuYzo2NTE6NzogZXJyb3I6IHZhcmlhYmxlICdy
ZXQnIGlzIHVzZWQgdW5pbml0aWFsaXplZCB3aGVuZXZlciAnaWYnIGNvbmRpdGlvbiBpcyBmYWxz
ZSBbLVdlcnJvciwtV3NvbWV0aW1lcy11bmluaXRpYWxpemVkXQo+ICAgICAgICAgICAgICAgICBp
ZiAoYXdfZGV2LT5wcm9mX2N1ciAhPSBhd19kZXYtPnByb2ZfaW5kZXgpIHsKPiAgICAgICAgICAg
ICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gICBzb3Vu
ZC9zb2MvY29kZWNzL2F3ODgyNjEuYzo2NjA6OTogbm90ZTogdW5pbml0aWFsaXplZCB1c2Ugb2Nj
dXJzIGhlcmUKPiAgICAgICAgIHJldHVybiByZXQ7Cj4gICAgICAgICAgICAgICAgXn5+Cj4gICBz
b3VuZC9zb2MvY29kZWNzL2F3ODgyNjEuYzo2NTE6Mzogbm90ZTogcmVtb3ZlIHRoZSAnaWYnIGlm
IGl0cyBjb25kaXRpb24gaXMgYWx3YXlzIHRydWUKPiAgICAgICAgICAgICAgICAgaWYgKGF3X2Rl
di0+cHJvZl9jdXIgIT0gYXdfZGV2LT5wcm9mX2luZGV4KSB7Cj4gICAgICAgICAgICAgICAgIF5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CgpUaGFua3MgZm9yIHRo
ZSBwYXRjaCEKSSBzZWUgdGhpcyBhZGRyZXNzZWQgYWxyZWFkeSBpbiAtbmV4dDoKaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzIwMjMwODA4MTI1NzAzLjE2MTEzMjUtMS1hcm5kQGtlcm5lbC5v
cmcvCgoKPgo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5r
b3psb3dza2lAbGluYXJvLm9yZz4KPiAtLS0KPiAgc291bmQvc29jL2NvZGVjcy9hdzg4MjYxLmMg
fCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+
Cj4gZGlmZiAtLWdpdCBhL3NvdW5kL3NvYy9jb2RlY3MvYXc4ODI2MS5jIGIvc291bmQvc29jL2Nv
ZGVjcy9hdzg4MjYxLmMKPiBpbmRleCA4MjkyM2I0NTRkZDQuLmZkZGJhMmYyZGU0MSAxMDA2NDQK
PiAtLS0gYS9zb3VuZC9zb2MvY29kZWNzL2F3ODgyNjEuYwo+ICsrKyBiL3NvdW5kL3NvYy9jb2Rl
Y3MvYXc4ODI2MS5jCj4gQEAgLTYzNiw3ICs2MzYsNyBAQCBzdGF0aWMgaW50IGF3ODgyNjFfZGV2
X3N0b3Aoc3RydWN0IGF3X2RldmljZSAqYXdfZGV2KQo+ICBzdGF0aWMgaW50IGF3ODgyNjFfcmVn
X3VwZGF0ZShzdHJ1Y3QgYXc4ODI2MSAqYXc4ODI2MSwgYm9vbCBmb3JjZSkKPiAgewo+ICAgICAg
ICAgc3RydWN0IGF3X2RldmljZSAqYXdfZGV2ID0gYXc4ODI2MS0+YXdfcGE7Cj4gLSAgICAgICBp
bnQgcmV0Owo+ICsgICAgICAgaW50IHJldCA9IDA7Cj4KPiAgICAgICAgIGlmIChmb3JjZSkgewo+
ICAgICAgICAgICAgICAgICByZXQgPSByZWdtYXBfd3JpdGUoYXdfZGV2LT5yZWdtYXAsCj4gLS0K
PiAyLjM0LjEKPgoKCi0tIApUaGFua3MsCn5OaWNrIERlc2F1bG5pZXJzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
