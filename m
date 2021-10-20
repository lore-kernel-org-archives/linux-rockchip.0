Return-Path: <SRS0=Zsw1=PI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A30FC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 08:07:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 13C5D6115A
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 08:07:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 13C5D6115A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Klhl6/piwtBB8lEyRFMwfSxYQ6FxiEUR5O7BodZ2uk=; b=PYcLjgLI92/547
	Y1q7aXUsnAKfVJurRlF5eTh+8C1bxxXuLl1EGn1AorjnxazxizFpPGwH3yRuaNZ8lcR1l45Vkmb69
	RUsRvDbthtO6phFuWXTb8/EciE4RgBBikwpK4e9pXXJQ5IwF/qfeMPfb+/tZ12hVcQ/s9m6ShK1J/
	v55KrcA8btTSa6qgMJmnZY6VpRR3Dagoa55Hjzohz2eH8sW/5LGwiqa1Y0N6cHRVoRD8Zp1VvawQO
	nLzAZb3EHFvv5zBEhuvEBwmDKzvBZVbQiVqVTmseqma5q1JnM4jL4kLGjcuOTp76joNd0UXglApjV
	zpv2v4zjzsnk9PJP1h5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md6Xn-003m0i-50; Wed, 20 Oct 2021 08:01:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md6XZ-003lzB-JQ; Wed, 20 Oct 2021 08:01:38 +0000
Received: from [213.208.157.36] (helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1md6XX-0002Hv-PZ; Wed, 20 Oct 2021 10:01:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add idle cooling devices
Date: Wed, 20 Oct 2021 10:01:32 +0200
Message-Id: <163471688410.692684.11557412132014625068.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211001161728.1729664-1-daniel.lezcano@linaro.org>
References: <20211001161728.1729664-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_010137_656165_977538DB 
X-CRM114-Status: GOOD (  12.32  )
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

On Fri, 1 Oct 2021 18:17:28 +0200, Daniel Lezcano wrote:
> The thermal framework accepts now the cpu idle cooling device as an
> alternative when the cpufreq cooling device fails.
> 
> Add the node in the DT so the cooling devices will be present and the
> platforms can extend the thermal zone definition to add them.

Applied, thanks!

[1/1] arm64: dts: rockchip: Add idle cooling devices
      commit: 43f9699b0c12d4e50b66723213cef456c52254f3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
