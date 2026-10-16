Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F229CC6B2D
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 05:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wstXbXra93RIszlGqbOYBRm3I+vrrsQoRyN6e1v1IXw=; b=t2oV3GFAmSwImJ
	65erdBoVQhs7+utIOKR41KNKhKLTgxGiUAEnk40+lAjedVQxaNjTq9hJXoUJ8g/r0q7njpmvL39gb
	635YyQe41BN12MPVqDsjD/8IVCYj9sscg4TlKc0O/y+bAaRk5XZj4cdMjubTK0/gy5BkZZc8Lxn5b
	WvnExcJ6tyRbYpRcdvzN3Pj/syxprX1PVitKty9STtGe+PK7lk8Hfa9lAM51AhfA0M64xOrlw+mY0
	kYviXCRu3cCiPZjZH6RaFcwg/s5oWO/nMSWHSZsfk7buYU7AJQMKJAujeRjy3/PoZnd3CE7JNbygy
	WbYGYL9ZJZiW09Ld+v0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHae8-000000022cZ-09U4;
	Fri, 16 Oct 2026 05:38:24 +0000
Received: from out203-205-221-239.mail.qq.com ([203.205.221.239])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHae4-000000022bd-3kVJ;
	Fri, 16 Oct 2026 05:38:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1792129097; bh=I9S/3scpv8TmDMpc3q9HAsNyW70EViJX64k08LJms7E=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=cxP/9htKshkcGlqtR4PvqVrttAC60cxFdU3CFwAtVdMna9nJUCuGcFYHgqj0JYOM7
	 590j5kv3z7felF+xg7pg5NzW5a8zyCK9qQQhIUZt+8XgiSZKnvFMghRzF0EHYe7FXm
	 8ij3wmlTIst7OSxdj2lX8dSYrycWjL67PIJ5hT9I=
X-QQ-XMRINFO: NyFYKkN4Ny6FuXrnB5Ye7Aabb3ujjtK+gg==
X-QQ-XMAILINFO: MYbC+rXBLyObodfQCA4D7TaoC77kH8yp+juHBOTeycoxYspZxP8BMQM5plRqXp
	 zbvO/D7gGuVDNON12sGweqj9HkecQI4fZdeQtgAf1H6bnhUZfr8LRxHn5k8b0uE8Wo2TLq75I38VY
	 0ebyvfRz6/Zi7lyNeEk7JwBPtXFp8/m6nTP/SXbxRGJFon3KvSxWFVCgKj/6pPp41Z/qbPqohN2fX
	 XPn6RlPVn/woGfgLwefe588P4RvHw0q5J78CFmV6tijn2hlCNhwMm5eDZzd+PWGVWUWkGF+doB7gJ
	 rpvnLW87wnglxDOV3aSGqiOL8cfxlW86STqrxcyTcqDYjsMtOHJj2uj97DGLNUyTKS4NWRPCDwKYg
	 7L7CKTFFkWbQyOzkvIrHekv94DixLNKaUZc/mZ1rZglKBJL8YO2s/kHiVSxFlciinot5mMnk+98Bh
	 eNBspZUi2qlD5d+8wfWmwjU1Tmi1f1ZkI5Bq+vjWg38iE5kD7/zF0dWF0cifVX6dn257A4A2oTNdq
	 sbc9rm4fO6RyAHoBe4MZ6LpA4p5r4xHPDwrTFkD0C7rOV0pNuoT44E+LluRhECc5PR0AXcfvJtuow
	 c3PQNqJLzLL4b/SlNICw8piy5WMwbDG/9bFKVP0vnJuKpEOBXC5W0/Ny3UKWgzNgLhWFDvSjAzMx1
	 gAcWME4YV6xUkumRdI4ai0eG+xLxS3iNQMDZ3q+H7TapI5wLcfRzhJMo2ssLaVdkjzpKmAn/Z40BX
	 dRWsFCoVgYKeRVn9JQ1hA0a6YBeEIRJX9TGK4f+AX/XXWbraDLdX65RPfygGvWTjzslM2IL9KjTIp
	 BniCtuPJi/F6r418IHXaw9rTQlSzCN9AbIG9R7PQrwjU88rb68DvwqACQaC3ydKS57IDP7GtNh1Wq
	 GAYT7PnwxekubUkpk0SFywKN5wWvGoExUeDr+Ltwb+kVBvfu/xoNM8cQcU1B77baOackPJuT7dZSi
	 UJ7IlCp43FxSDPrYerbSF9vQPpPZupFEm7VdaBjs3oSi8eaZwYK3HU1ye7Zm5ENVtl1GI70Y0QHj2
	 E5aFPDjlYbhyLT77QicDd4corlf6N9UQCPwZ1
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?bmV0ZGV2LWJvdCtzYXNoaWtv?=" <netdev-bot+sashiko@kernel.org>
Cc: "=?utf-8?B?bWts?=" <mkl@pengutronix.de>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?ZGF2ZW0=?=" <davem@davemloft.net>, "=?utf-8?B?d2c=?=" <wg@grandegger.com>, "=?utf-8?B?c29ja2V0Y2Fu?=" <socketcan@hartkopp.net>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>, "=?utf-8?B?a3ViYQ==?=" <kuba@kernel.org>
Subject: Re: [PATCH net v3 1/5] can: dev: prevent bus-off recovery when the interface is not running
Mime-Version: 1.0
Date: Fri, 16 Oct 2026 13:38:15 +0800
X-Priority: 3
Message-ID: <tencent_F6326E09D62380013188767E4F4D66345808@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261014-rockchip-canfd-restart-close-v3-1-f0eb41090242@qq.com>
	<179212694915.1406898.5096495212984871051@kernel.org>
In-Reply-To: <179212694915.1406898.5096495212984871051@kernel.org>
X-QQ-mid: xmsezb41-0t1792129095tq0zz4chp
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_223821_269212_B2F80A15 
X-CRM114-Status: GOOD (  17.83  )
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
> Is this check enough to prevent the failure described in the commit
> message, "potentially re-enabling hardware while the driver is tearing it
> down"?

No, netif_running() alone does not serialize restart with ndo_stop(). A
restart that has already passed the check can still overlap with hardware
teardown. The commit message explicitly documents this limitation and the
need for drivers to cancel restart work before tearing down resources.

For Rockchip, the series already calls close_candev_cancel_restart_sync()
at the start of rkcanfd_stop(). This cancels pending work and waits for any
restart already in progress before disabling interrupts, freeing the IRQ
or stopping the controller. The final close_candev() remains after IRQ
teardown for final cancellation and echo cleanup.

As discussed earlier, this series limits the driver-side fix to Rockchip.
You are right that sja1000 and flexcan still have the window you describe.
Those pre-existing races need separate driver fixes; the core checks do
not resolve them. For Rockchip, the series uses the early-cancellation
approach you suggest rather than adding RTNL locking to the worker.

> [Severity: Low]
> This isn't a bug, but the comment above can_bus_off() still describes the
> old condition:
>
> /* CAN bus-off
>  *
>  * This functions should be called when the device goes bus-off to
>  * tell the netif layer that no more packets can be sent or received.
>  * If enabled, a timer is started to trigger bus-off recovery.
>  */
>
> Could it mention that recovery is now only scheduled when the interface
> is running?

Agreed. I will update the comment to refer to delayed work and state that
recovery is scheduled only when automatic recovery is enabled and the
interface is running. I will also clarify the running-interface condition
in the restart-ms documentation. If v5 is accepted, I will send a
separate documentation cleanup patch later.

Regards,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
