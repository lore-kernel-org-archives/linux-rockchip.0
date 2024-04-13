Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E174EC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 08:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P3SiZeR2nnj4bLV+ZtYcFoviUh2AXX9rCCSeY/+7RmI=; b=NtdGBaErFeHTGo/lRQrF1LveGz
	MzZFk709lagvRylgSQnfMVRyQtm+F0DUYhlzO0aArLUv3m5kooxo/eXOrltwL1Ch2pibH5m67DytW
	BNAtAsDJnF4Pl25J7hFRhtddCtpBbcHWjBa9lD2vPlBmi7DSl0vzzduNU5Z1Hcej5lpTXQPANvo+j
	Q5kgUkF3vC8irLBRhxELnFzfm8ShjMQ7Ksf6s3/Eb/IPtH0lW9Fo8tuTE31IZ9YdjOrlb7J/+E89b
	jduqGqolo+RSNu7jwkBoCPfmFIJUA3+lJe019oyK80/N0oVSxtMZQHE8qvvkXWkSxtDXE6xTVoWbG
	bFeVSBfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvYQJ-00000002hn2-376c;
	Sat, 13 Apr 2024 08:07:43 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvYQF-00000002hlM-20bV;
	Sat, 13 Apr 2024 08:07:41 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1712995656;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LYnFdov+ZX/QOZ7UzZrEIgIh+j/rWuxjP60G0MEoink=;
	b=SXSI/zHnVe20vBjAJpoMtu0ZvHlgIlLW7ApEhhizFKZ5rvG3+XevLHEewK3oKkfjTsSqqk
	t0Srxkbcjs68F3n41znGHHd3qszBWObflOHquPzzRIm2sQ7dnjDFaP0u6F76deVkS1HGoq
	UKtUVd0UCTwoj43JUugxjLUfXlEiqLZOBRcxZguwJOeDzz4Hv5O3mnoL6TaVNzHSSaQtNs
	TMThbVDIkw3H27nn6oOH6/6JPUaZ7TS0c6V4frYeZveVLK1OBwYV4iBgWseru5XxW2jdvi
	FrbF4kZwpxsLThi2XHh/yhc5YWCOjIv+7xTmf1UavFjeWclZc19do+HsdPnRUA==
Date: Sat, 13 Apr 2024 10:07:36 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-i2c@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Andi Shyti
 <andi.shyti@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 13/18] i2c: rk3x: remove printout on handled timeouts
In-Reply-To: <4ogowge36wr2lk2zdsv3zc3sm3pjk4h5wmy2hjth734kgsr3rs@lb4wsmkpavnd>
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
 <20240410112418.6400-33-wsa+renesas@sang-engineering.com>
 <4bcd397ec377a4932c34d62c85ef28ed@manjaro.org>
 <hgdhrf2jiovfxcppdtsq32sfbk4xuq7ewiwq4awwztj4mp3yez@kj6ixihkcxhe>
 <af8ac48f10a1636ab2486aef91e01c3f@manjaro.org>
 <4ogowge36wr2lk2zdsv3zc3sm3pjk4h5wmy2hjth734kgsr3rs@lb4wsmkpavnd>
Message-ID: <d26197a9fd834cd4f35529b5fe67d77c@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_010739_851059_ADC0BE85 
X-CRM114-Status: UNSURE (   9.19  )
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

Hello Wolfram,

On 2024-04-13 09:10, Wolfram Sang wrote:
> Hi Dragan,
> 
>> Sure, but I think that having such an additional debug facility
>> can only help and save the people from adding temporary printk()s
>> while debugging.
> 
> Mileages, I guess. I like temporary printouts for temporary debug
> sessions. This way the upstream source code stays slim. In my 
> experience
> with I2C over the years, debugging happens with developers anyhow.
> Logfiles from users which help developers create patches are very rare.
> And those users are usually capable enough to add debug patches.
> Given these experiences (which may be different in other subsystems), I
> don't see why we should carry the bloat.

Yup, adding some printk()s while debugging is pretty much inevitable,
and having full debugging available would add a lot of code, regardless
of the subsystem.

> That said, I'll leave the final decision to the driver maintainers.

Agreed.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
