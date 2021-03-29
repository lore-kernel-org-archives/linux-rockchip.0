Return-Path: <SRS0=mUlv=I3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA31BC433C1
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Mar 2021 16:52:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 50B7D61920
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Mar 2021 16:52:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 50B7D61920
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=liZI6LcjY2fmDUsUuuIHDxqLLgqvboH3or3DfsFcLyI=; b=dn/i8fd7kB5NefoAl7BWK8etb
	wTE1FCBChrjbOOT0COKEKsVJryzg8j6R6l0R84bLVF+Qo6ca9jWmlX3nGyWD8TQTO6FIgE0IHC2h+
	p526uUzEZ2b4WZLN+CfsFHrAgSI3Kt7jn5X3j68fxLSfqfm4opUGr7HgvMe5HJoqf2kYjtk8ZmpXx
	vCs79A+dw+byCBvfIZfQZ+ek9k2I6vefKpOOYHM7YjEGZ4EqrNiT5p8wHhQPuE8rb/TTqLtirtymy
	ZBkthJ8GdEBwhXkH2peADvUjtYa29FiPeeiRLa4i3d1qXFBH1SiXqTfTKJ2RGlwqIwvalgktxaWzH
	NOt8iElGA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lQv7b-000nKN-Ki; Mon, 29 Mar 2021 16:52:11 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQoe2-000Ykz-NT
 for linux-rockchip@lists.infradead.org; Mon, 29 Mar 2021 09:57:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1617011834; x=1648547834;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=iqjkFOT92R42EBV1+ip/OTCYxN2E0rr9W21GWrOPJW8=;
 b=XAytSZvCZgIwl0euF/v1D8TiZw7eXzmoFHxSUyd3EvtZI+LoV7oUFsJO
 SyDtWXRd1Rk3Ispz7aqHeezkCuEXxIK+pFCNMPmwr02or7M0u/47v7CMZ
 lc6ulVdi0HSM31Ng9M7XldXGMVLHELiGL1f6VoKcEp2y1qkafbqbgy6oM
 UxUITbyNkwiCJFGukResTUj+R1iwjrmOBDdF4+10v+xFgtDFI7zVnm09g
 v8Z2osFrwfng9NemhuOTRj4PAUo6EFZ3x5IDHA/0Irf8RrpJNZOvKom1C
 +j4SunFj6ripvbghccdaKNFunBOnkq9Gg9P8Y45vlCYLnelZmRQZPLZFK Q==;
IronPort-SDR: EoF2F1D8H+Crm52uj2dRiGS01WnW/ncbQQVWt6qQT27wItBj0vseQ0vbtuiTw1HcZ6Pn2hGTru
 iUtw7exDg2R7F3tDpNlJriU97PK7EHrqQRw0QrmWDQq1jfxGwBeDi0E3oQaJV3/eW2oinR+ZFn
 /5LK4W8KScUGTywyXB/OIzdqA7WDtPGA/YeEkbS9YtsL1c8EZPsXrmcVITXgvPxqgIhWirHajI
 fQbFxj46KE1jpa+qZlgTdbZ+SQ2AlTlGCzNodS6iBzysEdjXoTxavzN24SZYTBJyX70DUiH+Cc
 kzU=
X-IronPort-AV: E=Sophos;i="5.81,287,1610434800"; d="scan'208";a="108891101"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Mar 2021 02:54:02 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 29 Mar 2021 02:54:02 -0700
Received: from [10.171.246.61] (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Mon, 29 Mar 2021 02:54:00 -0700
Subject: Re: [PATCH v2 00/10] Microship SAMA5D4 VPU support et al
To: Emil Velikov <emil.l.velikov@gmail.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>
CC: Ezequiel Garcia <ezequiel@collabora.com>, devicetree
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, "Ludovic
 Desroches" <ludovic.desroches@microchip.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, <linux-media@vger.kernel.org>, linux-rockchip
 <linux-rockchip@lists.infradead.org>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
 <5ecf1d3b8a8f88d6387a1549faeb4f4180cf5d4b.camel@collabora.com>
 <CACvgo51uNyQgzGdW=f-0wxvjv-+OD1p7E4DJXRzu1GvnAHbcCQ@mail.gmail.com>
 <50b3b4b3-6c5b-3f1e-3499-c88574ce9f74@microchip.com>
 <YFxObibxqK23WTMf@piout.net>
 <CACvgo53V8sZ2PA0NTR1=JCqcFGBecqs7=aB4uofApOa-C0GZCA@mail.gmail.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
Message-ID: <3aeb1924-d461-ab8b-440b-81f33a1a8213@microchip.com>
Date: Mon, 29 Mar 2021 11:53:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CACvgo53V8sZ2PA0NTR1=JCqcFGBecqs7=aB4uofApOa-C0GZCA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_105715_277863_EC8865EA 
X-CRM114-Status: GOOD (  18.51  )
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

On 25/03/2021 at 15:22, Emil Velikov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> Greetings all,
> 
> On Thu, 25 Mar 2021 at 08:48, Alexandre Belloni
> <alexandre.belloni@bootlin.com> wrote:
>>
>> On 24/03/2021 14:44:14+0100, Nicolas Ferre wrote:
>>> Now, when we have the tag from Rob, how to coordinate these different
>>> pieces? Will it go through the media git tree? Will we benefit from a stable
>>> branch to share or will we just have to wait for the driver to hit Mainline
>>> before adding the defconfig and DT patches?
>>>
> Thanks for the Acked-by Nicolas.
> 
>>
>> I think the defconfig and dt patches can go through at91 as soon as we
>> get Rob's ack. There is no build dependency so it can be taken at any
>> time. Worst case, we end up with a selected config option that doesn't
>> exist.
>>
> My personal preference is to merge everything in one go.
> I believe it will be easier from maintainer's point of view, plus odds
> of conflicts with the AT91 tree are close to zero.
> 
> Then again, as long as the maintainers are happy - I'm fine either way.

I'm taking defconfig 2 last patches of your series right now. No need to 
include them in subsequent versions.

For DT, I'm waiting for settlement on refined code. As indicated by 
Alexandre, changes will need to travel through arm-soc tree so we'll 
coordinate when patches are ready.

Thanks a lot! Best regards,
   Nicolas


-- 
Nicolas Ferre

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
