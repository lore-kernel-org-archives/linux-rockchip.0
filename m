Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68ED1CA0ED3
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 03:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nt6rxwmYt1GTo5HF6i7tSfPl0RKc2FEgr4XvVtIm7g8=; b=Sni6QhObKWtb3y
	lWw8Ps/M1v+aFtX4a1BFUdDrM6t/3xkTW01ZOFCjuOv9w4LFHZSS2EK9MN74gxneOzEz7W+8Z12Xz
	QucJyACHEbkyS51A/t621wHSVlss+lN/cV4Rdq2e3tJPM/KxjNimwzY1C1CVhAcxYHLyysYng/4LN
	8lsyTm+yVtr27ocAaDm6a0O19/hCwUQb3RqdW/WYo3vO3tnN9yn9otZLWb4JS/oZjL1tFdGq9j2Vx
	5WwsIjE7WzsbZlIJrKVi0ZoMMCfYZUvOjUa6fC7/kcC8ackw3uKyoI/I43PZiicvDJdEQWEeT8xaB
	+G+vim5E0mtN7+rK3lTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skxkd-0000000Cqlb-3gmY;
	Mon, 02 Sep 2024 03:29:11 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skxkb-0000000CqkZ-3mdM
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Sep 2024 03:29:11 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5334a8a1b07so4527185e87.1
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Sep 2024 20:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725247747; x=1725852547; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kZ8Kyw2e1+QozojRrFDcDx8PFcwtm6OlHzJ3wldkNZo=;
        b=RZcN5ax8rIc6DX1OoHlXp8MN1AgsHHRqATYedSKwrL+An5HTiMqqNbMFUA3C8JY6AE
         ly0NX11SYDbW9dvAA96Eq4ivvSGcnaGIDk7CEBxhcgwlAA7fjbRfQtEY2DXq02v1vWMn
         O5Zwk3ko1Dhz7/HHgL1phDeaR6DQo+KGJ+hY/7MSHqDCy88XIAM8xG63EnyjtUHwvUm/
         ymT3IIrhsJrpoM0ANx6dWjI9m0Pl9UgoLwuJkJmJFcO2vEjQ3/oenZh8e+c9cvD7KXNj
         JOmn8K5gswtuexcVbmHhF2eVFkXLkBekimla/VOgNYSUfg4HTb6MTJL6xiYm7seWUbDZ
         SR7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725247747; x=1725852547;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kZ8Kyw2e1+QozojRrFDcDx8PFcwtm6OlHzJ3wldkNZo=;
        b=KVvT3LOZrsZP4ehQnjzJCVwcv0mz71SYOkHkQSBQYW6sW0hg00oRXANWmRIF6zN11X
         uhrgiYx86ghfLIa5if35IX7Do69JvWnx78pPtM9MdKd5MO6pCCTuc537pak2XgPINgf8
         SJZRGgH9Ba/NAd4bRO0EEEUwXIwxT8TA7q1qwHT2KR/Xxz9TjiNuA1rS9yLSbMMCi/qx
         C5emLzkK6rCV6F4pTAXq7TH1Y53UTi59P0B2ft+Ng9y2lJO5/yNYpC23aF1dptEyQwGk
         EaNFhRXHou17ed3BdcChEaZCdNXxEy+ngDdmv7T0+I1aPfPfDHNmVzpJ4nyegFHS9rO7
         9g1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXhkGxEyVyoBJiqyZp3OrOb1gFxa/oY/8aXyw6hOglVRxIjP3FYJmPUCftHvMezCo9Sl3nkt0tactaXyeOfzQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxI2VtrUnlRF2jUAOLK0hM9/q/Tq7xbXNym4GfHMpgsgjx49RC8
	UDAlwUT4xsshzrpy6tC48aGsGRHgnsiPZ8KEr7nGxH5GkxRXAjPgXnfoS6xK
X-Google-Smtp-Source: AGHT+IH6pWcc579dQxY1WnGo6872shwSHYeFq9Vs+MWwrKpCrO/wEHhVz05VtRsQzKiWINfkPDepWw==
X-Received: by 2002:a05:6512:3191:b0:52c:e4cf:4f31 with SMTP id 2adb3069b0e04-53546bc01a4mr6285507e87.49.1725247746858;
        Sun, 01 Sep 2024 20:29:06 -0700 (PDT)
Received: from U19.ag.local (static.187.76.181.135.clients.your-server.de. [135.181.76.187])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5354084eb16sm1419820e87.274.2024.09.01.20.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Sep 2024 20:29:05 -0700 (PDT)
From: Alibek Omarov <a1ba.omarov@gmail.com>
To: mkl@pengutronix.de,
	linux-rockchip@lists.infradead.org
Cc: Alibek Omarov <a1ba.omarov@gmail.com>
Subject: Re: [can-next,v3,00/20] can: rockchip_canfd: add support for CAN-FD IP core found on Rockchip RK3568
Date: Mon,  2 Sep 2024 06:28:37 +0300
Message-Id: <20240902032837.1513090-1-a1ba.omarov@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
References: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_202909_960824_4542B1E8 
X-CRM114-Status: UNSURE (   6.12  )
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

>The IP core is a bit complicated and has several documented errata.
>The driver is added in several stages, first the base driver including
>the RX-path. Then several workarounds for errata and the TX-path, and
>finally features like hardware time stamping, loop-back mode and
>bus error reporting.

We've tried this on v2, with a custom board with Radxa CM3I connected and
it's even more stable than BSP driver we backported ourselves.

Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>

Cheers,
Alibek.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
