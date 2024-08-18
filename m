Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20905C52D7C
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Aug 2024 18:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SGU3OQGArnOa++19SOevZjT8Yy9x5K1jEVDFe9xXG9s=; b=DF+oMve0JCw4GF12who+lTf6oM
	cfHMYxTTOhOmuozFRXRaY22tubDIdiEPk10uUM5q0T++gKRZpbzqbmpPyQX1QYBfUc8nQ6N1Pj1ek
	0hW1o/gl1ehpgUpGBSOxqZH7eNEvqxlVrp0wM6OudllXtYpu8dBBxLDSzehAAZfoTdBNQyABV0t1p
	KBQ3VXzbZjzTFskKRBgJFByopfmxtnN3FaWYbHSpm+PgvSpwGVqi7xhi0X2siqlgOzU38hcbxZRSR
	Z4agGaxEvYfAz8wcZg5eF5nUk8kPSMeS6mtJLpCMsz7JKNZd21mvKrcvDwhA4aYhvwFyF4j6KGYRJ
	Y5ch3abA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfkch-0000000Gxvv-0E7W;
	Sun, 18 Aug 2024 18:27:27 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfkbz-0000000Gxpk-285u;
	Sun, 18 Aug 2024 18:26:45 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724005599;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bUUDK9X8hK9InhC5RnU5PQG5JxYBI/T1toljnxF4aqo=;
	b=aTVvCkqy7jGQDw1zxlBK7UJR/oh/B0E9wwaq4kc8wOAqTIzby3WhxODCTXHX6e9xgq2WOl
	eewlge5SRL73Sz8wv7GBmku5i2OjnmvQ1lXkmHuCClUQoT+t23mRnHOcfRECTEKgOSF7L3
	2RffuKT5D2DQH1mYE/CCeawsg0V4gtTnerCdjTQNRnHOdY1f4tQNBpDeIEj+ROfXPpQDTP
	xrZO29WfQHJSzwFf2OWUjZMKHTlpG60P34u4WNgBBXiUH84I6dFPTpKbA0vMQMqSIiJ+Jm
	OjcLCi+fe97Fnt9Yte5nsBDZx5R3nvjM97/KBWaBGjYWx6HRzKh1ptfLkQW/ZQ==
Date: Sun, 18 Aug 2024 20:26:38 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Vicente Bergas <vicencb@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [BUG] Rockchip SPI: Runtime PM usage count underflow!
In-Reply-To: <CAAMcf8Dts3=6CxNCLZBvXsdFHpaOs9mL2NJ8TMPU5+duray6-g@mail.gmail.com>
References: <CAAMcf8Dts3=6CxNCLZBvXsdFHpaOs9mL2NJ8TMPU5+duray6-g@mail.gmail.com>
Message-ID: <d35a5c5216ee3d0321c725aea61e0326@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_112644_043135_A8239131 
X-CRM114-Status: UNSURE (   7.59  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Vincente,

On 2024-08-18 20:13, Vicente Bergas wrote:
> i am a user of the CONFIG_SPI_SPIDEV device.
> It stopped working between 6.8 and 6.10.5.
> The SPI bus itself reports no errors to userspace, but no devices
> appear connected to the bus.
> The platform used is RK3328.
> The only spi-related message in dmesg is:
> rockchip-spi ff190000.spi: Runtime PM usage count underflow!

I'm working on a related patch.  Could you, please, describe your
use case for the spidev driver, i.e. what board are you using it on,
and for what purpose?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
