Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 954CACCA463
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 03:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lxrbYKVpBUFQTxE9CMoZXykJ3vUsOTNh3jlCXglY8A=; b=LaMzbyikcReM8i
	ZqrBfvsLS2pUjE0ZOzUSofJDZM7nQdSCT/pa2fFPgc1B+kj9RowlfcMj1ctshpw2uWmvKGBQZ+M3F
	xFfghGCYMgpAnUBuP2VuTCc9RnKeEgcDLBXh3yJ4P/14uulPYYP9zJlmMfJJIdAacAlxaYWWiexyg
	ynFfkoa4OTlDpSvNV+m5M9WL8wsDReDeB0s9n0ALco/pss+cXwx85cJccOlQvAeaZJM6YMkBevgho
	dU6yu4xsgrRU5po8uNREZ+fH1OOLKxbSa+7NmaZYFhhW7sUQhBjeiJOwJlNxJhXH9rf3ZycCYP7vv
	JErxxAtU3MJRN6UM1OfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHv4n-00000004NTS-1ghv;
	Sat, 17 Oct 2026 03:27:17 +0000
Received: from out162-62-57-49.mail.qq.com ([162.62.57.49])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHv4k-00000004NSl-0qYG;
	Sat, 17 Oct 2026 03:27:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1792207625; bh=oPvpngYgb3gDSbNgR2i6nItLp+8/l01MxAbIoxQYnPk=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=jyRkvwq8F5spYxmKdsFv9Bdn64KIAYRJpssWfbGiZ2U6ccSdczsuW3DSC5eFVIfDt
	 ubPCKdDGmpRjNHbU/xm6CQBBYmUQlaPD8F8F0stvFUKOl2ZOowwDmALD4SM+7el3nJ
	 ZEiAlNxivZAx3nER/4w4eXFlQsx5T5m08Gx9fCVg=
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
X-QQ-XMAILINFO: N/Vcqssfup8JQjUcZJqhvtZnz0BM1ovXR1FQrDMUcw43sIlBo0ec2E7J6fTSPm
	 99rBKKqRA0X8/g8znrLel5OZReJE8SnpzJPCH1Xy9Ad44Qlyb/Yd2/COi2/nzV0+ifFhk5faskbik
	 iogObJWwosHWc1UFZ13gA8sHm+fjFUsbV92xoMRHmrbVuaPKSrFXNqpvAdl1nPNRCXRBAgS23JO3+
	 S26px2QISMzyzzcN3Bgm9lYOAAAl9Y8ulT89XuKNnljaCur9hzX5FtDmufmMHlsCCmq7fjEroR3t+
	 7bSz8LBtaeu/qH/JRTP8QNIhV4J9miIj4UueaKGH0dbq+p7oIj7dCeBqo/s/s+8X4Au48HnQ+PM6U
	 cn8RNAI7bVHyTrYRbl8nseyJe1ucs+Qg9hmKf2MZ1qfHveSGxUi/VoMlN6FbqQKXON9zlovAhNPS4
	 kmv2Rkyw/I+E5EE5TwN7rSGv2Spy+ExFiP249ipYHA5UPNAjZZ3T4582mtXi1ejhB7KXNC6D52QGH
	 kGSfk8uxlM1JfPBabHnE6G9UOZzWnT8l4h/umZNzIyzRl5/dl0kDpr0N+Wk36ht8thXnkOQiq74FH
	 oBZ67SRvIMprALVb76h1LMhw2NITwrB8v5DMqR9k+clTFtV3tKc1UHkheRMpZLyAE4Gps5ZBmO4ut
	 gSGk0MKGga/jit1hucE27G3gsjv0lWJB/gd+M3xWNAI17ogA8hfBtYA0BNpr4YGPpdEc11YI+T/gK
	 ywwNI/qh+of/jjaZtELyuMKyHcBXkCKCFC6l7B7m3v+wx/DfdwONP+Z/OavEkAIFe6A3iPs9evwUK
	 9RXsTm5QcZC+UnqPsodOg9F0mt1MxnFX1CS8c2QKlnc9OZkU4N72xr80noEGvXCl+dSSaegTeSLwq
	 sy2Ykn1LgywfILS/7F5DrFtVfwvfEgdSfnepRmwtew7JBq/lcviMli6wjIBwdyWdtzLioDYQjL99q
	 gyoONzmfyxh5IcwzybNVrZktD4itjnmQQvNWYsaiOz0C9k2Au+cSLHUPr7wht8ErCXNO2iNzUslzm
	 WOfAYJxqfSxmHQ6b0ry+8ootz2fol8RJ7g5UWFqoHLUZhkDg2W4LapuCtKj53VJDRk1t5VOJDcx4W
	 9hjbVzUXf8ACoTrD+iSkZ4nu69mFNm5P7drA75ySsjCQJDIE9kYNX7tBrncevk3uhsINDbknSktmc
	 w==
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?bmV0ZGV2LWJvdCtzYXNoaWtv?=" <netdev-bot+sashiko@kernel.org>
Cc: "=?utf-8?B?bWts?=" <mkl@pengutronix.de>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?ZGF2ZW0=?=" <davem@davemloft.net>, "=?utf-8?B?d2c=?=" <wg@grandegger.com>, "=?utf-8?B?c29ja2V0Y2Fu?=" <socketcan@hartkopp.net>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>, "=?utf-8?B?a3ViYQ==?=" <kuba@kernel.org>
Subject: Re: [PATCH net v5 1/6] can: dev: prevent bus-off recovery when the interface is not running
Mime-Version: 1.0
Date: Sat, 17 Oct 2026 11:27:03 +0800
X-Priority: 3
Message-ID: <tencent_AB234A019188927E4F4DAB34DF32E2091E08@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261015-rockchip-canfd-restart-close-v5-1-ae77327037c9@qq.com>
	<179219884173.1406898.3472467604167875171@kernel.org>
In-Reply-To: <179219884173.1406898.3472467604167875171@kernel.org>
X-QQ-mid: xmsezb41-0t1792207623tzsdiwpov
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_202714_967677_29630E13 
X-CRM114-Status: GOOD (  16.28  )
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

> [Severity: Medium]
> Is this check enough to deliver what the subject line promises? It reads
> the running bit once without any lock. can_restart_work() runs on the
> system workqueue without RTNL or any CAN-private lock, so nothing orders
> it against __dev_close_many() and ndo_stop().

The check alone does not serialize restart with ndo_stop(), as noted in
the commit message. For Rockchip, this series also calls
close_candev_cancel_restart_sync() at the beginning of rkcanfd_stop(),
while the resources are still available, to wait for any restart that
has already passed the check before tearing down the hardware and IRQ.
The pre-existing teardown races in other drivers are outside the scope
of this series and should be addressed in separate patches.

> [Severity: High]
> This is a pre-existing issue and was not introduced by this patch. The
> patch makes the window smaller, but can restart_work still be queued
> after close_candev() has cancelled it?

Yes, if a bus-off producer is still running, the check does not prevent
it from queuing work after cancellation. For Rockchip, the series keeps
the final close_candev() after free_irq() has drained the bus-off
producer. This final cancellation catches work queued after the early
cancellation, and the running check prevents such work from restarting
the hardware while the interface is down.

The late-enqueue and lifetime issues in other drivers should also be
handled in separate patches. This series is limited to the Rockchip
CAN-FD restart/close races and does not add a generic free/unregister
safeguard.

Regards,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
