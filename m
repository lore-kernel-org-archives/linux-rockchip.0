Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18807606A325
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2026 08:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nG+tdlqD;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=Gt9Axi+r
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=A1cGmxWu8fOYM6vXNxlk86NdIMo1VRn+zBulGgThFPI=; b=nG+tdlqD9ngsKsTP4d0H3cZkxE
	L52oG6ajKF5s4WKLqfEM7q0CRMgy5XQ3It/vSWwSkMceM8zp6ACtqjtf9eNPsO8LjZQqYMGiEBGzH
	Z5BBbBl/HI+Obk/+jFSBU1vHbpFSYK/V9chFUhoxAs6pRryFkSQxBD6kMYnEB3YZJeo6dg7asxH7S
	Lpi+18XAWBe22Io6qgYk1a3JdTKs4mtaO0eOJ8fUqMrQSJvcMF1YH9k6GHkG1iEcBQgjvyWlwnxB+
	O0QpWrwqe45uYyNab28JFBelU4vqONuWWvf+5b0jsIdUz99MNDxxHlk58uNTQdqwV8DfAbg5W4jUa
	T+T1b8Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUg6c-0000000GuZW-1YOb;
	Sat, 21 Nov 2026 08:05:54 +0000
Received: from out162-62-58-211.mail.qq.com ([162.62.58.211])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUg6Z-0000000GuZ0-2al6;
	Sat, 21 Nov 2026 08:05:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1795248347; bh=0t9m1SZTG2FpFolnCv9G3KM3EADliIxvTwQEig71Ptg=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=Gt9Axi+rANPdO3YUam1aS+r2dCxhI/mUzHzFSwSjGE+fXzS9wT6HoFu7+GkU5x1sE
	 GsvRlEMotovvw1IS0wgvwefo7U1pBSVtb/p7CylsU4UzxsVHGjh3OOUF0kuawkxThq
	 v64wyUojE6Wd4v1Rkfs1+bXe/6Y+Qcm0VSg7m8Ok=
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
X-QQ-XMAILINFO: Mgl8sI7MzKnCxRjADp1CBaJIf8uGuKA+gHCh/HcSNno2hXUhckYCVshVUTa/BF
	 tddc+4QSoxjK9eO+HwbONqS7Nvg21Ig3Krw7LZe3Pzta3KXRKgIFRM4pTAnqXzHszLielcDN/1vZK
	 2vYxBahIYNYQR9X22cd17O+aQR8+RxD7D7CxHAx4tp6tI5dtytvKcSbcsVRTcgo/KaY1hGVopsPYK
	 zBWUXu8/7ZW0H/iHJU70D/dadOenRak+/lw3CEZBD2W7Ui9hJe9XHE2/Xd2PbZ3kz6dd4WMXOq2N8
	 pDk2xWezUAnnuj/gsQAIJz8xF9Xm8J2xzeeJYbGE59Eek9BE2PexK04qUpd+TOWFMXSY2qYOKtL1I
	 grLQ31CM7IxPQ8mBJdjmQiKNYmYmcTtBZSa0nwGOb+AwhwnbULkz5FmW/odozfE8yC+e9yUSnbc9y
	 OBcAVMjFXM4sqUMf1KmOwbb5fab3/8igWo41hJ0WSCeoe8fwHq82VmPRiPPeuGjFeWCoXFCnOpXER
	 efYpiElnwrHqKA+uPS3zpq8pvDq7s2hlT4Gau1XhZJuvml+jo2tp1Gjeo/XNBLUjoat4PXta8e5Po
	 W9HsuYpAZgpizxEFAKtOFqWOIkZxghqehmcIB2djceYDQlJ6L2vikP7t7Lg8yKLgr2f+jImtJ3ND1
	 pYodGqrhaTw2RNDN4A7oZ4ePnnfzNcW/RV4iW5w5l2TKznCh2j51AqDpong31hJTfrRzsSUcqOqCR
	 hyBa3wiyp5oZG+laqPfTcD5DaH+CfPnC/tzfLLCjCIRjnajuvWGBL2sbnUU6MimJ3OKh5PX1BD54L
	 1qpdfndQXS44QlOTneh9ISr8/We2hmbAQLBOK4ZByBSnaef+k3Lb9x2x9s4a8RBT2I4kcsvTWHpQ3
	 uwvJk0/8CiFWbBjahIg8kjsKRA3tq+dsTmJmrdj9AgP8VW416U2GglDdhvZ4elVi5HAqDzIRlmWS3
	 wa9kaLkls8Fk3PXdd8Z+FQiVy4hwkoszUVb9tNvjtd6dRGczcBAa6G7sIFhiIOzOTgqclB/PLEcHB
	 EZ7XjuBJQCKkF2XLB4//T7mnQ5MDMSdBxObCAAsURT4revnThPf3kn+/n4Q==
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?bmV0ZGV2LWJvdCtzYXNoaWtv?=" <netdev-bot+sashiko@kernel.org>
Cc: "=?utf-8?B?bWts?=" <mkl@pengutronix.de>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?c29ja2V0Y2Fu?=" <socketcan@hartkopp.net>, "=?utf-8?B?ZGF2ZW0=?=" <davem@davemloft.net>, "=?utf-8?B?ZWR1bWF6ZXQ=?=" <edumazet@kernel.org>, "=?utf-8?B?a3ViYQ==?=" <kuba@kernel.org>, "=?utf-8?B?cGFiZW5p?=" <pabeni@redhat.com>, "=?utf-8?B?aG9ybXM=?=" <horms@kernel.org>, "=?utf-8?B?Y29yYmV0?=" <corbet@lwn.net>, "=?utf-8?B?c2toYW4=?=" <skhan@linuxfoundation.org>, "=?utf-8?B?cmR1bmxhcA==?=" <rdunlap@infradead.org>, "=?utf-8?B?d2c=?=" <wg@grandegger.com>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, 
	"=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtZG9j?=" <linux-doc@vger.kernel.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>
