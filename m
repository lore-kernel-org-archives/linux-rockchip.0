Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40132C77B61
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Apr 2023 09:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYfUahE+vveC2gO0BCvvMsFyr/Iwnp54T9iLBexuQNQ=; b=CE3E6zFeU+7l8l
	szNYuw8iJtKvN3ntCl/g0/wNVpaY2gH9O9mN7sZMWUMLGd94IzggyJTCWoFim0QDAvxtLA7ETdJ1U
	XlU4EU3xUaMfgR7Kdt73B/7kU8yW2Xgbhf7jyuE7ETJORViL8gBlUH1K7tnv1FrzhZMeG3zYC/hzc
	Cg/9POxnB+W4BqtXvn79Nr6GwOlSuOs0kxlyDRXtuNPXtBA0HmeyV0lM+27rzbDFK3INOjEB28FVI
	9VhztKRHyL+Jg8qNYWd1YLkV51qkvsJhHKnx8nxEhEn6TE5nYN1YTtGWDinAcPZOaJRt4ZP3W9O73
	nocH13tKp/aB0+MrBZ+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pryOR-00655B-2J;
	Thu, 27 Apr 2023 09:58:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pryOQ-00654s-0z;
	Thu, 27 Apr 2023 09:58:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=FRoWDN4JpsW0C17r1F/5/kJhG2h4U7/CWuCT0UehfvE=; b=eaaflKEaYOVa52SKHclliDg1Pk
	UADoWfYCFGDQZVRaDqE3piH680Qehn9wiXWrfgq9XaAXOMoH5Ny3NGGZ9Ej4er37gSv91srBWbUfp
	uSfmQu8ajEkRbQkZNtHBtnoIytCXXjJ9ST/H7yso/l2hmpgo7Qwso7crsmi19tvZzFDr/Es6j6mA7
	gb3k8d9BbtRbtNaCSUEW4Xy/x66NlTC/oOwQYkF8sJu2b9lWCbSqGmdTIAJJwaHe6da3zjlXP10Zo
	6ypZkx5wEXwmB81/0OasFrfyKAMfHXzF10tfPg080tJqYw4QICuEzdVLCjZs6Q87pyjj7uUkPdlDD
	D4Qqg+6Q==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pryOL-00CKST-1u;
	Thu, 27 Apr 2023 09:58:24 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pryOG-0003kL-9j; Thu, 27 Apr 2023 11:58:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: fix nEXTRST on SOQuartz
Date: Thu, 27 Apr 2023 11:58:08 +0200
Message-Id: <168258947019.413434.3793815124340047357.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230421152610.21688-1-frattaroli.nicolas@gmail.com>
References: <20230421152610.21688-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_105823_115438_0E550748 
X-CRM114-Status: GOOD (  12.16  )
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

On Fri, 21 Apr 2023 17:26:10 +0200, Nicolas Frattaroli wrote:
> In pre-production prototypes (of which I only know one person
> having one, Peter Geis), GPIO0 pin A5 was tied to the SDMMC
> power enable pin on the CM4 connector. On all production models,
> this is not the case; instead, this pin is used for the nEXTRST
> signal, and the SDMMC power enable pin is always pulled high.
> 
> Since everyone currently using the SOQuartz device trees will
> want this change, it is made to the tree without splitting the
> trees into two separate ones of which users will then inevitably
> choose the wrong one.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix nEXTRST on SOQuartz
      commit: e5d8752e957872a844ed46736b15f30b08af6591

As fix for 6.4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
