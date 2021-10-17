Return-Path: <SRS0=g7df=PF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73B1DC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 08:29:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9424E60FE3
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 08:29:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9424E60FE3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KjCZcmn5/+3IZkWqcmsqv5szeEbuCUNg9aoTfsp03Lw=; b=UcUrXepYdZPeTp
	aN8gtvB8wpfdAUttxqax5op6EYJOKkVtyfoJa8woUmgoGFIyTWHkZDzYeCK4ozoWvjC0CyIAF5zSf
	PV+lyvNBbaJl7f84CQZfg/V2e6JtO7Z3z6vYTl8lut3d5Q444yW2/aU67/DuWPrJBWah+ybUoNu4N
	+7w12ruLnZ4GVKiI1VwzAZWDcnWd6wmuAiA8S+mBFd3aWXZHF2viLat0Zv1wf5QhGnZf3/BCgJSUN
	aTs1WiUjQ3o8Z6ksWempSMQqUJmGQjCa3LXgtDvFkyA/RNBHjWxEQ07jl5MwaD5DbHjOqbms8nvAA
	gzK4RgyvGSOwP+1v4Krg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mc1Xg-00Bwqt-4i; Sun, 17 Oct 2021 08:29:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mc1XV-00Bwpl-GO; Sun, 17 Oct 2021 08:29:06 +0000
Received: from p508fd4f7.dip0.t-ipconnect.de ([80.143.212.247]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mc1XR-0002AV-VW; Sun, 17 Oct 2021 10:29:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linus.walleij@linaro.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v3 1/3] dt-bindings: pinctrl: convert rockchip,
 pinctrl.txt to YAML
Date: Sun, 17 Oct 2021 10:28:59 +0200
Message-Id: <163445933306.455569.8867235552630241420.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211007144019.7461-1-jbx6244@gmail.com>
References: <20211007144019.7461-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_012905_569280_CB991B37 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, 7 Oct 2021 16:40:17 +0200, Johan Jonker wrote:
> Convert rockchip,pinctrl.txt to YAML

Applied, thanks!

[2/3] ARM: dts: rockchip: change gpio nodenames
      commit: d7077ac508e6dbeb737758dd2ef6637141ca72f8
[3/3] arm64: dts: rockchip: change gpio nodenames
      commit: ec3028e7c83ed03f9cd10c0373d955b489ca5ed6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
