Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94045C43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 12:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvnCDBEQ+hdl8tnw98jYYETYQg0v7QDTXSRRY56bOG4=; b=lIUnRiJOox2XNF
	WiEqXsvoO4b1kAtpLhuyMeN1LU1UZN7sQx37UlcNyyJgVpOIe3tXe5vrT1B2joFI5vmk7hFbl0zIe
	pGUh6TB/yG2lQ9b43TqcHgKywR9Dv3kBwJxm4FsKstOzfpEMm/ldvLf1/usBD6B9LeO0qkbD7wjKu
	NSMtY8zZJvBSKYUvWi7VdK30LxJJbI88YZL/wUowU4KIxcFbq8SDnM+5QoIpmbQ7Xtk0WUOEO/frF
	c7/roAJk5Ha39vyMQNdUzcSx3NkhBJ5EPJJb/LqQswwf7Ym4ETXmUdMKSynWSN767FVwL8mdlqO0o
	j0HBydkJTam2Kx0ghTOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weu5b-000000020CG-0NuJ;
	Wed, 01 Jul 2026 12:30:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weu5Z-000000020B6-42pX
	for linux-rockchip@bombadil.infradead.org;
	Wed, 01 Jul 2026 12:30:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:References:Message-ID:Date
	:Content-Transfer-Encoding:Content-Type:Mime-Version:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=vFMix5jjhR7CuzRHrIrbVr963oFYqy5Wi9Dt2KRuMXo=; b=B6Ciq6UdowOvQZy/Nok/Nit9ic
	FQlGI/7y/Jyf0j4WAHr5+5zmWxW6AWS+ey4wNy0Ct+XjcbyffacUTgy0nqPbs3jqv5jGfO8rmau3j
	Papd6aeQmfxxRJ0JjbcLxud0obIgCMyqhi6XLCgErRAZkNmd2iCW3fc5YWP7iR6hXNysA7NAALvVi
	8bH5sXIUN+tHoBsLSHYGBogUCw62ocFvjFyvZCdoj6HXFdrbTgLwnEVC08sWgrWI8IuPLjRbkLmcv
	6Wnbrslfsn+cviVh6Y4R1t+1Ioj+7hRk/CygabMAmQZgNZ++jCtX6kW2/sBujUU01lOEeVH1aX6jN
	ktSp68mw==;
Received: from out162-62-58-216.mail.qq.com ([162.62.58.216])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1weu5W-00000002kzp-0A1q
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 12:30:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1782909038; bh=vFMix5jjhR7CuzRHrIrbVr963oFYqy5Wi9Dt2KRuMXo=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=JZHraVqYmhHp4XZHMVOTp9SHAJi70zyaZvN+wZKGdZT3LWMeqIADlhuGOvkVrA9RW
	 gc9H4aOnXTo42DE3izYJsqOebObVAY5JB/F5q7eyf/DjRB47q2jQyoG70fO2EuWJfE
	 XEZ4e6eZmKOi1h+JQGdYuPUaxw0UB4TMUOLFHIsU=
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-XMAILINFO: M0br9f/jyDWJRwU2R/Y3fvOY8mFCAJQk4lt4V9BBWTZ2xvRTvDhO2Gu5Z+nDsb
	 tWjKraDb/+FxIs7nrb6N6op9DWQhpss4qO5vFlEduJ49SWQaGH0FbY8hY3UMckWHV7MgJM9pgn3bf
	 spM9U+eKNKr7FyWgcoQYMUJWiBJW+6xcZ8/i8l7y3SWjk5a9+cbDqRyVZMItQgz8cVYokvlpup9zs
	 bxvnA/iWhPzwpX1GVwIm2wMD/fLAoQUz9i+nSO/JYP6RthJYRKPW05kT4ihVaMvNwL1mYmlNXg3sZ
	 tCShDBuxEWJ/+ftVWrhaVmHsDjsmQL4UP9owHXca7FkiHN2tgedM24moVaXrXTsnZTObq5MfqLMzO
	 KxCkPYPG5344KbRHFaYiwAzRioN7sx/M3fhT7iI8BvuRDUpkNP3xy/JnS/b/J+sahA+hSkMK2dufx
	 gduWGnfxf1DXs/BcH9ofK0WCo05f/FGAkwFvzIPe+Z5AJGoJ0Ja27uOHQha9QdM2f1a+KVhHlvNfY
	 3cgm7JcjmE29xuz8OiC1jjYGF05rsuY+M8KgzguJ1AuVJHB9V9Yjpx4NP504CF8JVFTAqv/uoZmIc
	 Lf/hpukp2x1bUKqPHoT+NakXTvFk2eDB5m6TyyZFl4Mf/jsmblckHPjdW5uKd/XDjFGtfvRe8Aj9b
	 FG/uWvDOMqsAN4Sw3JJv4ByoDKoyaHK+Guk+8qXPyV6PiWrrNGuL07qMvvJN0jG6mIymFkj2JJSf1
	 O60uHKua+/4qflhSnucQ0kSZO076IzCxE3tj7BE47pMUfYEp17KMMrgaDorC/i+hyIhCp4aIOtY0e
	 PvPsNAls4ePgtAs9rcnxRQzaI8ygkFP3O8nuUl2GO59PktnXtdtyZedgj7q5eIxRMUjzIRkThzFxQ
	 z9fY4xi5Hd6myM+X9SZzOT8ZHE6GMDEeGQtQfgaVBJZ126bsLoMVlb5Mr5wAjKnYiidYPXE6qfZWY
	 DS0oLnB7Lp6WU+w75sMzYNfeGxn5994Xap9d0wNefwa5ggen7VdxbfdQnjxx+h+KTyNeFT0bgpcUp
	 7LkzD2ItDKQcVx2WmKcQkzlLEr+vf6iSDe39dgdlZrBuKxLc=
