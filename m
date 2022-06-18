Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73CF7C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jun 2022 02:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOmlIRkQn3ZMc96UImjtol70SCg+xqLZxk7y3fmJzL4=; b=WgEA4tjevxO37g
	EfFGyzyl9KH0Nxa3eYEtgPw6kQjsPMRLtkbld/oIcrWJ13sEmN0H/L8m/grXCmY+dOx/2Zp0UQHDs
	jFYVqQBAMqXJTjpB7RfwfhlqV67/GC93RbNUh56bkK3I/M+mzMmxHwdmDgl9HMePjqN+X2WpQY1wl
	2qprmq+IjozQhPYfuBRkhZUrlv9LnLLfafoBkUgH/+kW8iod83DxxGLS8YaaXi/a/XHb7CGuY+pxV
	uuv8KUWMCek32sgNU500gLCHwDfNI9SguGupNcLoXDoiYvaMW+UN3h80toNlVufGTyuf58xxoMlOu
	n/DwCshCMNFNjj8qk9xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2OR1-00A6Pb-1r; Sat, 18 Jun 2022 02:43:39 +0000
Received: from m1550.mail.126.com ([220.181.15.50])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2OQp-00A6Io-6o; Sat, 18 Jun 2022 02:43:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=CiWP9
	J47fOf0SwiBXWz/6vH2KuuXSnebcHPFbMKOEds=; b=erEZwwJ4FGbX8tdHYKTW9
	pja4dXtj/h3QlBjqXD8/95vQB+6h7R73Jjo5/81j8+av7H1eSnbOUpNiAPVksnC2
	94PPcxhOja591vXmx6cf46zBZcey4r8RU0gAj/NCJW/mo0wKByGms6eyTDa3Jz7U
	S8IgR2qAY8pEgR0oZXA5bs=
Received: from windhl$126.com ( [124.16.139.61] ) by ajax-webmail-wmsvr50
 (Coremail) ; Sat, 18 Jun 2022 10:43:12 +0800 (CST)
X-Originating-IP: [124.16.139.61]
Date: Sat, 18 Jun 2022 10:43:12 +0800 (CST)
From: "Liang He" <windhl@126.com>
To: "Heiko Stuebner" <heiko@sntech.de>
Cc: linux@armlinux.org.uk, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re:Re: [PATCH v2] arm: mach-rockchip: (pm) Add missing
 of_node_put()
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20220113(9671e152)
 Copyright (c) 2002-2022 www.mailtech.cn 126com
In-Reply-To: <165548567344.3407211.15518569345867067474.b4-ty@sntech.de>
References: <20220616021713.3973472-1-windhl@126.com>
 <165548567344.3407211.15518569345867067474.b4-ty@sntech.de>
MIME-Version: 1.0
Message-ID: <6b387941.aed.18174b16871.Coremail.windhl@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: MsqowADXLPHBO61ixdU4AA--.57247W
X-CM-SenderInfo: hzlqvxbo6rjloofrz/1tbiuAYkF2JVj6uAOAABsn
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_194327_629987_BC6F73E2 
X-CRM114-Status: UNSURE (   5.57  )
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



At 2022-06-18 01:10:28, "Heiko Stuebner" <heiko@sntech.de> wrote:
>On Thu, 16 Jun 2022 10:17:13 +0800, Liang He wrote:
>> In rockchip_suspend_init(), of_find_matching_node_and_match() will
>> return a node pointer with refcount incremented. We should use
>> of_node_put() in fail path or when it is not used anymore.
>
>Applied, thanks!
>
>[1/1] arm: mach-rockchip: (pm) Add missing of_node_put()
>      commit f4470dbfb5ff92804650bc71d115c3f150d430f6
>
>There was an unneeded tab in the blank line above out_put
>and a completely unneeded blank line added at the end of
>the function. I dropped both.

Thanks very much for your effort.

I am learning the coding style for kernel code.

>
>Best regards,
>-- 
>Heiko Stuebner <heiko@sntech.de>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
