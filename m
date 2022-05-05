Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF23FC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 May 2022 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYXgM97dbxW2C8AkLo1+v47eKFJJM7vhOl96OmuLtxA=; b=K7QifbFLEaYkyM
	9fp0o784H0RYTWCP1kLqMrLABWxq6hOTc1kDE7j3P4vzjwh0wk8iUBcWs0ibwSOLRRGLa+lXyp++Y
	lxY2PLELHEA2+d6HZpFx4kKHlukBZThXIj6U/n+RQwTYTxXC9Tzh8XryQCX/AeMfXfRUm2uCUq5Ii
	xjf4hB+ZVkJgXk6lRNWkny0fz63XZWF+50xgm7iJKXvsl/oz0ZNfV7khvQtmFDebXS+XTwRT8uf/w
	bDkE5EJCjCB6433YWADKVPv1CoYHaQdGGk7rny0WX6NBFV5vdLkxcx+5urhbr9Y68mkVCfaTI5MWg
	mQkR/rusyCCcSLnY/Qpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmbtp-00GB9B-WE; Thu, 05 May 2022 13:52:10 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmbtD-00GAmB-Ga; Thu, 05 May 2022 13:51:33 +0000
Received: by mail-ej1-x635.google.com with SMTP id z2so7291579ejj.3;
 Thu, 05 May 2022 06:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=03jEfwhlWo+0F3QSErStBbhWJEDMANJVy/9rSPAUx1Y=;
 b=gDuWgen8Trv88IGdxznU7oSgtaGFD9MISOr5rrDibBMmmE7rdJ9qzu55Y8IjlM48TA
 Pj1rTM8nEBAfhGlUpxlZz+uzebwMmf42g21Mp/bNWSMUURl4OJqCXAnmVYIugg/zJqXT
 ggmCRFZethoWCe6B3tJRbgQBma3Yls8XMzFVPNfH0WvxIp9HrKG4u/eguY6/k8fugqHE
 bJjxcHaonBy5O2ss12U6jckTDgwk/iCRdtWve1Up6aZUc4pNKSBgsqkFdNhZzY3cKDhh
 KFbS/810r+VUh/Y9fB0WrcwyPhOsGgfsSz5wOM6HxTiz1Az1/oEyM5fW7fxc85E/BhNK
 H2nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=03jEfwhlWo+0F3QSErStBbhWJEDMANJVy/9rSPAUx1Y=;
 b=AIl7GaYP24A8mz9L3FzB6rxQlXYt4kaV3YtWMLdFbwSn23iF9X55b4kNPPRYWRWECW
 3cRmxAvWeQBG8JYF0sQgAiFVgSpCb6zpwO2FCkP8NzwvqOCwCAuIq422BRgYCII5X2I2
 TlJnlhkF5ofKE/8UYj7CyhC5VaMoAqrDjBPCfNInUoHA+03ey/XHgUCeC0svb5ICO0Ry
 +FUqwNMegJOBpPiQYJQz05vqK8KUFHyUw1CEBtOpDP4blnCXi+Zeek2GpKi38lJH6L6g
 ruyIRIbNmr3rNypvcIa/WLYW7zDHVSmNpdrmUdj++HIqx1//CjopITW0F5nhN4WwL+R1
 5rVA==
X-Gm-Message-State: AOAM5303Tn+SCu1DCSzh0FPsA0WVnvZdlU/FgPQvo2hC3UUt985BATKz
 gwnH+lQqSFKlX44elMyKHeEAqxTo043Vbw==
X-Google-Smtp-Source: ABdhPJxv3vaDNdwJi00++TLK8Ghuv5Ib+qTCOCEdX5gN/oc0y8OEOLbbC12VtWJ8ETtvXVM4x8Wt6w==
X-Received: by 2002:a17:907:6e8b:b0:6f4:7147:a6ac with SMTP id
 sh11-20020a1709076e8b00b006f47147a6acmr16897480ejc.187.1651758687576; 
 Thu, 05 May 2022 06:51:27 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 g3-20020a056402424300b0042617ba6387sm895632edb.17.2022.05.05.06.51.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 May 2022 06:51:27 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 Jianqun Xu <jay.xu@rock-chips.com>, kernel@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCHv2 13/21] pinctrl/rockchip: add rk3588 support
Date: Thu, 05 May 2022 15:51:25 +0200
Message-ID: <1792093.MYTQk1Oth5@archbook>
In-Reply-To: <20220504213251.264819-14-sebastian.reichel@collabora.com>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
 <20220504213251.264819-14-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_065131_668659_568E3C24 
X-CRM114-Status: GOOD (  10.56  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mittwoch, 4. Mai 2022 23:32:43 CEST Sebastian Reichel wrote:
> From: Jianqun Xu <jay.xu@rock-chips.com>
> 
> Add pinctrl support for RK3588.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> [merged in downstream fixes, simplified register lookup logic for better
> maintanence at the cost of a bit more static const memory and fixed some
> incorrect registers]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Hi,

a heads up to the maintainer: this was already merged. The cover letter
states

>  * Dropped pinctrl and mmc binding patch (applied)

so I think this was included by accident.

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
