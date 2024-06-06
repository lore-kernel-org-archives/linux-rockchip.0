Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DBBDC27C55
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 10:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFze4CTmOVuSB4+VhvAQQeWHHJ0ES4zsgE74tD96apQ=; b=zJGJAK2R/1Ifyv
	GHg5cQ48advm37/QzAr6ud/2XIbSt/evGSf/1ORpPIU+Z90TSHRAFeI43zhJJxuJa984ay+DeZHLO
	9eXd9uDZBjHfJXGUar22bn42VEZhzd57sM225wDC2C4bYH5s2WKQJYuPfEkUx7NtKAgkYm9QAPXmz
	LDlQnGj6qcHvf/nOHbt/6l7I4tELgTH3a14LEMHrTmb/dn1o6iI+VfilmbpR4LU+hyA4MQ8S6EQg6
	IClIn2raL95VTRcrBm82qXL10VQX0bmX8gMxqdRJTPn4GeSnGJ4C1d27WYidRp+O/i+OicZAIqjLi
	3kLdzEkBhVotZEftHtyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFA5Z-00000009KvY-2GUN;
	Thu, 06 Jun 2024 10:11:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFA5V-00000009KtW-2TTl;
	Thu, 06 Jun 2024 10:11:18 +0000
Received: from i53875b65.versanet.de ([83.135.91.101] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sFA5U-0007s0-9t; Thu, 06 Jun 2024 12:11:16 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Huang-Huang Bao <i@eh5.me>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Huang-Huang Bao <i@eh5.me>
Subject: Re: [PATCH 2/3] pinctrl: rockchip: use dedicated pinctrl type for RK3328
Date: Thu, 06 Jun 2024 12:11:15 +0200
Message-ID: <4429508.MSiuQNM8U4@diego>
In-Reply-To: <2182307.KiezcSG77Q@diego>
References: <20240606060435.765716-1-i@eh5.me> <20240606060435.765716-3-i@mail.eh5.me>
 <2182307.KiezcSG77Q@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_031117_645800_9E484CE9 
X-CRM114-Status: GOOD (  12.63  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 6. Juni 2024, 11:43:56 CEST schrieb Heiko St=FCbner:
> Am Donnerstag, 6. Juni 2024, 08:04:34 CEST schrieb Huang-Huang Bao:
> > rk3328_pin_ctrl uses type of RK3288 which has a hack in
> > rockchip_pinctrl_suspend and rockchip_pinctrl_resume to restore GPIO6-C6
> > at assume, the hack is not applicable to RK3328 as GPIO6 is not even
> > exist in it. So use a dedicated pinctrl type to skip this hack.
> > =

> > Signed-off-by: Huang-Huang Bao <i@eh5.me>
> =

> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

I think this actually also warrants a Fixes-tag, because as you said, the
suspend handling for the rk3288 will change GRF registers it should not
touch on the rk3328.

Fixes: 3818e4a7678e ("pinctrl: rockchip: Add rk3328 pinctrl support")



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
