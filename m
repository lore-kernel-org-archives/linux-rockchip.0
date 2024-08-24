Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C671DC52D6F
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Aug 2024 23:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFddZfi6kPueZsX26+4+CFX1mYWumrNFV3FXLyoM9wE=; b=ht16A+iLnWB8aA
	4d/jgI6nve9BIcF9+T51CprN6XMN+UJdT0atT7WHjdTtSVtfH6/dtvbZllfd5eDRR64dBEtShbHvT
	Tupf06LfRUemrZ1JZkMSU1sheQtaYqww2CVTbPZdTTkQIR3+KPoAxTGhpCkU7D3OufZiV8K4jX1v4
	C8pwoLDWkf1o+fVgwLM7DNiSzHUp1/4UUCfh6jlY/yX2zGyTFgPplrmJdIZlJWArdZ6qDvus/Pfpz
	LpUBTfBGfYZJEA9ZUktR7MOTzo3pxyTdWq1vc8T+8GkpceqQ+UD0LRr1bdLhrTNVGRhuFx0PrBAf7
	JoPNR1s4WddEinMLU2YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shzoC-000000033tw-0dbE;
	Sat, 24 Aug 2024 23:04:36 +0000
Received: from mout-p-102.mailbox.org ([2001:67c:2050:0:465::102])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shznI-000000033dV-3DmL;
	Sat, 24 Aug 2024 23:03:43 +0000
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4WrstS4Lbkz9sW7;
	Sun, 25 Aug 2024 01:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=timsurber.de;
	s=MBO0001; t=1724540608;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5g6H7uwwoEkGHO1bkhqnjPo9TcZAnrLFc4AUSNm7Tss=;
	b=xlnU8bjw06rZAofmgp09zAt0HvgBiJpn7lAKVfrO0wkQX/DHKykxfK16JB7nIAa8P9VPs6
	e6ogbcrrjMjjRlBapwOWoydT/hI/7O0elcJndb8IA/7ws2z0rVARrBGecMqeB8efMlfnx1
	qFQLi2e2KqB6nvBrEmAvYqkqfCxEVDajM4oFYdPTqzs545a3APma2mTVsxXgNTZXmiGMlc
	HoNmnfDtJjYiMp1ULu8flAX8JbaoGEq4bmydfn1E0cGSmjLiPD4gqkPl7nennYjWds1K/O
	jU+374Bakuk/7dM1KzyfXSecfbZvYfxoxy3QN3aWnXIkww2o4Qm/1GyLolvnPA==
Message-ID: <d83ad7cb-901b-40d6-b140-8ccb7abcecca@timsurber.de>
Date: Sun, 25 Aug 2024 01:03:20 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v4 0/4] Add Synopsys DesignWare HDMI RX Controller
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: heiko <heiko@sntech.de>, mchehab <mchehab@kernel.org>,
 robh <robh@kernel.org>, krzk+dt <krzk+dt@kernel.org>,
 conor+dt <conor+dt@kernel.org>, mturquette <mturquette@baylibre.com>,
 sboyd <sboyd@kernel.org>, "p.zabel" <p.zabel@pengutronix.de>,
 "jose.abreu" <jose.abreu@synopsys.com>,
 "nelson.costa" <nelson.costa@synopsys.com>,
 "shawn.wen" <shawn.wen@rock-chips.com>,
 "nicolas.dufresne" <nicolas.dufresne@collabora.com>,
 hverkuil <hverkuil@xs4all.nl>, hverkuil-cisco <hverkuil-cisco@xs4all.nl>,
 kernel <kernel@collabora.com>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>
References: <20240719124032.26852-1-shreeya.patel@collabora.com>
 <6f5c4ebb-84ab-4b65-9817-ac5f6158911f@timsurber.de>
 <19150697f90.11f343d091099757.4301715823219222254@collabora.com>
Content-Language: en-US
From: Tim Surber <me@timsurber.de>
In-Reply-To: <19150697f90.11f343d091099757.4301715823219222254@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240824_160341_282974_A6A5F560 
X-CRM114-Status: UNSURE (   9.36  )
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

Hi Shreeya,

On 14.08.24 12:22, Shreeya Patel wrote:
> If you'd like to try it yourself then following is the command to get the new EDID
>
> v4l2-ctl --show-edid type=hdmi-4k-600mhz
>
> You will have to replace the EDID in the driver with the EDID you get the from the above
> command in HEX format.

I updated the EDID with

v4l2-ctl --show-edid type=hdmi-4k-600mhz

and this seems to fix the issue for me.


Best regards,

Tim



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
