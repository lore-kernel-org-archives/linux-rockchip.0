Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD744C982F1
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 09:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAxZg6UDy5iTMuQ4lTdV3PtgjtD+4ujcWBMsbSfcYS8=; b=MnkkUvF/NsYTJp
	ENqckpazQmPGOLSQg60T1ApSkfoiQKBdJcvYQb5dfUAsq2DStJlY1mVg1R7sVOD1oJwSum9JBHyAE
	7TOimr/F4RzcTQbXp2XC+UX2KmFpHNc5kIYOWXotCTu0lTx1Hd3Scyo2G3rSUOqaJT+QpvY3fXfK2
	iLp7yChIHLOBm3OVbDIA412C27vMUcOq5VbxO5wgvj7SnA5ISph46ttWvCGfSObgHSWyOG2cb3GnD
	eI1hnqxYvpzV+OANTL9hkbQtZ8OmyRqPhyiwRVZK+JMWZTqt4BVwgJqsVgMuDXuEO3LDQ/m3U3+QQ
	p1UxSd+ttpNgqL/7VTHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8wjP-00000004uNe-35hs;
	Tue, 22 Sep 2026 09:24:07 +0000
Received: from mail-qk2-f12.google.com ([74.125.230.204])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8wjM-00000004uMA-2kSA
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 09:24:06 +0000
Received: by mail-qk2-f12.google.com with SMTP id d75a77b69052e-52fb76c9deeso46352441cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 02:24:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790069042; x=1790673842;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=oT5SmnnEiCJkeSE3HgFIBSVwvA/3E4ZeuxsouiwktnY=;
        b=fkZDhLghQSdcXfuIbJrT9yhRv/3CRbY7FIx5JajtT9x1cKKKu3g9wu95381wJcxYzO
         BbKspsE8RibvnOfHcCarN4TDm+zvqxBsiQRYnVOfXZPrOqzhe+Hni4zY+1ABAqhkbq9P
         2UhfHJYP+ErkghZqJdrEabpKjj+DTyemihT1AQle5zMau/c5TEI04e/eejX1ZXKHp6mu
         W6zgGOntZxUX9aFbKJSSxQf6a0yjFm26wA+WO+HkToV9l/B1wUhLs6m2veLl8I4Wyqmf
         veoAbgPwY2K1LlcVlTCNAmvl+LwViG2ugEAs1lzgEQAlQayY3csd0pyZEr48FBfgJfHX
         imYA==
X-Forwarded-Encrypted: i=1; AKwUvBzHAv+3BJaP0KMCfkoL1/Wi5fA08iCSN6swbFaI93h8DMyoNkAPKYayanLG1M72CNJjzdDK1Go0l/7YCSlzug==@lists.infradead.org
X-Gm-Message-State: AFuF++kOyIJJ6Sq+qKVOjW6FTAlO8odWhIjzph2Em9p3E8wsqwWtdLp7
	9jUKJLEDxBj3LzZ2x1MUwxku7XF64z98gs7F5WrQwi1Z2bUWWX5tWzXv5p/j/wu0xkA=
X-Gm-Gg: AYBFou1BVbm8eGz27aiFhOqBZ50IwLkvi1Zh8HQLDo71FAGlv5je1xGRAJLVlKMl39Q
	uaM/LNLL94G0AOHEtpYrAzJo8CVULkhrtWnKLbJhrc7+SK3sNE9qfgcHstmL16QLWJFwziun3J/
	ocqbwgXrii9h1gaWwHdZzgjW7dUZOiAE+IALaKyOGw4F7i/AWmmSi00T/xT7zHFZK5O0NABTV8l
	2moBpsqQLZq0ROteYOwp+wPaV8/awTTxl7hFwKMPhsKGN4sWBEL58lF9hMe8gcifxO+RR5Z8coD
	yF06k/2EFTSI/4dy4aeOxz9VsY454185T186RcsRWzLkLdVDLwvdnvHpM9NheAgKZ2L+gh0q0Zd
	DFEydcWU9cPLgIX2219+tFXryFwF1L4ITtxzgxFeIqHOBPwOSFbWtJDzWG+ZX9pZ453uYjVK9SU
	DgJEBB+4i00SuPrO8+OFT8IDN84DFYEWfP6GLAQPaJOcoJX5cFT8P6oQuf/tzv0215SntzguH7r
	Ha0eobu19pQt1aN8RVSQXtSfTclMAhIXLeX
