Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 610E5ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Sep 2022 17:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4u3HUBkODP0S0Qnk2YhRnJsfr3tNuh1tUH1QJJLz0QQ=; b=UnjfsK13HtTlG1
	1uli1O3E9REgDZZTs0BkaOsEfDPgMcTiyOortu0lWrFkDFnKiUnS6dbfX9LMISJlZcuI8ests3V2X
	z4FGJh9agR9cFOO1i74Z45GQYIYmwVnR4kygpF3j/r+cmQZ4VdX/slQIoAeieIwK6JLi7ALqQ1SuO
	uB1Wdh2PZoj2Hkyc95k+H2EY5Lag2PSQqZ+U2N2HbZf6NI0dGhJAGY/1JrRc5vTXPQPRYFgduyFTS
	qH2oog0FJlAfb30gXgzNYSgn9no84PS9N+3n6lhAFHr7gFUvGI4Bo8KoM15aJNRIbLKIL9gI3q9XJ
	Hs3mhAB/42inuorBL2pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUtKu-008ULg-Ed; Sun, 04 Sep 2022 17:23:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUtKI-008TsM-Qf; Sun, 04 Sep 2022 17:22:32 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oUtKD-0000tW-Cv; Sun, 04 Sep 2022 19:22:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Cc: Heiko Stuebner <heiko@sntech.de>,
	phone-devel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 0/1] Add support for the Pine64 PinePhone Pro phone
Date: Sun,  4 Sep 2022 19:22:21 +0200
Message-Id: <166231195330.2423948.5394487959576836993.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220829050040.17330-1-tom@tom-fitzhenry.me.uk>
References: <20220829050040.17330-1-tom@tom-fitzhenry.me.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_102230_881779_C4369BE5 
X-CRM114-Status: GOOD (  12.14  )
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

On Mon, 29 Aug 2022 15:00:39 +1000, Tom Fitzhenry wrote:
> PinePhone Pro is a RK3399 based phone produced by Pine64.
> 
> Add a basic DTS for it. This is a working base that will allow myself and
> others to add more nodes.
> 
> Relies on "dt-bindings: arm: rockchip: Add PinePhone Pro bindings"[0].
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add initial support for Pine64 PinePhone Pro
      commit: 78a21c7d59520e72ebea667fe8745a4371d9fe86


Why was the dt-binding addition missing?
I've pulled the binding from v3 now.

While it is true that you should not resend patches just to add Acks,
when re-sending a whole series that includes other changes it's still
necessary to keep all patches together ;-)


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
