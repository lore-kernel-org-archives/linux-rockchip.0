Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B590F106ACE3
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 20:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPndTeF5H95Vl2YGsa4RHtB9WiNr5BpZUFGMFFvoXAI=; b=Wb91VtpYtij6oF
	XHWynek0lcSHgfZpqn+k0zdesgo2pO6io6z4PjBLXSKqmfImVY07tpnMZfr4CO/NzFKp/rv8uhWYF
	eAr/E3mHjzT9cVeRWbbDzdl/F8cYnM/CKcv3NGwxNSsoB2sZVfBZPULzNuLZKo4NlWDOPii0JoyY9
	RQkGQNRSMaVYkvgsVdisPse65dJZHE3RU+D+L4TmDH6sfCCP+rzsfWpJwztg7JtTVkt3h7/zpZz6o
	zlWxNmH9Oj6ekcZLEkqt1e+WWqkZLhdquy/C/FBFVPIGwqfbHacGYkytbHxU3+ri4ieeX1I+Yadn/
	SO6fnKi6izSphCc1Z5LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0mEd-0000000FCas-2qaM;
	Thu, 12 Mar 2026 20:02:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0mEc-0000000FCZF-17vq
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Mar 2026 20:02:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xm0P/ms1Jd/s/4uaMaEbhok052vUZSHlfFiirTn6RwI=; b=EpszRhWytKItDKfj0vQLAP/vh7
	8saiRJPec/UTJVr1PjyahuPYSz1hOvCBWl//LPWnecK8MXoFWnKs8f4PG4fW9GXX/W3K4uGKJpeRZ
	jBWfwLRuMvrVPOer38dXL2K0h+FND8Id+mi22taJesRfBT1VbcAIoAD9iIvCilGer3wYsuCtHwyio
	DH3DQmvHmpdQwKHC3yzxIOxRCZiBK2za8W/ccC1OueDPa3AXvqzaqdJ14Dqxqfzi61TI0ZZ6Xp5Y7
	MxQNVtsAxWJBW+3LFBtNrEua3edjKB2pF4BtW5XW+G34PFoUy5j5/37tGqZe5VMwYNgIM6THwsrqA
	rPCGL4eg==;
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Correct Fan Supply for Gameforce Ace
Date: Thu, 12 Mar 2026 21:00:58 +0100
Message-ID: <177334565394.2520391.6625227879888773579.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260310134648.550006-1-macroalpha82@gmail.com>
References: <20260310134648.550006-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_130218_309113_3DBF89FA 
X-CRM114-Status: UNSURE (   8.69  )
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


On Tue, 10 Mar 2026 08:46:48 -0500, Chris Morgan wrote:
> Correct the regulator providing power to the PWM controlled fan.
> Without this fix the fan only runs when the audio path is playing
> audio (because the speaker amplifier and PWM fan share the same
> regulator).
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Correct Fan Supply for Gameforce Ace
      commit: 98291ce632466c3de7f29b37a1f7b89a6dee2910

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
