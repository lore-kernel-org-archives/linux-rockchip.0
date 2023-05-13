Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C94BFC77B7D
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 May 2023 16:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9CgffcEjqnHA0EDnZnWo7mG9dtQ6mK7ceARMPrCzpkQ=; b=hz487M9jZCdUzz
	UjpsPjRUEXQ/ZlExDRE9S3k9hSSQep9zSH91KY94Uh7p8jSV+OL76sNECx1HtQFZZJMlVeuxCnUBL
	OsPBMfrNqmLw6F4/D70Rkgpkq8U0FJ27KLNanv203saRQEkFlBm6On0E9OEjVLDQ0bHmLdgxPp7Kd
	jsJlq7vwzmLmP4LyP9LSe8fLbxBkhip6Uku96AmCwJgU9VVW/Z0jjdvz53ES8WVeSv8vPXSsalJoW
	dw1N+AHBCsRP/ZYwuFBAlAj0X3/sDV8wkNdlRVirvJo/CwzfQHYp2FgH1XV64VHwcHjSFsr+t3kb9
	JHJYRg3L+hyw7p4e1qbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxsR6-00FQRK-0w;
	Sat, 13 May 2023 16:49:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxsR3-00FQPt-0d
	for linux-rockchip@lists.infradead.org;
	Sat, 13 May 2023 16:49:34 +0000
Received: from p508fce4f.dip0.t-ipconnect.de ([80.143.206.79] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pxsR1-0000Vh-Rd; Sat, 13 May 2023 18:49:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	maccraft123mc@gmail.com,
	sebastian.reichel@collabora.com,
	jagan@amarulasolutions.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: Re: [PATCH 0/2] rockchip: Add Anbernic RG353PS
Date: Sat, 13 May 2023 18:49:27 +0200
Message-Id: <168399655503.610817.14386300924428899116.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230512162039.31132-1-macroalpha82@gmail.com>
References: <20230512162039.31132-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230513_094933_255681_874153A8 
X-CRM114-Status: UNSURE (   9.04  )
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

On Fri, 12 May 2023 11:20:37 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Anbernic RG353PS, which is a cheaper variant of the
> Anbernic RG353P.
> 
> Chris Morgan (2):
>   dt-bindings: arm: rockchip: add Anbernic RG353PS
>   arm64: dts: rockchip: add Anbernic RG353PS
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: add Anbernic RG353PS
      commit: 4e959380ba823cdf4e643ff247b8359e1bcbf683
[2/2] arm64: dts: rockchip: add Anbernic RG353PS
      commit: 4d83538aab4ccb59abdbf7f39568761a8b7d7ea1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
