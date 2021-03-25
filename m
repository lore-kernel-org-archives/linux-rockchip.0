Return-Path: <SRS0=wzRa=IX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D293C433C1
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Mar 2021 15:50:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F388A61A0E
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Mar 2021 15:50:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F388A61A0E
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rl6lOzvXq30ReWY0FAqr+n1Enl0pz7kXsWMIbtSBqic=; b=IT0NIBaoJ5uzRC5heJ5SXvryb
	TR2hzhWqSI4p3RvUX+FvJg0EQmsX21zBYlZgrmOs78MxFkaklHaq0SQ6KvhCQj/gv/0Ds8wVpI812
	mbScTuE/yJAXkftDdmrPZbWp1T+HQH4G5AIjgl9/e5+GVnHE/LD7Vsl8nP5I2gQld6x2pbyrRUzL9
	CkaU4n4N/tCaJXAusoeAu5bf6cnksx5OD4ZbBfo4hH3QcCD1xuQjPqHi4QPydiRWvdmc3cp8HQNc7
	hUrUYOVe2DnYCJ3hfFXrZpAeZ5MKcfYk9N+ztcdqOvrnxS8CbhI4qsuTOSM1P2oVOz8UCvE49yNXl
	fRQOTnKKg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPSFY-001m9C-Ok; Thu, 25 Mar 2021 15:50:20 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPSFS-001m6Y-8g
 for linux-rockchip@lists.infradead.org; Thu, 25 Mar 2021 15:50:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1616687414; x=1648223414;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=PJSaq6SBrfJT7eP4m6kYKHp8nCSUZQCywIVVXvt1GnU=;
 b=kcVsciwxu68CES6bFo61mhJ/qreTp+Re6thQ3pt4iS95JQoq3KKEGFej
 M0j5lG7bIoQL626y8LoCFyyCWojyOsiABJnCy/Gj8Bc3hdDlSOI+DrtXw
 Ab1rImCuxL3kFJRSdlE+PGGbGHljgmjRg++ia0KKJFZnaDLIowYFnScIH
 q8PEv9qSeFaA9f637UYBKbIOBTjMC0eeNWWBxn0r1LKju+BxPjkHQr5o4
 c3TV9OscQBKpEFAXCX+H/2GTxnoCa4cYI9BaXKIwkjaWLJjG5Bp20f2S0
 IEsJjtcFpNoJDOpT4cu+6B2yjA3A+0zq5n2qhvbovw3+wShY+5iui4OHz A==;
IronPort-SDR: 52+3TdEhxR2RSpXIIiHEIbA+hoS0c4fM8zLxrxWURhsmEezLX2De/V2Y2e1duYCxarDcbyJZea
 N5xpF0Z5rVGQrDzWdWAj1i8mFNEtqMWyx1DlSbim5uxFsk7VtHMlHITJwW6f5dl47H7xGSiiDQ
 8AyDhqGGNaZr9H/pcaWjjzQSao6Whtenv+haOYj+J4GgRU05hT5HernK2IH37565bh++TBQnNj
 EYOiaGrOSFAQ6DhO8tBo/QBYrMTK1XZVhJy9vPKOoWwbglAdJsW5FuvKP1Eczn8olqyzX0aViw
 ECE=
X-IronPort-AV: E=Sophos;i="5.81,277,1610434800"; d="scan'208";a="114640813"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Mar 2021 08:50:07 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Thu, 25 Mar 2021 08:50:07 -0700
Received: from [10.171.246.120] (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Thu, 25 Mar 2021 08:50:05 -0700
Subject: Re: [PATCH v2 00/10] Microship SAMA5D4 VPU support et al
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
CC: Emil Velikov <emil.l.velikov@gmail.com>, Ezequiel Garcia
 <ezequiel@collabora.com>, devicetree <devicetree@vger.kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, Ludovic Desroches
 <ludovic.desroches@microchip.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 <linux-media@vger.kernel.org>, linux-rockchip
 <linux-rockchip@lists.infradead.org>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
 <5ecf1d3b8a8f88d6387a1549faeb4f4180cf5d4b.camel@collabora.com>
 <CACvgo51uNyQgzGdW=f-0wxvjv-+OD1p7E4DJXRzu1GvnAHbcCQ@mail.gmail.com>
 <50b3b4b3-6c5b-3f1e-3499-c88574ce9f74@microchip.com>
 <YFxObibxqK23WTMf@piout.net>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
Message-ID: <6567d6e3-060e-1d94-ef53-60e524bae815@microchip.com>
Date: Thu, 25 Mar 2021 16:50:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YFxObibxqK23WTMf@piout.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_155014_997317_95449FC4 
X-CRM114-Status: GOOD (  13.76  )
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

On 25/03/2021 at 09:48, Alexandre Belloni wrote:
> On 24/03/2021 14:44:14+0100, Nicolas Ferre wrote:
>> Now, when we have the tag from Rob, how to coordinate these different
>> pieces? Will it go through the media git tree? Will we benefit from a stable
>> branch to share or will we just have to wait for the driver to hit Mainline
>> before adding the defconfig and DT patches?
>>
> 
> I think the defconfig and dt patches can go through at91 as soon as we
> get Rob's ack. There is no build dependency so it can be taken at any
> time. Worst case, we end up with a selected config option that doesn't
> exist.

Agreed, and it simplify things.

My only concern is with triggering some of the bots while checking for 
DT compatible string definition.

Regards,
   Nicolas



-- 
Nicolas Ferre

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
