Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3A68CC6B03
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2026 13:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVnO+RJF8K985G7EMF41PaNKeFWATDCGMiA3VIcoPAs=; b=DxbNqJldQ9HQxU
	95BPWo5tkWziMAHT2oNe1e9Ihft6XuRsp6Ey8eJ+MxJso+zpssKI3L6I0BOveddfU3EPAWp55b9Xl
	Z0aIVj4swT3bacnL7Yp4xM5leqpdvoQojE8ooRIvJvj+CcY3n9Klo1w1LGvkjfSu822yBn4+db92W
	qW0u0BkAA4vXtc5myJS+/2bMO7mgOH7a4CtUUlxd3xTiDGPyF4+XXhGRN2g1tfcHOfKFE1w6nhIzz
	rXis6Km0Gyrz9/TlkSZCpSi1GsxL7GDgSaT0i/T9inYmBO3obkgGJrEJjllVvj2RB5MpHqIjTfd+i
	cywCOBWeC0fwxaTr1nlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGcDE-0000000CueM-3oEy;
	Tue, 13 Oct 2026 13:06:36 +0000
Received: from out162-62-57-87.mail.qq.com ([162.62.57.87])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGcD8-0000000CucC-1uj5
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Oct 2026 13:06:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1791896783; bh=YA58kepF5/oFO2hgjwCX+vvSGiubieaYMrE8JCbPGRE=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=j7IsN8VBWg65+eB3yIn/pY/Cp7UuHAS1ElrRYG3zZ7ZDXhi4M7thr2ZTlxwosL0Rx
	 fPD04FsKz1HocQJoipo0t6fXxf7LfpjkHyJSjBmW5xK3+MJ2cvCHSei91HaqsooCo9
	 Dl7wl9Kkd0V4VH9581K0y75223OkCnoIsP+AzcaQ=
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-QQ-XMAILINFO: OTkXlZHit/HDB8lz4bZyda8RXw5N5T4WHY6SL+WkAwI1CMWbvphDjR94zYpnKl
	 w9w2c0/v1h6QRIPtC/NIc30bOguGfgMYpH+00L7Qsis+xUpA8Nv+/wuo62ZbSP3XKzEG8uYQVh5DV
	 yok+v9e6ywQ9rWYWeEKwQnhLd2FBs/4ZCSw5Jjf7OCHKIj8cfHpYPJFjwldV6hlDsa84AHGsZpm/a
	 WrQ7bMmfodY02zY0+KHnCfF7q2t+jk3kL0ltDxzU6lqeGHMu1RXJW5QqRACnN3w2UltfYuFlgV4OX
	 N8h/k/ddOQsVYO+J02HXIY95WzCaQub8DB/9KemcUbV7hEjCmlqQ7EVNMdajoct92kC+sJM7kNamx
	 1aE7mDpyf177tcaFixVmtjLQ29Lii7uS3GCMZkNYqSW1L6LBmWXdb6IHRR5MyxStYo38Hm49qFqcm
	 AWAODyxYB/E8n0hAkvlmjShx23PmPggxbzVDcP524fSzoD0CPyLU9+RGVCXoh2k+ANhWnoiluu8/S
	 vgLMF+Kq1kYqdXLdh49+8TnNStwsGtuhEd/iPWQw9Ny7SXxql05T0uPQzac983mEHKD/d3GQeiomp
	 JMl0Cxxk5NTdiOziSbcq6K0OCEjMjOypdYY3K1AWjJcXQAIzHL2Nl5Wsk0YYJv7eeCmPB3oZo+DVl
	 0Vn1E6BVcR/Jd/j5Cc/l7kUEiupH4YunRfFHliQq5jXRuNoZPmvuwqfW16wqTIlrxRsccA75k49SI
	 V2N+NyLy1wpCp3zBNXlsEaa+dDrsKnkZuxPQut0knJM31hCQvTZVX5583eXF2RLgPNrAqB0Qv9H9u
	 i5gcgt2CETH8w7OErtDpFPFTeJOhIN5CWcryAde4jIEKFCwo7eXX5avKAmuFdtSyZXjwd23l0rgBq
	 KwitEBIvRHOhzLvIubCJbpLJ1Oh1hDSmmBSOg6DMCW3xuyAuu1PfIZXKX+p8TBOlIVLnI6z/uWiZA
	 BLGQa5RMF/4qBGUIZJHF3vKGbSnP1CHfUqO6p6hbMxeFyp3djE6SyG23n6H7IIkcbXqpgp/n2zGyX
	 CSm8Y2+bLzij19n+LvRGR5GrnLK3U7I6blTB81jpzuBJxkyg=
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>
Cc: "=?utf-8?B?VmluY2VudCBNYWlsaG9s?=" <mailhol@kernel.org>, "=?utf-8?B?U2ViYXN0aWFuIEFuZHJ6ZWogU2lld2lvcg==?=" <bigeasy@linutronix.de>, "=?utf-8?B?Q2xhcmsgV2lsbGlhbXM=?=" <clrkwllms@kernel.org>, "=?utf-8?B?U3RldmVuIFJvc3RlZHQ=?=" <rostedt@goodmis.org>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bmV0ZGV2?=" <netdev@vger.kernel.org>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>
Subject: Re: [PATCH net] can: rockchip_canfd: stop bus-off restart before closing the device
Mime-Version: 1.0
Date: Tue, 13 Oct 2026 21:06:21 +0800
X-Priority: 3
Message-ID: <tencent_F9D491A400474428BFE7262F1A1799A88407@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <tencent_5802EE88434010229EDF7A53084D994C6106@qq.com>
	<20261013-hissing-saiga-of-endeavor-ef5e03-mkl@pengutronix.de>
In-Reply-To: <20261013-hissing-saiga-of-endeavor-ef5e03-mkl@pengutronix.de>
X-QQ-mid: xmsezb41-0t1791896781t2k02as9b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_060634_518914_833084CC 
X-CRM114-Status: GOOD (  19.73  )
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

> AFAICS this is a systematic problem and should IMHO not worked around in
> one driver only.

Agreed. I initially only noticed the problem in the Rockchip CAN-FD
driver and did not consider the common CAN code.

> netif_running() tests __LINK_STATE_START, which is removed in
> __dev_close_many() prior to calling the driver's ndo_stop().
>
> Can we make use of netif_running() prior to calling do_set_mode(dev,
> CAN_MODE_START)? from can_restart()?

If you have no objections, I think it would be better to put the
netif_running() check after the existing !priv->do_set_mode check and
before netif_carrier_ok():

        if (!priv->do_set_mode)
                return -EOPNOTSUPP;

        if (!netif_running(dev))
                return -ENETDOWN;

This would preserve the existing error precedence for devices that do
not support restart.

> can_bus_off() should not schedule_delayed_work() if !netif_running().

Agreed. Although this would change the behavior of some drivers, I think
it should help improve stability.

> We still have to call cancel_delayed_work_sync(&priv->can.restart_work)
> from each driver, though.

I can make changes to the other drivers. However, I do not have the
corresponding hardware and would not be able to test the changes on
real devices, so I am concerned about the risk. I would like to confirm:
do I need to audit and fix the restart behavior of every CAN device
driver?

> What do you think?

I will address these comments in v2. Thanks for your review.

Regards,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
