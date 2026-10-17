Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D8D5CCA463
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 03:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUwV5J+WRtsM4IUJz3K/AoH5qqV9zRPFh1nN14esVAM=; b=GST9eSrkycP6DR
	qdOcxL1h9W9Jg6yqEhSbvuInRxR2B/LqlLmQfuzlS98OxAH5LzE6BYPKuhOYbu+eAx4DOaklRRPdK
	c9IvtVS6oq8oMx0muxPJrg2M+MkBZdIAFKvuBQJ9mPeWC7aJ0A4QP3MqaSENSKN4/4SHsvO67zL/t
	kLKYQkqWuMP2dxxTb8XlUNPyDwkSy3iPKKGYy0ZDR2SLFVJMSbNA5bvV3LfqtcdaMDehyoQzJ22TX
	Z2Qm8T9pQ8GjtFWrP79qZa4c7K1o5jxoTd5HklhwmakSwz2ODjrkyzGvuFizBLlYUDcJfUDljv2nD
	9oMrFiuAxJp2wWBv1fbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHvUs-00000004OU6-0oTp;
	Sat, 17 Oct 2026 03:54:14 +0000
Received: from out162-62-57-49.mail.qq.com ([162.62.57.49])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHvUo-00000004OTL-2YKz;
	Sat, 17 Oct 2026 03:54:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1792209246; bh=BiIpDiNO+A5zvu0yb7FPXXF68Vr0h0A6t93DHhTsnoY=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=c8KYv1IlkDwxF5UNekDmtO+A+XX+nT/FlPS9BrchF9gqyzu70bG5M1Bbwb8qmtnMl
	 Bh1FH2zjKqC18jaikYs04xeJBfJf3Ke1IreDvJxY1tXOMJPQOd6IPHThsgrVxI8twY
	 MjtqLNlk9RH1xQ5ZzPntpr1KmnrZ9kg0rZg/MHL8=
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-QQ-XMAILINFO: NH2c3QqomeNikxeJuDQAEIQjSXALw5wWoyJKWbS38jUGjjE+0FUKEOE6/HeRya
	 9vOjAxN/dM/jrxLKVIQucQSTNctilefGfiRmjeyzL35MZx7leZFPU1QdOKDb6VZu3vdldRNN+2lAv
	 ixAo6Aijx4ND0GKKh/b/awJmMvGPmrvriJXXLz6V3PVaB/oZlAcYSzWNCH3+KB/GNPU+VUz89XEKj
	 q9fAz6xHnF6VzTe6hxOWuoBvxdTVCp72UWN6eI2FWZTgHFkAJ2NanBXp3vIJOtw4BBVyZjaywRxxS
	 UC7VqtoEhYfUhpnHWbL5TNU0A3LkfLDHrREaFm2+gpUPP5J6pHm4Qih7yUdpczynuT1lRw4XZ2x4W
	 JK9Xbj5pHOKtowYmzk0G3E6uqbsRjDwWbO7ibzzcr7gujPk3mpz1XL4kE3t2vBVenyFtZZngxy/fN
	 3CM9ywJo3xXNLxTQq+wITtbOQYffVTgRM8eYAanankf1G8jQbAZsadVoNW1YBQzOf+0zmHB6+yWe6
	 hjpNEtyaCehh0T9ztuUKr1iSbvAa9NGAUbUlqIstdOOh7XGuhW0C7G0p8bmqWwa3H6y0xQIfPqucB
	 BtZ9/HpBGDoN0rQsqelTfvbe6bsjrNsUzpbTpUcMSPCpAY3ELxXURV+2YQC3RY0v1czVZuvlyKqgd
	 jR2WqLVtTjuCw4RFsVysSoRX3+hx7Oyj80nLitTjhJ/YHyhcrRAOtiJPGdjnXRZA0ec71dO3XXuUN
	 H6CxKzMbvqnILU86Ef2KHLhyaCM9FShN8q357N53bIE0HnAylyjMJ13yjO2nUNpdacMY1qgNp3g1K
	 G8LdxkB6kYsXDA7rvwKLhn5LstWZL7Y/ivKW+mkwPcFqPwpXtgla38OwkJ5nfVm5j6tiPEbgfn3+9
	 Y770mMgHxgwzLXxGXYAEaRYGkrJRsrDK9MBsqhNMuJMexbRe5ZU+rMemmFKIq5EguEkkCnzN0gxks
	 lCnMnUAsx468MpAX1LhV/R73TcpFLXWCtfUQasXEl8tj+Y5BKO+vjxclMCZ+ei+SsVnio+PTOOJIQ
	 rWJey/VF2o3OrQuXoWl8Vl+pFP4RGgCUbjg3V0Lq5Ioek+iVFEmN+/o+vNzX6qPW4FC553xy6O/PA
	 o1g+ZQpJ4jLJjknypRuXz9qZkSWsbiOOHM8=
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?bmV0ZGV2LWJvdCtzYXNoaWtv?=" <netdev-bot+sashiko@kernel.org>
Cc: "=?utf-8?B?bWts?=" <mkl@pengutronix.de>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?ZGF2ZW0=?=" <davem@davemloft.net>, "=?utf-8?B?d2c=?=" <wg@grandegger.com>, "=?utf-8?B?c29ja2V0Y2Fu?=" <socketcan@hartkopp.net>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>, "=?utf-8?B?a3ViYQ==?=" <kuba@kernel.org>
Subject: Re: [PATCH net v5 5/6] can: rockchip_canfd: serialize TX with bus-off and restart
Mime-Version: 1.0
Date: Sat, 17 Oct 2026 11:54:03 +0800
X-Priority: 3
Message-ID: <tencent_C91338471C02F811B1FC329B56683265FE09@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261015-rockchip-canfd-restart-close-v5-5-ae77327037c9@qq.com>
	<179219884425.1406898.18319979032484933416@kernel.org>
