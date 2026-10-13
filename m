Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F167ACC6B03
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2026 06:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzzYJaIpqeHBi4+neKUQJa7aTC7dQ54dQxQw58yxA6M=; b=2IA5I5sANzk8q2
	7y4eqx/toAWIsIF0FJ1+r42ICfya6E3ak0j6yjPTgOVO94DF0Jf6bSJnL8YcIzG/4ncazo7LE7AHY
	1RLxSfHjuZKsLhJ3OtZa4EMFHDiLOhnLbz/YWnZJJp/1+EiQajWMebwfqp/JW4DMBFa05HPlPb3H6
	cLeDMJl64JZ6N98unlg6VEtCaMNL5gJWCq+atrpFesQqHajdyGCCxlEQyEStG+v0lwe4MQAke8SdC
	LoqBA1lZM6WAkgdGQxd9jM5E3e6pbnIT1xrMaWtBn7/JZv3tG1wGcKoZCS/CpMhn1b1IIzj88hHD4
	6KtFLR0Jm/4j7lmdJ53Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGWAZ-0000000C9zH-2O6o;
	Tue, 13 Oct 2026 06:39:27 +0000
Received: from out162-62-57-137.mail.qq.com ([162.62.57.137])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGWAW-0000000C9yI-3J18;
	Tue, 13 Oct 2026 06:39:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1791873558; bh=pufvseFPv7SRb1Qgh0FRdHx2ORcY7iConWw/5V0rGEY=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=ICLydNTrn1d2R8B3oA6Ne5LMObic3hefiEHJsSHqzHjLhETbuhZw5TU37qI1FUq5c
	 +sPq3UcNc0om+e62BegxI+jBF8+JOcclJ9RqbkiP94hn0/5XszgDgw/EOiR+zJzHeS
	 fS6rtkQWe5nWWWEZQnUr1GnU47YfggtveK8RDcFY=
