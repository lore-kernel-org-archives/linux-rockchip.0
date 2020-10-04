Return-Path: <SRS0=yZ4S=DL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 426F5C4727D
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Oct 2020 16:15:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ED10520735
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Oct 2020 16:15:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="q/Xz8Uw0";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkrFjq5p"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ED10520735
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8eYYPoEkLYJrru85oZS6VoSCqbt36Bt6uDHCtfWovTI=; b=q/Xz8Uw0i/yPUHEBcKgzA72St
	EO4WPu6RkOtDu1y3YwqwWT4AMrDKqOvaO6FMoqu7rq6XYXEkq8QpKOlrpxG9ATxLFL2V3sql1OpdJ
	xis4O9MI2w1iD4SERG9RffV2GkkIisiXl8QokDNwdzCsnOP81SKisXsCEg+zag37vo4IZYibozfr8
	MP7DxbGP2/xtGHjCbe8nuMbtsN9HhXmQKtRmkA9ePj/DZGCwlAuH9Yenqpn5UsZmIqHNr2jDRqY4k
	B3hc0Ec6+o3CQ9wXgfbKB2mxN4sTWYa/G7WYe+QxN+BpG6iPI2tqao+RsP59Tnsl8CIgekfFNORGM
	CW4pi+5Pw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kP6ff-00026i-4r; Sun, 04 Oct 2020 16:15:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kP6fc-00025h-Uu
 for linux-rockchip@lists.infradead.org; Sun, 04 Oct 2020 16:15:33 +0000
Received: from localhost (unknown [171.61.67.142])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61CEB2068D;
 Sun,  4 Oct 2020 16:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601828131;
 bh=ipIbwBDHbGx7U/nYVtWvwEV/y7/NQhikV5Ng+1S41wo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BkrFjq5pesVDCZqCgigvVGnAkYU3kAenXEVcy0C+EYf4QSa7nY/PHBghx8c3UJ+K0
 V7wA5EiZjeOgOA1F0vSfPpr62TK79z4/hmO6HvTvKyMEs+fXYkKqMHx+Zl0SJ9Rz3x
 kkipw8CWwDYt7zwpufpGFZLd9NoEY63vruFFDBV0=
Date: Sun, 4 Oct 2020 21:45:26 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: Another round of adding missing
 'additionalProperties'
Message-ID: <20201004161526.GA2968@vkoul-mobl>
References: <20201002234143.3570746-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201002234143.3570746-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201004_121533_061969_557EA9CC 
X-CRM114-Status: GOOD (  10.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, linux-leds@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-rockchip@lists.infradead.org,
 linux-serial@vger.kernel.org, linux-mips@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-gpio@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 openipmi-developer@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-hwmon@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-spi@vger.kernel.org, netdev@vger.kernel.org,
 Baolin Wang <baolin.wang7@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 02-10-20, 18:41, Rob Herring wrote:

>  .../phy/amlogic,meson-g12a-usb2-phy.yaml      |  2 ++
>  .../bindings/phy/qcom,ipq806x-usb-phy-hs.yaml |  2 ++
>  .../bindings/phy/qcom,ipq806x-usb-phy-ss.yaml |  2 ++
>  .../bindings/phy/qcom,qusb2-phy.yaml          |  1 +
>  .../bindings/phy/qcom-usb-ipq4019-phy.yaml    |  2 ++

For phy changes:

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
