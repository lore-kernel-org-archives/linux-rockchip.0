Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D858C606AC98
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 06:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iuOoWOdd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=WEAqvzN9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=n/bZktrwlY1w27al6eFKL/H9CcpVE2d2lTK0BzsBuik=; b=iuOoWOddCBPaLGNJNBXr+HiPIw
	811nRV8ehz+qMILmpimY2ei4HPlowcMWuqQT1qY6t+trmGhhr80FUmzHhF16FlGvPDECYes+nW6Ky
	04kVXTWLot5AEcs0wkCZZILdiQiZAmS4nbk9YbEI4zF0k2q1DqdcRjTHaLaUl0ND4VT4FzBDnK9I1
	I6/cUhjAQMrN0mn7R8SZXPiZhHxUjP7Wbvb4zvVVdTLhKOwDmJD4GOaIr8m6rVUGOf3BTzp0JIQVY
	J/HizcMeeQVyO9wHi0p/ikdCONOJiRMhmc2LaH4l1ld6EGThRGgA2Bs8mF4Yniys8zFUUbj6fbso9
	rGuRiktw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR1fa-00000005jsE-3iiL;
	Wed, 11 Nov 2026 06:18:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR1fU-00000005jls-494T;
	Wed, 11 Nov 2026 06:18:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 688B361E85;
	Wed, 11 Nov 2026 06:18:48 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794377928;
	b=h7ueBH+XYghige5DuadhGiB1glqCVPaEF2UnujYUOt10x4+jKh+NpOxkGW/H/PmNHkb+
	 +xCbeMp8LuBhTs5vWUtywFN5P99n82IcZRwoHKRwX4HXlOASD5ilfjKoa7nRvLW9bEHtx
	 TfFu66YUYkyR3deY+a15SDC6VUXQwJAzDQgrED6NBnio+tliLRSXUKHgJ+B3xeVJGSSK7
	 0I8uJGS9KYe/QchmBdZ2ZKvAPrP1BV9YqfIQ3XSRvoTDxdw0qkrPdaUPcug2BPzcpTAK5
	 FgeJCug4Rp1gFitthKEA5I1nznU9DYhFkaGWlZ1gLbVTCdECqQJ0f+2YjR0ijzUiqhg==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794377928;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=irh7FtabIZf9G5NtC74mI7+F4qF39JvEMv9fHyqNNSU=;
	b=ndiPg7eoTcOJuB1Uik/N3u215eB51Z8n0mzXpFetCI2mDLlhb6TL8LSGdg5OYmARGNkM
	 fcrTUSfEHODgWT6t+RMSZHURCsuMWexiBn+Vg4Mlj6KwNQrZqGJP0fmONBD1/SaKSY8KT
	 C6rhGTijy2+wITsD5+Gw7Tido8SvRG3xDTdUGjRONrWoFP3hZJoIGptSyLsPezYxve92j
	 /CqsNShE3giIRjmuW1aX9sZlZ21AyI5Aqq5oOCaPBS86NZ+qPvTmqyM/3wmcotL7p9uVQ
	 KaqM1R/dNdYFUKXAD976STzEeW10lzkeEYaaoRizBca770w6naDIsN3P3ZV/k5HazNw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 6FFCD1F00A08;
	Wed, 11 Nov 2026 06:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794377928;
	bh=irh7FtabIZf9G5NtC74mI7+F4qF39JvEMv9fHyqNNSU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=WEAqvzN94RlB8SiMI75i32D73GYujz1zPy7KZVpLkkN7csNeA7eTtCAqdd5xgdwFF
	 QuVRMBhUJhw/yIQjYGSsTy+6Wz9+M1KHt0atvOtTL/vL/8+5IM1bFFoWSLAhhfRqEy
	 N9O/VcqP3ppsVtJi7VmxoTXtlTk82UF4hRysY7sBINxb88F+XT8gFusTqbCxyMFNU0
	 i17Miv8OpMO30aL85e5lzlgHb8DIrDOoXAMIj6jp8MQfTxMMgCGsxTwMjCg9gmr7ie
	 eJxB3Dv/KE0jX7L+DXbf4AU4jPhqhUNMv57+9xihqF8e08vtmoWN0n2/Y2dwz+VFLt
	 Rw2NDzxk6LLdw==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id EFBC648E06;
	Wed, 11 Nov 2026 06:18:46 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Wed, 11 Nov 2026 14:17:57 +0800
