Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB65CCD13CF
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 12:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1IxxOb7nlOJbfEGEIt6qoPSP3Hk3PCe0cftlVqQdVY=; b=I4bJzpwb2X4Sem
	SeNWxbRLb5FQruP/lX7MHMmcwxsa4bPeiPhJ+KwU7j0o57qcH4neAXbQmCLJAY7u8Q5V1G3/i31JZ
	5IKQfE9FtuMAK2VTbZgZHr6t2rcD7HWP8d2ABulbB/hK+Q+obyjvlKrapW5vISGuREj8tmlfLRxQY
	NKBNgNupjIeyoy/TME4xR3CZn5mVhjiieIlyWNjLtpuDraXx+IsuNCRxK7CwpA+kesYD13BROoq1g
	Snj9WGAgfIhD0NurwFpD1SQw+XIauGsYeQp1cXUqnK4zlURm/qcRQWgR8RDBPFhLnHWkciIYDAPHG
	Fr3cqYIjIY4jauxrbIJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl6KI-0000000EK3j-1mbF;
	Mon, 02 Sep 2024 12:38:34 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl6JO-0000000EJtC-2m7h
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Sep 2024 12:37:40 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-374c6187b6eso836121f8f.0
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Sep 2024 05:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725280657; x=1725885457; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fQFBtXSWGUhbtWOtZku1sSH/A3WSjyIHigoXatlNOx0=;
        b=wns19HD6f90rj3siAm1JCjmidnMmQS2lNFDIErTmurVhqZk4/Ui894/Y1w2UBYmJfN
         T0hKay5FcxVXLkCTo6ncTOw4MVAKPEkn4WbjcMDs/zttwE7/t9jWFSt5+txmKJRoZzQ/
         +XIylCFhTrC6Vvf76OUK+gh2CLC10sZCkYGdYMUyhRq4Os9mAGihom6vv2KVXyH7XQfl
         BXHRAhyut3yAJ0qalr/PHlB+otS2enHtd5LEdbwnLM0TN07Gh/c4g1FCtzPPKc0J69RW
         SJ2EC2UGWiYJtFwtSn5F0gBNMwBcG8xTIcLQLnYTWsLYhZXaNbEwCSv/Ou7oWmx9bONR
         asUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725280657; x=1725885457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fQFBtXSWGUhbtWOtZku1sSH/A3WSjyIHigoXatlNOx0=;
        b=Mo2+St83VkP0lUy/vYpYnHgunfbeMJpTZCi8mTofF8RTXSbSU57+gF6umZyjtVbI5h
         8o0X8fveYZvlyboXCjxsD1ms7JaaJHU3tWZE/qA5Tpto2pqpg7TVsGXtb/wkfJxR+8KV
         WIduDsUfumwRwuRBuJNkt0e9jMv7uZYiizTGF1mir2BYNKZHLzkPDKL2/htxOX14Sc9x
         KBKWTT5Nm2MaC9fiOtFcGUrvr+pHQLI1pjGHMM+xlW+qW9zaHxXpXHXLwLOLYyCw78Tq
         gfICmnVmy/cQfGN2GH/hxUSc0T/hk+37FJE5YV8KDW7mT3NeIRV8Q06NOsWoucpeqEKQ
         05cA==
X-Forwarded-Encrypted: i=1; AJvYcCXikTlB2aPir3FfJhR6SFb/Z/Xk0SA+eEFf3HSoFy4oXPqSOrP+zk+1URyl84Z9Ql55wGwgb3agJ7PnP0qoGA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwnRe6E4E9d+cmXsrDXXtA6ws6sCDBhjoa83dBBqc9FTYTXAlLp
	v5h3UFAJ214yJ4QR/wWxqK5z+gZ8vkqmGAUbW6WLizx4EyFyHM9qjmlXdWyPnig=
X-Google-Smtp-Source: AGHT+IGUPRaU5FnlLYMNITT9UfVG0A1DYVQT5aDC6k21qX7hVdBs/KpsVWU3uutzmx44zSnuC7bQMw==
X-Received: by 2002:a5d:6c64:0:b0:374:cd32:f84e with SMTP id ffacd0b85a97d-374cd32fa0fmr1775128f8f.29.1725280656347;
        Mon, 02 Sep 2024 05:37:36 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:b496:9e67:73c9:9f5a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-374b6a3d27fsm8290020f8f.59.2024.09.02.05.37.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 05:37:35 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Heiko Stuebner <heiko@sntech.de>,
	Jianqun Xu <jay.xu@rock-chips.com>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH] gpio: rockchip: fix OF node leak in probe()
Date: Mon,  2 Sep 2024 14:37:33 +0200
Message-ID: <172528065211.30738.10099217690325199623.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240826150832.65657-1-krzysztof.kozlowski@linaro.org>
References: <20240826150832.65657-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_053738_716227_C2D3F00F 
X-CRM114-Status: UNSURE (   8.24  )
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


On Mon, 26 Aug 2024 17:08:32 +0200, Krzysztof Kozlowski wrote:
> Driver code is leaking OF node reference from of_get_parent() in
> probe().
> 
> 

Applied, thanks!

[1/1] gpio: rockchip: fix OF node leak in probe()
      commit: adad2e460e505a556f5ea6f0dc16fe95e62d5d76

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
