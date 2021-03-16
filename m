Return-Path: <SRS0=XIeQ=IO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5787AC433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 00:07:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 72F8A64F4D
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 00:07:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 72F8A64F4D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=fz+3JeBlLiOPjJCKOIdg6Wl+SdMQltteQyITcUeKXks=; b=L87i11RVyAQMMIN/qtY9MKTka
	Frr/n6J/7X8EpuLSk6CyaYB+Hjy6wvh9j9IiUefr6FnwKU5NxApBOFdrRrMLqS9Qf4lbBKa/RBdZz
	sjdwWzvn9yQMjwNpvwz4iQYt98nqK4V8R8GDHRCU+46Ctdr8ouu8duxtu2PvMOVb47ZmbR8R+ojnX
	UXHp02DfAzydZxosm2p11U5lIocs4SCjx6u8Keh2tgNF3U/bUZOC3h2VU9X22KI16+NHsU8VicuVf
	uvQznm7pSrkSEY/QoSMfgIk2ApmoRvE5sq5QWcq97rfBeDb1rz/0Xaj5O9AJ3WC/H23uQ8lzwneTE
	OYxAvLKnA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLxF0-00H7Vz-Qd; Tue, 16 Mar 2021 00:07:19 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLxEv-00H7VQ-JJ
 for linux-rockchip@lists.infradead.org; Tue, 16 Mar 2021 00:07:16 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 90AB056D;
 Tue, 16 Mar 2021 08:07:05 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from desktop-sg5v5ea (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P24304T139684931950336S1615853224574034_; 
 Tue, 16 Mar 2021 08:07:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5836ca24d9499efce31c8d180d8af6d7>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Date: Tue, 16 Mar 2021 08:07:04 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Linus Walleij" <linus.walleij@linaro.org>
Cc: =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
 "Catalin Marinas" <catalin.marinas@arm.com>, 
 "Will Deacon" <will@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: Re: [PATCH 0/2] make rockchip pinctrl module able
References: <20210305003907.1692515-1-jay.xu@rock-chips.com>, 
 <CACRpkdaAL4U_ymEJTnP9SFV4P0EVLkRGsyVNY9PPqNPFPVxf+A@mail.gmail.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <202103160807044436670@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_000714_193129_2F0EEFA9 
X-CRM114-Status: UNSURE (   5.04  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Thanks very much
--------------
jay.xu@rock-chips.com
>On Fri, Mar 5, 2021 at 1:39 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
>> Make the rockchip pinctrl driver able to be module by unselect
>> PINCTRL_ROCKCHIP from ARCH_ROCKCHIP, then modify driver module define.
>
>Applied this again with the irqchip patch under, let's see how this
>works!
>
>Yours,
>Linus Walleij
>
>
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
