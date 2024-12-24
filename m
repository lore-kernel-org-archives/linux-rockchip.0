Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79D9CE7718E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 09:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dnIpJYqDS7Z6KqtqyTubfSf1IgROauvrfK0jRMoIn8=; b=lRXOeqp9LmSu5k
	WHrYZZl0w2cQtFW8/9ydrMGoFcvxDSyFPUtAhnQWXSGrxBNUKJ2aEKSSWF3QWuTTsDmS0/4meS+nB
	PglJL6iLGco28OlhLXEOLfV0/yXVrVkyzv3pBJYPatIPhBXgWvxTgbr4DDMzQexogWMux3JZeF59a
	eqIGpmaBhJE4/oyuyCABZfPiDr4av3B6BEnnSOkZnpeIG27ytFqgCLB7BaJOCdkackvbBa6G24BBU
	DZiPwi2LrhwZM94s4cSihNz9UP47jNXmsDocFSlPXJ57xxu6Tid3H9BacCZLeigEEUvMJyUCjq035
	vIS64jkXPAM8fZu4PVGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1g8-0000000BffR-2bkv;
	Tue, 24 Dec 2024 09:58:16 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1Rj-0000000Bd2B-2lbW
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Dec 2024 09:43:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 97670A41442;
	Tue, 24 Dec 2024 09:41:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB9F2C4CED0;
	Tue, 24 Dec 2024 09:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735033402;
	bh=RA5sS+LHe7DdBB+p8rWK5aaRQ2sxjMPQzK5z1SuxXUs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k6qI958LWgBe7Ke9QTtJLD1XdOBbpACohHvR6nPJtmrkDcf/Z5ViolwskfKJZ6bTF
	 6kLd3fkOh5DR9istquPw0vId18UMY8qox43kfk2bvMpJ+3XANpyLr9l8b/940jl5M5
	 liZ/V3Ch9iOXPKTv1aw7n6nIdSEvAvEervMA/iFgXh5TBD1PxSOf86LVLRv3GseEsg
	 Hq1T45JthNOaB28WM0d1nipvNqwBY0O+PAIO2lCZZBBYEGO7+XIT+4daU44Hb6r7/+
	 z9SJB07yNZ4f+snkD8lp5mWp2KCPkeiXy1Obr9qNXIBR+rE0uPCah5Ot3s9Qz4MQsh
	 HmjEg/LBLFEPA==
Date: Tue, 24 Dec 2024 10:43:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, dsimic@manjaro.org, jonas@kwiboo.se, macromorgan@hotmail.com, 
	andyshrk@163.com, dmt.yashin@gmail.com, liujianfeng1994@gmail.com, 
	tim@feathertop.org, marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net, 
	alchark@gmail.com, jbx6244@gmail.com, kever.yang@rock-chips.com, jing@jing.rocks, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Radxa E52C
Message-ID: <hs45mw6utovel4ok53iys2vxy5njv3etsimuotoylfqs2joybt@hgdrv647z4kp>
References: <20241223015318.1999-1-naoki@radxa.com>
 <20241223015318.1999-2-naoki@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241223015318.1999-2-naoki@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_014323_764094_1EA3970A 
X-CRM114-Status: UNSURE (   8.36  )
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

On Mon, Dec 23, 2024 at 01:53:17AM +0000, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa E52C.
> 
> Radxa E52C is a compact network computer based on the Rockchip RK3582
> SoC.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - Add "rockchip,rk3588s"

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
