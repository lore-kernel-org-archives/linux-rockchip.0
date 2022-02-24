Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 016FDC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Feb 2022 20:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZvFtfkIvch+X0AFUg6fOwawu0+w/HKbvhsmbBiRRFc=; b=GV/LQG151uhyt8
	+RIkeBhgvGAnPwb1aKUN0kwqZvX04BpygyYcaZG26ThFC4rbA5O5Ix4+j2QiWpsG2XuJA0nldiUal
	O1l3TEVRfZgfl0qQ6oXv6Wo0lU5YocT5K5+vRHlA4P+w/xmnXuQGbgPyTh+7AhUK7HX7HbQ1IWPfl
	VsloUhMZo3LqADncI1QAkTwU29bfVRFoaLAq0WGvS5Xcy+VvKLG95oCXAj5vOU3XCMrzThwEab7On
	zMeHLyvKR4G3xmcA7Lrx8AQkJLbHcDGIcnTVoQj+n9aDKueaNYLFP0KPypVl4pC+U8NOr/rHvpCra
	osYz0wBiZ0GCaAKuzjXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNL88-002Nrs-Ef; Thu, 24 Feb 2022 20:54:28 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNL7v-002Nmw-0a
 for linux-rockchip@lists.infradead.org; Thu, 24 Feb 2022 20:54:17 +0000
Received: by mail-ot1-x332.google.com with SMTP id
 s1-20020a056830148100b005acfdcb1f4bso2210390otq.4
 for <linux-rockchip@lists.infradead.org>; Thu, 24 Feb 2022 12:54:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=w7kYYicECLFYqJJp06iUhZt+dZdvmlULZGafsy+TJYY=;
 b=jZEz+rzkZ3qSK3QIGheoWaMmA3vav7COKy6XwkN2b1xZlR8w8uHw9DU+hsfVrKT2A1
 U+nJo9oYUOhKL2bluBtJc7uA2lL279nyzDvXpMQrF6jfqgRTzBzicWt8M5L7O24AeScr
 c3tANUX7ruj1tgsLIYaMxWfWfMHGFsBUoBh3oTqvs+HCxFWt0HI6kAvxv59aVIEjm5qB
 DHNii3B4lT65JyRyop8S4Ye+rYq8DgmRA7P6XT51vRvnKyAkiODRXBDabFIs6jRMkJ4R
 /Dzfvtw98dOOGyzT0mdluTBhkcSOBAFD5TjzwdK2k/Xz3Fluj/VsS40oZVY+YfhRh8J7
 CwLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w7kYYicECLFYqJJp06iUhZt+dZdvmlULZGafsy+TJYY=;
 b=Jg1mH8vSMQ9Zs8gNfXMAfGBv07+IhPyrd2MJxu8NPro1dB4rGBWyd9dzdZVAjsXC82
 HHvsVaOLYdQKkpiykVlunSkVFPV5cwIbI4+tx+QTSikIEd9/HyGUIiB8VSXMyWbwZAa1
 DYEH49tqj6/GWFlZ2Zosio/MqYP4pwVqehkraW4uuLwlbudv1CGNECBtgs9WOQFIKS0X
 of72shNOrmHDF7BegvLYPTo9RPaojn3dUMph895iMe0rvbfwUubnj4DGZWcYuU+rpRDk
 5/Bh/gZd4SfkSfrfTfLzA/R9Z3lMHHLLbKXlNJ9Mw9yQXlTONDMo2PoSqRWSjEIlb6A8
 ryyQ==
X-Gm-Message-State: AOAM533WP5JHHE71YPOoyHCBbfwVL7Razer0zUmW+RiFKUTvi6evM88x
 7pmU749c/o1oDV032uOwswN2Xv8yaMG5Pg==
X-Google-Smtp-Source: ABdhPJwqpinof7vCzpo3JsDgvR8WPsKLX9v8AOxpnybjdBazfy5rwg4vCIHUvilq1nJfyHr4S8hplQ==
X-Received: by 2002:a05:6830:1098:b0:5af:a452:2f17 with SMTP id
 y24-20020a056830109800b005afa4522f17mr1620669oto.175.1645736053623; 
 Thu, 24 Feb 2022 12:54:13 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
 by smtp.gmail.com with ESMTPSA id
 c8-20020a4ad788000000b0031ce69b1640sm191259oou.10.2022.02.24.12.54.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 12:54:13 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: linux-rockchip@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 linux-mediatek@lists.infradead.org,
 Douglas Anderson <dianders@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>, Andy Gross <agross@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-kernel@lists.infradead.org, chrome-platform@lists.linux.dev,
 linux-kernel@vger.kernel.org, Guenter Roeck <groeck@chromium.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Benson Leung <bleung@chromium.org>, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-msm@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: (subset) [PATCH 3/4] arm64: dts: qcom: align Google CROS EC PWM
 node name with dtschema
Date: Thu, 24 Feb 2022 14:54:00 -0600
Message-Id: <164573604161.1471031.3877884989605040071.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081916.162014-4-krzysztof.kozlowski@canonical.com>
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
 <20220214081916.162014-4-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_125415_067759_D87CA1A8 
X-CRM114-Status: UNSURE (   6.94  )
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

On Mon, 14 Feb 2022 09:19:15 +0100, Krzysztof Kozlowski wrote:
> dtschema expects PWM node name to be a generic "pwm".  This also matches
> Devicetree specification requirements about generic node names.
> 
> 

Applied, thanks!

[3/4] arm64: dts: qcom: align Google CROS EC PWM node name with dtschema
      commit: 1e49defb863638cde53e48805747271f80f9abec

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
