Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFF3606A335
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 05:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uEwTUWFW;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=otsdPddm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pOUgo7f6ePtH0tfPW5VJicaVFjWPsxdzYFqoQIF8YtU=; b=uEwTUWFWYSKZgM4pTDWWtD0wz5
	jtxVt7W3EuFgQ2UppUNZ2MM+d8bZQWw09tcDYeEbTZHO2mZdCZ/FTlpOfALF0HkKumg9wTDg5NL+h
	KrpePc0RLvhDyhvubILd7+CE619TzDuHXrOloMb+k9jEtDJ2GUS3OXFykoiRIQjeTi/GpqJIQ0dX5
	LpHnKMYdp3V40xW35ILLllvUi+crwCwmwZzpqvPHIlCH8HrbODVsNFD5c0tsbdLZjd+rZYm4yB7K7
	Mz89xZgdA6s456cZnNcJPklQGHCZx4TNLyCUXEOLj/iCVpMS5GVX+BBofyvVRVf2tUacv5SaNsvWq
	hSYQITEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjXF-0000000BfTe-26Xw;
	Fri, 13 Nov 2026 05:09:13 +0000
Received: from out203-205-221-221.mail.qq.com ([203.205.221.221])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjX8-0000000BfSu-3S3t;
	Fri, 13 Nov 2026 05:09:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1794546540; bh=5Dp2IENZXY8vor5OQbmzVoL9tS9zDPmNAgbX16sKuWM=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=otsdPddmRQeT+X5rLWjdUH3qgWfurnnL665INmuBmWvN57pDiYDOrSWpx8jTFUxlD
	 fUiMGZcePYTsXUO2djmGY8Mbs/bjCxd6fZ2nF1tiE9b7k4oF9WumvHH4fI05Jzoaal
	 LAN44/zOOrcoeeYn9ahWolD/LUahlc4PPttNE5HU=
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
X-QQ-XMAILINFO: Nc5/rdswZ3xKSNAXNUazFI95a8UiJLoXzHexhkY/+iv7Dp45u0g3b4eGgS8eS9
	 0owDJrRS0VqSesJrxHCup9iP71RVuztm9/kBOm9UYgEmvlEi7UNvzoAp6JJrUJBh1Av65Uv0tJwam
	 ku+DAMQlhUHRSDFm4g0yJX53FVtc8L8ATWt8PKqbYtd56C77OpGSyM9vhfjYuaQHz7GQ+ek21Rwjf
	 kgEUafJQ9wiqfTkr9EfsUxR6RvcNYOPns04V4Pgfojxwt8woUDTxeHyF1VHLyaOGr823UhwN30wta
	 NhlxHWkEHlaQ5tbcv/bhhfCXJhYWdi1bjkxMjQpZ777W61tMaHLkDE6jImBJo4SBwTPFSAg/SvbDS
	 GNN66WRB90V1VpeX39sH/kJvz6m6B6+wMvTWJjqPg6hnr1fZiQr0+04GvJQBgZS3jUzHddIxRzUAU
	 S+kdrXRl2FtzD80EODeTo2MzUDG+5xLfFZDB/xyWIlOpyr1UXSjZr4QGa7SKL+am1HFzHihFY9/4r
	 3c7izJ7L8C44y4YudG8hVwjwPwJeaOkOn6YQz0EyEb+qmdCEr55vX9F5ftxALxwb8NgTuPuJDc3DS
	 9Drv9JWDiAJQL43LovOEm0BkXHHSxHnD21oJxWa0rU7JRhKucc0E7G1i0QPWWQ12L5aReEZ+eFE07
	 uJlM2k68hP1nfQhY401tA/37lLJ4HOfW1qpQsSjaF0hXV1/97niLXvk1TbxfR3Bd7l/ziOS0xP6hu
	 4T4iapXSkwX9ffHn0buc4JzTyN+puCX/h0IYHfrVjvZvPw6KmOkgx+T5LV97pJVXsO+anRs5e7CDY
	 fvKwQIcYQ0qzXwo/aGvVj8/B4fc8bn/vbHRfOJ68Xs0TUoVuAsSlNpdTXwhPqjdmddIL13B4sMDAb
	 QDjf1hFgBZOdm/cINbkT4YwgdMEqHhmc9I3ZtupR3FhSr+bm8b/SvXNxFDJjX6D3Tg5Cc3dZtr2I4
	 fzHI5xQLBbIn5yuLknjm5xuwRhtxklzWBK93aAPnNq36u2AwUOA1P3MBrpGqf4T1bgS5+rUh5WBjF
	 8ePJ+oA5tULHaN2CbPN4P+AEcAcqU3w3PxnMwN9PXKF39rgc=
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?bmV0ZGV2LWJvdCtzYXNoaWtv?=" <netdev-bot+sashiko@kernel.org>
Cc: "=?utf-8?B?bWts?=" <mkl@pengutronix.de>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?c29ja2V0Y2Fu?=" <socketcan@hartkopp.net>, "=?utf-8?B?ZGF2ZW0=?=" <davem@davemloft.net>, "=?utf-8?B?ZWR1bWF6ZXQ=?=" <edumazet@kernel.org>, "=?utf-8?B?a3ViYQ==?=" <kuba@kernel.org>, "=?utf-8?B?cGFiZW5p?=" <pabeni@redhat.com>, "=?utf-8?B?aG9ybXM=?=" <horms@kernel.org>, "=?utf-8?B?Y29yYmV0?=" <corbet@lwn.net>, "=?utf-8?B?c2toYW4=?=" <skhan@linuxfoundation.org>, "=?utf-8?B?cmR1bmxhcA==?=" <rdunlap@infradead.org>, "=?utf-8?B?d2c=?=" <wg@grandegger.com>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, 
	"=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtZG9j?=" <linux-doc@vger.kernel.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>
