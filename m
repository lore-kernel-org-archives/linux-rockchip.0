Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EE54C021BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 13:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9bVN7Gb/+RMePPlok3Ma38Djk3JVAoTz4wiJVHM0pY=; b=LFScVojtOkofmy
	eNrXP72Y4n9z+QnFmRgV2ubV3NfXJsJ/X0/Bzj+hsbOugnqV8DNv2Qt0g1sKaoAkE1h7wIp3tZMr5
	lD7u6fnByJ+Nmj4AGu3QFu9ICbkk4GHxwKI3rtmwguxLZC193r7zz4o2KU2hp7sim0yb6tjma4b8Z
	1G1vXUv1hsEKOpse8AWcHT7+liU7HUFz40Oe2nuuAAG2iu9cu6sDb3NWObB5XPR6fxs409enC3mlK
	d6XNYawj83/Td9h8eaPwJKqYGsA8Q5D/lmuAELqBoSIjj1q+RehrdtbU3SWv2wxn3o9/8nCyk8lPi
	Nhs1aLXCnhr4yE17rBwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tndwH-00000007X94-0Lh3;
	Thu, 27 Feb 2025 13:28:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tndny-00000007V0k-1HWW;
	Thu, 27 Feb 2025 13:19:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zjjw7JOmUhRXjBZyb6Bvgigsi+ztWFQm+GvGLe901ak=; b=dqRuIPdTeFWHjBfK0767I0MAYe
	MnycsZx+FzO1ncp3G+LLW036SoUDmnB6W/akxuV799LCV6ebS/e9HZOfkojIYzMwCILQ4snttzf7F
	yhf5+lVHoai+a8ZhIM7vNZjKkrsxotZ1qLDyPL1e8m7RnWtFjgzIEbz2+n+FG1ZDmLkWBZjiL+pBV
	1vLDS3SA7dYUDtcuufbZpd5FuGK6dem7xBqPWskOXFPVDMoMrCJvbPwIKQYKd8tc91tj2VDO2l09W
	mt2zQcVIofdfrNdp88A0nxbmY6RxP0WP8IaJwlI3tnOfL28ZNMD82slWLu/tpOE1vDrJgJ+RH5/BW
	Wvhsq7Yg==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tndnp-00013Q-Rf; Thu, 27 Feb 2025 14:19:49 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-pm@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v3 2/2] soc: rockchip: power-domain: add power domain support for
 rk3562
Date: Thu, 27 Feb 2025 14:19:49 +0100
Message-ID: <2307779.KTMopqUuYO@diego>
In-Reply-To: <20250227105957.2341107-3-kever.yang@rock-chips.com>
References: <20250227105957.2341107-1-kever.yang@rock-chips.com>
 <20250227105957.2341107-3-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_051958_345030_ACF15CA9 
X-CRM114-Status: GOOD (  10.77  )
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

Am Donnerstag, 27. Februar 2025, 11:59:57 MEZ schrieb Kever Yang:
> This driver is modified to support RK3562 SoC.
> Add support to ungate clk.
> Add support to shut down memory for rk3562.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

forgot one thing, patch author doesn't match.

You have a first Signed-off-by from Finley, so the patch author
should be the same - similar to how the binding patch already is?


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
