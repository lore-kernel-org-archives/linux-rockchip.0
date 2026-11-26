Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80C9606A329
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 13:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZlWXS8+R;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=qpw1nyYg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:
	Cc:To:Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Hc+7HpI2cYFZdvDRpijizsKEhUeTE1aaMhuj2Bdo03Y=; b=ZlWXS8+R3YMoAqZBwOt9bwF0vD
	KSwINPzK7FNw7G2V9w9FvfKEDMEjt+Wst9+0eD0UR+d5ljp9EkvVZ/UFN2Qi+7tift5GnkTA+e7P3
	KNgZnA8fpTA6J7dwewhfJxOplSH3NiqAwLY+5/QHBG59/jl+A+YXzXm2hurrtnM9ZBiid3GmDndO/
	sLpa4G2ptcBkUx4LR2YEQkzWHUEuwrtS0knAklWApPTe42hytJQzKaytXVYfnsWHs2UdQ5th1DaSB
	PNP3FYfzgvyXfweVgvOUZINDiQ08yuw5VkQG3DrMS8PDU0gBLNmhQcidjXQ9YB+2HW0IW3xFwwmnj
	K4Dxntiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWZWt-0000000DLsJ-3XZr;
	Thu, 26 Nov 2026 13:28:52 +0000
Received: from mail-dy1-x132d.google.com ([2607:f8b0:4864:20::132d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWZWc-0000000DLeM-33Ii
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Nov 2026 13:28:37 +0000
Received: by mail-dy1-x132d.google.com with SMTP id 5a478bee46e88-386c4d2e2ccso4711171eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 05:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795699714; x=1796304514; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pFahHhnApCqp4xWzSbnlx6J9bvCFbftUctTIaRpbdJw=;
        b=qpw1nyYgt9vfUN+IKVBdpabMOSv3SF68TLpJCRBNyMY1s/T0yqnZ8csUxUFc9GMt6v
         Av2igQ1H/KZLFUf15UnKdHapgcG8Rdw40snEPB7+7RTcaABiSDjSjoVjknAkiB+P0te7
         1+4qPH8+hmPoc5XIxmKcEQgfib5/PoLVTHDc4SYm/LQv04p+Nnxws91MR7QaOjYNSpUp
         WY4oZzRuINdx5YejmYvOqENanKp+E5gIWD/JSuPbCvVTi2tnL1J15bry6Ay2jHlLS8wn
         h2UIYxZxEC5e2heP003lUP0nDEEN4VgOUY/DLPVsDCGpZxdxGmC1aZg7m0LJZq/ZTbAB
         ytmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795699714; x=1796304514;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pFahHhnApCqp4xWzSbnlx6J9bvCFbftUctTIaRpbdJw=;
        b=XL3W/M6qgf042qmd7dLOROW0oboGzJspt2CQOkBciP5gTHqUhVgcByQPGdni9/3vaO
         is2Zfbg8WgHva1UpaALgnj70dffK98ex90XmSkWQwS7/820oFoqzR31bgcsS5/JFvTFQ
         EP7oXg2A1UshFgktwS4ksUUfmfZu83YVDYvwQiTxh/uci1LOhKZ2CZIeY07aW6FuIewD
         mR2sXkNlqKJzEJxjuRPSur4W3uYp+kIuuZXy2WtWSHfrZGKF6JXcZ/mMjW733j2FfkLE
         v6IOJH59UnqUwV7IM8dHb3ou2VT9/Ieq1TOihAIIrOxP13OkO4T7Q/DViaawv9fpjkOR
         plfg==
X-Forwarded-Encrypted: i=1; AL+hErG3keAu+XWLdgJi53C5EyefLNfTSamB3z0fLvc6FH5p5InYt1zlqLyvVe03+Fk+WEqAnpbjE76H6Z33VeNDrA==@lists.infradead.org
X-Gm-Message-State: APuU4Z+wwdly+1Src6SXL7QB5MgFw0WnGsfIAqyNACa2Q0ifZ9G/MVUO
	6e0tBorvaTU7uxN0oCeCrUdwNYEFtr6qfIHsTpk5v9BvPqBZIBt450QO
X-Gm-Gg: AZFdTZcgvYwwCQbD+BQVFzxIKawU4PyD/NidcXY/zKI8X7DRxIBP/5YKb8q+slNzZp1
	top79VIx8Sg0C6qTu6it13PC/JDyLYTs4XIxrmIlZ388IXa6QxD73MMH7aCcnZ+2ff4P8AWWLBm
	Lx1C+Uni7BP0DB6bLebbjU7HsK8usKYaeS8nXohpKKsmum9NtrSdQQo8wToCw4Qkdu+rZi1EIEW
	2oLabbAewr1/Lz6MhDBJk4gOU5Yvm2C7VttnULQjQPZPQdl9UyPm8hov9ku1r2ob3eTC7QhZ8W2
	voARfPe6eSBjyOV4AAgsO4pKiEG68kR6xoo5SZt7e90Xh/mQ9rmJsdG0tSVNHArGUFgFbX8AAB9
	2QADbx4IpOr58DzPTIH1oem5Y9ZKq6kn+Z8bDHZb3PmM6IEngzdr30HsPiYCZHIiM8JJqUTWNkm
	B7aRA8d5sU6VAuuIjyDZw5Rdd3B9ZFushuYhZFif+0vLWRBKhVuDEh/0UWeiveaKeoAvI8uSnPL
	AoTWC2n9BmKpWdbUBQLtNI7gB/U0S7NX6lc5zhptfiSlcnID1jtO2qXRrEaVmjrzgbUAsHfiEX9
	UG1XMwQmVf0PTTaIf1QS1DP6Q1DNknQ/XphTBnDwanRSFEI6MsmRsHZmR4xHzLslYVM=
X-Received: by 2002:a05:7300:c00e:20b0:386:c3ab:ab7d with SMTP id 5a478bee46e88-386c3abaf3bmr8681892eec.3.1795699713612;
        Thu, 26 Nov 2026 05:28:33 -0800 (PST)
Received: from [192.168.35.43] ([218.50.238.131])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385666e96bdsm59213477eec.7.2026.11.26.05.28.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Nov 2026 05:28:32 -0800 (PST)
Message-ID: <86a7174f-c44b-4663-862b-3631b0d6c5bd@gmail.com>
Date: Thu, 26 Nov 2026 22:28:28 +0900
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 00/11] PM / devfreq: rockchip-dfi: cleanups and RK3576
 support
Content-Language: ko
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Sashiko <sashiko-bot@kernel.org>, stable@vger.kernel.org
References: <20261119-rockchip-dfi-rk3588-cleanups-and-rk3576-support-v4-0-517a68c008fe@collabora.com>
From: Chanwoo Choi <cwchoi00@gmail.com>
In-Reply-To: <20261119-rockchip-dfi-rk3588-cleanups-and-rk3576-support-v4-0-517a68c008fe@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_052834_802293_577339B6 
X-CRM114-Status: GOOD (  20.74  )
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
Reply-To: chanwoo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/19/2026 10:01 PM, Sebastian Reichel wrote:
> This is a combination of the DFI driver patches from the following two
> series to ease applying to devfreq tree. It is based on devfreq-next
> and there are no other dependencies.
> 
>  * https://lore.kernel.org/linux-rockchip/20260921-rockchip-dfi-cleanup-v2-0-43ff34ac8599@collabora.com/
>  * https://lore.kernel.org/linux-rockchip/20260921-b4-rockchip-dfi-rk3576-support-v2-0-04f847016321@collabora.com/
> 
> Changes in PATCHv4:
>  * Link to v3: https://patch.msgid.link/20261117-rockchip-dfi-rk3588-cleanups-and-rk3576-support-v3-0-32ff1546b0e4@collabora.com
>  * In PATCHv3 I accidentally used the patches from PATCHv1 as base with
>    the wrong DT bindings; this is now fixed
>  * I've fixed num_clks typo in kernel doc (Sashiko)
>  * I've fixed incorrect LPDDR5 BANK_MODE_MASK for RK3576 (Sashiko)
>  * I added a fix at the start of the series correcting LPDDR5 bank
>    mode value (Sashiko)
>  * I've added a fix at the start of the series avoiding usage of
>    uninitialized memory (Sashiko)
> 
> Changes in PATCHv3:
>  * split out DFI driver patches from both series and merge them into a
>    new one; clock controller and DT patches will be sent separately.
>  * rebase to devfreq-next
>  * collecting Reviewed-by / Acked-by
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> Nicolas Frattaroli (6):
>       dt-bindings: devfreq: event: rockchip,dfi: add clocks to rk3588
>       dt-bindings: devfreq: event: rockchip,dfi: add rk3576
>       PM / devfreq: rockchip-dfi: move to per-variant const structs
>       PM / devfreq: rockchip-dfi: add NO_INTERRUPT perf capability
>       PM / devfreq: rockchip-dfi: use bulk clock APIs
>       PM / devfreq: rockchip-dfi: make RK3588 use its clocks
> 
> Sebastian Reichel (5):
>       PM / devfreq: rockchip-dfi: drop incorrect shift of LP5 bank mode
>       PM / devfreq: rockchip-dfi: initialize dmc_count structs
>       PM / devfreq: rockchip-dfi: move register offsets to variant struct
>       PM / devfreq: rockchip-dfi: prepare support for v4 DDRMON
>       PM / devfreq: rockchip-dfi: add RK3576 support
> 
>  .../bindings/devfreq/event/rockchip,dfi.yaml       |  89 +++++-
>  drivers/devfreq/event/rockchip-dfi.c               | 297 +++++++++++++++------
>  2 files changed, 290 insertions(+), 96 deletions(-)
> ---
> base-commit: f9316c13d6f621af4f6f4a6089d3c989ffe899e6
> change-id: 20261117-rockchip-dfi-rk3588-cleanups-and-rk3576-support-74727d64d729
> 
> Best regards,
> --  
> Sebastian Reichel <sebastian.reichel@collabora.com>

Applied them. But you also need to send the clock patch[1] and get it applied.
[1] https://lore.kernel.org/linux-rockchip/20260921-rockchip-dfi-cleanup-v2-6-43ff34ac8599@collabora.com/

Thanks,

-- 
Best Regards,
Chanwoo Choi
Principal Engineer, Samsung Electronics

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
