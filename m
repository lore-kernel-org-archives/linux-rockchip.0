Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CA4DE77188
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jan 2025 00:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fu9JT0ZRRn9sHcSErVjx2p9aXcu++kPlmgXXo0CFX0k=; b=CxVAPUCIfMjYie
	GzBrGjSW/QQ2xWmmUGJuuU3nmuGjX1hC+jlbZ1u5j7SMVcIaiLBEC8rXsqcld6/6O9G7GW9PvyR2t
	EPalG9fmJgJV8p20PIB1V4vMSxhbqpcwcfAuwPN4ARjLvRC6HhXs0NwMMxbcmdTR8Wyqno8+bZqKn
	74ixI8OKcmhIuBG72fTB/W5LKifeDptOuhoN5ECNzBbDjjoh2uv70shX8BNy0+n8UUziXkSg+PvUe
	MxTR//nkhpepvk6fDW6iMthEQ7ycvVkvg6l21UPnx7WuQxnLlLUc9eDns6YOroPetkDoX/PkDzve7
	J4Ba65tDYJK0n/EHYLuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUxA8-000000030eo-40C8;
	Tue, 07 Jan 2025 00:09:36 +0000
Received: from mout-p-201.mailbox.org ([80.241.56.171])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUx8t-000000030Y9-2ZPq;
	Tue, 07 Jan 2025 00:08:21 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4YRrwt4ZMmz9sdQ;
	Tue,  7 Jan 2025 01:08:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=timsurber.de;
	s=MBO0001; t=1736208494;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BumHPRnrYrdKW/Ic+24BWv5+zL59cBJOtuFj5cevjs4=;
	b=OU4XrsrbWs9vcf2e19/jiPqNgKYH3UHzjaCzxv/dan3sRB6e/fJ4Y041Ba+qewt0BsmnRE
	4qriNDlldbPOBQu7tB1ST4p2eBmO5AqC9VxGtbgnl4Unhf57oVaHBxzgk+F47VZ19LZM9i
	67/hY94UOle+T88knGv1GmzUba7oU/On1d1Krt0y5edcsfHV6LSLqDn5P9JszuwaQQc1Aj
	942h7YG9kFBgh+udiWw+ZUQecroM8nlBdm+yQiSPEObspMeqAmmOQXSQrjXIppwYQVMqae
	6+3YkYgnXEt11CLDp7/aXkiKyPdI3K44td89qllGN15pM7QzTkwX7OwdQubL0g==
Message-ID: <fbb5016e-678c-4e54-a6a8-0ccaa2bdf45c@timsurber.de>
Date: Tue, 7 Jan 2025 01:08:08 +0100
MIME-Version: 1.0
Subject: Re: [RESEND PATCH v5 0/4] Add Synopsys DesignWare HDMI RX Controller
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, heiko@sntech.de,
 mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com,
 hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20241210193904.883225-1-shreeya.patel@collabora.com>
 <acb91a34-c0f8-4f03-8945-755b4e42dcf3@timsurber.de>
 <925d7571-48e4-437d-b55c-3f7bbad8af1d@collabora.com>
Content-Language: en-US
From: Tim Surber <me@timsurber.de>
In-Reply-To: <925d7571-48e4-437d-b55c-3f7bbad8af1d@collabora.com>
X-Rspamd-Queue-Id: 4YRrwt4ZMmz9sdQ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_160820_106868_7D11DB9B 
X-CRM114-Status: GOOD (  12.66  )
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

Hi Dmitry,

that was my fault, my build script did not copy over the new ATF properly.

Now it works, I will update with test results with many different 
resolutions/formats here soon.

Best regards,
Tim


On 1/6/25 12:22, Dmitry Osipenko wrote:
> Hi,
> 
> On 1/6/25 03:16, Tim Surber wrote:
>> I applied your patch to rockchip/next on an FriendlyElec CM3588 device with arm-
>> trusted-firmware 2.12. This is the same hardware/cable/sources I used previously
>> Sadly I could not get it to work at all.
>>
>> After connection to a HDMI source I get the following error with all devices and
>> resolutions I tested
>> # dmesg
>> snps_hdmirx fdee0000.hdmi_receiver: hdmirx_controller_init wait timer base lock
>> failed
>> snps_hdmirx fdee0000.hdmi_receiver: hdmirx_phy_register_write wait cr write done
>> failed (repeating multiple times)
> 
> Sounds like interrupt may be not working for you. Interrupt won't work
> using downstream version of AT-F, though I assume you're using vanilla
> version of the AT-F. Could you please show output of `cat
> /proc/interrupts | grep rk_hdmirx` after plugging the HDMI cable.
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
