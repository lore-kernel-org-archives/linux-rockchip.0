Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AF6BC52D7C
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 16:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8EJXbpKBIsX+GQnIDftPKKOg++BHbz7awq4aYZXW3k=; b=BDUvwNNnDxH/f1
	Y67fZb9E4/UghWmUWObMA5gRWSggnd0ydu2BUz+PChbYh80OY2lYcJ5Nj902EQRROHJYaCCTUF3JV
	oVzJZLsPk9mJGM/ZUHGj3eVz6oFrZjeC6k160C8kHqDom8IN2NIygw70SmkAlyPUmsfTdMkklPx/9
	YYvKUkIRjuWf2WNj8e0DFWccNx6YvZ9HIIakNlqCGXei4RpKPBLvRsZ+3kKZf1ksJPw05TzC7nAWA
	SnUgZ0iOZ44APR3JIXlpH8KQsp3f+h5u3X2lUqL8Apgvgr0/RefczGPBjzIKidoCMPbTkDCXekZQr
	xja41sEPLpSFwp9MINNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sedfE-0000000AZDw-2hW6;
	Thu, 15 Aug 2024 16:49:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seddx-0000000AYz0-2r7G;
	Thu, 15 Aug 2024 16:48:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UW7NGhbbVZFB4W/eRQdKKgB4HFlv6v7OSqkUP1DgWjU=; b=xcgdGWJAZtGBdmAfDttyTq+6C+
	gjfpgSg3G+A1R1zmBgE5JftQ3Zl7fCNQbqVhg0sztOAanWsxR/tXcuasOcDjFvHkvIfIzbiRAnTSF
	0wBXfnB7TJ6QlKkmbSZofD3GopHS68PEjOW58RoGec0gE5Z2SRq3P+Pas8uSQThvOUkFdckVpWkb9
	WojcyThpRA3inrFDlmQVI0pZQ4mra7wS6zT+CyWQJJHEFt1zQDSaf8Uh74VHRVsZbWU+cUjYioNjv
	znDrFbqfZevMIoKQCqCvgYOPkUrGR34VHyoUznj3Es9Fz5EHb+LJvNDn7COplqBQgAXstrLs3MATa
	IrfQhpoA==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seddq-0005br-Jr; Thu, 15 Aug 2024 18:48:02 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: brgl@bgdev.pl, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, ukleinek@debian.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: eeprom: at24: Add compatible for Giantec
 GT24C04A
Date: Thu, 15 Aug 2024 18:48:01 +0200
Message-ID: <12584345.NizCu2HIMA@diego>
In-Reply-To: <172340442666.7060.12608274118090495917.b4-ty@linaro.org>
References: <20240810211438.286441-1-heiko@sntech.de>
 <20240810211438.286441-2-heiko@sntech.de>
 <172340442666.7060.12608274118090495917.b4-ty@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_094809_750724_D2894774 
X-CRM114-Status: GOOD (  12.95  )
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

Hi,

Am Sonntag, 11. August 2024, 21:27:13 CEST schrieb Bartosz Golaszewski:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> 
> On Sat, 10 Aug 2024 23:14:37 +0200, Heiko Stuebner wrote:
> > The gt24c04a is just yet another 2404 compatible eeprom, and does not
> > follow the generic naming matching, so add a separate compatible for it.
> > 
> > 
> 
> Applied, thanks!
> 
> [1/2] dt-bindings: eeprom: at24: Add compatible for Giantec GT24C04A
>       commit: a825dea2cd27a30e49816f18b7bc16545d5f0f89

just for my understanding, where is this commit living now?

Because linux next seems to know it [0], but also says that
"Notice: this object is not reachable from any branch."


Thanks
Heiko

[0] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=a825dea2cd27a30e49816f18b7bc16545d5f0f89



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
