Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C93FCA5FBA
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2026 11:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUXpBpOrlBh8uK9K6qqe3XYIoHUcm8sS8n+zT3OLCjQ=; b=R5xpomTzkj2xjB
	UMjk6wRD3qPENzE2oFZ3VYVvc3JlqNHU+en7gXLUBIOkZ+xV6e//kP3hkyPegn/eYlSJffHRGCeza
	I6nS92zL4TOEq92su1HlrWx18sogI6AOda+nSBH/Px1Pzj6l+SDtYpso9V7aenMKmd7NrOM6FTs+w
	VXt7P1ii8bUC6q9q0dcc/Ejy2ISCWxEB7a8ymw9Fk70Vi+nSQvvgi9Wye43d+2Av89WIytPpYJ/ZN
	zawb12/EIsVFqzSX85+jVkEF6mVOXMbYGE2plNScg/a7PXQkhyPD+lSI2BID1RyV3TM13fxaryByv
	ApIUeSWKVZlQRPQ2gYmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBsl9-00000005upp-1c2f;
	Wed, 30 Sep 2026 11:46:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBsl7-00000005up6-46Sf;
	Wed, 30 Sep 2026 11:46:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1BA1D60008;
	Wed, 30 Sep 2026 11:46:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB4341F000FF;
	Wed, 30 Sep 2026 11:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790768760;
	bh=aV5u5aRXaQQEnAiaHkz7ZngY6X+rGsMshxH6ocvG3KE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=g3Vsz0H8mwII3DRDHpY3v0HtfF6aMnGdMINM26M0BU7TgEV1lyjKWmRQWG3q5qkXz
	 PwENhNkTSrkE5XAwQKm23HXc1ed+Uu3M9wZNMqDD2jlmrrh7P/L96oMZ3eC3tDldSF
	 EmusUQ8391HZqv/diQPsZJcomagC3BvIMEpg7l4ni6atPdBaR2QPKlExBeLurjlAcU
	 y1Ro+RxRYDPbFYNic/Xf6JCd2kHbGmPHcu380Zg+EW+4mroUAz+yilMw11UosS0NYU
	 2JAAznQYDBsH8tzmqNqWQNNfog20B52ElmqGcugTSBpN67hjGiAy5n5wUV5kAwbyGz
	 dZE2e1aF6c+xg==
Date: Wed, 30 Sep 2026 13:45:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alexey Charkov <alchark@flipper.net>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sre@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: soc: rockchip: add boot ROM download
 boot mode
Message-ID: <20260930-hulking-swan-of-enterprise-94e2ae@quoll>
References: <20260929-b4-rk3576-reboot-mode-v2-0-5a34ca72065a@flipper.net>
 <20260929-b4-rk3576-reboot-mode-v2-1-5a34ca72065a@flipper.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260929-b4-rk3576-reboot-mode-v2-1-5a34ca72065a@flipper.net>
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

On Tue, Sep 29, 2026 at 02:28:18PM +0400, Alexey Charkov wrote:
> Rockchip boot ROMs enter USB download mode, commonly known as maskrom,
> when they find 0xef08a53c in the register they take the boot mode from.
> Add the magic under the name U-Boot already uses for it, so that boards
> able to request it can do so symbolically.
> 
> Tested-by: Shawn Lin <shawn.lin@rock-chips.com>

Drop, you cannot test it.

What is the point of such blanket tags which are not even applicable to
50% of patches here?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
