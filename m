Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4B0AEFCE2A
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 18:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMRpaECeVM+8YgoB1QFcN0HLFVmOVq7c/nOVwoaivAQ=; b=zJOqq6u9loWRYz
	g0R6T59OcuocS5by7iWw4K86QR1UwTGKYuBq3WT7CepwoqMrv5sFvh6CEMZSYVebqIR9Q1jF/1P8g
	0DQ1nRONUG/mzoF1RvHHjcvaVoqdZpTECAl8CpOpeadu06xmxWlfK1i1zkIhE/cGbOtlu5yZOiNQs
	YPCpX5yNwDElNK/4K+K1GAgkkFeVChBErH/R4uBPOo07I/visYbFVc7u+NDDkfyatCxRhKBnih3A/
	Z7wiATaEuYkofFH3ye/CDNDeBKB1BD8b5C1I362DNlUzJQkHPJPYwxcEXbaILpfYae7Z0r4DFNOZ7
	bDuJknZYL3u00Iij132A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxqv6-00000000Kk7-2mlH;
	Wed, 04 Mar 2026 18:26:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxqv5-00000000Kjk-1cxx
	for linux-rockchip@bombadil.infradead.org;
	Wed, 04 Mar 2026 18:26:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:Message-ID:
	Date:References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=8yhiqCB96GTqqa0h+fYnytE0lAq+2YDH+/Rk+pdxEpo=; b=niWD3eTc3pl6D7BKkAUnAXbAcG
	lhmSzYs1syTk9VyuYXZhh9gtcGw7cVuDetIrgykSF/pTeCTGL1CjOk1DdztuN3zr8IkkRXXdMgcNe
	kQ1lBHS1cnKTFJr22g9wbQiav2VCjw33FBZOPpIKpNNPyzyXuIUCWIdfqCHtmlQzx1U1yhWvMLnMw
	I77NvlJK/TzvNK0exYKtNJJ6xFcWEAWG8XpdEG2eqBVOTWMkXOsOJFXt+Aaf22C1Lgzdm8vS8jSeE
	Zx4IhJ6HhDEnjSTY94oyACRRS0TkwLK/2/zQWkFLS91siH4HY+IxLBcpnJ1KmAnlJnQiQporTO5A+
	KqBx3yeg==;
Received: from mout02.posteo.de ([185.67.36.66])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxqv2-00000005LYv-265C
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 18:26:02 +0000
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 8BA71240101
	for <linux-rockchip@lists.infradead.org>; Wed,  4 Mar 2026 19:25:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.net; s=2017;
	t=1772648749; bh=8yhiqCB96GTqqa0h+fYnytE0lAq+2YDH+/Rk+pdxEpo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 From;
	b=G12nf9zfnUeShExAYZtv+jhqO0+oE/40tE9WnagNw82SfziL50ziOhYg92tLjaC99
	 46f6d2zVcY9vOtGB62Y5dOXYoKYLn8InMCzRp4Hd1tZ8qIKrZHzi6gHtvcHXXQ2lc2
	 B2cAomCfC5nx3CmTx2O2kUOlV0TDj4vabdDSIsfzksTGExnZEiYna6EoGqSf3/czxH
	 jPDXDGoKUOLitXy1NPkN8GP2KMQ62aRA5web9TiKGZ0WV/shnzqYdqG9NVdoMg+AGX
	 DbK8dS69L5ABPGsTf9WEuu+Wgg21NY3B3vHTlQwRUFnt4WxeXrCoMg5F9C4j6KEmbu
	 ea0q0mN2zk0EQ==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4fR1Lz08XBz9rxD;
	Wed,  4 Mar 2026 19:25:46 +0100 (CET)
From: Charalampos Mitrodimas <charmitro@posteo.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de,  robh@kernel.org,  krzk+dt@kernel.org,
  conor+dt@kernel.org,  devicetree@vger.kernel.org,
  linux-arm-kernel@lists.infradead.org,
  linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: Fix the trackpad supply on
 rk3288-veyron-jerry
In-Reply-To: <20260304164448.1024410-1-festevam@gmail.com>
References: <20260304164448.1024410-1-festevam@gmail.com>
Date: Wed, 04 Mar 2026 18:25:48 +0000
Message-ID: <87a4wnmoye.fsf@posteo.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_182600_687142_F7E96674 
X-CRM114-Status: GOOD (  15.85  )
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

Fabio Estevam <festevam@gmail.com> writes:

> According to hid-over-i2c.yaml, the correct name for the 3.3V supply
> is 'vdd-supply'.
>
> Fix it accordingly.
>
> This fixes the following dt-schema warning:
>
> 'vcc-supply' does not match any of the regexes: '^pinctrl-[0-9]+$'
>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts b/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts
> index 6894763979f0..0bf03b1ff2ab 100644
> --- a/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts
> +++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts
> @@ -488,7 +488,7 @@ trackpad@2c {
>  		interrupts = <RK_PA3 IRQ_TYPE_EDGE_FALLING>;
>  		reg = <0x2c>;
>  		hid-descr-addr = <0x0020>;
> -		vcc-supply = <&vcc33_io>;
> +		vdd-supply = <&vcc33_io>;
>  		wakeup-source;
>  	};
>  };

Reviewed-by: Charalampos Mitrodimas <charmitro@posteo.net>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
