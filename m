Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABF5FC5B56A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 15:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCnp8kBPsGirrzi6sPDR0Zebx1WQLnHLGQ+XhkG1Lk8=; b=tHQ67+hm/aPoa9
	hz3XYINiDhBvFSu8X7+ffQp/fEsppw7GHgWgfm3pxphMxif5p39F8LTTZ6xCaZt9pZLIVJtqvH2yg
	ClYtvAZQdqxaGyTisYM+AwUEd+z1QEQeTaoogzOfYyP8viFLdx6B5fVZWQwpuY2VUaI/gkvWPt53J
	A4s095ELyqu4mkSRrFUrOi225OKST0CSWfUElkv3Af+74uc4n79/qBmoArnv6Sbiz3kCz/3SFzhAT
	RsGb0L+Sr6bAFGHpqHbzQSwAhSEt5iSoq+KJvXZ5c8TZkYMJSbqTwobPKkkOnH8j6M8gf/m0A8sAJ
	gbnU1OdjiyKo2ZgNqrIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wto34-0000000EHGv-0KBx;
	Tue, 11 Aug 2026 15:05:50 +0000
Received: from out203-205-221-173.mail.qq.com ([203.205.221.173])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wto2s-0000000EHDl-3jU1
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Aug 2026 15:05:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1786460731; bh=JnXJjcPnN7WCQDI9YmmqPPD8PQN0x2U1x3SkWwURy6w=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=kOKHV3L2nT02opBVtJMbqbszMD1Ra+I7yNf+gz8CY4Wy2ze3rGwUt9rpBqatx3RpD
	 nOP4Y89WeeNelxz+pzaMCwY38VlpZpqvYdtZTrKZYkdlPwuDvAXALx1gQmX3QEwmvA
	 oDGMTqbvuBK/t2LHll251qLJJn+GUfC7twmtFxbQ=
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-XMAILINFO: MOlL/R5ZerVSTpvvGqkZbdOTeCpU10goPmlwQ8WrheTmd2Bi7a0SNk5tSm3w6n
	 f6Qwza09dYj3Pu0YapByYukr4xSKG7HGP2ZwS6jUoLKRgvCPrKOwO50vc6Itf/4Q/w73nZ8EdIFIb
	 uTaD8OTkvRmEvZ4erOQCShlm+Ss7xWRREfmITJxjBZhA/OzPTXfGZN5Gy5+cJf+9iTvdqxg9n2sln
	 qoFsCpELA6C16+32t77/ME+HYWOMD3VSb0SorVpd81xDC1kKbs/BYMkoSZc8Mezza+2nJhzBsNynT
	 4wMJ8pl8fQtj3K2Ys6IlyZvd0JqmkMMVcF6TEZc+UmLN6xwyW2lfWr7irjbqr77ikR9Xhv543wKAT
	 7KhWuJednlSHmZlxVzfXJTwX+omrHB1s7ayXZf6lzOIEOOSXNfZTh634j+BAUmujisMn6CRdIzI5T
	 5L2+SneBu4f01lknp0GGbkIe8ptwWTYuSuQ/Qj+QjAyL1hno+qRi7DxHrHxwtaZ+CPJCXf4gd7pJO
	 Vz961rvCsFjXSPRxq6Wq/RjFLS+o04p2/V0Itb91RdptGNWBE4I9wzMGwM0iHgLRku5EaBPwOG2Jt
	 yxXmSgCYjcKSSmkZfVHmEl+uaxMlIQD8Kln3jKPbPWAYYDdL3RaWBAvZ+va/4LuN+Prr8QQu/OLCK
	 hIiSKYi3Huk6N4NygGCsSt4VX9gnMA+4sozcq/2EMYTStIMJGpyDCJ6H7dbRhOSowS4h5V1CJdN7Q
	 AhgRQmPd4hnTf6aJJt83rZ6q6fvWTcXyl/IoKr45Yc6Vm2hadM52hONFUqkUs4n2MmqkOEkfroJMY
	 eodLhnwMG9tdcENP4sLJlifDN/NIGus8cVxLXs9JXxXZySWV1Oi1xfwZiJkSX+yo8efKpi6oOf8hQ
	 SkC3U8ILMFun0Jpl2ilDgcbIxLbI1UCkcSwFem9uEC4NaKK5eIjnaWSX00xVnGiETbMAcuO1UDP6U
	 IiKZK2+IuPcr9m9w4Mj64Yk/hrW7GlzBF4BZR/aHC1KuAWgkfbtYlm+bFG+n3CnLzPrIDjKMZinD+
	 sAMN0phodaf6KMZYW9E+UFjs2j6rg7U69QDE22VTgnokVKIvUAQ0UdqhdeYP7XvVKTJJ3
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>
Cc: "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?VmluY2VudCBNYWlsaG9s?=" <mailhol@kernel.org>, "=?utf-8?B?Um9iIEhlcnJpbmc=?=" <robh@kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Q29ub3IgRG9vbGV5?=" <conor+dt@kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v6 2/4] can: rockchip: add RK3588 CAN support
Mime-Version: 1.0
Date: Tue, 11 Aug 2026 23:05:29 +0800
X-Priority: 3
Message-ID: <tencent_3D3F22AD1F6C1308CD800C4AC2DAC8414006@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <tencent_7BAA0052C402BFFD26291A64198084E39107@qq.com>
 <tencent_207E464D12344B3228096E23A001D6882508@qq.com>
 <20260731-tall-camouflaged-earthworm-e1a7d0-mkl@pengutronix.de>
 <tencent_A3698A465C4621E164443B0005D1CC6FAE05@qq.com>
	<20260731-precise-functional-lobster-cd779f-mkl@pengutronix.de>
