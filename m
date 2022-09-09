Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 079D8ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 17:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r0A7Fm2N02pgz0+c07N6ekl9VqWrBpLrIu2YOu2QFik=; b=0V3/wyYFMukJSS
	aie0Hh01PVhV9U9EmcYRxSG2Y57f85LWB7nRzLj+QQyj57iMHy7desxf3DJo8A0cmvztTu5SCXNa7
	ZpeI8d/cPPX0J1ZL8QjvHlxR6cemCYJWDY0FIKhe2+W5TZTiHcYnVSadadeYp7zckTA5WtfTy84a0
	YQnpWNv9i8aWg0SogZoK3wrItNx3TWTa2WpfqiQMkKTwQZcfKCwTH4/ZW4rKUmKw6edQ3dgglFcm9
	YY04cl9oeH/hI8hjFFQXBdaRgUeTYoFBQMIwQv3NP/9aKJoWDpgxWhZeGSbxR9fQSl5dqvQFe/QTw
	9Vo/f7F5KDYwDsm2nWMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWhXn-000eOm-0K; Fri, 09 Sep 2022 17:11:55 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWhXb-000eEr-4Z; Fri, 09 Sep 2022 17:11:45 +0000
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id D87C240002;
	Fri,  9 Sep 2022 17:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1662743497;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qzTczB6munZOD4DwLGAw/A7taonsXXSbVs8d7tpSJ3M=;
	b=czkgcDmevNYuTr84omI64YQ7bf32DFyD3vn9t5gdj9ru9e9w3lYITFnCP81FR2oWOiIGcV
	90THyh7b8kJx7inMaW213VE8lE3bsvtuAktpMsIgl5iWB2KGweR/DZwgzzEEGioTjG3Bc4
	bMYCCaSCIgNncZ0bAbv9wTcKF5QnHtBRSjnDUtm2Y/j6Za9Rm+XMC97wtkGhplR7ufE+uF
	8xf40iVDGPzxYQVrNxJTvY9Wh8N1VsudkoYasIXba+j6YvZ7DaTf5aFtwgmWqPfYWMnE6o
	eIbP+4Y/E1GJ4ct9jDDmsphv8IzVtnkfFQWtFYelErFspv2kVc5nytaKcZP8sg==
Date: Fri, 9 Sep 2022 19:11:32 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Nicolas
 Frattaroli <frattaroli.nicolas@gmail.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>, Chris Morgan
 <macromorgan@hotmail.com>
Subject: Re: [PATCH 7/8] ASoC: codecs: Add RK3308 internal audio codec
 driver
Message-ID: <20220909191132.6920ba09@booty>
In-Reply-To: <YxoX+G5OFVDTX7s3@sirena.org.uk>
References: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
	<20220907142124.2532620-8-luca.ceresoli@bootlin.com>
	<YxoX+G5OFVDTX7s3@sirena.org.uk>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_101143_519891_5915AED9 
X-CRM114-Status: GOOD (  11.56  )
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

Hello Mark,

On Thu, 8 Sep 2022 17:27:36 +0100
Mark Brown <broonie@kernel.org> wrote:

> On Wed, Sep 07, 2022 at 04:21:23PM +0200, luca.ceresoli@bootlin.com wrote:

Thank you for taking the time to review my patch in such detail! This
is my first contribution to ALSA, and it was not clear to me which
parts of the existing vendor driver needed even more cleanups than I
have already done. I will probably get back to you with specific
questions later on, while addressing your comments.

Best regards,
Luca
-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