In-Reply-To: <179219884425.1406898.18319979032484933416@kernel.org>
X-QQ-mid: xmsezb41-0t1792209243t8ya42z76
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_205411_179919_AD339C90 
X-CRM114-Status: GOOD (  16.19  )
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

> [Severity: Low]
> This lock stays held with hard IRQs disabled until the end of
> rkcanfd_start_xmit(). The locked region includes the echo skb handling:
> 
> drivers/net/can/rockchip/rockchip_canfd-tx.c:rkcanfd_start_xmit() {
>     ...
> frame_len = can_skb_get_frame_len(skb);
> err = can_put_echo_skb(skb, ndev, tx_head, frame_len);
> if (!err)
> netdev_sent_queue(priv->ndev, frame_len);
>     ...
> }
> 
> can_put_echo_skb()->can_create_echo_skb() clones the skb and then calls
> consume_skb() on the original. If the clone fails, it calls kfree_skb()
> instead. can_put_echo_skb() also calls kfree_skb() in three cases: IFF_ECHO
> is clear, the protocol check fails, or the echo slot is still occupied.
> 
> Freeing the original skb runs the socket destructor (sock_wfree()). If this
> is the last TX skb of a closed socket, that can continue into __sk_free().
> 
> The comment above dev_kfree_skb_irq() in include/linux/netdevice.h says
> kfree_skb() and consume_skb() must not be called with hardware interrupts
> disabled. Before this patch, ndo_start_xmit() ran with only BH disabled.

You are right. On non-PREEMPT_RT kernels, the new locking places the
original skb's release inside an IRQ-disabled section. I will fix this
in the next revision while preserving the synchronization with bus-off
and close.

> [Severity: Medium]
> This is a pre-existing issue that this patch did not introduce. What
> happens when can_put_echo_skb() fails earlier in this function?

Yes, the existing code still advances tx_head and submits the frame after
echo allocation fails. When tx_tail reaches the empty slot, completion
matching fails and tx_tail cannot advance, which can stall TX.

This predates the series. I have recorded it as a separate follow-up fix
and will keep it outside this restart/close series.

Regards,
Cunhao Lu

pw-bot: cr
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