In-Reply-To: <20260731-precise-functional-lobster-cd779f-mkl@pengutronix.de>
X-QQ-mid: xmsezb41-0t1786460729t0u1mf5e1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_080539_431775_2EAEE31D 
X-CRM114-Status: GOOD (  10.28  )
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

Hi Marc,

I would like to follow up on my previous email regarding RK3588 CAN-FD
and TDC.

As reported previously:

> Enabling TDC makes the transmitter enter bus-off for every TDCO value
> tested. This includes the framework value (TDCO=48), TDCO=0, and the
> non-zero values 1, 8, 16, 24, 32, 40, 48 and 56. With TDCO=63, only one
> frame was received during a 10 second test, so that setting is not usable.

I have now also completed a 20-hour CAN-FD test with TDC disabled, using
the same setup as described in my previous email:

  Board:             embedfire,rk3588-lubancat-5io
  CAN clock:         300 MHz
  Nominal bitrate:   500 kbit/s
  Data bitrate:      5 Mbit/s
  Sample points:     80% nominal, 80% data
  Bus:               can0 and can1 directly connected, 60 Ohm termination

The 5 Mbit/s data bitrate is the maximum supported by the CAN
transceivers on this board.

No frames were lost during the 20-hour test, and no CAN errors were
reported in the kernel log. The final ifconfig statistics were:

  can0 RX: 607939922 packets, 9613049987 bytes (9.6 GB)
  can0 TX: 607939922 packets, 9613049987 bytes (9.6 GB)
  can1 RX: 607939922 packets, 9613049987 bytes (9.6 GB)

The error, dropped, and overrun counters were all zero. The kernel log
contained fewer than ten TXE_FIFO_FULL_INT informational messages during
the entire test, with no corresponding frame loss, bus error, or bus-off
event.

These results show that, on this hardware setup, RK3588 CAN-FD operates
reliably at 5 Mbit/s when TDC is disabled, while enabling TDC prevents
normal CAN communication.

Would it therefore be acceptable to drop RKCANFD_QUIRK_CANFD_BROKEN for
RK3588 and enable CAN-FD support while explicitly keeping TDC disabled?

Alternatively, should I follow your earlier suggestion and add
RKCANFD_QUIRK_CANFD_BROKEN back for RK3588 in this series?

Best regards,
Cunhao
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
