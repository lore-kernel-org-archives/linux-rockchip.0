Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3295CEFC43
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 19:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tz6LX3PJjCTIwQ9huuX2ppNgVzDlIQgTgQscweaevgE=; b=yFDbMm2F9ndC9L
	5qIZgNa33nrGtSNgKl3MBSefv4PzRYSeLUPJFKQ71f1YzBiMebbM1bhD2H2rHPAb+qlAfizn1+C9m
	rurE7pIUc+YqL/0rUDYUKUl0c/m50ft/5Z71FD8QKb81FOxcSq46313GQSBhKeApg7nU4y++0zqFg
	fEU9vy09wGcmnLovSD2Q/vjlGF+VG7yCQBwczS0SKHTCBSaA6LcDNiIpvdwWFf4MA5QrEMqB0fBQW
	efb1dQw6q+9xSAnxexpSvt51i79dcO1rtmfnd/ni4QVEw9agLyp/8dlN5mVsYd2y/hzno+Kkej3Ae
	4Ajlp5Y2P4fqgAJkSksA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syFtX-00000006wOc-2NwF;
	Tue, 08 Oct 2024 19:29:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syFtS-00000006wMj-0Zdn;
	Tue, 08 Oct 2024 19:29:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KtSzMVuMEzmsb3s5fp/CzqSj8SpZ1YGfO98bqbEbK/0=; b=Q34orJe5ZHnr5MZ9vAdXxHcZq1
	2aXNdxjKHtLoRCTdqvUstJhkbRHJjR8nmgvorfvRdVWR5QsHZYPFJSfBhdwvVmLxXh69TC5UmoITQ
	ckCf1XrvTxEql4JoARhK1FRrB15FMC6LAcSSCYqJ80R3yg+RIGG79oLKStW/tOLEXPABJ0xEQC5Zo
	7skbO7QIvIQDaqW+ENEmc5UQlqJ/apHM1tQruTFUERRcrxQH+DA/hOQ2AcCedm+ArOhvN1EMai8id
	Gj9TPzXlPzU/lSspkiP7g6xEKcEudOPQ3Wq6TI9ri8l7Stoxw00X2PLzQ2hh4MDnrn8bjq6j/qROr
	L2ZQfpdg==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syFtH-00072O-4F; Tue, 08 Oct 2024 21:29:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Diederik de Haas <didi.debian@cknow.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/5] Drop deprecated 'rockchip' prefix from s-p-c PMIC property
Date: Tue,  8 Oct 2024 21:29:00 +0200
Message-ID: <172841572989.2562611.5754395853486071565.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008105450.20648-1-didi.debian@cknow.org>
References: <20241008105450.20648-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_122914_195199_9F6538A3 
X-CRM114-Status: UNSURE (   9.39  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 8 Oct 2024 12:48:00 +0200, Diederik de Haas wrote:
> Property 'rockchip,system-power-controller' was deprecated in commit
> 961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller")
> 
> in the "rockchip,rk{805,808,809,817,818}.yaml" mtd bindings and its
> replacement is (just) 'system-power-controller'.
> 
> Drop the 'rockchip,' prefix from the px30, rk33** and rk356x DT files
> which still used the deprecated variant.
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: px30: Drop rockchip prefix from s-p-c PMIC property
      commit: b975d52be58c6be2a9a971c718782c9430ca8b50
[2/5] arm64: dts: rockchip: rk3328: Drop rockchip prefix from s-p-c PMIC property
      commit: 303a1ff41587642f669ab550c31ab319510fabbd
[3/5] arm64: dts: rockchip: rk3368: Drop rockchip prefix from s-p-c PMIC property
      commit: 779713c2d87d0918511a665b888313f30314262e
[4/5] arm64: dts: rockchip: rk3399: Drop rockchip prefix from s-p-c PMIC property
      commit: fafeafc33730604665a39bc9a70271f2da54a063
[5/5] arm64: dts: rockchip: rk356x: Drop rockchip prefix from s-p-c PMIC property
      commit: 2f0f7602dbdf4aa2ee50446f8f488445b37bb04c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
