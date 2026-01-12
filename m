Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04571C9EC97
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 15:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ckvs8CkQG0VWE/nGww0dt+4sREACah8svyJiAlLKnFA=; b=mauzpV/Pnh6wgJ
	Lpz6So+Yk0figUbDuCeRi5WbEgTpxN2qW7ZBZPIYWNPBD7oAKiiN6N09s0febJ5vH1FOto0NUvV9J
	ppQBdor0sWWAxDFG7mY7rxXIXHGnV9Ml+IjfTaB5mAnousgXCJgjFftXh2Wvr+WPS7QUjwVh4uLA+
	U5lSH2yjVU852tOrKypwIR5FuJQAZ3pXArOCpngIoTZL5arTtUuHlWsjqYfqJ7INF88+TFGcINOCV
	L3ri9G4ijeMmLFQONvddmK/3v0QuSHBBNeilqI1F9yPzz44NiANQzkATcouDcUCxx0uML5PAzZ7br
	WkPa3/ztHR0sts0UnkSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfKAN-00000005fDS-2KIK;
	Mon, 12 Jan 2026 15:49:15 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfKAL-00000005fBr-0ZEC
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 15:49:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 79BA8440E3
	for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 15:49:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 596B5C19422
	for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 15:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768232952;
	bh=g3qVMOf4h7r5oPNNYlK3bIOu73r1qNBGBIVfGAnDN44=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=DundEaS1NAS3+LPc/kxdJ2yGGomCc9xbKC9k1YG6fs0A1ILvlzTAtzITL4qvI3l7f
	 p9JgbJHFAiC26fKfk22rPFMWLzp9CQxUPcJZIBpXL7U4pvINJfJX/NHfcOsaf9yX6T
	 y1Un4vS/kayDeU4qkHi2UwVzBuNtTfOaFmilKeHzR7DY0ihKWyt3hwY8VZwrq2wW5o
	 GA+VJ1nDezZ9AoHIP8+sdbfpsgSYX4asdKCLOXj7F0WfKpESQGJ6nslcTlu63g7mko
	 bUa7JW1pwUW74dbDbb6TJErhuDbrjFrex4rdk38C8JNZmDbNarsi0ruW4erNk0EU3t
	 0wgDmSevaugEQ==
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-59b6c89d302so5398045e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 07:49:12 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVx+Ld2zWleWx4VcIfCmG2kri1Ol2jP499BM1coL3QK6GGx79Qq+uDYEEw10hpwDwTCMniWXXwty4gFEpSEzA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwCEpFsIf2IkJKHBtXyo0Usbrri7vxAZG7GllNY0007G527Nx2q
	yoRuICTMEUfPjeS+kk7pO6ROPHGU2mKjP1Q35r82nok6IUL/yfx3TejWVTJ3Mt38ZsAoUxGlUdT
	dNCXW7Fh63JJXPhsjUvQQfNabBSSG5GM=
X-Google-Smtp-Source: AGHT+IGrmhpZ8nXRdgojkHsyjUv61lqeNWnDH4LALSgozKK/V99agmF5Af5tLfoDGn/rKgr4N6cPGy0VL/XBPqOTq/E=
X-Received: by 2002:a05:6512:2312:b0:59b:67b9:3989 with SMTP id
 2adb3069b0e04-59b6f01c67emr6662469e87.16.1768232950905; Mon, 12 Jan 2026
 07:49:10 -0800 (PST)
MIME-Version: 1.0
References: <20260112134900.4142954-1-andriy.shevchenko@linux.intel.com> <20260112134900.4142954-2-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20260112134900.4142954-2-andriy.shevchenko@linux.intel.com>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 12 Jan 2026 16:48:58 +0100
X-Gmail-Original-Message-ID: <CAD++jLkQo_1HM2=FM8uw5FLdGo_dyNi7mq55O+Ea62am8nk-uw@mail.gmail.com>
X-Gm-Features: AZwV_QiRK9ToY_JI65YTXBjF0MrmuQc7bAxxJwuy2RaXI4VD3YSpEG_xcWGIoX0
Message-ID: <CAD++jLkQo_1HM2=FM8uw5FLdGo_dyNi7mq55O+Ea62am8nk-uw@mail.gmail.com>
Subject: Re: [PATCH v1 1/7] units: Add HZ_PER_GHZ
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Andi Shyti <andi@smida.it>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Qianfeng Rong <rongqianfeng@vivo.com>, linux-i2c@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Khalil Blaiech <kblaiech@nvidia.com>, Asmaa Mnebhi <asmaa@nvidia.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Qii Wang <qii.wang@mediatek.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Heiko Stuebner <heiko@sntech.de>, 
	Patrice Chotard <patrice.chotard@foss.st.com>, Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_074913_195516_9572EB7F 
X-CRM114-Status: UNSURE (   9.68  )
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

T24gTW9uLCBKYW4gMTIsIDIwMjYgYXQgMjo0OeKAr1BNIEFuZHkgU2hldmNoZW5rbwo8YW5kcml5
LnNoZXZjaGVua29AbGludXguaW50ZWwuY29tPiB3cm90ZToKCj4gVGhlIGlzIGdvaW5nIHRvIGJl
IGEgbmV3IHVzZXIgb2YgdGhlIEhaX1BFUl9HSFogZGVmaW5pdGlvbiBiZXNpZGVzCj4gcG9zc2li
bHkgZXhpc3Rpbmcgb25lcy4gQWRkIHRoYXQgb25lIHRvIHRoZSBoZWFkZXIuCj4KPiBXaGlsZSBh
dCBpdCwgc3BsaXQgSHogYW5kIGtIeiBncm91cHMgb2YgdGhlIG11bHRpcGxpZXJzIGZvciBiZXR0
ZXIKPiBtYWludGVuYW5jZSBhbmQgcmVhZGFiaWxpdHkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbmR5
IFNoZXZjaGVua28gPGFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4LmludGVsLmNvbT4KClRoaXMgbG9v
a3MgcmlnaHQgdG8gbWU6ClJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51c3dAa2VybmVs
Lm9yZz4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
