Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0B4DC55160
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 12:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=07P+2ZH1VCO9RNyfIt5EPDFRSqTCsvNefdg+wJdHJ90=; b=Q1zyaohU/V2vmq
	bb8eqh947v9JCt31v9JLsb3dgjv4qXDSSdzmwmN9LaMZZNjuCPGYLahXDuwNNELEVPPr5dDtxrW8l
	aSNJaOuoLTBZw2y+nXCBE4qhUujmujU0aiM3tqlGP13tkGoZu/rU8MEVjldyKICU3PjRCheK9ucaH
	JXJViAeE8yMglGwqkvjDT6UeiBm5Zbt0MLlYIh/TCDUUl52Fj1dKOFkJG7SF3QIzguVw6eemm+vuk
	ZqPGNjYEUCWBTEACJpV9qJciCVs9KOs2wNfB6wL9KQjL5slyC5dVISCab65utqnjBB0KLksqOXmdE
	Pn4hfv6WzG8ye4MMDdNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpQ4q-0000000AUe9-293r;
	Thu, 30 Jul 2026 12:41:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpQ4o-0000000AUdP-26CC;
	Thu, 30 Jul 2026 12:41:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:References:Message-ID:Date
	:Content-Transfer-Encoding:Content-Type:Mime-Version:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=6dOH+TfUL4DYiYVvqDYePxfLIBEPe3+uTngEu84Kchk=; b=XJzW2T+o/rKQNQ/WNJJmsOyV98
	FkXuO3Twc7pppLtP+HW2rTDQHI1S6c9iKs6sTTOafxesuDNWry8qXBlvNXTZ9T8rehcXD47guzwXV
	xU3JxiZG6FbSLhIydTzhyyt+OTB8quzUo/oEpcX6+sWwUHwhZwWyJDGqJLPgYOxBBt/ggzbqIhw62
	Qd5n3Ur8U1UKHyOM2IyTlRgqOZMSCNdCEMfg4A1yjHzH4dEh6kHmD77MA5qI94vKwG/Bn1sRtqX6j
	PE1L/CQ+SxqHAZTYEUw0shx8+UwjU99jpEEvLZw5AEEOCS5AjWOY3Qb7+3hhdynMLZ7bEAqRJK/i5
	lQZer6PQ==;
Received: from out203-205-221-164.mail.qq.com ([203.205.221.164])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wpQ4j-00000006hCt-2EMM;
	Thu, 30 Jul 2026 12:41:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1785415275; bh=6dOH+TfUL4DYiYVvqDYePxfLIBEPe3+uTngEu84Kchk=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=boAP757V4kOWqhyYhWVsal7cYXlSZi3OWSsN/0EKWMgGk9mBcXKKRSm1WX1L5Tod+
	 b2siCj3yfybuWUB9hNX2bdtyuorD9RY7rQT5Ix0ZDdbPDq/y67vVtJ+8ZfP3XD1j4G
	 N42GW0nRFKv6Y20oB385L4KuPanyzXnjjHbL97+s=
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-QQ-XMAILINFO: M6SBtOKpYQFc6/SqSlCZJwcYFzT17HCWNyXinNYju8qs0SlvZX+Vow8Wou8P/B
	 BVi0NjpUPuMcEMI3NPrlFWiFKtEAKiF952iP22L6OGSyRrY4O2D/onys8rXUaCse6x7Vuih2KYWhm
	 JB1QY7Lxlgb/5wZKbkQv0FJiKKUDIU+wuLtPZBayz+5nG9SEFL7cntbOHyXTBBej1c3Qe0vlndSQX
	 xwfuCiDWzfSy8lXryy9gNLKywzZ/sO85s4vTZYH/1lAEdLWo+J6UyAWAqvV6wn35WAIIi0QLuNatm
	 XflhByjDnvdMfN7qb4rrPeSQTS5RwB8V0JSk4IR5r+kDQ/7ScFcnwTZzgqcD2TUFMVyIuKnWSprqE
	 ZsFaHR79tIhOrqcS+fl8UTvv6dTVj/4JV+66hrdKceFXjJfJOeGqbGn6/tzOzDyLfbWSFZYOsTEdH
	 p83g/8dEWM/pW1FpIj8LJ6WRZ6C+PTQe0W6rqQ305FIE3HehRaz8bjCDamK7NQWrVoMlJdtvhTm8T
	 ZaYSHZ4YmzvSnhTZdiP8GH7EaCgOdKtJUOucFOCNuChu46gKeiA+hNJpPLiDXkhIOIsiodUZKKhgt
	 RX8d40jWyekDvwzafNjtmbgi5TDW9A7G8x9m1qF9VTMMa3C/LurOHw/XIX2f8ObJubBpsejXMFWzE
	 vwl6Vt6WjPc6mjYyRIT8c/WV+D5kc61VN7QB5L9HZ7b5RiXMqsj22loXXib1b11itU+B9zJYHFb8M
	 7zeFBJEO9wLFyfq53N60R2sOSPjX+VF77pWmWOZRexnA31kqgJnsc7OQBNxfYvc54ingPmP0/iJqs
	 wkf66Mmu8bJvH4gYSEO8BqJdTjlIhgv7rXubAoNA/gPvHdmUU9HA19MIvg22mWXLoOcDqA+cQ/Ykx
	 +vtNbHTrQYwnDygjzrq2YmVN502ONS5rjUCfrnzI/L2b6PEihDASyiclcXTL9Bvfh/g8DzRpqw64A
	 FJVHHi0Wc1g3Ypr0eWRL5+p3XO1AEzyDmg6rlpYwznGzHcil3zPaMbNHPzZnUtBLu9J2UfYhvJhib
	 hPS6aUkAOZM27Aq+Qc8cjo7emGA==
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>
Cc: "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?VmluY2VudCBNYWlsaG9s?=" <mailhol@kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>
Subject: Re: [PATCH v2 1/3] can: rockchip_canfd: prevent TX stall on echo skb failure
Mime-Version: 1.0
Date: Thu, 30 Jul 2026 20:39:42 +0800
X-Priority: 3
Message-ID: <tencent_31EFA63F9A19198A04D8919580584442BF07@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <tencent_D802EB485A801362BF9F54130C0D990C6206@qq.com>
 <tencent_5E44473FC626379A34998A84DF11E6000807@qq.com>
	<20260730-secret-soft-swallow-4da108-mkl@pengutronix.de>
In-Reply-To: <20260730-secret-soft-swallow-4da108-mkl@pengutronix.de>
X-QQ-mid: xmsezb41-0t1785415182tuairg04l
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_134126_326166_397A9E24 
X-CRM114-Status: GOOD (  12.79  )
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

On 30.07.2026, Marc Kleine-Budde wrote:
> Can you update can_put_echo_skb() to always free the skb in the error case?

Yes. In v3, I will update can_put_echo_skb() to also free the skb on
-EINVAL, so that it consistently consumes the skb on every error path.
I will remove the corresponding -EINVAL special case from the Rockchip
CAN-FD driver.

> Is this error message needed? In the -EINVAL case can_put_echo_skb()
> already emits an error. If skb allocation I think in -ENOMEM case the
> kernel already throws an error, right?

Agreed. The additional driver error message is redundant. I will remove
it in v3 and retain only the dropped-frame accounting and error handling.

Thanks for the review.

Best regards,
Cunhao
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
