Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9087BC46467
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 19:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDRIZth/uTIiMGgdFnUgm8cIjkXj1gX2IH/9Vb2HsXQ=; b=c0wlQOrZiuncJd
	KFmX3QxF/pKjIaCcZ5RCB1nXY49oKrMFcZr0EkVZE9GwY1UFm9ICjAnoYNTYarJ1qQqbWLv4k9UY+
	DTpm0QvgjW5OkxdmgLwX2Nourc5HyT+c1c2TS0MWc8Kn3CwJLfG3ds5eQz98DEU2bX8LLfylJ9Zi0
	ETVy765xXjuQf7l52WpEGOlH+Ga2PmTQb5rQES6UhmV+0KsH+x0LT+RUa9hkALSbhaKZRbyLN2JrN
	2A89jd5rPKJmFLwRQrPvCaYVYaJKUBaD2IJS2otr0fZmw3ikaSOG4j6BZUsSVbzkfGGlWsJwfqGXF
	3boufVFp/bQaO47sotGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKix-008OIk-KQ; Tue, 10 Jan 2023 19:55:55 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKik-008OBR-LT; Tue, 10 Jan 2023 19:55:45 +0000
Received: from [IPv6:2a00:23c7:6883:e501:329c:8425:8e97:eae9] (unknown [IPv6:2a00:23c7:6883:e501:329c:8425:8e97:eae9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 475C66602D29;
	Tue, 10 Jan 2023 19:55:41 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673380541;
	bh=h93q8fATA0vHzK9NLlM/VLoX4onwSG8abSVypH1iTYw=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Ggj9DrDoeacXy6btIJ3KG/jZAoLaHc7MpPJquOq6+Wto41mowzJsa50R4CqkbvEEE
	 y1NGMesA6FS1tV0pyWIfevQRKGf3iZf4kcEh4kKJTjRxD6IgCeIZAdsqVY6BbOSRT7
	 eetXxAhoOBh6QwFx4NH8JIhtjY2jTHPW64V+vKGRKECvaCCtsrxD8yi7MC9tAI8/m9
	 hlk6CdL11N80ywYqixomMXlAJPtRd80NZDgOXT64Mlxn3aSVV8nHQFEhY/Pl+bGH/z
	 GyiF0VOcdU7uVVGjT7E/j982Xco1aL68S2FxGqhDiclry0tPQYRx3ULjAftkaxnjgN
	 5MCgn0dr1yo7A==
Message-ID: <7843211667a5f8451bfe5f37533c9b5896b589ac.camel@collabora.com>
Subject: Re: [PATCH v1 1/3] arm64: dts: rockchip: Update sdhci alias for
 rock-5a
From: Christopher Obbard <chris.obbard@collabora.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Heiko Stuebner
	 <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	 <krzysztof.kozlowski+dt@linaro.org>, Michael Riesch
	 <michael.riesch@wolfvision.net>, Sebastian Reichel
	 <sebastian.reichel@collabora.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Date: Tue, 10 Jan 2023 19:55:39 +0000
In-Reply-To: <615a84c8-0b5a-8f3f-517b-af1feea6d005@linaro.org>
References: <20230110155252.189300-1-chris.obbard@collabora.com>
	 <20230110155252.189300-2-chris.obbard@collabora.com>
	 <615a84c8-0b5a-8f3f-517b-af1feea6d005@linaro.org>
User-Agent: Evolution 3.46.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_115542_858367_7BA69C32 
X-CRM114-Status: GOOD (  10.67  )
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

On Tue, 2023-01-10 at 20:21 +0100, Krzysztof Kozlowski wrote:
> On 10/01/2023 16:52, Christopher Obbard wrote:
> > In the previous version, the sdhci alias was set
> > to mmc1: an artifact leftover from the port from
> > vendor kernel. Update the alias to mmc0 to match
> 
> Please wrap
> commit
> message
> according
> to
> Linux
> coding style / submission process (neither too early nor over the
> limit):
> https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586

thanks
for
the
hint - I sent V2 and will hopefully make less awful Haikus in future ;-
)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
