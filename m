Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8C08C55162
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 07:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Yt2AODIvJuBXID1hRz/r5ussXOLTC5UsdZM5zevMtI=; b=MmkOEApFq0NqIs
	oLqslV2Ux8eP2EzlzxVmXKNRzVTVveoI4/aInk22Io7yAUyy3uYP49v8Doq6QxxJJX1M4f8taZn+3
	hKvGGOanD4HcL53aehZU6x9NSsS/SxXu9+AnM1i5uQ+ND2jn6vcrvspKWTM5sWvCuLLNVVQqYvWHx
	uxOn8WHXCeI22cHadBbEADo/R+cpp89hdZ+AolTb3qFvZdRr70FtGz65qVCUgKOYIOMDj+0iGaTAu
	mNcvaFDntn4c2iJP0dQC3jEr0h57MAehm9sI7CzLhYtCwDSOxONUn0laCrLqjhgCvoLHKfNrbmTSl
	agCLxnFvzDS5icVRhn6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqn0X-0000000GW7f-1hVM;
	Mon, 03 Aug 2026 07:22:45 +0000
Received: from mail-ua1-x933.google.com ([2607:f8b0:4864:20::933])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqn0U-0000000GW6U-19Dm
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 07:22:43 +0000
Received: by mail-ua1-x933.google.com with SMTP id a1e0cc1a2514c-96935063700so1859343241.0
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 00:22:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785741761; cv=none;
        d=google.com; s=arc-20260327;
        b=VEYqOOwGxwaw0nS9iOyJC6F1EVT946tshGb6ReAv+x5BmrjwsGJpg+8DU0v3kNZPWT
         6yXRGDnGcfQ3VFxyof0ujs6LdKbY+iuO8iDTSI/hAht1ogQNHURL5ziKJULXfo/5s2VG
         0c2IJurdFczKwAMfwkeBeVjHRWne3JboDQ9StzUHdb3nL5VaqGQYxQEidvt5RXPGjNAu
         m4SgkWUwhJPH92BhkuugFozg1fB6Tzx6sG78iNna/ziBpCgbWR/CNfygCqtekdzHE37r
         eZXgcFSdKbPPlkSMLVfDyyOw7Vp2A4toVsOruWlDUS6jUZeO2/AzEn+3Yih3kQptwUNX
         /2XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=A8u5ujOdUQWybgJKMqWZVqAeP8c+v+cuw6pgGBdqcGA=;
        fh=/hqnnHpEYB2dYzvzSmOBbD5d1wBlyPmw34WDfAwhFyI=;
        b=Sq6w2vUN9dy1Ks4QH+xGMNpzP0eDL1Cap9eP7M1Qcfm/h7y3gY+foyJABZU3DLTKvQ
         PO2gj7dp2tqiCfMKtJ6sLZNX3fyDctMS4kbHe1D26SWNEX97iLCfkpL4vXdHJTN2xtxR
         EfhpoSHzMOvLk50XXipirhxz3L252uMP2RObGFhO47UE2In3OwMOfuezAphFdSg/9v51
         TO461zHLGEe1NoqP5X1fYGO11UK1lZMxZT0ZLLC9ea6LMY/xxy3wB4oaukDXgIN3TIfW
         bJgRG/aDEwWNYFF4gUYtwZsZIhfEFP6CoHzP/urQ0G8ohVwLwmfQKSufGt5KLK/0A2vd
         PoGQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785741761; x=1786346561; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=A8u5ujOdUQWybgJKMqWZVqAeP8c+v+cuw6pgGBdqcGA=;
        b=hkiHYJdDVzGjaqFwjkd/vbfHl6OQSs5HZb0TgaH1DlOUOwPn1onnN0RT0VYACYJaBY
         FWF8Z0sZSsDa8lLTjSK++Wu4aKA13vJLjpPdsv216ho9DBuwNNTCUZUraSU0Epv95X69
         TZTKNGsXlckdqpml+vxM4eIEv2OBFxPUQgPIkdmQnwCfMyx8odJVrwbXPRSY2PzC9N82
         B0VnCzKIEeeSy1Ntdd6HeFncwOYs0uB0sEGsLISt4rS5Pp21XTvlz+aNU1MoTEG9u+3+
         trzc9A8Cfl3lil5jm3/kAEcRAzdOlLIU1Ago+msrN8NTmAqKXKk3k2f5DquehiPkoJWd
         kmIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785741761; x=1786346561;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=A8u5ujOdUQWybgJKMqWZVqAeP8c+v+cuw6pgGBdqcGA=;
        b=bmCY+XijeJyGCGrPBSXEP9JLfUeT1ZJH+iFB9NESY1U7Aq96WXWUhAj8ojeN6pmfc5
         BUjnXBQsZ9o7Pzsrnopm7MdF4LTB6IndnDakpgPE1EgDFdLJNLLNPz2zIDdtwMNLuAMW
         0eMnfvLFJMsUGss/9gi+OKfY7i2/KYlpWwTDole/kk/NC8GqxKxtHdQawcd7uvlRgjNN
         IlKel9TYr59X3SYORn8tdhCJYmOFSNpQJi3S8KHMvQJgYOqY6f4TGJAhAUDnlJIobhnE
         GV+6fu+/4nrLayq7iP5nT5Q/2KgzDohAAs1ElxNFdQBwjtDEVjgqXHZkx7NYGpkaXTqi
         I3gg==