X-Received: by 2002:a05:6102:914:b0:79b:b116:2c5 with SMTP id ada2fe7eead31-7a55ab35ab4mr7456616137.2.1790068660941;
        Tue, 22 Sep 2026 02:17:40 -0700 (PDT)
Received: from mail-vs2-f12.google.com (mail-vs2-f12.google.com. [74.125.227.12])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-7ab17a0cc1fsm1099983137.5.2026.09.22.02.17.39
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2026 02:17:39 -0700 (PDT)
Received: by mail-vs2-f12.google.com with SMTP id ada2fe7eead31-78a5e045187so1628945137.1
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 02:17:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBwqy4rX2ZUI7ytYHe6xeaRgqTNmumL4wqGVNAq685AM+wXOfqHjj9uclQ/nw46MjAM+yJHmLTkFN54EU0dICg==@lists.infradead.org
X-Received: by 2002:a05:6102:1492:b0:7a7:198a:c2b6 with SMTP id
 ada2fe7eead31-7a7198ad381mr4988859137.30.1790068658957; Tue, 22 Sep 2026
 02:17:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260910-rk3588-dts-rtl-eth-describe-dt-alias-v5-0-c1b9e5f10cd6@pardini.net>
In-Reply-To: <20260910-rk3588-dts-rtl-eth-describe-dt-alias-v5-0-c1b9e5f10cd6@pardini.net>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 22 Sep 2026 11:17:27 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXMjxgj+pT5A=jd_A5BVQctHXJqeiU4EhPA_ZSANZAAmQ@mail.gmail.com>
X-Gm-Features: AclHuK9pjyjJZh6DYzu8j0CaKCcKmJ8CfBcbQ8aIBw9Bf-OTlVvyy4dIW39Xywc
Message-ID: <CAMuHMdXMjxgj+pT5A=jd_A5BVQctHXJqeiU4EhPA_ZSANZAAmQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] describe RTL8125 PCIe NICs on Rockchip boards (and
 add DT binding)
To: ricardo@pardini.net
Cc: Heiner Kallweit <hkallweit1@gmail.com>, nic_swsd@realtek.com, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_022404_700866_5CB294C0 
X-CRM114-Status: GOOD (  18.20  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Ricardo,

On Thu, 10 Sept 2026 at 22:08, Ricardo Pardini via B4 Relay
<devnull+ricardo.pardini.net@kernel.org> wrote:
> Several Rockchip rk35xx boards carry on-board Realtek RTL8125 2.5GbE
> NICs whose PCI function nodes are not described in the DT. Describing
> them allows for stable ethernetN aliases (matching the GMAC alias
> convention on these boards) and lets U-Boot's fdt_fixup_ethernet()
> inject mac-address properties from its ethaddr/ethNaddr env, so MACs
> stay stable across boots and U-Boot and kernel MAC match.
>
> Tested on a NanoPC-T6: /sys/bus/pci/devices/0004:41:00.0/of_node ->
> /sys/firmware/devicetree/base/pcie@fe190000/pcie@0,0/ethernet@0,0 and
> u-boot correctly adds local-mac-address property there which is
> correctly picked up kernel-side:

Have you tested this at 2.5Gbps? With which firmware?
I am asking because I have problems at 2.5Gbps using the firmware from
linux-firmware (on a different platform, though)
https://lore.kernel.org/CAMuHMdXPAeHoeaQbM9rXbXukoMbFV+0k28n6sRMw8XF8720WUA@mail.gmail.com

Thanks!

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
