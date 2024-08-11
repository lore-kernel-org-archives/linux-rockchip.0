Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4D85C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Aug 2024 19:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUBFsXklI6JZKm9S9uiZtydSM5E2V6Kd1ej1H3bITVw=; b=2lK5Hp1OFyioWy
	c6glUVFciz/oCPNFo/XvHg9Lb8MnAKCM9O+2uqqGrrYW4hezjh9ijvrwpKfgLSyFoXdGCOMthlq7q
	B3NxLmF4eKZiif0WPb1wy8ZM1s2venWxyl33rwVmoCYY1js3F3KpmvRq+xeW18NuWMLr9ojGBZv/U
	A3i0tbrWKfcy61YBjoM8WazNJ8fDfNWpKv1ViSeltJ9oU7uDg3Ea5wzkZ8X9dgAr0pi7RplV7LM3X
	9VXWlqQeBQjjbHxqU8CjI9+o1ab6N69LjUMwqXTFa8IuqfLaU2GJi3ywGsAXeIfBEXJsEFF4tZEP1
	9C4p8M5igQHnRGHmnhbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdEDp-0000000G2g3-1yIN;
	Sun, 11 Aug 2024 19:27:21 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdEDl-0000000G2eo-2uw2
	for linux-rockchip@lists.infradead.org;
	Sun, 11 Aug 2024 19:27:19 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4281ca54fd3so27767015e9.2
        for <linux-rockchip@lists.infradead.org>; Sun, 11 Aug 2024 12:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723404435; x=1724009235; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qi4pCNP1Gdr9h0T5um8ZgiG7jkuJMsbVZXb0oh3Hft4=;
        b=IoX7OHvzhbVnpwPS4k9U8JU6lJKYpabwYvApuaY9hejz6vgqw5TerhKkAPn0QIdKhD
         DKsdj84NEtZ4EGoiJ/zHx/wz4FVm5Nop0g0O3McCoi1GYAMHmOVtqQd1hThg0rgIXN7D
         sZCEpOp3OmFmAmBFvZbwuux03VBer6p5d/PA8waR88aUQEczJ4mEDvULv+34GkizsKEy
         mX5QDAFXR3Ox74vql8wIVQ+nt/tWBEOFdkpAg/AtvcF8vGNtzmuYtJlfuoLGd3Tj79pO
         8qX634WPrJgjfPMQ4cI1t0tMfBG7ZZLB4EGdPIDcFQRfeIh6zzzSqEdFirpDQDDd/hC5
         4ueA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723404435; x=1724009235;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qi4pCNP1Gdr9h0T5um8ZgiG7jkuJMsbVZXb0oh3Hft4=;
        b=fWh7sI7TcwPn8s2+5B7O5AJ7zEoiR5cBcTvilsa+iC5Bl/MuHKao7813v1Sfb0at7w
         8hwCPoxMUOFyZkQlQDAQmRbNTw3gPr5YRKTh+JD7sWjwa5rSnxKjYOgRLcjqjCU/QDYu
         Z4FAZh7aZhavnOt3xsnPj94XcE/UlfqoDoVWneHvPq1pTqjE9N04BFBS2VzEyMCHzZKX
         I3/4Qwarix7H5q49X1FPcP8Ti4qrC8bTHgnWAH9fkndNuvaK6XBvnZqORtzHTiHjGTWi
         bNuiBFbThkZo3qkRfoUGNvlItNMatm/QCI4fbfPL9jJBXnPCvsTrdmEpl+5xpGAAiFx0
         MaMg==
X-Forwarded-Encrypted: i=1; AJvYcCVNxqXARoG9c7YAUbIo2rfJQmO+inC0Mzx9xQb7rgk4mHtpZxgkdJewwyGYgE84JmZCLDw+OvwXjMLSKQTWY3co2weF+OLf72LMo9akHa30N4Ga
X-Gm-Message-State: AOJu0YxY5aQE1TxNgIN98oanRS5zPVk4QjvI3U+fvwf9kSZTlGi+XJhI
	16UcyB3NPe1gLe79EUPniJsYTwcwuopY0ZW0v1dtBS/LQNFm0yJQ9YrbskzzZQg=
X-Google-Smtp-Source: AGHT+IGagufT2xNn/QKQu3bmVrV6jU72TWeF3FBl77gAzQllDDZ8/5qNg/Q6eq++X65pc/tFy4d3Pw==
X-Received: by 2002:adf:f349:0:b0:368:664a:d4f9 with SMTP id ffacd0b85a97d-36d5eb08646mr5681407f8f.28.1723404435210;
        Sun, 11 Aug 2024 12:27:15 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:6978:7b03:bbeb:d1af])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36e4cfefe71sm5552517f8f.62.2024.08.11.12.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Aug 2024 12:27:14 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: brgl@bgdev.pl,
	Heiko Stuebner <heiko@sntech.de>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ukleinek@debian.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: eeprom: at24: Add compatible for Giantec GT24C04A
Date: Sun, 11 Aug 2024 21:27:13 +0200
Message-ID: <172340442666.7060.12608274118090495917.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240810211438.286441-2-heiko@sntech.de>
References: <20240810211438.286441-1-heiko@sntech.de> <20240810211438.286441-2-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240811_122717_854174_F0E19CBE 
X-CRM114-Status: UNSURE (   7.79  )
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


On Sat, 10 Aug 2024 23:14:37 +0200, Heiko Stuebner wrote:
> The gt24c04a is just yet another 2404 compatible eeprom, and does not
> follow the generic naming matching, so add a separate compatible for it.
> 
> 

Applied, thanks!

[1/2] dt-bindings: eeprom: at24: Add compatible for Giantec GT24C04A
      commit: a825dea2cd27a30e49816f18b7bc16545d5f0f89

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