X-Forwarded-Encrypted: i=1; AHgh+RqVN2ivfS8ZVwDbJSDuAmLDXoWl63HEVIkJTZYTvKmoemLTk8PdVaaLPJqcofVDe0OjI1aOxg8kFz++lzYUCg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx81bk3lAo9SDvVchhgWgke2zCDWfw2uZKxJsjkS5jOm3sAfiNh
	U+86ZAk8+r9P8KyFhIOny1+piU4BkkDZ4oeDkyh3ya1l1c2NZDY9Mm9LMT09y58fqSRA0DUoVJD
	pPMAfvqzFS1LjO6ub4fZ70SqLBtsKUQQ=
X-Gm-Gg: AR+sD12StAv67c2a2xTb/sTtoGgF8X5mnBEVIOihfvGEw5cZ7qqzpYQusMyYlOsnBXK
	PCZcElRl38l/jg/yZhQMTKz0J2oah8oswBQMsf1i2kmBaKaQkgzYKJdphXvmq5NmHdJrXBKhqFX
	W6JVJv8auJkoOoE+ZOg3ALSjthBCbIe8G+4LmD5ZCKtabuFbhwEGMJJTFdRUbL7QZqZXIOrnhkb
	fnhwQu7DktugHnwKc9gszn0WYPfkc7EzoaTEGXBpfTFtr9yHFnbDnZfMvWRbNlLxeX9UvVr+0f+
	Zq5CELLwxyLtTLaA08dTRcIqg/9aJ222JJuqdES53a9DEhlWMTkg0QB4YN/UdXqNqbRrtCiQbWi
	dYYPRmuFyeuR0VTKFBdRxwfY0kulFm9zG8woCojVXgUYnysdjLNo2u4XQn0QZwT5mt/a/lU3z+U
	ARpLswWNDCqYpLqaxyWB6lO3+KOS5+sL1eRz/E
X-Received: by 2002:a05:6102:441a:b0:738:1ef6:51b9 with SMTP id
 ada2fe7eead31-75b22260dffmr6459811137.5.1785741760783; Mon, 03 Aug 2026
 00:22:40 -0700 (PDT)
MIME-Version: 1.0
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-21-0a53cd9e21cc@gmail.com> <c3171c59-bc83-4be5-beb4-e93bfb4d05a2@kernel.org>
In-Reply-To: <c3171c59-bc83-4be5-beb4-e93bfb4d05a2@kernel.org>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Mon, 3 Aug 2026 01:22:29 -0600
X-Gm-Features: AUfX_my5qRz2h8yblU9_NUKeJ1t5ekFC9VrjQ-ysDEg0WGg4G6m5XNTvE_CWbqw
Message-ID: <CADvTj4qg8Yjwr=6KVO_J+r+tEC=6TDrU3o_8YG7vuEdDA0ZpTQ@mail.gmail.com>
Subject: Re: [PATCH 21/21] arm64: defconfig: enable X-Powers ACx00 Ethernet support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>, 
	Richard Genoud <richard.genoud@bootlin.com>, Maxime Ripard <mripard@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	mfd@lists.linux.dev, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_002242_341024_5E16915F 
X-CRM114-Status: GOOD (  11.34  )
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

T24gTW9uLCBBdWcgMywgMjAyNiBhdCAxOjAw4oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
a0BrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIDAzLzA4LzIwMjYgMDc6MTQsIEphbWVzIEhpbGxp
YXJkIHdyb3RlOgo+ID4gQnVpbGQgdGhlIEg2MTYgUFdNIGNsb2NrIHByb3ZpZGVyLCBBQzIwMCBN
RkQsIGJvdGggdmFyaWFudC1zcGVjaWZpYwo+Cj4gVXNlIGZ1bGwgbmFtZXMuIElzIGl0IFNhbXN1
bmcgSDYxNiBQV00gY2xvY2sgY29udHJvbGxlcj8KCkl0J3MgdGhlIEFsbHdpbm5lciBINjE2IFBX
TS4KCj4KPiA+IEVQSFkgY29udHJvbCBkcml2ZXJzIGFuZCB0aGUgc2hhcmVkIGxpbmstUEhZIGRy
aXZlciBhcyBtb2R1bGVzLiBFbmFibGUgdGhlCj4gPiBuZXRkZXYgTEVEIHRyaWdnZXIgYXMgYSBt
b2R1bGUgc28gRFQtZGVzY3JpYmVkIFBIWSBMRURzIGNhbiB1c2UgaGFyZHdhcmUKPiA+IG9mZmxv
YWQuCj4KPiBXaHk/IElPVywgd2hpY2ggdXBzdHJlYW0gYm9hcmQgbmVlZHMgYWxsIG9mIHRoZXNl
PwoKVGhlIE9yYW5nZSBQaSBaZXJvIDJXIGZvciBleGFtcGxlIHdvdWxkIHVzZSB0aGlzIGFsb25n
IHdpdGgKYW55IG90aGVyIGJvYXJkcyB1c2luZyB0aGlzIGNvcGFja2FnZWQgeC1wb3dlcnMgZXBo
eS4KCj4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
