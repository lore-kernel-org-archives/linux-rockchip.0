Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC958606A32C
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2026 07:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=u1BVDmXn;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=fbbvA+FR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PQZlsScnQdIu8ITgiMznjf3//e5+jXg4n8Fte0BectA=; b=u1BVDmXnjtVaCcv6Put/6YfzJk
	Bj8W7FOjaD9Gmcybu/79diQ35+5raSUXW0oEr/rWqwT83bHEdKhUCjwxlt2i9ME6kzLRbgrVD/UEw
	KZg4+GfXx7R6Oa5Ch/2tGkHD1fTarLlG0fEpVjZU5WQVk7G/S3Q8ouB03QYrm7DNfUeeZ+gdXod+h
	3ZrCOkO7dHh+4mhMgNDc+hnZ9vs8nRX0Y5wnM8qbkd7p+8sZNbLYjIFScFGopv/dXkLM6nvzd4I+D
	76wtJXr9DsRBEZyy1liT+4UmFhJxFRyK61vKcspO22bqGY8Q6BLNzHKVJdHKRnnh2YEvJequ3Cir8
	JK9NWE/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUfqw-0000000Gtbp-2CnP;
	Sat, 21 Nov 2026 07:49:42 +0000
Received: from out203-205-221-173.mail.qq.com ([203.205.221.173])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUfqt-0000000Gtb5-1VYk;
	Sat, 21 Nov 2026 07:49:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1795247375; bh=iLcinoRHQQpGqpB7RbYpvqsBws/0VYTm7Rl5LRYYZVQ=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=fbbvA+FRNXczTapsO3RJdGTVycvvhiEsNQO3CDNr0I9GyRwaFRBimhWHFTFSb4Qjl
	 c6wHnNaEY3mEI1njqjdpC9pzh4kXve3B9W+9uc0GTIvesh942rT45U84CykkMsXEiC
	 jwInIqL8yMT76YcwAB+6H2TCn5c33Hemj9FfTgQE=
X-QQ-XMRINFO: NyFYKkN4Ny6FuXrnB5Ye7Aabb3ujjtK+gg==
X-QQ-XMAILINFO: NMF8M2bwIxE1fM67/ApOI8rE5vkr2L5vHqFC/04+JAPMM4YLpcaV8NR3cl1J1S
	 HfGJ+fYkalur0uwkQ2/TRQTrLI6S2Z/YK8Vo5B9LQHC1Qjvfr5fwQ7JWuh2ksqPKPczWGQAY+einR
	 Qcjnksa48T1U1h9meYFjeB0cyCdEP4FsfB15Qa/gldIGhYLnnMXqQOIWiBT49wvVRiFAn3ts9WYT7
	 q6y7SWmTisRBcRkbGsXc3Z1yz5i1cx5B8SqFYeFGDiTGboZ5IC3PvJw2zIj6IZ80XUdHnK3vkh5cs
	 9gel50hfITLldq9sqzhPog574DrLaC45ry+B7GU+50lVSWsKM2eawS3uW3OY09KP0u4c7Q9b+Yhbr
	 yJrOULAbiIxy3Tnj/pDGfUAB1k6Q/TfK6WDFkT4/u2Veicab/hT4amFf0/+BWrdpKV2SzeqNfJJZB
	 mDFbGN/GLRhJ38fWbeV8FqCaLTdezHVVr/8JXrqgEef8IisOiMmgmtNK/UhkXK5VmQiOFAs7Hdg62
	 QW2alhgpCgWnjA8HR3GmgJ7oWNM6kUn3cRSOHbtKVKbaWx+fVTSe0z2IdDG5ldgSeL5SIekSQVkoo
	 NvWQKRsHc+fDqOCmIUkYlzNYxAJQJhC/wYrvRoYI+WIH1KGEUqMvm0OYZ5GlQylComEpM0oe7nVY0
	 emJ/36OhQeKv7GesVWDdss+7m7/h7qx9HjSBz2NaJxnasWvL1bCRBvmCVXElGOD1iueNVSqN6FCpe
	 SPbHwTHj9mwsr6om+/K3cPCum93zLiX2Zpl+m9v0g1MBBD42aWk7u5RCVg483prFuvrD+WC78c7rp
	 vO4WQjoaL2MXLxdH6UXs32EpgC35wHCyY2B2Pe9EJL8eIuIuvNkheHtlMMr1619GqVTeKbp0LPrm1
	 XEcYMK+SQXuFZI1/Us7NMfUsG1EGapRMUpuHRCrWSXHUEjCyH92yKtJpGK9MA0md9xaHpXKqfUg7u
	 3OmWxI1dhRvAN+CRENAj4i4rG0uEDgr9xCd/APX6jNpwV5lF1eCjl2kn/wUQnohGfKUV4UaZwSAz6
	 bxuMp/fQQXA4kZLkDztpQvgrSa68tjuzupvgT+yqmBaBgK5dQdy8NZx0osqk76DEwKsM6harlYSDw
	 dOvxZQXHPYO+Ow==
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?bmV0ZGV2LWJvdCtzYXNoaWtv?=" <netdev-bot+sashiko@kernel.org>
Cc: "=?utf-8?B?bWts?=" <mkl@pengutronix.de>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?c29ja2V0Y2Fu?=" <socketcan@hartkopp.net>, "=?utf-8?B?ZGF2ZW0=?=" <davem@davemloft.net>, "=?utf-8?B?ZWR1bWF6ZXQ=?=" <edumazet@kernel.org>, "=?utf-8?B?a3ViYQ==?=" <kuba@kernel.org>, "=?utf-8?B?cGFiZW5p?=" <pabeni@redhat.com>, "=?utf-8?B?aG9ybXM=?=" <horms@kernel.org>, "=?utf-8?B?Y29yYmV0?=" <corbet@lwn.net>, "=?utf-8?B?c2toYW4=?=" <skhan@linuxfoundation.org>, "=?utf-8?B?cmR1bmxhcA==?=" <rdunlap@infradead.org>, "=?utf-8?B?d2c=?=" <wg@grandegger.com>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, 
	"=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtZG9j?=" <linux-doc@vger.kernel.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>
