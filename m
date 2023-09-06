Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0FD9EB8FAF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Sep 2023 08:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:From:MIME-Version:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Kwao7YoHSlbH/rb8yXw8xk4BuoA6odDzwCoRinWpbTk=; b=ixiRZswCf27H72
	MROizHy2kyajLyNq1nu2rOYEJUGk2IHr1p0ZHG0XrWmXAeKp3O4F+TjfM3/0yUEAAMXpbQsrNce/B
	lANRlLV3ulLaS3AQjLZhHbEZziuD3lB98y8dmIcS20a2+MZAU7hx7pte4ANd2nDCKMYhEKclLaZXC
	cct8dYhloAfxcm58vqRK+3zrndvSgUMj51zEkvCyAunUFuT5QqT+w/i3G7aUkm/XYBuH6aIl8UY/1
	shXqNWV0q0uzYaiL70/tydiQdqwsogd1hNwaS1c0/u+4Yz192s2fD/3wU8cfvKLR+geXhUre/UWZY
	i6OAp9GhM84AcRjsmRfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdo7N-007lzO-2X;
	Wed, 06 Sep 2023 08:42:33 +0000
Received: from smtp.ivitera.com ([88.101.85.59] helo=mail.insite.cz)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdo7L-007lxl-07
	for linux-rockchip@lists.infradead.org;
	Wed, 06 Sep 2023 08:42:32 +0000
Received: from localhost (localhost [127.0.0.1])
	by mail.insite.cz (Postfix) with ESMTP id 39CB1A1A32301
	for <linux-rockchip@lists.infradead.org>; Wed,  6 Sep 2023 10:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ivitera.com; s=mail;
	t=1693989962; bh=gky9hpkfNPSwFa5uWLSfVnT33kbzzTokbSLvTHuFHvI=;
	h=Date:From:Subject:To:From;
	b=ZFdx1Jx6pST0gEs4RQtxFsNaz6Z11OSMERO0+bN0QfzyDDVqpSiL7eNblfElZSlyP
	 GO/1vWS4vPBFyKGzeG1Np78R8IiauUerJFNw5a+kaMSx4gSrfTbMVq7MnBofBgq5C5
	 uQ8/yP20EXEJCtvD2ipePDeJJidsifOVOHp69EEs=
Received: from mail.insite.cz ([10.0.1.254])
	by localhost (server.insite.cz [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xHdma5tdhh3A for <linux-rockchip@lists.infradead.org>;
	Wed,  6 Sep 2023 10:45:56 +0200 (CEST)
Received: from [192.168.105.22] (dustin.pilsfree.net [81.201.58.138])
	(Authenticated sender: pavel)
	by mail.insite.cz (Postfix) with ESMTPSA id F0C42A1A32300
	for <linux-rockchip@lists.infradead.org>; Wed,  6 Sep 2023 10:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ivitera.com; s=mail;
	t=1693989955; bh=gky9hpkfNPSwFa5uWLSfVnT33kbzzTokbSLvTHuFHvI=;
	h=Date:From:Subject:To:From;
	b=fy6Gjry1jus4ORKSA4mZtJj+Kv9W2A7VEOTe+MB8XqcQWSKp8ac3NHAXQLprNv579
	 LYBhgudtJcPnss5AXt51qJe8wg3hH7Voiay58A+MYkyApM+w+LLUln71gCZFq5X+Q1
	 ulpDU7U3zQlBJf/fyYzfIjPEDeqV1T1QsS72MnBE=
Message-ID: <5806abb1-d7d3-294d-de18-6f05fe36e8e9@ivitera.com>
Date: Wed, 6 Sep 2023 10:42:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
From: Pavel Hofman <pavel.hofman@ivitera.com>
Subject: Increasing priority of a DMAC1 hardware request ID on RK3568?
To: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_014231_263969_D816BDDE 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
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

Hi,

Please is it possible to increase a priority of a DMAC1 hardware request 
(I2S1_8ch_tx specifically) on RK3568? I could not find any DMAC priority 
mentioned in the RK3568 TRMs.

Google finds some information about AHB Arbiter Matrix which the RK3568 
TRMs do not mention.

I am getting FIFO issues for I2S1 running at 768kHz samplerate. 
Increasing dma.maxburst from 8 to the max 16 in the I2S driver 
(rockchip_i2s_tdm_c) helped notably, but still FIFO failures occur, 
about 10 per second. In some test runs the DMA transfers managed OK for 
like half a second every 3 seconds, but I do not know how to monitor 
other transfers to find the possible colliding traffic.

Cpufreq scaling governors for all cores are on "performance".

Increasing priority of these specific DMA transfers would seem like a 
possible way to improvement, if that is technically possible.

Knowing for sure that changing the priority of those transfers is not 
possible would be also very useful as I would know some different SoC 
has to be used instead.

Thank you very much for an advice and hints.

With regards,

Pavel.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
