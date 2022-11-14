Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C96FC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Nov 2022 21:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aq4KRCGrAQkL2GmOsTvNDnZ6X9qX1AbV85dlpVOPC3k=; b=Z1LJX/fhyqwM+r
	dO/G7GZVFKLtGFPaoZMY8KQP3g0uVo1pQvhI4bUoxaDGa6mc0rkQCzvFh6spU0qXOwqIKncL4eV5n
	sOwmjoOp86GnxSp+E+QBOlx8HoXTVVngJTgSGkFPUKVcqrXveNmI4kwY76ugYSfIk4UawWmE5kIQG
	h35z0inn5YiTtdaQ1iqEKp23FS1OtRAo57B916jXge31cPMmawyPmHg9nUE2sGVy7+crt7xZFTKiJ
	by450KQ9hlKmSVY10i3MrEsGTWSGu0zzhUDa0dwRy3jHhSxCYfWv8XcYx2dAEcdHH/XVQnjxgcB8A
	DRydT4TnZqlDF4QafqIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouh0g-0056ox-Dt; Mon, 14 Nov 2022 21:28:54 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouh0c-0056nW-M5; Mon, 14 Nov 2022 21:28:52 +0000
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id E4AD3FF808;
	Mon, 14 Nov 2022 21:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1668461326;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OhAg2dg5Cr0mXaVo9Fds0vDov9wb6UjxSDea3jeHuQk=;
	b=cfK2VnXF4YudB5XszoDd434yXRITcnTBUTTPDKvIhlJQQPuiQQ+sXfrSUNMheXQj8ZKBHz
	hAv2LomY1SzSdBin7+T2bfpgHdnBXu/3NKzQkR0DCOvaIYLS3w/3n8J0RqQ3nPoq4tMg2P
	LaTKWyZ2x9zqOfAspmJuyQnliXRClGRecl4Wu1WXe53aYXHBrapaUIXCJ4UB5c70Xpp4jb
	DuSJ6wBB+ns35Nx03o02QUz9KAdwADj4wXkNB3KFh8pizDs5eY68SYGJKIMOSalQAI+Bcn
	KLjmrCpr3SZUFk/S+umGcP47zdFRHGoEoK/q2uN9DaK9duHHZpCz+KRz5yQ0FQ==
Date: Mon, 14 Nov 2022 22:28:44 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Alessandro Zummo <a.zummo@towertech.it>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>, kernel@collabora.com,
	linux-rtc@vger.kernel.org, linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Kevin Hilman <khilman@baylibre.com>
Subject: Re: (subset) [PATCHv2 6/6] dt-bindings: rtc: convert hym8563
 bindings to json-schema
Message-ID: <166846130108.2115004.17300234137040825586.b4-ty@bootlin.com>
References: <20221024165549.74574-1-sebastian.reichel@collabora.com>
 <20221024165549.74574-7-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221024165549.74574-7-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_132850_902655_D90D810E 
X-CRM114-Status: UNSURE (   6.26  )
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

On Mon, 24 Oct 2022 18:55:49 +0200, Sebastian Reichel wrote:
> Convert RTC binding for Haoyu Microelectronics HYM8563 to Device Tree
> Schema format.
> 
> 

Applied, thanks!

[6/6] dt-bindings: rtc: convert hym8563 bindings to json-schema
      commit: e00a89527a497cd49436369b05459be55cb922ba

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
