Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A895C8302D
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PckBi0Wcjzad0Su650GmzG3GVsjnWIqypxNrrJXNovY=; b=LIL0KnQAk8vn//
	51M9N1WIfEl9i8+9Vg9l06k6gyU2yT0VY9Wph/Is5n8b5oE6JqsM2znsO3Tb9zWgzqHfC0r8MzKiT
	71OBsS3j3CVZhqc4iJysKVxfZCLjTiNw4HaD7qRK8Shp8YYVzZF66j3PZWARLIa5p0zcaAydRBffj
	GKnppC99WUR7T/7GrfJKaaA50WEEAtTumzQAD+63KOrZS1fnfV288Kd38JgR1wQMAhn3QoQOf8MyB
	JpTfqeYRh47n94eWOXd3oUP/ZT0a1LBxxv/eYwRjBK80NIOXEADVcK2SgkvLPlhGVPetNQUDrhg9o
	47sgOTyPbb9O2aJvMXeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWAf3-00000001jUq-0JF8;
	Mon, 30 Jun 2025 09:18:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWAYI-00000001ib7-1vPy;
	Mon, 30 Jun 2025 09:11:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HwVUTZQKNW/ggCzjg2eCwPTwxdG9ZX3n70WlY3ZOPic=; b=zZQE1uvMxW9DStbgQ/xyA8KycJ
	8shhjMFRqsUso4UxhsrduIqFI7km7seVGEU9T6S/GFGnOlUwztGpYunCXRk0/wnhQiUlaMmd4VubS
	JuMG2+3fWWzrvkvqWeZJ0qOoXvjCxw87S62mkW+g06k3bIBzeSvm4Dh9wwaoe6cWdKlgQWD3/O++B
	1OEHuY7BmkIjIhu07t1/+d5AaUCES3+e/6DDaf+oPDB1IH4OwDIOX0XxmN17HX9m3WI/md+WBxq2B
	2f8Nsq5rjca7OHUzRAYoxdI1clRMFiKwyrU9l4IZaMd0M+9YXFC25F/5wbB4TWkYAaulGp5CupRat
	n/YgmUWg==;
Received: from i53875bfd.versanet.de ([83.135.91.253] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uWAY5-00065C-15; Mon, 30 Jun 2025 11:11:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add missing fan-supply to rk3566-quartz64-a
Date: Mon, 30 Jun 2025 11:11:24 +0200
Message-ID: <175127468078.130313.6730196931400503235.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250628142843.839150-1-didi.debian@cknow.org>
References: <20250628142843.839150-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_021150_495023_895F552F 
X-CRM114-Status: GOOD (  11.86  )
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


On Sat, 28 Jun 2025 16:28:18 +0200, Diederik de Haas wrote:
> The Quartz 64 Model-A Schematic from 20210427 on page 7 shows that the
> fan's power supply is provided by VCC12V_DCIN.
> 
> This fixes the following warning:
> 
>   gpio-fan gpio_fan: supply fan not found, using dummy regulator
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add missing fan-supply to rk3566-quartz64-a
      commit: 9037532ab893635a46afe88542cd747a4a846497

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