Subject: Re: [PATCH net v10 07/10] can: rockchip_canfd: serialize TX with bus-off and restart
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Sat, 21 Nov 2026 16:05:44 +0800
X-Priority: 3
Message-ID: <tencent_890958230A01CC88727EE94DD33400322D08@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261119-rockchip-canfd-restart-close-v10-7-df23913aa33a@qq.com>
	<179521934168.3131.3588718854244956629@kernel.org>
In-Reply-To: <179521934168.3131.3588718854244956629@kernel.org>
X-QQ-mid: xmsezb41-0t1795248344t0cz5qgcx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_000552_227615_96416C15 
X-CRM114-Status: GOOD (  16.40  )
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
> This isn't a bug introduced by this patch, but can priv->tc be updated
> here while the IRQ handler is reading it?
>
> [...]
>
> timecounter_read() writes cycle_last, frac and nsec as separate stores.
> Suppose the worker runs on one CPU while the CAN IRQ converts a timestamp
> on another. Can the conversion then combine a new cycle_last with an old
> nsec and produce a wrong hardware timestamp?

Yes, at 07/10 it can. This patch drains timestamp work and IRQ handlers
before restart reinitializes the timecounter. It does not serialize the
worker with timestamp conversion during normal operation. Patch 09/10
puts timecounter_read() and timecounter_init() under timestamp_lock;
10/10 takes the same lock around timecounter_cyc2time() in the IRQ path.

> Separately, the bus-off path in rkcanfd_chip_stop() only does a non-sync
> cancel:
> 
> rkcanfd_timestamp_stop(priv);
> __rkcanfd_chip_stop(priv, state);
>
> Here rkcanfd_timestamp_stop() is cancel_delayed_work(). If the worker is
> already running, it can re-arm itself and keep reading the counter while
> the controller is in reset.

That race also predates 07/10. It is fixed in 09/10: the bus-off path
clears timestamp_active under the same lock the worker holds while
reading the counter. An in-flight read therefore finishes before reset,
and disable_delayed_work() prevents the worker from rearming itself.


> Both appear to be fixed later in this series:
> 
>   "can: rockchip_canfd: serialize timecounter timestamp conversion" holds
>   timestamp_lock around timecounter_cyc2time(), timecounter_read() and
>   timecounter_init().
> 
>   "can: rockchip_canfd: prevent timestamp work from rearming after
>   bus-off" uses disable_delayed_work() and a timestamp_active flag.

Best regards,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
