Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EDA2C5B572
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2026 17:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEBykDBj/u3ILqIKlRQiI34tR5nk/2+BjhKg6Kzn914=; b=pfcdAl599Clowa
	qammkLchaL6KzvjtVXPL/PoUy/4iG14WJhnJBod3sj3/elg2nvqNCgkU1TJbNWNRyKTY11TttRdtY
	rAaQYZSfaYdemXoarltpIAaxmD9F4kMg5BKeUOJPmBiC7RsutNwokFWiNHIo9pWZDaxHSxCT0M7d/
	fu3ptr1s44OoCHipU07Jj28dci113/nhJ1XzmOqGwYbhWC4Lx4wlUKUAlZjnkCq15DCwnNVaVNWM5
	QBNsiJZfuXSUEXV5srFZcq3/LC1LzllFt6NVBMssCHyE8EAcp4ZJdPgio4WxOUMR7M/gmqz4rjZOU
	nyHYIbobBZUI7MNCSTZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww1AG-00000006auF-01PF;
	Mon, 17 Aug 2026 17:30:24 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww1AC-00000006ase-3hGo
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Aug 2026 17:30:22 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-47fe45db360so454080f8f.2
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Aug 2026 10:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786987819; x=1787592619; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ug6Bnzoc9QivZt6Gh/tEHOb+vmUWZqzOUREdpceQcs4=;
        b=GOlnuA/+i25yjmog5h0TpRAN9sPb48a05/XO48AatIBW+4DV6BUZa5/KFoQCeWlUsx
         TkJNRg5TylTiJXNCRueQzbz8zPHkeMVv7y1QOV5hDe8zS+J+HMdY7VcP150nZroVAD5j
         9rP2+jGMRxkWlFRDeMwwqLcOs62i5E49BbiR5chU2HAL0i0PWh5A5hvPcI6qDSSYHDB+
         Bx95tw1GNTBi3PZRUzuJyYYXZkMMpIESl1Apt99eb1Y9BwiJ5Efkt3NAWVViirBoyZIr
         IbFEoimY4EPSYRa9Lnus4yYHxqbLJ6++NaqOqthqyJ8G7/yDCBj8ZhM0HpjzcRzs5l9c
         ytaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786987819; x=1787592619;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ug6Bnzoc9QivZt6Gh/tEHOb+vmUWZqzOUREdpceQcs4=;
        b=VxR5bx6EeqXuRjyY8jw7DPerPh3LDCWOZkrGq03u1m7uQucdaas1D3yCRNfyVo+hcR
         0b7hC1sIHa+TgN5GlCr2pdOOVr2WvdLiYlqi3ghr3KxZg16N4VmQoUHKtcsNgbODFjQo
         AYJ/1yoVVGoOb3nBT+7NgM7hkoHW14+BeSjFJ7Uts9LSk/THIqgA2A/28NTs13jLXDB6
         UrdcB7yLA5Uhdv6NNnVh2G4V66iGZ7MRM38DdxfznyO+z/sBEgfTuPN84oYA2QJRiuky
         C5jzWAVg8FG7aHyYTpjXBtuOlyxM4nQv8kONV4ir63jCbj/gSw2EDIrbDZadfM1IZOPF
         r+3w==
X-Forwarded-Encrypted: i=1; AHgh+RpZpMr+9aE+fdjztb+yeQi9VB6S/ooWnrcrfSpaMG2BLyPLwj7V7BaFSYfC0hhp0mg9gIbvkDT96i84DbAHgg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzh047pC8GXl+vIRpwe1koU83vU8bKQ1wc75M/zgNBPziH69MQc
	5dL4EF0Maaujdh1TmkdF5cMMypnTVKSEEALfX9DXx0CTipuoVa1OIToN
X-Gm-Gg: AR+sD11suLan8PKaMu5UnCOEhQN0Xxv384cCmQ9igeUlPybTSdOlPtQcBh3Pu/zc7Of
	ht/8dX5WJq8LNHR5si1LaBNfKQNmS+Ze8Y+muG2gcVB+7VjDuClaAFV4ydP0/vOkcPe2wgop481
	qTxE70JrX6Rs3JJVHDrKTaTzqURYNkfMLwOjlv204I/miP0O0palNElsMFpe8ZQQk6cQMPZhwPl
	lijrWV3AgitRedy1np5VYFFI4uwH8qRX1OidHoYd0PZfHMsyyUJkT7x0a0ppmcn62D+8epPseBO
	xob1HzaROZCzLNeUOSpePtVpwdOpf4Y9cdGxLalepJ9Oof87dBxq7wySU1QmHk4BWeO+esXIWFY
	+SdX8GxrW1J2IkK3ADahvjUAppqR52sJw1lFwpO1Apjrc6GenAvqS5AMEbMZezCGt7aYi9g5KUT
	9V0JAu13xKgfau6rNpcR4O92SnAUUAbAfPIEpZistrKIpa4qNwfZtphDf3aHW34qt3HSM5ASR1l
	GhKChDgS2xT4yvr3XqMnzh1lH/TMgToa2M+sGkEGR3dFTXNZrEt8z5Ht8zqrxLf92tnPQ==
X-Received: by 2002:a05:6000:601:b0:47f:e8af:7687 with SMTP id ffacd0b85a97d-4816070569fmr19813569f8f.1.1786987818793;
        Mon, 17 Aug 2026 10:30:18 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8FC50088291D65FF092D15.dsl.pool.telekom.hu. [2001:4c4e:1b8f:c500:8829:1d65:ff09:2d15])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482a5b81748sm5966682f8f.37.2026.08.17.10.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2026 10:30:18 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Alexey Charkov <alchark@flipper.net>,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v14 00/38] phy: rockchip: usbdp: Clean up the mess
Date: Mon, 17 Aug 2026 19:29:52 +0200
Message-ID: <20260817172955.16305-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <aoM5PBrT5pBPS63N@venus>
References: <20260815121608.64818-1-royalnet026@gmail.com> <aoM5PBrT5pBPS63N@venus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_103020_929758_AC344158 
X-CRM114-Status: UNSURE (   7.08  )
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

Hi Sebastian,

> 30 seconds for PD negotiation is indeed very slow. Usually it's at
> least 10x faster. Have you checked for the root cause via TCPM log?

I have now, and I owe you a correction: the 30 s was my measurement
artifact, not negotiation time.

The journal does not record the replug instant, so the figure I quoted
was deregistration to re-registration - including however long the
cable simply sat unplugged. Today, with the TCPM debugfs log and a
controlled replug:

  [12954.114919] CC1: 0 -> 2, CC2: 0 -> 1   <- replug
  [12955.837527] PD RX, header: 0x2e8f      <- PD exchange running

DRM reports the connector connected 2.1 s after the replug and the
compositor lights the output about 4 s after. The adapter negotiates
at normal speed; nothing to chase. Sorry for the noise, and thanks
for the tcpm devres fix.

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
