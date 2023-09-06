Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4022EE14BC
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Sep 2023 17:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xv2M5Ufur6W0fRmc7vCpcGaopg6u1trK2cnrFe6cbVs=; b=1dGRXWFTJpB6WqEvRMv511OrbQ
	PXB/zjQCYNUNMU8wwdJTmawotGKcTibo3JMqD0JjgBLh6Jap0ub/2xi0JREiMZQzsItU4qke6twCT
	3HEHeJVEEgpOb4TArK6msUA0YljgKguUlV59pH41NwfxNJXVqYaGbRMoKnbd3rpB8fo1CoKjgAPD1
	xc4phDygprs8KcrM/9AVF8psN+lIxqVWhPHpH12J4wlTyOCRu1jRybpnWLWZgEbLsY9ZVaVYPjSkJ
	2nKNdH3wJA85aGIB40kflD7K+wff57exxFothv+ujgAlg4uN1m1uKAQyH3vQiDaU/t1leKMnLuOSZ
	Pe5pGlMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdwTZ-00AcAX-1j;
	Wed, 06 Sep 2023 17:38:01 +0000
Received: from smtp.ivitera.com ([88.101.85.59] helo=mail.insite.cz)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdwTW-00Ac9P-1i
	for linux-rockchip@lists.infradead.org;
	Wed, 06 Sep 2023 17:38:00 +0000
Received: from localhost (localhost [127.0.0.1])
	by mail.insite.cz (Postfix) with ESMTP id 0215EA1A32301
	for <linux-rockchip@lists.infradead.org>; Wed,  6 Sep 2023 19:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ivitera.com; s=mail;
	t=1694022083; bh=OkLR7l4FLr38HtOUapb9oyxnP0/66p61D53CjAJq3OU=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=ELXOXS3AzbqYAkMhveFHlivufAp1RdEIoO/QCTbqgBFeNGKMGFt8GU3GsVLF4UJnP
	 RLkuOOQeN2gcDMeYfQD6mSa9jmKbzVYzeWWQqQ0Hu7HX8ML9ZpkVT37iXWqTRY/hdb
	 fvzbE5gvwXAYv+q91W0f05JfFuA2YXAUqtNs9Hyw=
Received: from mail.insite.cz ([10.0.1.254])
	by localhost (server.insite.cz [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VIxoY6xXYEeS for <linux-rockchip@lists.infradead.org>;
	Wed,  6 Sep 2023 19:41:16 +0200 (CEST)
Received: from [192.168.105.22] (dustin.pilsfree.net [81.201.58.138])
	(Authenticated sender: pavel)
	by mail.insite.cz (Postfix) with ESMTPSA id BE3EFA1A32300
	for <linux-rockchip@lists.infradead.org>; Wed,  6 Sep 2023 19:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ivitera.com; s=mail;
	t=1694022076; bh=OkLR7l4FLr38HtOUapb9oyxnP0/66p61D53CjAJq3OU=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=o1QSLHSgcyJDT5jjnxzJoIO925O0rwp7YWn8b4THzqSHFJryHnSLm8nGrLVAiMP+I
	 bBXpUhXraFPdbEqbi1nbKeedKlnv/qxnrX1DtY/rSLRqxOOWNFSvey1SQcfn27Rke0
	 SGqJd8Sj8vbRZWBGWGEhor6hSOc+SVtdXyMa6P60=
Message-ID: <5c873fd2-437e-22d1-208b-fc4604e31ad5@ivitera.com>
Date: Wed, 6 Sep 2023 19:37:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Increasing priority of a DMAC1 hardware request ID on RK3568?
Content-Language: en-US
To: linux-rockchip@lists.infradead.org
References: <5806abb1-d7d3-294d-de18-6f05fe36e8e9@ivitera.com>
 <2a67c4ac-a45e-01b5-58cf-78d0d6835455@ivitera.com>
From: Pavel Hofman <pavel.hofman@ivitera.com>
In-Reply-To: <2a67c4ac-a45e-01b5-58cf-78d0d6835455@ivitera.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_103759_024849_623A4716 
X-CRM114-Status: GOOD (  11.04  )
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


Dne 06. 09. 23 v 17:00 Pavel Hofman napsal(a):
> 
> Dne 06. 09. 23 v 10:42 Pavel Hofman napsal(a):
>> Please is it possible to increase a priority of a DMAC1 hardware 
>> request (I2S1_8ch_tx specifically) on RK3568? I could not find any 
>> DMAC priority mentioned in the RK3568 TRMs.
>>
> 
> 
> Unfortunately I could not find where this particular clock gets switched 
> to the non-default parent in the kernel code. Other clocks using the 
> same parents gpll200_gpll150_gpll100_xin24m_p (e.g. aclk_gic_audio) do 
> run at the default gpll_200m.
> 

Just an update - in the end I found the place - u-boot was setting that 
specific clock before booting linux 
https://github.com/radxa/u-boot/commit/65bd598f415b92d2165e52a757e70f85352eba25

I added clk_set_rate for "aclk_bus" back to 200MHz to clk-rk3568.c. 
However, the improvement of DMAC not keeping up with I2S transfers at 
768kHz samplerate was only marginal, still getting TXT FIFO underruns. 
Off to some different SoC :-(

Thanks a lot for your patience :-)

Pavel.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
