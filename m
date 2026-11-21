Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFEBD606A320
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2026 08:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EeWiLppg;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=vacehtI1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jBeAa6Fem3kYhR+NbeB3DHAalgToW+R9FgNgUHTMXe0=; b=EeWiLppgVIYV+E451zJ7XsZCoH
	UJzRX5Im5c1B1IBO1Y8UcE+qP7SYI7vMTzTjb5CiS0log0gImynsuv1C7S2T3sD/JQLPREHuBzJ4S
	F7xx79JPxm6wyihWZj4iYd26pls/AhJuDMU0UEdRqvZWWsleo27AAwyx3N/SdESlj7GZis6l0Irj3
	/72NHLTQy7oG5XwZ3FBKnwryrzX4g4/119jX4P2eXvbicgegV096k7uzC88bLU1+9q4FRZxfDA1A8
	AkDzlIWfrLO7w22n2vMrRr1A5PCgZ8dZYCyddoapbs++NwTg02Ufnp1X65RzmLWEiQEttqvLCK/PC
	1ds7w6TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUg86-0000000GutS-30gg;
	Sat, 21 Nov 2026 08:07:26 +0000
Received: from out203-205-221-240.mail.qq.com ([203.205.221.240])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUg83-0000000Gure-093s;
	Sat, 21 Nov 2026 08:07:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1795248438; bh=ydGqG2X9vPHlg2dNKkqZZA+txMkiHMzrAcf5VIowiK8=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=vacehtI1nuzuFJtDKjVsaj3sffn9TdWY1yTNu2pktLYHnvVMrToqkae9TNUwL3FBw
	 UuFHrGrIV1E0DWSOJ3IAIS2BBQ8zK4L1rs94oCmxtwad3Pz8g2nJJ67wMLlggiaWpJ
	 m3ZETnOkfqgNBj2a0X+Ajdq7z+Dv42XVh4CX50XU=
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
X-QQ-XMAILINFO: Ng02GeT6VExI3uUWFD3xnavVNU+V6Hm34+BPzOlcKVIXJ8PwdC12xW5pVAVxDm
	 P5ASM+U//uKLiyt2kZs4uKnzfS2C5x6/kj/TbAiXKQo5WfUJCyAxzOxsR2U/4q63xnyaDtXH6mvX7
	 mz/xQuO3v3L0oN5gtCTshBBG+EHaSN6Eb19boRq2w9lMxXcHVXqP6N96WqLJhQnvJwKArYz+zPhNm
	 yYzbeFY7usepMHk5mhUxlhvYa6xgQg+siZKB3C1P545doU6P64+Z840PpDjDrmitzxF7DTpSSVMMF
	 cb5ItOgFkrvOxP6oIcIzK/FOCxiaCutyYdaIL2ldhawQuWanl0wc5a5pfGvKzQjdxTye89UhqXxtJ
	 U+SpvAhsmA01LcQIr4qKDUWd24QiQa0dAhH9GbfjzKKkiQpVtnVD/rggGP/22JN8adh4nbjiPaPgy
	 VT0dvuV6B6+d5WoM+s9WzM5AZUlhD17xOYpgmdr170Qs76N85kbf7WawIdq/fzODMcc130ioc0un0
	 Ku/w7BVA6voTfXTcxZf3vlOmtGL6TodhGvze/fJCgq300fHQcBcf2EzlqYz5ZvWjkvZ2/XINV0d+n
	 G1T5KekFl2kSt44zoLJgKOlM5oJa1myTDkqLYcyVaZHagMgpXq2I5beKfrrlIiVMCftwgxlh9aEHC
	 rmbh0pTaF6ZHLr1L13QtUZd8hRRreqrjvCFpdr0gdAPx8+PCAmeoRwRBPSdR3H0ntdPS+CNYuDiIe
	 DZbcF6FdicEYDCvgqmi6v/O2FGzivn8QazlBEJgM9DZPyDq+Ud2/WI8bJoE5ez2tXljZBCIPezinW
	 6KyM/DTKlpxtUav8uLdgeZ5kc+/YgAi3pNSqRhhhHnJviImavB0a/J4T+nhWwaZMGRMVdvfy47c9N
	 r24FSuLSFUdr+JUWuqlJW6mHAsxyl9MqxXeYVSeWRZ3/I01TNuid8+FspMqmzTYmfoDl6J+WhSFoo
	 +afmmkF4kiWHcNfwEk4CwoUMupd/hzQevXPIkdzu+cuQdZz+I+VzvvQPGO3wLvU0asT0lB+0wW01d
	 EN31KfoYyOkNqRC9Uy9GrZgU6bkXAZ5nZ9B6iCSU4EZENm0z7laLm20Cmiz29AMlQ7EdwUmRws7GO
	 vJvDssJ3w5A+381UmZnmv9K1
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?bmV0ZGV2LWJvdCtzYXNoaWtv?=" <netdev-bot+sashiko@kernel.org>
Cc: "=?utf-8?B?bWts?=" <mkl@pengutronix.de>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?c29ja2V0Y2Fu?=" <socketcan@hartkopp.net>, "=?utf-8?B?ZGF2ZW0=?=" <davem@davemloft.net>, "=?utf-8?B?ZWR1bWF6ZXQ=?=" <edumazet@kernel.org>, "=?utf-8?B?a3ViYQ==?=" <kuba@kernel.org>, "=?utf-8?B?cGFiZW5p?=" <pabeni@redhat.com>, "=?utf-8?B?aG9ybXM=?=" <horms@kernel.org>, "=?utf-8?B?Y29yYmV0?=" <corbet@lwn.net>, "=?utf-8?B?c2toYW4=?=" <skhan@linuxfoundation.org>, "=?utf-8?B?cmR1bmxhcA==?=" <rdunlap@infradead.org>, "=?utf-8?B?d2c=?=" <wg@grandegger.com>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, 
	"=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtZG9j?=" <linux-doc@vger.kernel.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>
Subject: Re: [PATCH net v10 10/10] can: rockchip_canfd: serialize timecounter timestamp conversion
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Sat, 21 Nov 2026 16:07:15 +0800
X-Priority: 3
Message-ID: <tencent_7CC03EE28E1F4753374DA10C4FC2E1086C06@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261119-rockchip-canfd-restart-close-v10-10-df23913aa33a@qq.com>
	<179521934595.3131.13988876249908602124@kernel.org>
In-Reply-To: <179521934595.3131.13988876249908602124@kernel.org>
X-QQ-mid: xmsezb41-0t1795248435tv16k8jeu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_000723_493861_F6362F91 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
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
> Should the stable tag mention that this depends on the earlier patch in
> the series, "can: rockchip_canfd: prevent timestamp work from rearming
> after bus-off"?

The dependency is real. A backport needs 09/10 before 10/10: 09/10
introduces timestamp_lock and takes it around timecounter_read() and
timecounter_init(). Adding just the lock field to make 10/10 build
would still leave timecounter_cyc2time() racing with the worker.

Patch 09/10 is already marked for stable. The stable rules do not
require listing a prerequisite again when it is in the same series
and is itself marked for stable.

Best regards,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
