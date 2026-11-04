Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83AA7606A329
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 08:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=taDpBhXz;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=fOEj9ig5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zdczEpaM4DWtBYJqCuksOo5YjLjnzIixPK/smhhVSFU=; b=taDpBhXzveBKxjVdrWuYLlwBbm
	q46Iq0chk5sXzA2oTiXROo0YeCOgL8FwAj+Lr7ziLMRI4m2o4r+fVdSncWcjymjGLq02gQ0LXkFmv
	jH0vpNAC0WDPcKp3+5pPiz3SyYm0J2pqIK2V+kAu4noqj7c43AUHiNJkB7xvTOfW7JwbvpP+VujBg
	KjA0F+kFn5ikcx7pOIOPrGiuFMO8vPJgck/P8BpDpz++zIqU8Rg9IhWq+/bhzS5xuWuiNZl6hG4Fr
	HF388tXKCjhfIsBJwzE4Noi8bIiJcPXtLEHUVqhTqB+xu9/EVzzfUIpW9xNYFvbWg5jeCdyGKh8DX
	iVGMB+WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOW0p-00000004dpc-1MZK;
	Wed, 04 Nov 2026 08:06:27 +0000
Received: from out203-205-221-202.mail.qq.com ([203.205.221.202])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOW0m-00000004doD-0BB4;
	Wed, 04 Nov 2026 08:06:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1793779579; bh=WgxEiGMcAXeHim/OCpv0zMeF0d48h/zJZ1XH8xX5r4w=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=fOEj9ig5JXN09CLHqNfTNgbw330Bh/WIacL9+P9J5rKELZqrG/iX3nWAuCG41tSLn
	 3v2RfVVwIiWX9HMUBlu8oX6dbosXWswYQ2tpi76OJJHbKygZRed3lrS1MI5Ic3xMoR
	 7P5ESqp3MzxmK8aiNu8ZZuBBgwpvf5duWSzGefiE=
X-QQ-XMRINFO: NyFYKkN4Ny6FuXrnB5Ye7Aabb3ujjtK+gg==
X-QQ-XMAILINFO: Nze9Gsl2QAyr5RxeywbNGg6T5cysE3+3MmOq0TdLhgaEbwUJeN9vA51HWHzzUm
	 8+OJbKEXn/feXKvOo/2TOKWuMMaZCIRy0UWsahrowRynnMa1jlpI0vfs9ZOmuX96Xaup7yVWAnGAv
	 r6wM66C+1UYEho16kdBhDsLpHI+JddESc7SYXXmZFx+74oaXiw1W84KD1+73Doq2momM1ZyOLpLVm
	 fV1uRXtsx6533qpYQG0c/4T9nSYawztosAet8uI+nIP0baYUxMTrZM6eK6ENU6GbdUALaUjqa0nRi
	 JnOK5vl0RU0PdywsI/aetYv7E9OSBwmGX/iD5HmmDmiizWHdl/1TqbAd/oR/algyGG2OKdfBXDKKs
	 HYqgTOgGjUruMQ4c8dzbqe2eny2nQmPRQJzS/PZl+J8H0qcVkrNQTuWxK9xo6H+CFbLfKBVfUZYbr
	 YFzatZMYpuAeERkWN/EVm/6nx6H3BGOnp6RfaVyYhAG3R6IXVMAT0xrRZqUkHNvRb4f1imVoF9rs1
	 AgJ4Nim5PyXcsyshlnwttdra7XpG5Ls3uNC36X5MeDQ1quwW6q3FR7XldERP8bD0LnpebQ6n0k6ut
	 ckQyxhQSLVEBGkgDVS03MOpisqtOZEZUdkSTHf8r8nTSBNlw3vLQbj7qrPJUQH3T8fvb7f6ApkmI3
	 oKSY3zzZhEtVBvUu+4Z8tkOqR6AxKoiFdFU5fJKc6g3r9j8J9HxW4uw65lrmt1oX2qWz9vD1R4MQi
	 oGDAWCUPBoJDgw0g9uG7UTzINOwf29Qfz4hq2mV93CqttBx9jgEFeEU6VLR2o4ZoXtFvdhutAE9aM
	 6x7HpA6IltYkk0VpbHrv7WyxWvTIyjGN1CVBT1rfTLKTEZQdeSZWj+r2UrpU9TxRd7GvadgTmsEpb
	 gZhqcpqIdrU4vRN1thMDTweEEW5ZOrTmuoFywATQS6FxrleaLOG/Wpq6Ff2xANFsj9ceWelW2BxeQ
	 rtkA9lMeex1XHsrHi3eRcpdnX2oz4zD+rIDRa/nMGR4jboJp0+BFH+GoAmUjwEwcQlLuusR5xtYtb
	 JRCvoxORlO2iH+BN6Q7T2DXhPGw==
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?bmV0ZGV2LWJvdCtzYXNoaWtv?=" <netdev-bot+sashiko@kernel.org>
Cc: "=?utf-8?B?bWts?=" <mkl@pengutronix.de>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?ZGF2ZW0=?=" <davem@davemloft.net>, "=?utf-8?B?d2c=?=" <wg@grandegger.com>, "=?utf-8?B?c29ja2V0Y2Fu?=" <socketcan@hartkopp.net>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?ZWR1bWF6ZXQ=?=" <edumazet@kernel.org>, "=?utf-8?B?a3ViYQ==?=" <kuba@kernel.org>, "=?utf-8?B?cGFiZW5p?=" <pabeni@redhat.com>, "=?utf-8?B?aG9ybXM=?=" <horms@kernel.org>, "=?utf-8?B?Y29yYmV0?=" <corbet@lwn.net>, "=?utf-8?B?c2toYW4=?=" <skhan@linuxfoundation.org>, "=?utf-8?B?cmR1bmxhcA==?=" <rdunlap@infradead.org>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, 
	"=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bmV0ZGV2?=" <netdev@vger.kernel.org>, "=?utf-8?B?bGludXgtZG9j?=" <linux-doc@vger.kernel.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>
