Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1B3606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 05:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iBxlp7b5;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=cw2pXXDf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GOF3MU0jlu/Xg3KfCzCdP0ZJqwFhHSRs2gbYdGvMHE0=; b=iBxlp7b565q27RREiD7rKrTYOQ
	cDNpOOqlAkAsshPwAO9pP3zYTcd91J+58aUS8cN5sPIESoPCPObKgITmBlfeVFy/Ww2cizFcfJDgk
	RCN52ODC3N+PxsxaetIY05h2VppfaFrRUBc0kwH0mTrkmaaXYryCkXvsE+t1I7bRNFgyqEQVpzgFx
	NWve1OrEF4+NVM+hxxneivjV1XBeNVk1nVxPAxSP+zQjJIgRu45hYWKJmzzrh+FedHEnnnI7I17Ac
	XJSKgp0UrSDSo9Vz0CZ37kxhCI5u4MN8XoqyRXaEnZf1W4WbvupM1frVn3lcyQx7f3It9Z4pXisxS
	yE3o9y3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjdQ-0000000Bfo3-0tRu;
	Fri, 13 Nov 2026 05:15:36 +0000
Received: from out203-205-221-192.mail.qq.com ([203.205.221.192])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjdL-0000000BfnG-1fte;
	Fri, 13 Nov 2026 05:15:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1794546927; bh=S3xHepTTAVm9e0c+I4Yy1yIlpEnalfmaWL87RSx29sU=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=cw2pXXDfPczqzqVVe33/PTlkp7nwEh2+sdrjXfoN7g0xXGYK5emLGT6XiwYwDLCFM
	 MSoW+UvB0yvYeGIfS7kqJPpJ6weINYDr6mEZC+TuxGpA040y4Gl14Mma3GwphW3N57
	 COp+QGP22fihX+SruyKFyhl2e2isrChHnwNoYAr0=
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
X-QQ-XMAILINFO: OQac6g2KrvnW2iSWwmf6ohc8qhiL9C3TsNqbroi2fdR0HWZzFA1ovpBO7LEtZX
	 rsB/1LC5019MdcWDKoCznAOiL4XGKRih3rL1/iE5Q58GB4A9v2Jg4fgbWBnCMQwqDYvfdzPMrTKcC
	 5DAMkCWrIx/aDkJLX4sBT+r0FWckcT88xnMpoR4C/69Zr6e7p/mf3zWxGbSYQHOpD+TM7e31L/uYv
	 PksXX6RJYJOsuMOqZ06ykjngEsWzGk3oDxghGjtE8X2jVdRubINKXs5ONZSK64XQk5NfFpyypgPU5
	 kouGL2bGdXWArC2BhVo+z0C4y5JMtVeavBZhJ8gKNXQgArSGWA/+oXHNWy/n71jDT6mX7JuRtWMun
	 r9S3WrobTIE7NPGG08zB9LBkyAAJ7NkHtnSL404vmXarFa1LgVmxL/tdC12Y+xfL9hL3g0Z4xZcYU
	 c9cBqNpSQkm0TyypeieJ8zYlTA7OsZfuHWLyUlWiargVvqvzXxwsRc7x8i0PTbkRCOZQWmmpXpLH8
	 8nMl9W/v6uftxZCf0gMpQSYmJgClt/eEhWyou2ePCvjPYBK6Blw+i6seyQVvKfcyKoAKoyWclyDma
	 M3Ar2Ql55jPSBGg+9HvN/aLcgmX6pbilMnAosZIGo7zmBdwFYJwBEW30XdBly4sbXmIZCWMSN9Jjm
	 vu/+icjnDSKoz6p56zYeio10SmJHOzMrERw+sBg5AhWgoJm324II8qNaQ2DnncwLi5EfAFN89EIS9
	 DsC5O3HW9E2FpfcZjmYCgcTg1C9URXl92MFoM39HKnKLeWZymSG25CUl5F/RifMc10yyEZl5LPdPD
	 HXo7/lZEM6P1kVfmU7skxUEy/6Znq/cSmEai4DYL0+60b/Kxqa1HHDC1795g9XgZBhL1M6huXHlsg
	 CjTay+JkuCfB4J5ClevHRmWJILvZaoCa+75uW+NTRK+WKwBEKNUmWu2KcJC++vmM/cQWAIvRciwLL
	 DtlwqNZSa6gzlS+CMjj7CTAgr7z6aO/hJidESPpAHzhlR23Elods0f/LcOKtl2PegD4NSIzUR+lJf
	 5lwX+/NDXTLZtod7DlmzFMRu8sjxrCpFBHhNI
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?bmV0ZGV2LWJvdCtzYXNoaWtv?=" <netdev-bot+sashiko@kernel.org>
Cc: "=?utf-8?B?bWts?=" <mkl@pengutronix.de>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?c29ja2V0Y2Fu?=" <socketcan@hartkopp.net>, "=?utf-8?B?ZGF2ZW0=?=" <davem@davemloft.net>, "=?utf-8?B?ZWR1bWF6ZXQ=?=" <edumazet@kernel.org>, "=?utf-8?B?a3ViYQ==?=" <kuba@kernel.org>, "=?utf-8?B?cGFiZW5p?=" <pabeni@redhat.com>, "=?utf-8?B?aG9ybXM=?=" <horms@kernel.org>, "=?utf-8?B?Y29yYmV0?=" <corbet@lwn.net>, "=?utf-8?B?c2toYW4=?=" <skhan@linuxfoundation.org>, "=?utf-8?B?cmR1bmxhcA==?=" <rdunlap@infradead.org>, "=?utf-8?B?d2c=?=" <wg@grandegger.com>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, 
	"=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtZG9j?=" <linux-doc@vger.kernel.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>
