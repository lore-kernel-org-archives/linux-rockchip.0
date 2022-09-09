Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79F6DECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 18:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3aQnVqPPen7zzX7PjrMMNSr9uQbabnnHmhhmehtchg=; b=QusxnR1i0AhMh3
	JoRUxZehTXIhiEl+Vvc8qfAHGPwajS3jkOwRgpe0yH3H5JC9KlEpKMM1jG6JBZ2f3ai/zID1XnkxE
	r6vJE2KpkNo1VFmEZLzWJ1x+A82HOXiprbI2StwUxHPwJZCbePtogtibCWzTgRbPNlkF97BFR2sih
	c180Tle+wOcZgGWxGPRVhe65YChozSB+dryTZAgrGznDySoHh6bK/47SHWa0kdv0lm8KT8xg+M6Y5
	RkAsNcbpZH1uaA0SPWSJLC4fpfeJGLWCbv1n64O4ILywrnvSj9GHleSd191ogT9wJ3UCTatRaFfjM
	2lmnt91zc2VbR49J1LTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWipu-001Ezp-8y; Fri, 09 Sep 2022 18:34:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWipO-001Ecd-Pk
	for linux-rockchip@lists.infradead.org; Fri, 09 Sep 2022 18:34:12 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWipI-0007Ij-5y; Fri, 09 Sep 2022 20:34:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	pgwipeout@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>,
	cphealy@gmail.com,
	robh+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH v3 0/3] Add Anbernic RG353P and RG503
Date: Fri,  9 Sep 2022 20:33:49 +0200
Message-Id: <166274831283.21181.6861718157177507544.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906210324.28986-1-macroalpha82@gmail.com>
References: <20220906210324.28986-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_113410_892991_C4D94E19 
X-CRM114-Status: GOOD (  14.52  )
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

On Tue, 6 Sep 2022 16:03:21 -0500, Chris Morgan wrote:
> Add the devicetrees for the Anbernic RG353P and RG503. This enables
> all the hardware that is currently supported via mainline Linux.
> The remaining hardware (for both devices) includes the display panel
> and the battery. The RG353P also requires drivers to be written and
> mainlined for the touchscreen.
> 
> Changes since V2:
>  - Renamed buttons to be consistent with their externally labelled
>    function. Internal labels (such as sw11) would not allow for reuse
>    of as many buttons in the rgxx3.dtsi tree.
>  - Removed pinctrl for LCD related functions. These will be re-added
>    when the panel drivers are ready.
>  - Changed name of cw2015@62 to power-monitor@62 to keep it generic.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: vendor-prefixes: add Anbernic
      commit: fff05e5af2247205f2ae4f93d1943d0938d8b2c3
[2/3] dt-bindings: arm: rockchip: Add Anbernic RG353P and RG503
      commit: 22eed92492e4a390da87196d55b1da0af4154595
[3/3] arm64: dts: rockchip: add Anbernic RG353P and RG503
      commit: 523adb553573db46593724fd1cd617339f2e9009

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