X-QQ-XMRINFO: OD9hHCdaPRBwH5bRRRw8tsiH4UAatJqXfg==
X-QQ-XMAILINFO: Nyxko0BhXiLd41+Tw1uOs1BrxflslPSuTweuL7/54vmiFn65mefZgLh3iJk0vk
	 4PgO9c7OYsrvouL0DCf7NvL0FnAY1OugU9nc6oG1RSyVaQQYnCbDrjfRHwkNaMNwbIitX/KFUy0+b
	 vQZQEvC9TWG8cgMZqG6mo1KO3ImT+3q0JS4SIu6dhSE8H/PLXFFCNrCXjwDh38Rxir59UvwkHy/Ob
	 1iFyXxvqEqq3s9i0cflrbzPIhUCm5/QYeulrMjW/hyDYVYVlu4QuiWvY+LAtvKF2oB97KiVh7HdBu
	 vZYjICUlz+tec5u7Wm8oE0zBT5+4dEiJnfFN8fdDoL8Kp+6zqKWsr5OWBvayO3zRuKbnilymr0X9+
	 xbpw5PFHXVm5skbrwRF9he+Tmdl3o3hzPs0LJQD+FA6+P5FJADNnnWYxmwRowiKsOyHgPW2Ftj2zQ
	 o2RN9WT5ojU/sGWyI7M3WJ0kzOI0mEcq9Drcm9U7TQRNcoqKasP0kQtcs5XPmNpdwK1WAUsarwi9W
	 zsnQRsoUfEJsZTqM0AanWJ9bPGROJoMmLEkQLL7cTYMtuJXJABZRpo7PwhIY4wh53oVvCpq0lQUrC
	 vbPeLrlSwarpLSTg96Kc56cvPLOceAxLOnodo5MUbFoi1VlVs1rf0ghnBA9ibEYUo/ylziOwcEzE7
	 3yEFl0D2/JFbyCIVTbbb0BeeK6yl0J/bnAlYgPQ5S+VrFOdaKNlFHyVtPvOvx1/5oUoUxZOyJ7gOW
	 8JyAqmHv5yGQsfj929TBRyq5YTiq1FOVLRenMVOR0HopbLAevLLJ0vc/GDghICuUdy8gHOn+kLSGz
	 qeCoFzd3q3j4yxVeE3qZmNeAt54uBU7OwwCIHw4Y6WLptPnCyQnXSJlTx3ALHwRjz+AGAUBd0Yylt
	 vubGXg02JvAnJQ+b8ICAbaYgerS26pq3G2qBq5sPW9ENd2UgJPiMk6DP3gzw1M71fuKt7O9y1EmSC
	 qGnRHrpLMCXRzGOrlHhkVmPu9BcJt2SZGhJI0X1d/bxPOW5CYLMJ52pk7E4qhYn/GxWpW4w48fn3L
	 TWWUM34sJbtpv70o1MwxLQp1aZ4NEAQy8ffHfQhGRThZ+kMlq/n0+RP8YyRwW//3XNWNTNXyt1WHe
	 1qQwGqRGK3v0nA==
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?bmV0ZGV2LWJvdCtzaW5mbw==?=" <netdev-bot+sinfo@kernel.org>
Cc: "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>, "=?utf-8?B?VmluY2VudCBNYWlsaG9s?=" <mailhol@kernel.org>, "=?utf-8?B?U2ViYXN0aWFuIEFuZHJ6ZWogU2lld2lvcg==?=" <bigeasy@linutronix.de>, "=?utf-8?B?Q2xhcmsgV2lsbGlhbXM=?=" <clrkwllms@kernel.org>, "=?utf-8?B?U3RldmVuIFJvc3RlZHQ=?=" <rostedt@goodmis.org>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bmV0ZGV2?=" <netdev@vger.kernel.org>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>
Subject: Re: [PATCH net] can: rockchip_canfd: stop bus-off restart before closing the device
Mime-Version: 1.0
Date: Tue, 13 Oct 2026 14:39:15 +0800
X-Priority: 3
Message-ID: <tencent_1385D030CB2025348D8C05842272FB01350A@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <tencent_5802EE88434010229EDF7A53084D994C6106@qq.com>
	<179186216396.2527009.17545175870858054500@kernel.org>
In-Reply-To: <179186216396.2527009.17545175870858054500@kernel.org>
X-QQ-mid: xmsezb41-0t1791873555t7ffge0n2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_233925_355905_F81F9AB7 
X-CRM114-Status: GOOD (  14.47  )
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

Hi,

>  - How the issue was discovered, e.g. hit in production, hit during
>    development, syzbot report, manual code inspection, LLM or static
>    analysis tool scan.

Thanks for pointing this out. This work started with a real failure on a
production robot, rather than a general scan for potential driver bugs.

The production system used a LubanCat-5IO with an RK3588, running a
6.18.55-current-rockchip64 PREEMPT_RT kernel with local CAN patches. Its
1 Mbit/s CAN bus connected four CANopen motors operating at 100 Hz and
four sensors operating at 20 Hz.

>  - Whether the issue was actually triggered, or is only theoretical
>    (e.g. found by code inspection). If it was triggered please include
>    the symptoms, like the stack trace or error messages.

The observed failure was a persistent TX stall: RX continued, but the TX
queue remained stopped and subsequent sends returned ENOBUFS. The
interface still reported ERROR-ACTIVE, and the hardware indicated neither
a bus-off condition nor a pending TX request.

I will submit two patches for this issue; this is the first one.

This patch is not a direct fix for that failure. It fixes a race
that was already present in the driver and that I found during
fault-injection testing of the echo-loss fix: close_candev() cancels
restart_work only after the IRQ has been freed and the controller has
been stopped, so a queued bus-off restart can re-enable the controller
and its interrupts after IRQ teardown, and can requeue timestamp work
that may later access registers after runtime suspend has disabled the
clocks. The second patch builds on this serialization and addresses the
echo-loss stall itself.

Regards,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