Subject: Re: [PATCH net v6 3/6] can: rockchip_canfd: cancel bus-off restart before closing the device
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Wed, 4 Nov 2026 16:06:17 +0800
X-Priority: 3
Message-ID: <tencent_2E7A44783FBE26011A7319CF849111D78007@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261017-rockchip-canfd-restart-close-v6-3-ed605feb4b6e@qq.com>
	<179237864073.3135.8117104622491949177@kernel.org>
In-Reply-To: <179237864073.3135.8117104622491949177@kernel.org>
X-QQ-mid: xmsezb41-0t1793779577t7nbgj69z
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_000624_403986_C1472B51 
X-CRM114-Status: GOOD (  12.85  )
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

> Is rkcanfd_start_xmit() serialized against this reinitialization at all?
> Would this leave INT_MASK unmasked and the TX queue awake on a
> controller that is in reset with the CAN state at CAN_STATE_BUS_OFF?

Both windows predate this patch. Its added waits can extend the TX race
after the core restores carrier. Patch 5 of v6 closes both windows.
I will fix this issue in v7 by introducing restart synchronization and
TX protection together.

In the complete v6 series, both restart and open use
rkcanfd_chip_start_finish(). It holds tx_lock while clearing the IRQ gate,
unmasking interrupts and waking the queue. A new bus-off must acquire the
same lock in rkcanfd_tx_disable() before publishing BUS_OFF and stopping
the controller, so it takes precedence over startup. The flag is not the
only synchronization here; an additional lock around the whole handler
is not needed for the reported interleaving.

> Can the handler see a new cycle_last together with an old nsec?

Yes, before patch 6 of v6. That pre-existing race is fixed by taking
timestamp_lock for conversion as well as timecounter updates. I will
retain that fix in v7. The worker rearming issue is already fixed by the
locked active check in patch 4 of v6 and will also remain fixed.

Best regards,
Cunhao Lu

pw-bot: cr
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
