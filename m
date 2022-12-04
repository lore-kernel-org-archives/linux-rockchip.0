Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91557C4321E
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Dec 2022 05:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zdvpc5sGpUV7XtadgMM8jmsehTJN4RfOCUNcg9caVME=; b=t72zz4TaeqxwpI
	myE2ZV0J3NT0KD3Mrhqt8WzfrEZMOlizGyRaGk7eMqIxjmX/CbvuDrJv7XbBIWEHf8+noGFVUmmhx
	LLnipaco67JuioxjHcsGGfD72HvaIDf+JIrYRA59eHXKWvPkB5iR6jthxgF+z5M2BtQ67kSyJhwZS
	pvFvsyCwW13xJc354sI33LfpFu4TRf/Fol57/Za4CSVsFoAUWPrsb7ohRNx8US5yJ7MoB9LtmsigX
	8dfNPyS7aqkcEEGX1V2BZsRK8K4x757BmWXfoDEhhDht6o+XxUkZM8d+kxW3ywECo7MG/1SPEgxC0
	FtyU0XJBTxutbCRpa+XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p1hHS-006WmU-6J; Sun, 04 Dec 2022 05:11:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p1hHP-006Wk3-VY; Sun, 04 Dec 2022 05:11:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YlBnUS4EV8yCby8iDZqL3w9yVCUjK424WU3xDFyzhQc=; b=TUoKMU47a25LFTarfXAb8JNm88
	dj6MSvIEwr0eLxpQ8g2dd0hdFmKhpBDfMtadB36WqoE59QZFCL8sGSh/kEPf7LbXHKA5tRymMzEOF
	8NvS0GazTfaQNYhJQXbUnuj34Ef2IkxXCVukNgDVvtpGcKVsciDMAZEYjB/twrJvDtCqPVQtiICHx
	zcRMW7WuPBTDVbnc9YF1cbdOuJbjb4PqD0d4lOty07DFA20ihIMNGuL+9rffo/O+JMKR7UAYzYjEH
	uNY/697oLV7q/JXZa5D+bwq1pkwR183oipKxhzNeAWdhTgQqX9Vnc05css5SA66O784MqjERWvK3c
	BVGRdLNw==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p1hHE-007CzH-Rm; Sun, 04 Dec 2022 05:11:05 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 2B45ADYi000330;
	Sun, 4 Dec 2022 14:10:14 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: amadeus@jmu.edu.cn
Cc: heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, naoki@radxa.com
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa ROCK Pi E25
Date: Sun,  4 Dec 2022 05:10:03 +0000
Message-Id: <20221204051003.154201-1-naoki@radxa.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221203071814.8828-1-amadeus@jmu.edu.cn>
References: <20221203071814.8828-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221204_051058_083817_A2AEF0BB 
X-CRM114-Status: UNSURE (   9.65  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> > SATA is working on my E25. you may refer my dts,
> >  https://github.com/RadxaNaoki/linux/commits/rock-3
> 
> Maybe I should pick your sata commit or do you create a patch for it?

then, I'll send sata patch after your patch is finished.

> > I think dts should be separated, CM3I dtsi and E25 dts.
> 
> I'm not sure what parts are specific to E25.
> Let me guess, maybe usb, pcie/r8125, sata and pwm-leds?

does this help you?

 https://dl.radxa.com/cm3p/docs/hw/Radxa_CM3_Plus_V1.1_20211029.pdf
 https://dl.radxa.com/cm3p/e25/radxa-e25-v1.4-sch.pdf


Best regards,

--
FUKAUMI Naoki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
