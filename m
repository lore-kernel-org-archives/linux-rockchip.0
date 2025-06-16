Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E047FC71136
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jun 2025 08:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUMlCEAowsjV4VV3oCIO3EZBbhxnqmiEq2EQsITKP/0=; b=bk2YB3c73/WAKb
	2jl3Nd04W6rNC0GbH4V6g/D4gBPfbP5AbT0kzJFF8lu2bXqqUr+i9BL+aBfSFeHw0wQQUel1wmar1
	ZojFu+JrN0H9lKYW01EBvFGEVTkhl+QzhpTFyqkxYH1o7KWMZ3Z3aKWOYEX4Q/P7XZES5joVK1GYv
	LdYSUxu1GFF0P4HUfvLL58EKbFCH6YPeCOUmKQ/QFqHtjF2R+UPHk0xHnLGU7uCdqRF+StUYk7tCS
	1vcDg8611fuyWGakdqwxOLu+dCqVnzkgPDa/rU0Mff2F4k9B/q494jcL/OWXhjCacyQG7NpKLFNqq
	nW3OtSnLSF4RdiIzFc/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR4lo-00000003jJq-18Sd;
	Mon, 16 Jun 2025 08:00:44 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR4Ug-00000003g6u-1Y7X
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Jun 2025 07:43:03 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3a522224582so2253137f8f.3
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Jun 2025 00:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750059781; x=1750664581; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WTU9Zax5kLpMeKPmyeLAiww8adzxErGgDJ424AqFWP8=;
        b=pdLLgA/EBfoO7uIN9aK5hp4vGYQuInYG1/Q0ZATU/ORU1+PX0YZ6L2F4zU7e96mn8C
         h+x+/GOoJo0/AZk2JOjIJcxS96X7c5FX55FgkCaxCZtjX7tf1PZOlt7U3zt4NUcLSUfl
         jsvRuyZGPRFkuZgfFEGOQARZRW2Hmgo0PPXSeOW7zKk/GcDWSsUSJSuF1gtCRLL+64MW
         GY7eFXXe1q7QPbr2G+PUQfSWLIiypG/XaxE8qxfclxAlfxt2EE1fDi7Zs3tYf1e2qpFr
         d35gtStMunWh9Yx3HQNmQAa8feYkv2eTTrWN0dEzSuzO9bLcWu2QDhnyuN3QB6uMU/cg
         RETA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750059781; x=1750664581;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WTU9Zax5kLpMeKPmyeLAiww8adzxErGgDJ424AqFWP8=;
        b=HbIYS8Pl9nrPrM+knIy82c9pYsqDWllv0bBQ/fCVc8bINS+pd4ZHN2HxVt7WGAT6U2
         HvAp+FwyEhL+0dp+PPlVQIANPf3CgSRLuvPvbVCSJN9tDi5AbW9UlEuzXHOLZIVz5gpK
         s/TPoo29pEdXyOAimtEqtsfwQbhjbIMTZU7bbedzCOqmV9OVbLo9jhdZN3RpOWBfb+fs
         Xsazjvddnj+JYfZZfin/XW/36/gZ9VHetmpk23FMPN7EIMBOt/ivEDQ4H8tROHA3Y3y/
         nGi8ABB2bYkMuJWCVzzsCZ2lD2rz1aZ6AprNgbtOneYC+ro9HbOJPkzDDCarAQVCkqx2
         zb1g==
X-Forwarded-Encrypted: i=1; AJvYcCWJ6Ohkk/Ast6QgIL5U5lp5/DYj5UUNw+H2A4pihluViDN6xTDutZZyjy2tArTiBNc9/pTbEsoS3P4hQe1VlQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxjnggQ12KhJco31eW+m9ipHVgxDQsWPKRfkCG+gIlC2033Gv2x
	nRGbuJ+/Ea1FpBzO7nNPPx+/SxT6s1IPrEoD9gKt7xz6YBoEftZ0qVkvwwq8UfRT01U=
X-Gm-Gg: ASbGncvnVWwzMXPY/SnL9X3anFZVk5WV9o3v9I3U+/wTQdeJlkYDK2QCg6tgDoQyQKo
	QfnkdB6lPa/hRSteCQQv72QbDTtCszCQpogKkEPxuNSQ4fXbuOYpTZmyYQPKUwGi5Wi9oJ8IQYf
	AkgC3sLEwjo5mUbffj/SpKrNbN9A62Cb0GR4apdSfbhEyzSll7yoXAp/qrycTd6tFT9DBH6H9ct
	APnMDugl1wvFVMqD1kiWdfNrYYUDQAQut9c8lIhuD9/Ld8Qq4WCTMe/Td6JWifFtDdcv2BT0TX3
	rKOesS52GRzrdM5DSbf+XOIcXO8dn0kwXcamI8ziV0gtOu/OyG/lyrhWiGcxDAA=
X-Google-Smtp-Source: AGHT+IGNJS0KEiSwDJqSBbXx8uRkNhJkRtvXE4ajBKXtNWO8NPC5+V6AIpPTIVHjojheL91aJSa8eg==
X-Received: by 2002:a05:6000:25c5:b0:3a5:26eb:b4af with SMTP id ffacd0b85a97d-3a572373c7fmr6714675f8f.18.1750059780880;
        Mon, 16 Jun 2025 00:43:00 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:4238:f8a4:c034:8590])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a54d1fsm10151340f8f.2.2025.06.16.00.42.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 00:43:00 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: linux-kernel@vger.kernel.org,
	"Jiri Slaby (SUSE)" <jirislaby@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	tglx@linutronix.de,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Doug Berger <opendmb@gmail.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Keerthy <j-keerthy@ti.com>,
	Vladimir Zapolskiy <vz@mleia.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Shevchenko <andy@kernel.org>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	imx@lists.linux.dev,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] gpio: Use dev_fwnode()
Date: Mon, 16 Jun 2025 09:42:58 +0200
Message-ID: <175005977568.15490.4738567496048769972.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250611104348.192092-6-jirislaby@kernel.org>
References: <20250611104348.192092-1-jirislaby@kernel.org> <20250611104348.192092-6-jirislaby@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_004302_409978_4F8FC0F5 
X-CRM114-Status: UNSURE (   9.02  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Wed, 11 Jun 2025 12:43:34 +0200, Jiri Slaby (SUSE) wrote:
> irq_domain_create_simple() takes fwnode as the first argument. It can be
> extracted from the struct device using dev_fwnode() helper instead of
> using of_node with of_fwnode_handle().
> 
> So use the dev_fwnode() helper.
> 
> 
> [...]

Applied, thanks!

[1/1] gpio: Use dev_fwnode()
      https://git.kernel.org/brgl/linux/c/7b2c2f1eb3914f5214a5b2ae966d7d7bb0057582

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
