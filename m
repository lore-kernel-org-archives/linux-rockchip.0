Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E664C43458
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 15:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Mime-Version:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YPSAbQtHIXDDRzKzYqNW48GDCPJtwTvZSb1J/H807Mg=; b=xCy/Q6n+ivvZWt
	TcwDHqclC2ZtyehVTRxzF0n6ZSlG7ayCf9a4uGVVs0c6WNzPg+FicSFDLL3H8MVGYRN4YeOfheS+T
	Es4IfCuNinKS10aNq7EB+u7FSP4X0Iea/HTte8zSMDafLDkHn/cMUOBLQGtpgzF1t/GijWKfMsPH7
	Bl+kHnmw4hw0WMQnxpszk6SRwqLmjdkqzrpny81wGclYzFet4uUY/4KhLju+3+ncy3g9LpCMdso2h
	bKkwNEgAzXbHPUcIiqfSeXi7L/ggR8O8omezT2LpkdUD/G9ReVoqQI9kfrFqmE8MI56iVPdWJfeGm
	BIvUbO63gF/Z0Y0I7w3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7ly-0000000FJMl-0LOY;
	Tue, 07 Jul 2026 15:31:46 +0000
Received: from out203-205-221-239.mail.qq.com ([203.205.221.239])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDF3-00000003w4h-3t47;
	Thu, 02 Jul 2026 08:57:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1782982668; bh=g1tzCXhfJ6i/LBmjQejOU8xmPId9QB52ccgEyl7GbNk=;
	h=From:To:Cc:Subject:Date;
	b=skcmYcDPRinm9JQdh/HJi2j/syN3Z8wOLEdhyTIES/RNUj0tWTqtIOrx6JrDpKgMc
	 sF9LiV83Dua9jQJl1C1mxU8DB8jhvLJJ7yEA87Gr21ts+/JdD4d2pP959qD3sCTtdh
	 THjCSTjHAc9op01NNa0gZBalxL7iyZ9WrnsGQgnE=
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-QQ-XMAILINFO: McF9JvsryK5J6Ks/wR8zL9of7ASkzOteCwRrFmEQOcNb0HYqeD3TOHYAxT1qnv
	 ZnkOBGssLTWF245PxCUVYkCwtPD4KiRryw5lTxQYqlKOmDbMsNkx+41cV1SL0mBCgQ3hJdBIdMQyp
	 hv9Rs+bajluxLjT1TOoplyMRF8kPBx4KPwYAa1qnbdZ0zFfcxd3t8o7POwCVaHjb2Qne7yVVOwS73
	 aKdLETXeXldQDd9hbs7mHyOX0i6rDtoO98mSimi4QY2g6f6xVkrSKIEBpsPlPTI2pJfdA0arfJcgK
	 PIzft07W7pB6UCx4oRfa/herkgepcInoueB83avM8+/+GyA0QCPNj+IYswencoRTWU71l+hYI0ARa
	 sDvKAKw3U3+jmKeWfDVc/JaPzFcdkMFFi2Z/kSEmj9A0LE3sFTwKE+2bE2yzOe0nw9GkRidrH7xu5
	 9M7SbeDQmNyaTsk/VgT7q/7TGQO7PkOoAoJRpfJSBVJetVDIiLsD18OzPV1hMOtE+y74PwvtEE7ZY
	 Tg21nLAEo2egUeSqmM1Nd8Oh3AyK0fc5NUl/TwKTemED1RfoNMLhgZqiyVh61lnqkr+nOFmuDarcD
	 vOhpMyLBkB0h8BOewhuqu1Lnh/EzV94x33/H2yRM8mStx84pNCV6UmHDzm5zDqegFdjSTusrB5ekb
	 QIiNZwK+6ih0z0NvbUQEjbAYyaE6B42N/txmbcIAc4NhZDgQjCg+aGGEmUfwv1OHGlC0M486uchOD
	 +5lAAGd0rKZNS+QCAjBDvhCvKm8DOBOoHD44Itl8ULyDsZIu9X0wFPgsq4GuEuC6l59uvikxPGQTG
	 vkLkMZdhfsyV0DD1U3OLCf4ThcpHufmb7aknUw3aamn6h1tMIqcmkKI57omSyg+9zYtYkanxBJ7MV
	 s+QUmpUZ/02d4pgf822LghecXv3r9PkOV9H8XCu9lIuX0zTE6duKl4S0cWaWnisoybDPaXTRR7pwy
	 rG7Zg605OZfrFb0SpuxMdbXi3rFaffQuZcFTL95k4CXx89+HIpmKwm00J3ejPyQ7k2KCpoGjcZdUd
	 mNN2hHDtFQVB6ExHC7ze9qmJ3YOQ2jCYqCoXC
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>
Cc: "=?utf-8?B?a3J6aw==?=" <krzk@kernel.org>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?cm9iaA==?=" <robh@kernel.org>, "=?utf-8?B?a3J6aytkdA==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Y29ub3IrZHQ=?=" <conor+dt@kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: can: rockchip: add rk3588v2 CAN-FD compatible
Mime-Version: 1.0
Date: Thu, 2 Jul 2026 16:57:46 +0800
X-Priority: 3
Message-ID: <tencent_F173D3200DB38C5942E848728028E291DF06@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-mid: xmsezb41-0t1782982666tvoi91hyc
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_015754_320774_146F6E23 
X-CRM114-Status: GOOD (  11.46  )
X-Mailman-Approved-At: Tue, 07 Jul 2026 08:29:51 -0700
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

Hi Marc,

thanks for the explanation.

> However, the version register _in_ the CAN-FD was not changed. :/
> This is why we have a rockchip,rk3568v2-canfd and a
> rockchip,rk3568v3-canfd compatible.
>
> Yes, please use rockchip,rk3588-canfd, unless we get information from
> rockchips about CAN-FD errata and SoC silicon revisions.

Understood. I changed the v2 series to use rockchip,rk3588-canfd
instead of rockchip,rk3588v2-canfd.

This includes the binding, the RK3588 DTS nodes, the driver OF match,
and the internal driver model name.

Thanks,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
