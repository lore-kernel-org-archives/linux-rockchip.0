Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 730C6C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 11:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xp9ylBggDasT3lc29zUOEhtHTO5pgXeCTw7vbDmq4nI=; b=n1S5tx/p0MuVn2
	9nk7zyXaNmjve+bZZ2MS4G2VG3V82pSr4VpmkI/VFYoLH5mSMDmYTzggMuX/1Ya3lg7P2zWHPZdjs
	8HoMU8PSty8y/Bier1VKyi/Nke2iQ1Ipj7pPvmJqhLvfKIE4NeiZFRXao62hGTt6TjUygWvnqWYBa
	6HPajRJQwkexdabNf11MztDJ660HbCMSDEk/JWCC2y2f0wwypvyKD1dWyGA/6uiM/REdQqclaRq7e
	/h2IotX2q29rt94jErhPba6oDCv/PyhSaXmJvUcvzozbNGygurjf3fw7e2vN+quds1/B36A3MqYHk
	dRWgrc74sk0P3APErLcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1savSa-0000000Fc4Y-1NoO;
	Mon, 05 Aug 2024 11:01:04 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1savS1-0000000Fbx3-2MRr;
	Mon, 05 Aug 2024 11:00:31 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 5C3FD418FA;
	Mon,  5 Aug 2024 13:00:26 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cSj5y5vJ8qJe; Mon,  5 Aug 2024 13:00:24 +0200 (CEST)
Date: Mon, 5 Aug 2024 18:59:57 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1722855624; bh=yWG1ffncRBE4pRq4s7S+wiFWhJWlpLs09+f9rKud/VE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FDgChoiuUO85kHJM0IZ4qjGqc85KQmq6H4+JkylVQiZBK+gVlyoh5x0atGlxizFVf
	 cTypiefgmtxEIxI91rSTNShf6kv33ApVhNDamIEGsqHw/7PCnlu6dVxj01j4GWCfbY
	 kK7f47u61jJIMLxI4mP+aMLQHyv0eYe0qirOjJvE2I1OK31i9W5mMYszkHtrxDuiux
	 2OgjUnLMKOr6/yQ/UsatIXNFvbBTL7hArMhRZ1ClcP+hLmshhn+D8vZkS6ZysBcpwn
	 ZTpNJ7Xg/U0EHlkK+4JirorUqto4ryCfmsZ9ihdNMzE1EBKqxcfTIWHgioTLrHUz8a
	 nt0k4zASa4gWA==
From: Yao Zi <ziyao@disroot.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
Message-ID: <ZrCwrWjRgvE0RS98@ziyaolaptop.my.domain>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <20240803125510.4699-5-ziyao@disroot.org>
 <56bd1478-ce8c-4c1d-ab16-afe4ad462bf5@kernel.org>
 <Zq-AFWYaqu7zGuz-@ziyaolaptop.my.domain>
 <b967ab05-dd0e-4fc5-bee6-ad7639e47bfb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b967ab05-dd0e-4fc5-bee6-ad7639e47bfb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_040030_052343_79C0876D 
X-CRM114-Status: GOOD (  16.21  )
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

On Sun, Aug 04, 2024 at 04:05:24PM +0200, Krzysztof Kozlowski wrote:
> On 04/08/2024 15:20, Yao Zi wrote:
> >>
> >>> +		compatible = "fixed-clock";
> >>> +		#clock-cells = <0>;
> >>> +		clock-frequency = <24000000>;
> >>> +		clock-output-names = "xin24m";
> >>> +	};
> >>> +
> >>> +	gic: interrupt-controller@fed01000 {
> >>
> >> Why this all is outside of SoC?
> > 
> > Just as Heiko says, device tree for all other Rockchip SoCs don't have
> > a "soc" node. I didn't know why before but just follow the style.
> > 
> > If you prefer add a soc node, I am willing to.
> 
> Surprising as usually we expect MMIO nodes being part of SoC to be under
> soc@, but if that's Rockchip preference then fine.
> 

Okay, then I would leave it as is.

For the fixed-clock node, I think "xin24m: clock-24m { }" is okay and
follows the new rule?

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