From: "=?utf-8?B?8J+Sqy4yMjA=?=" <1579567540@qq.com>
To: "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>
Cc: "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?cm9iaA==?=" <robh@kernel.org>, "=?utf-8?B?a3J6aytkdA==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Y29ub3IrZHQ=?=" <conor+dt@kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] can: rockchip: add RK3588 CAN-FD support
Mime-Version: 1.0
Date: Wed, 1 Jul 2026 20:29:22 +0800
X-Priority: 3
Message-ID: <tencent_AF88C27E354DFF34B132BC0906236A01A408@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20260701070128.2096267-1-1579567540@qq.com>
 <tencent_124D6134EB32480979234201E688087E5408@qq.com>
 <2064877.jZfb76A358@diego>
	<20260701-flashy-crocodile-of-flowers-a6a23e-mkl@pengutronix.de>
In-Reply-To: <20260701-flashy-crocodile-of-flowers-a6a23e-mkl@pengutronix.de>
X-QQ-mid: xmsezb41-0t1782908962t510hyevl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_133046_673684_94DCCCD3 
X-CRM114-Status: GOOD (  19.84  )
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

Hi Heiko, Marc,

thanks for the review.

> please use a real name, not an alias.

I will use my real name in future revisions.

> Funnily enough, we seem to have worked on the same topic
> at the same time :-)
>
> https://lore.kernel.org/lkml/20260630164336.3444550-1-heiko@sntech.de/

I missed Heiko's series before sending mine, sorry for the noise.
(But it really is a very interesting coincidence.)
Since the series overlap, I am happy to base further work on Heiko's
series, or to let Heiko fold the RK3588 RX_FIFO_CNT bitfield change into
his v2 if that is preferred.

> Here I could reproduce erratum 6 though:
> https://lore.kernel.org/lkml/20260630164336.3444550-4-heiko@sntech.de/

Thanks for pointing this out. My local test setup did not reproduce it,
but given Heiko's result I agree that RK3588v2 should keep the erratum 6
workaround enabled. If I respin this series, I will remove the "not
reproduced" statement and enable RKCANFD_QUIRK_RK3568_ERRATUM_6 for
RK3588v2.

> The "Rockchip RK3588 TRM V1.0-Part1-20220309.pdf" datasheet says bits
> "7:5" are RX_FIFO_FRAME_CNT, while bit "6" is marked as reserved.

For RX_FIFO_CNT, I found the bitfield difference by reading Rockchip's
vendor kernel 6.1 driver and comparing the CAN support for RK3568 and
RK3588. The vendor driver uses different RX FIFO count bitfields for the
two SoCs, and my testing on RK3588v2 also indicates that bits 7:5 are
needed. I can add a short note about this in the commit message or
code comment.

One more question about RKCANFD_QUIRK_CANFD_BROKEN: in my RK3588v2 test
setup the two known CAN-FD trigger frames did not cause an Error
Interrupt or Error-Warning. I also ran a 12 hour CAN-FD stress test with
can0/can1 directly connected, 200 MHz CAN clock, 500 kbit/s nominal
bitrate and 1 Mbit/s data bitrate. That test included periodic
transmission of the two CANFD_BROKEN frames, variable DLC CAN-FD frames,
CAN-FD+BRS+EFF load, and a canfdtest run with 19,417,129 frames without
data mismatch.

Would it make sense to leave RKCANFD_QUIRK_CANFD_BROKEN disabled for
RK3588v2, or have you seen this issue on RK3588 as well?

Thanks,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
