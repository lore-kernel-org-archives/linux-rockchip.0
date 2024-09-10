Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB3B3EDE9AC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 18:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lELaOA4NQ8kZ+ltxf4e7sTT3il95JvFy4gAkJKJ2vME=; b=aHi+DeRLnF+j/d
	nZ4Ixl0vMzTnY82ntVVIHUhuH5+mpgIKQrhDLqnw85+nfNKfBuCdvPoh554NMQy4dRV4bdEQjnVOo
	+ZT8OlAxL+Ihx2s8g5JaqobXtEdz9AvDxBSJHtQmnEwJjV7gv5tMbQHf1Ryh+XCDNeXU6ZpfEiFe6
	fWfmp/VSFvUQRK3Yzf1Fy0089gmYEGdAUrnfnj9q0XO474LsuHhKmDcRMVJptDnkGyhaQE6IjU0Du
	gtO0r3aH2zw0WcTIJtze/Jp1GJu3PBUnFZ0jmeYgtPIfrdDXKvfIfPWoMmsjIcHkAsyglZBFuuhjp
	bqSjGl/vXFuU6kbzZD4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5T4-00000006ixE-2sA7;
	Tue, 10 Sep 2024 18:19:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5SR-00000006irv-0JOJ
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Sep 2024 18:19:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=XzlU8P8QZFu0BOwrWasNz2nIoiPFhgq1B8KDiec2fJQ=; b=VajOz9ri3kbGwukRMWUsfs9mFA
	SIo+WBOTiiOl9pUr+PeXDH0XkQ66A/H3hEovxgjFfvWC743jlS1VIVXhlcgE36BlhTbEQDS9dWO6z
	U+dzKR28KrLHqYkRdH0z0rvRWWqPhQfrD5BsT9mVEpPXJ2tj9amTi8pYrZBTXmI9D7KAQXydAWU08
	4+uZJrvN0DXoGUB+0ceCOEEYyyegluOjlGplApmTwYP8p/NmZvo61lPjuDj1DM2PWGJ7hS4x6RIYO
	ufFcqYbIp9xNjhIOmaP3+TzpJMxmGwV/sllsO78GngDiFlcYDY+uIDHfyfU8RdwklNIidMm8m6SWj
	uhDWB6ZQ==;
Received: from i53875a02.versanet.de ([83.135.90.2] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1so5SE-0007Ih-Ch; Tue, 10 Sep 2024 20:19:06 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 =?ISO-8859-1?Q?Adri=E1n_Mart=EDnez?= Larumbe <adrian.larumbe@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v1 1/6] pmdomain: rockchip: forward
 rockchip_do_pmu_set_power_domain errors
Date: Tue, 10 Sep 2024 20:21:34 +0200
Message-ID: <4131747.ReJHH8Nr61@diego>
In-Reply-To: <20240910180530.47194-2-sebastian.reichel@collabora.com>
References: <20240910180530.47194-1-sebastian.reichel@collabora.com>
 <20240910180530.47194-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_111919_176799_4C519803 
X-CRM114-Status: GOOD (  11.52  )
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

Am Dienstag, 10. September 2024, 19:57:10 CEST schrieb Sebastian Reichel:
> Currently rockchip_do_pmu_set_power_domain prints a warning if there
> have been errors turning on the power domain, but it does not return
> any errors and rockchip_pd_power() tries to continue setting up the
> QOS registers. This usually results in accessing unpowered registers,
> which triggers an SError and a full system hang.
> 
> This improves the error handling by forwarding the error to avoid
> kernel panics.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

more error handling is always better :-)

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