Subject: [PATCH net v9 03/10] can: rockchip_canfd: retry the outstanding TX
 buffer
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261111-rockchip-canfd-restart-close-v9-3-6643f3825ba3@qq.com>
References: <20261111-rockchip-canfd-restart-close-v9-0-6643f3825ba3@qq.com>
In-Reply-To: <20261111-rockchip-canfd-restart-close-v9-0-6643f3825ba3@qq.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, kernel@pengutronix.de, 
 Vincent Mailhol <mailhol@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Oliver Hartkopp <socketcan@hartkopp.net>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Simon Horman <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <skhan@linuxfoundation.org>, 
 Randy Dunlap <rdunlap@infradead.org>, 
 Wolfgang Grandegger <wg@grandegger.com>
Cc: linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-doc@vger.kernel.org, Cunhao Lu <1579567540@qq.com>, 
 stable@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794377925; l=1735;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=mAdiDJWuUPvQyM82hTpk52wGLUSpbq2jpnpY6emM93U=;
 b=DzwygOqoERFHhFngW+ttdCvPayAo5SCyAJg6NN02KVaARwkXTLiaR2cVUEUmPSWO6BeSrJlw7
 Dl2C05kKccfAfx0OCDOESTknt/QULmXvs4rJArR/0E+j/VJG7WUdSoZ
X-Developer-Key: i=1579567540@qq.com; a=ed25519;
 pk=sUTWrzlIwT4C7ctjNfVZAzzg0G7QUn2XxRGpYsw4RtM=
X-Endpoint-Received: by B4 Relay for 1579567540@qq.com/20261015 with
 auth_id=1177
X-Original-From: Cunhao Lu <1579567540@qq.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: 1579567540@qq.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Cunhao Lu <1579567540@qq.com>

rkcanfd_xmit_retry() uses tx_head to select the buffer for the erratum 6
retransmission. With a TX FIFO depth of one, the masked head and tail
indices both select buffer 0. With two buffers and one outstanding frame,
tx_head selects the next free buffer instead of the pending one.

Use tx_tail to retry the outstanding buffer. Otherwise, the pending echo
entry can remain incomplete and leave the TX queue stopped.

Backports must include the preceding TX serialization fix or equivalent
synchronization. It prevents completion and retry from observing a newly
published head before its initial TX command and serializes the
MODE/CMD/MODE sequences used by submission and retry.

Fixes: a5605d61c7dd ("can: rockchip_canfd: enable full TX-FIFO depth of 2")
Cc: stable@vger.kernel.org
Signed-off-by: Cunhao Lu <1579567540@qq.com>

---
Changes in v8:
- Apply the retry-slot correction after TX serialization.
---
 drivers/net/can/rockchip/rockchip_canfd-tx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-tx.c b/drivers/net/can/rockchip/rockchip_canfd-tx.c
index caa71cf8e39a..8998b7855d15 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-tx.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-tx.c
@@ -63,8 +63,8 @@ static void rkcanfd_start_xmit_write_cmd(const struct rkcanfd_priv *priv,
 
 void rkcanfd_xmit_retry(struct rkcanfd_priv *priv)
 {
-	const unsigned int tx_head = rkcanfd_get_tx_head(priv);
-	const u32 reg_cmd = RKCANFD_REG_CMD_TX_REQ(tx_head);
+	const unsigned int tx_tail = rkcanfd_get_tx_tail(priv);
+	const u32 reg_cmd = RKCANFD_REG_CMD_TX_REQ(tx_tail);
 
 	lockdep_assert_held(&priv->tx_lock);
 

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
