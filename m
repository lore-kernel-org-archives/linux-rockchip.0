Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8945CDE021
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 08:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qASXUErBhT+2qH5qjBoBBqWFOGkq6CSwi4nF9CVuXvE=; b=bWi8jr5+WLb0hC
	3vW83AKC2Ty4kkJWgNE6QaRSmcnnByCgYlBrrE70f9u3hEUD6djnZh3rGIVA7EBL5pu3/eZGhanB/
	QMhX5pg4bSRj2qLQTmZVt2Ns8oOxVU3hvPU12FUuGv68SpAUJdwv5MN5Uuof+fCkkG3cUgXCZh6v3
	+/Sua3sKYZWi8tqlQYWP9CiXavT6xmAP8i2kieh7y0uhK0I64TkLTyebBNrb5u0TJtjH8Gk9qXt1W
	64GjqpYKii8A+eYe8ygBcg/RwiY8T67f9x7OAvJyuUlGcHPqcPB7To38KaA9WqVoEaLPjk1PCXhjX
	zkudtHwBSgp/F4oiGAdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJp1v-0000000Bnbu-4383;
	Fri, 14 Nov 2025 08:19:39 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJp1s-0000000Bna6-3Dfg
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 08:19:38 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 0E1994E416AB;
	Fri, 14 Nov 2025 08:19:34 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D57B16060E;
	Fri, 14 Nov 2025 08:19:33 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1B19C102F29CE;
	Fri, 14 Nov 2025 09:19:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763108373; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=jBTnPGlthTueHqGOpJclIDQ8cDTOXhGdG3SwCdGrnAI=;
	b=inXn9Duc3QrSle0ksRriW5U2OP+90saPVG0jbENvS5xT3yRMEzOcLTlHarssyMy6EfOpFZ
	wzP69vVvrWy7AuAt2Fih+P4V4EIIQ79HknF41d1hFT4Io4Lwum4VhmQhYSrahcK6DFe5CJ
	UFgNDGiWv09Mausc/f3AwPlEK9xVEi1mVtyaN70upYMOsy+b/AaWt9Xn+x+3BkKb0ibEjD
	5EsQmdBNdS3ofUM9sayv6b/VzUC1aZNU0Z4z6k1CQBv7gAuNBOJPa6RC999djyp6/bciqj
	OgoE827s+k9jhsXscyEtOk0mAJ4aCATZS8YxHcKY7us4B++mUH7Z/k6FN/dIzQ==
Message-ID: <fbfd62b5-d584-4e00-a666-fad0438709e8@bootlin.com>
Date: Fri, 14 Nov 2025 09:19:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 1/4] net: stmmac: rk: replace HIWORD_UPDATE()
 with GRF_FIELD()
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Heiko Stuebner <heiko@sntech.de>, Jakub Kicinski <kuba@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>
References: <aRYZaKTIvfYoV3wE@shell.armlinux.org.uk>
 <E1vJbP1-0000000EBqJ-1AjR@rmk-PC.armlinux.org.uk>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <E1vJbP1-0000000EBqJ-1AjR@rmk-PC.armlinux.org.uk>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_001936_970969_1B9F6B9F 
X-CRM114-Status: UNSURE (   5.97  )
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

Hi,

On 13/11/2025 18:46, Russell King (Oracle) wrote:
> Provide GRF_FIELD() which takes the high/low bit numbers of the field
> and field value, generates the mask and passes it to FIELD_PREP_WM16.
> Replace all HIWORD_UPDATE() instances with this.
> 
> No change to produced code on aarch64.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Maxime


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
