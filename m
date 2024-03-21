Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A0E5C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 19:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IaG0BikyNTMgZwdKytKXMoHQX+NTUVnkGLwbzizz5o8=; b=rtEmSbPO4OPQGF
	+q+y0h6KD+NAxHKxruuPzuAvd1NNBda7z7j1rnkpWeSi4bS2JnTWw/RSrD2NY2Q9gQU1UGRBu6VQc
	HsjkphJ8TEyy5DeuIyH3t8hYkG0aiL3DvMapp0IHnSOtzzjhWdmRokPOW5l9uDPIqQnDYyvhjyA5o
	hLmpWkWM3lxy8XdDK1PiRdqW274rzhwmXycOVG23b5Jd85Im4Ji8T5BkJ9ALrqgnPU/qnrjAjiI1k
	BbRlFeHZ/IyuGRaGSlkgrFYzLrzR3vuhwI/yJDJ3kjQvPK8K1vFocSj5gwHFk4hNy/BQhGHBQ3o5g
	YgL6ae9ErO2WtnVvxVXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnNfP-00000004KmF-13PP;
	Thu, 21 Mar 2024 19:01:31 +0000
Received: from forward501b.mail.yandex.net ([178.154.239.145])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnNfJ-00000004KjN-3zMp
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 19:01:29 +0000
Received: from mail-nwsmtp-smtp-production-main-24.iva.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-24.iva.yp-c.yandex.net [IPv6:2a02:6b8:c0c:9309:0:640:3b75:0])
	by forward501b.mail.yandex.net (Yandex) with ESMTPS id BA80760020;
	Thu, 21 Mar 2024 22:01:14 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-24.iva.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id B1MF4pLoAmI0-dMXEILER;
	Thu, 21 Mar 2024 22:01:13 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0upti.me; s=mail;
	t=1711047673; bh=MWztkBz6kKd0LO43h8ylzKetPUPSuWVrPrifryRc2Fw=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=LE3TVQ3uJ8KvVh/bRC6Y3r79zf0cP02BvyTtsa3iZAsAn7xSgICRxEbSIgmXtb+Td
	 n9GSF38rhKS55IHat5pjsVVzKMdbCYFSNnHd/B6INUCW90VU+aM7JwR5Rm6SCPGXWZ
	 /nLrDmF4Fsv0ga9Ix9i/EKhhWw11mIyNuPAdOiZs=
Authentication-Results: mail-nwsmtp-smtp-production-main-24.iva.yp-c.yandex.net; dkim=pass header.i=@0upti.me
Message-ID: <5287754a-e488-4365-9e88-811eb028a91e@0upti.me>
Date: Thu, 21 Mar 2024 22:01:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 7/7] clk: rockchip: implement proper GATE_LINK support
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Chad LeClair <leclair@gmail.com>
Cc: "andy.yan@rock-chips.com" <andy.yan@rock-chips.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "huangtao@rock-chips.com" <huangtao@rock-chips.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "kever.yang@rock-chips.com" <kever.yang@rock-chips.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "zhangqing@rock-chips.com" <zhangqing@rock-chips.com>
References: <1456131709882456@mail.yandex.ru>
 <uwr335fla4nfvv3mdppcoly6hcsayav26r4r6txmbwrb25ftw7@rxwjtan7evww>
 <7f4b3f38-50ee-480f-a341-ab577e19bb32@gmail.com>
 <2rsu6qa3pwbqic6b7ej6txa34jw4ztrnybzcfcfysue2mky37h@dyrdefbimzdn>
 <97f8b9e7-983c-435e-8fad-11e71be158b8@gmail.com>
 <vetdlmrlwx2bpwliof442zjiir7jy5irs737qu3v7qjhcvubn4@wslcvkis3tsf>
Content-Language: en-US
From: Ilya K <me@0upti.me>
In-Reply-To: <vetdlmrlwx2bpwliof442zjiir7jy5irs737qu3v7qjhcvubn4@wslcvkis3tsf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_120126_274051_400DEC6C 
X-CRM114-Status: UNSURE (   8.04  )
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

On 2024-03-21 21:31, Sebastian Reichel wrote:
> 
> Ah, that was actually not setting up the clock links at all. Sorry
> about that. I reworked everything again and moved all the GATE_LINK
> code into the separate driver now. Please give it another try.
> 
> Greetings,
> 
> -- Sebastian

Applied this to my 6.8.1: https://github.com/K900/linux/tree/rk3588-test

As far as I can tell, literally everything works now - it boots, runs, and I can read and write the flash even with ROCKCHIP_SFC=m.

Thanks a lot for digging into this, y'all!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