Subject: Re: [PATCH net v9 04/10] can: dev: check netif_running() before bus-off recovery
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Fri, 13 Nov 2026 13:08:57 +0800
X-Priority: 3
Message-ID: <tencent_7BC3801D441CBFA5A6369A1F19AD848B9107@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261111-rockchip-canfd-restart-close-v9-4-6643f3825ba3@qq.com>
	<179452272955.488853.2430789088711910750@kernel.org>
In-Reply-To: <179452272955.488853.2430789088711910750@kernel.org>
X-QQ-mid: xmsezb41-0t1794546537tvcfyebl0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_210907_198889_42627215 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	FROM_EXCESS_BASE64,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

> [Severity: High]
> Can a restart worker pass this check and still restart the controller
> while ndo_stop() is running?

Yes. With restart-ms enabled, a worker can pass the running check before
close clears __LINK_STATE_START. FlexCAN calls close_candev() after
hardware and offload teardown, so an admitted worker can flush echo skbs
during teardown or restart an already stopped chip.

This race predates the patch. The running checks narrow the window but
do not serialize an already admitted callback with close. This patch
does not introduce or widen the race and does not fix that shutdown
ordering in other drivers. A complete fix must wait for active recovery
before dismantling its resources. The Rockchip follow-up patches address
that driver's shutdown ordering.

[Severity: High]
> Can restart_work still be queued after close_candev() has already
> cancelled it?

Yes. HI3110 calls close_candev() before free_irq(). Its IRQ thread can
sample the running state before close and enqueue after cancellation.
A fast reopen can then execute stale recovery and flush current echo
entries; removal can leave delayed work referring to freed can_priv.
Cleaning up the driver's private workqueue does not cancel the CAN core's
delayed work.

This producer/cancel ordering also predates the patch and is unchanged
by it. The running checks reduce recovery attempts but cannot protect
freed memory. Quiescing producers before the final cancellation, or
preventing late enqueues, requires a separate lifetime fix outside this
patch.

Best regards,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
