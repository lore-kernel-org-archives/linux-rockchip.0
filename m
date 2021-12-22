Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB5E3C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 13:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OVFZnIgu5rUpSjp59bkzAG4DGeACVF40Hq8r4thm4jc=; b=iz8rdxsfkKWijO
	u1W3PFl/mK9cxCw3YvR6fpXeqvrlKLKmdzKwcJp5eBm+9ljNvLpE6UtrPgQcjb56Ob5wbDWS4YW8j
	BBu2x2XbVGLAAHXlRZUTVrTrZGotGteV4EpXWY36mNZkKYN4u0NznX8BIwx4/deIzF+FMQnVHR1ba
	A7b8sBseIVKaqEIFSpbITmI5eaCmFTI/StxtiRu2dEk5fyr1tPyLVIjO7iu1ra/mhlm6Z0e6ODKIF
	7iPZHmYTOK9D4jN+B973IfU9TBfvwSCsNB2gGBR/xUATFAFQA5NGoMma182a9SASydrfzIOj7Nubk
	hAETcqQ5N6G2eB91TBvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n01eq-00AWTe-VZ; Wed, 22 Dec 2021 13:27:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n01Wh-00AT1J-Jj; Wed, 22 Dec 2021 13:19:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A9D27D6E;
 Wed, 22 Dec 2021 05:19:25 -0800 (PST)
Received: from [10.57.34.58] (unknown [10.57.34.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 886733F5A1;
 Wed, 22 Dec 2021 05:19:24 -0800 (PST)
Message-ID: <04982df2-29a0-86d5-d4a8-05826916d9a0@arm.com>
Date: Wed, 22 Dec 2021 13:19:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 3/4] soc: rockchip: power-domain: Add regulator support
Content-Language: en-GB
To: Mark Brown <broonie@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
 <20211217130919.3035788-4-s.hauer@pengutronix.de>
 <20211220094435.GU6003@pengutronix.de> <YcB85mzJHrirUEDA@sirena.org.uk>
 <20211222104036.GY6003@pengutronix.de>
 <baa1603a-a6e2-4a32-a5fb-dc1eff01189c@arm.com>
 <YcMhazsAfU26fCa3@sirena.org.uk>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <YcMhazsAfU26fCa3@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_051927_740379_41DA5B7B 
X-CRM114-Status: GOOD (  11.02  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021-12-22 13:00, Mark Brown wrote:
> On Wed, Dec 22, 2021 at 12:54:06PM +0000, Robin Murphy wrote:
> 
>> Certainly RK3399 (and I guess RK3288 too) suffers from the same
>> priority-inversion issue of being unaware that VD_GPU needs power before
>> PD_GPU can be successfully turned on to probe the GPU to claim and enable
>> the regulator (via "mali-supply" for DVFS purposes) that needed to be on in
>> the first place. Currently all the boards are bodging around this with
>> "regulator-always-on" (e.g. commit 06b2818678d9).
> 
> Does the SoC actually support the supply being completely off in
> operation?  A lot of devices want everything powered even if idle during
> full operation since keeping voltage differentials smaller makes it a
> lot easier to design to avoid leakage current type issues at the points
> where the different power domains connect.

I don't know TBH - the available documentation doesn't seem to go into 
quite that much detail.

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