Subject: Re: [PATCH net v10 08/10] can: rockchip_canfd: retry the outstanding TX buffer
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Sat, 21 Nov 2026 15:49:32 +0800
X-Priority: 3
Message-ID: <tencent_C2353675D108CA2C26008C5405302266F80A@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261119-rockchip-canfd-restart-close-v10-8-df23913aa33a@qq.com>
	<179521934391.3131.16575184154447420964@kernel.org>
In-Reply-To: <179521934391.3131.16575184154447420964@kernel.org>
X-QQ-mid: xmsezb41-0t1795247372t59iwxlbh
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_234940_703708_F55D0188 
X-CRM114-Status: GOOD (  23.33  )
X-Spam-Score: -1.8 (-)
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

> [Severity: Low]
> Is there a limit on how many times this re-arms?
> 
> rkcanfd_chip_start() enables RKCANFD_REG_MODE_AUTO_RETX_MODE. If the
> retried frame never gets an ACK (for example the bus is unplugged or the
> only other node goes silent), the controller keeps retransmitting and
> TX_REQ stays set.
> 
> Under the ISO 11898-1 fault confinement exception, an error-passive
> transmitter that sees only ACK errors does not increase TEC. Bus-off is
> never reached, so rkcanfd_tx_disable()->rkcanfd_tx_retry_stop() never
> runs.
> 
> Wouldn't this worker then take tx_lock and read RKCANFD_REG_CMD once per
> jiffy until the interface is closed or restarted? An un-ACKed frame also
> stalled TX before this patch, but the per-jiffy polling with no limit is
> new.
> 
> In the spurious match case the stuck request is the untracked duplicate.
> The queue then stays stopped even though tx_pending is 0.

No. A missing ACK alone does not start the worker. The driver must first
issue a software retry for erratum 6. Either TX0_REQ or TX1_REQ must
then stay set, and the interface must remain up without the controller
going bus-off. Prolonged polling requires all of those conditions.

I tested this on RK3588. The first time the worker took the busy path,
TX0_REQ was still set, so it scheduled another poll. By the next poll,
both TX0_REQ and TX1_REQ were clear. I suspect the
prolonged polling you describe may never occur in practice, although
this test alone cannot establish that.

> [Severity: Medium]
> 
> Is it safe to release the guard as soon as both TX_REQ bits read clear?
> 
> rkcanfd_xmit_retry() starts a second hardware transmission of the frame at
> tx_tail, but it creates no echo_skb slot or pending count for it. Clear
> TX_REQ bits only mean the hardware finished sending. The RXSTX
> self-reception of the retried copy may still be in the RX FIFO.
> 
> Take the ordering the commit message describes, where the original request
> has already completed when the matching standard frame is processed:
> 
> 1. Standard frame S matches pending EFF frame B at tx_tail.
>    rkcanfd_rxstx_filter() calls rkcanfd_xmit_retry(), and B is sent again.
> 
> 2. B's original echo, still in the RX FIFO, matches echo_skb[tx_tail].
>    tx_tail advances and tx_pending becomes 0.
> 
> 3. The retry finishes. This worker sees TX_REQ clear,
>    rkcanfd_get_effective_tx_free() returns 2, and the queue is woken.
> 
> [...]
> 
> Should the echo of the retry be accounted for? If not, could the commit
> message also mention the local phantom RX and the misattributed
> completion?

The driver already retries the frame without allocating a second echo
slot. Once the original echo has been consumed, the retry echo can be
delivered as ordinary RX or mistaken for the completion of an identical
successor. This predates the patch. The guard keeps new submissions from
overwriting the TX registers while the retry is active. It does not
identify the retry echo, and I do not currently plan to fix this issue
in this patch.

Best regards,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
