Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C40C8C02192
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Feb 2025 03:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obtAJCD/T9XpHj4MRiLb9djjWmPX9pNDT/v6OwBo4CE=; b=bjLifOqzxFv+5M
	vxelcKbUPGyZ3chX3cv2XTR3HZeJe/0MLLZU6f624wpWEn4PFbByzla+clQSBeRtV4Y6d5mhK/r5Y
	J95hu80GZGhocu67WSld1ZuX8dvpdbSKcVkfnQmSuoHCJHyc/GYpYgtxNcrPhBOs0wveDPH2n9vz+
	NEQzwQ1b7mXcAGwsGsruoF93raVuhboDPkbti3xN7PbcJi4El3P8Ld/hCbYoKjwnByEhP2gs+CLGs
	TnAA/uVOZqpppY3kn2tLKgu+D3ebta9e/zMQq5Ebg+SYENU135BFY3ho6c7ywAvz3fDF8mxrurCDD
	xErWJniKyR71Yxl0aw0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfWOg-00000002FDu-48GM;
	Wed, 05 Feb 2025 03:48:18 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfWM0-00000002EpO-38je;
	Wed, 05 Feb 2025 03:45:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CF139A42536;
	Wed,  5 Feb 2025 03:43:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92B66C4CEE7;
	Wed,  5 Feb 2025 03:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738727131;
	bh=qT3uB6BFnXnuoNmO5ZICAMNYpk2rYRyb7Df6Uuc3yM4=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=pMbVHHZKs7P25UVROkPy0e8TaaRQkao/kjQBlVYOjxMxdnZKVKpnfPw73WfAYObhK
	 TmYJoKrLJgF4y0gm/qS/tYKJk8rVr9TdlqWWlmLRjN16I9XT+om1a4rP2N5agr/iEf
	 rPJrwrhrlNpiGX98R6ZwiVySLAZpgqhX7XnuR2SBzKGth6LJZzfYtzMffblRL34nAe
	 kBQgrJgOg77v74XUFvNp3smUos2M++mJKHZ9utXGhAFqbCqrg7VCXse4GR1gFKiZmw
	 Cya2bwsqJ6gegFg4MU1615gvJtSSw+d/oyAQ1SHOzdM3SfNr4IPMWNBn7zm7+h9MSl
	 NGtinAJqKkzcw==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-305d840926fso50426431fa.2;
        Tue, 04 Feb 2025 19:45:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUt6LRlOtMH4yrOo7JUiE5CSTnGZFoTIT7200bz4No1tsLfH4HfWrYGkejuyq/Jqd4oxeJA64kjILAVnSaF0NhI@lists.infradead.org, AJvYcCW0d5aZrcn8Qwuax0S9B+mkwi+bO2LEZqdGUKKmkIsYMXCGKC7BGI6f+N4ROZRJboHIUAZxSNkv50akz1+pEZA=@lists.infradead.org
X-Gm-Message-State: AOJu0YynHidJKTIXcX2crYLbcj1d2Q7xvOXev09KGrQR3dv3JCL3z2SD
	zVhQ2Ki9YK/9YpO1qWSHllapanf8J+fFNm7+YnNWhj3DeLOagS4wy1/AoR3X/cZlkwpuLgm1pu3
	2sAOpZjpy3CDuPQQlsLhnXG4A7s8=
X-Google-Smtp-Source: AGHT+IF/j4mjEmNMJlaOseMTc31MNVXclZ/WljET6VoPTchVI9nwi6yNBFx9ce6hMcBEMWkiJTzpYrsil92u3LJXWWw=
X-Received: by 2002:a2e:bc8c:0:b0:300:33b1:f0bf with SMTP id
 38308e7fff4ca-307cf23bdb9mr4600901fa.0.1738727129916; Tue, 04 Feb 2025
 19:45:29 -0800 (PST)
MIME-Version: 1.0
References: <20250204161359.3335241-1-wens@kernel.org> <20250204134331.270d5c4e@kernel.org>
In-Reply-To: <20250204134331.270d5c4e@kernel.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 5 Feb 2025 11:45:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v641vvtVKv8QbiEfHnMWngcKYTJZAgfH5k+G_nOvZcbC9g@mail.gmail.com>
X-Gm-Features: AWEUYZlfZKNFERbjqveUEQnkoJAkV94srAWQ5Bo9GwhmHD8TgbxWwy-L79DYJGg
Message-ID: <CAGb2v641vvtVKv8QbiEfHnMWngcKYTJZAgfH5k+G_nOvZcbC9g@mail.gmail.com>
Subject: Re: [PATCH netdev] net: stmmac: dwmac-rk: Provide FIFO sizes for
 DWMAC 1000
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, 
	Heiko Stuebner <heiko@sntech.de>, "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>, 
	Steven Price <steven.price@arm.com>, Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_194532_855290_81A84BDB 
X-CRM114-Status: GOOD (  10.41  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBGZWIgNSwgMjAyNSBhdCA1OjQz4oCvQU0gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBXZWQsICA1IEZlYiAyMDI1IDAwOjEzOjU5ICswODAwIENo
ZW4tWXUgVHNhaSB3cm90ZToKPiA+IFNpbmNlIGEgZml4IGZvciBzdG1tYWMgaW4gZ2VuZXJhbCBo
YXMgYWxyZWFkeSBiZWVuIHNlbnQgWzFdIGFuZCBhIHJldmVydAo+ID4gd2FzIGFsc28gcHJvcG9z
ZWQgWzJdLCBJJ2xsIHJlZnJhaW4gZnJvbSBzZW5kaW5nIG1pbmUuCj4KPiBObywgbm8sIHBsZWFz
ZSBkby4gWW91IG5lZWQgdG8gX3N1Ym1pdF8gdGhlIHJldmVydCBsaWtlIGEgbm9ybWFsIHBhdGNo
Lgo+IFdpdGggYWxsIHRoZSB1c3VhbCBkZXRhaWxzIGluIHRoZSBjb21taXQgbWVzc2FnZS4KCk1p
bmUgaXNuJ3QgYSByZXZlcnQsIGJ1dCBzaW1wbHkgZG93bmdyYWRpbmcgdGhlIGVycm9yIHRvIGEg
d2FybmluZy4KU28uLi4geWV0IGFub3RoZXIgd29ya2Fyb3VuZCBhcHByb2FjaC4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
