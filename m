Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0619C27C75
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jun 2024 15:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uc5owDdS3ieeahDwMVgbllsKQ4UxRt5No6sGNerIBk0=; b=sJJSkir1cay/3s
	ghqQQgfSsu57sEcBzc37B6YB+3tBRvRs/Yk8UQ1oJf15Sz61Hn3y1tO/QdoQtOdw4pF5qZDuiAZEY
	EII2Xco1Bd0L8kc5qxHZPX5IbJXWMo6hKXKApWEPFqAzQqi29IAbiRttcLsJeVm0CHNAr3KgimDlh
	joBjetHQM8toYcQVexBLY0uyqwZJ+s1Lv1/1MVMXFmV+uRz3QWYSX2kuPqnjmBB9eJTxRjiFZl/VA
	4wRgNCwem1wZN66g+Ogk5z6Cn4j6ibKnhS9dI1BovwCT2Y5ah9VxC8tktNoRv6wjefI49ZwxbMJIi
	T1zc9b85syjoORZnmPYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH34q-00000009GoF-0GW5;
	Tue, 11 Jun 2024 15:06:24 +0000
Received: from mail.eh5.me ([2001:19f0:7001:3edf:5400:4ff:fe32:f2e0])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH34i-00000009GfR-0Fs1;
	Tue, 11 Jun 2024 15:06:21 +0000
Message-ID: <5a194e14-f578-4a6c-998c-e025d3a65486@eh5.me>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eh5.me; s=dkim;
	t=1718118351;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WXk1g2VHkQi76mFdTqCSmMpVfZZE8Ut2KmIPAo1Mpgo=;
	b=a4arpJEG/60zpKH0zF6lPjtaHbUHMEQhhK/KRX82XXPJ1ie5uqn4GM3Bkd1JfNrTZzrhNs
	dExHMqKhm6qa3mgOPyNSXajF4lpl4DZmyF9B1VQfrdRBP6Ttuc+QGxzm3EmlqasUOP66fC
	m45FaYmD82jYZgsTdDGQCv2ppQVGO6E=
Date: Tue, 11 Jun 2024 23:05:43 +0800
MIME-Version: 1.0
Subject: Re: [PATCH v2 2/4] pinctrl: rockchip: fix pinmux bits for RK3328
 GPIO3-B pins
To: Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linus.walleij@linaro.org>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240606125755.53778-1-i@eh5.me>
 <20240606125755.53778-3-i@eh5.me>
Content-Language: en-US
From: Huang-Huang Bao <i@eh5.me>
In-Reply-To: <20240606125755.53778-3-i@eh5.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_080619_939927_2F0255FA 
X-CRM114-Status: UNSURE (   7.71  )
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

On 6/6/24 20:57, Huang-Huang Bao wrote:
> The pinmux bits for GPIO3-B1 to GPIO3-B6 pins are not explicitly
> specified in RK3328 TRM, however we can get hint from pad name and its
> correspinding IOMUX setting for pins in interface descriptions. The
> correspinding IOMIX settings for these pins can be found in the same
> row next to occurrences of following pad names in RK3328 TRM.
> 
> GPIO3-B1:  IO_TSPd5m0_CIFdata5m0_GPIO3B1vccio6
> GPIO3-B2: IO_TSPd6m0_CIFdata6m0_GPIO3B2vccio6
> GPIO3-B3: IO_TSPd7m0_CIFdata7m0_GPIO3B3vccio6
> GPIO3-B4: IO_CARDclkm0_GPIO3B4vccio6
> GPIO3-B5: IO_CARDrstm0_GPIO3B5vccio6
> GPIO3-B6: IO_CARDdetm0_GPIO3B6vccio6
> 
> Add pinmux data to rk3328_mux_recalced_data as mux register offset for
> these pins does not follow rockchip convention.
> 
> Signed-off-by: Huang-Huang Bao <i@eh5.me>

This is also

Fixes: 3818e4a7678e ("pinctrl: rockchip: Add rk3328 pinctrl support")

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
