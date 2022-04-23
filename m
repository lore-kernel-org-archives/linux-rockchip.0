Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1A49C43219
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 10:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0sblkz50CwoLqSqCDvlRm7ivqGRrCR6cKhhHiRzWTnw=; b=2RJQ4VVs0BIERz
	9lE9dgxG2QvFlKsjdFORTO/s0iMk8GdZ9qgbQI5rmCIZLOWMONqeaZ+X6Jkc47XMMj8Ejc7n8Bcv+
	Wj8gdiQaJG6kfm3X55yUuw045unBJNNqBY5P6SQSCiprOtodV2oOY8NtrNgKmkHEvE3F99f+MZQcY
	txUhA5fkgangtGwH18TGNijmop9FRZLDkRbBsY4/bMHh3ktIw7SlWhAJ0qRD9M2Z4F1Eq7V7GU7WF
	QmH5MJ7IWMEzgaR2Qvcq+513C3RlkLTsCoEUh96IxBRse46FSUSU+nuJvTgGekBaiz8ILmTEvXNMr
	Q0nt+6wJisfKPSbcmXrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niCam-00405V-AP; Sat, 23 Apr 2022 10:02:16 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niCai-00403H-Rs
 for linux-rockchip@lists.infradead.org; Sat, 23 Apr 2022 10:02:15 +0000
Received: by mail-ed1-x52e.google.com with SMTP id e30so9617729eda.0
 for <linux-rockchip@lists.infradead.org>; Sat, 23 Apr 2022 03:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=uqE7a6NJksxPmKfzuWRUDmngu5kb3QY06IS1kPuThog=;
 b=OWyA8ayOnnz0c4VI2geFsTqnyMCItptx/7wv0v/tek0PEXrCmUYF3JIVQb5zLXi7IY
 SbwZXVb/wDioA5ErPtuiBlr4CLqoeSaEM9LdPJfK9iPakx2nsXAJ7OYmE0zEeo9YDj2d
 3+Bab24AOkc1EtSCmz60kfvj5gmNgFp3AU9Y9z6smztj1R1zZs3SwEIS3+rhIToWCpQw
 czSZd4Y34U1Z3wAynQ+Q9t8FxppNgnXLyy5NmY7W3Ae8Qv8+/dmn6euqMDoPEL0re4us
 rpHTtqj6vaX9Hhovku1oB2Ak9xA/fM3PGkb2RBuO+7k6rCRKUMfasbt1cZv4TGhKg6A+
 AC2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=uqE7a6NJksxPmKfzuWRUDmngu5kb3QY06IS1kPuThog=;
 b=ftXzuSmJxSftvvmkau/DIIKOnCcOMSGnGpOlm5HWh0umBdGbia9BEan+co7pgEjPCA
 /4MLORU+ql0uWOvVbaXiAl5ZpYaOfVJ5BtJp/5WngQJdquY1SjHvj2rsiYZxXlUr0ggQ
 bunELut5DaHflB6NqOBUZVs3heLRxFCXtD3bfuCreB1kGluRR6Kf4PVzSSZSlAo8/KU4
 7xRcVD3wvH4gxcArcT1JalAirI3/28qu78ShYgkj9AKGLxpX4EU2X+tRxw6GPACg4tqr
 k0401yN/ikiWL9JT9dB7ZOps9D0PdztBMptKWDGweeiUlnlzJ+yqTSlAKa3WY/4vriRR
 Mzfg==
X-Gm-Message-State: AOAM533PuBpUnaHsmsaLZv5Wz0tIoYhdNE0dGC+dKF0UduEv69g7uA0y
 QVU3LcdlMIs2HL/X4rBt9Dtp2Q==
X-Google-Smtp-Source: ABdhPJy7Ddg//+iDPT658Yo6Ea3cxkifJPDk7IA+q5X6EDHLQgp8JwphTJgQjeDhHSZ/o1+6vwj8VA==
X-Received: by 2002:a50:c014:0:b0:41d:5ee9:f354 with SMTP id
 r20-20020a50c014000000b0041d5ee9f354mr9313054edb.257.1650708131502; 
 Sat, 23 Apr 2022 03:02:11 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 g1-20020a170906348100b006efc26c7b1dsm1497164ejb.195.2022.04.23.03.02.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Apr 2022 03:02:10 -0700 (PDT)
Message-ID: <6ea4657a-042e-9a2e-fff1-f13a578fdf13@linaro.org>
Date: Sat, 23 Apr 2022 12:02:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCHv1 11/19] dt-bindings: pinctrl: rockchip: add rk3588
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Adrian Hunter
 <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 kernel@collabora.com
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-12-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422170920.401914-12-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_030212_985097_AE755FFC 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
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

On 22/04/2022 19:09, Sebastian Reichel wrote:
> Add compatible string for rk3588 pin controller. No other changes
> are required, since the new controller can use the old binding.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>



Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
