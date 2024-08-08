Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B44EFC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 13:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W0Nl9V6HItv5If9hbtixEh76Mj4l66L2MQjljVf71/M=; b=ZyNeP5RV4pH33MBzg4mUgibBgH
	g6vy09H7Fglga+JSWCnq3MqZeWpAja+6wKQfd0tGo14EFeOTe1EgTZcW1X7Qhq1K81UdHhdDv3QpP
	9Dd3XlZ1ngxx8G5N/+fN9CisP2kLqXe1YqOHSiZR1TPsKFHC0GrEt1ZJk2OaZV9e5DpYkBk5wceUF
	2MozELmEJVeE9jaVf+rqD7617fhz+p7GHaN0dbXHVu5TpQmLJMOfwxsm2WV+Q0nWz1VvRB4Xe80du
	sCiHKvmFd6deaj1P7ZOGL+NVNO9MlU0JArhIfXrYRQk/l1Qn3UkdQ7PE1e1+nV/azkBgHL5TpDMCi
	MAv8WLqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc3Q7-00000008Oos-3YwO;
	Thu, 08 Aug 2024 13:43:12 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc3Q4-00000008OoR-0bGX
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 13:43:09 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723124585;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=x17N2h6ck4rUNThXwsBQqdhkPZ89u9BH3S0N0MpEjj0=;
	b=A9sr1DFuCiMsNBszkSYauksgsofe2RoFVEksl+bIxX3Bg/c+/JoswKu2NC+J6yTLDiURiz
	1lo93MdveDEjEdUprWZkBDW0AbPvgBbLHmO01EW1Grok7fa0i+Bfscw+PsYcnEuhfowvc3
	6Mxt5h5UtwoEtobDNlVx0JYNCRvgkJ2FL38umkXMgPAAxtq1Sb3/DiOXZSK8jLx4wfnX4I
	0nG9NNVM/hL8/Ffobde4dco5ISCuQ9CPdPz0sUEUyLN4TYRhnLXypc2htzDCrRyFxUZ8EX
	jaTr2dHHvuwuCGPYtrShw57SNGdeNMGfY7gXzUCmree76+MkP2g2YHZblHAdJQ==
Date: Thu, 08 Aug 2024 15:43:04 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [RFC v2 1/2] dt-bindings: arm: rockchip: add Radxa E52C
In-Reply-To: <291b87b0-4701-4743-aed9-adbef7cf3b77@kernel.org>
References: <20240808090405.738-1-naoki@radxa.com>
 <291b87b0-4701-4743-aed9-adbef7cf3b77@kernel.org>
Message-ID: <28dec8ac1cb3f8495fd9ef5e6008a066@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_064308_359005_809D4FD8 
X-CRM114-Status: GOOD (  10.88  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Krzysztof,

(I'm adding Jonas to the Cc list.)

On 2024-08-08 12:57, Krzysztof Kozlowski wrote:
> On 08/08/2024 11:04, FUKAUMI Naoki wrote:
>> Add devicetree binding for the Radxa E52C.
>> 
>> Radxa E52C is a compact network computer using the Rockchip RK3582
>> chip.
>> 
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> Changes in v2:
>> - none
> 
> Why this is not ready for review? Why this is RFC?

AFAIK, there's still no official downstream kernel code from Rockchip
that we can use to add support for the new Rockchip RK3582 (and RK3583)
SoC variants.  These new variants seem to be like the RK3588(s), but
with some IP cores (i.e. CPU and GPU cores) disabled in software, due
to them being marked as defunct in efuses, as part of the manufacturing
and testing processes.  Using the efuses, defunct IP cores get disabled
in U-Boot by patching the DT.

Thus, we still need to figure out precisely how to do that in U-Boot
first, before we can move on to adding the new bindings for the new SoC
variants.  Jonas is already working on the U-Boot patches.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