Subject: Re: [PATCH net v9 08/10] can: rockchip_canfd: serialize TX with bus-off and restart
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Fri, 13 Nov 2026 13:15:24 +0800
X-Priority: 3
Message-ID: <tencent_AD03F810B3FDBC9A3A69DA65641264469409@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261111-rockchip-canfd-restart-close-v9-8-6643f3825ba3@qq.com>
	<179452273462.488853.12444870521885218967@kernel.org>
In-Reply-To: <179452273462.488853.12444870521885218967@kernel.org>
X-QQ-mid: xmsezb41-0t1794546924twb3yiq29
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_211531_768273_A35A5D62 
X-CRM114-Status: GOOD (  12.79  )
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

> [Severity: Medium]
> Is irq_suspended working as a lock here?

The flag is an IRQ entry gate used with device interrupt masking and
synchronize_irq(). During restart, the driver masks and flushes device
interrupts, sets the flag, then drains handlers before reinitialization.
In this tree, the IRQ descriptor lock used by synchronization and
dispatch orders the flag store against later handler entry. The
release-clear publishes the initialized state to the handler's
acquire-load.

Open sets the gate before request_irq(), when no previous handler is
registered, so there is no old handler to drain there. TX and timecounter
state have their own locks. The BEC getter is outside this IRQ protocol;
its cache synchronization issue predates the patch. I have not found a
concrete new race in this sequence that warrants replacing the gate with
another lock.

> [Severity: Low]
> Is the CAN core known to be out of reset when this INT_MASK write
> arrives?
> ...
> Should there be a short settle delay after deassertion, or a check of the
> read-back value?

On RK3588 rev2.2, I tested 300 reset samples per controller, 600 in total,
covering open, close and direct restart callbacks while idle. The tests
preserved the production order: deassert, write 0x7fff, then first
readback, with no extra MMIO, logging or delay before that write. Every
first readback was 0x3fff; bit 14 consistently read as zero and was not
mistaken for a lost write.

These tests found no lost first mask write or evidence that this change
introduces or worsens the suspected problem.

Best regards,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
