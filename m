Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6275E606A325
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 11:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XkAVPmfC;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=zuHVTW5t
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UjEIYTieW1EdtABjsIxUK76Etjt2t/Ca1d3S/xOSwTA=; b=XkAVPmfC0iaUleP2Z+SXjSNaVq
	RxLTDZF3tntdth3rZWjStUK4zqZo/+rSjPROd4Nv8dCRNHZAOwfoRR7Ognj1SiFM/spCH1RfzUqnm
	sU8u9y9jjur3gyiDj6XtFNrabwRW6EN2WHLJoWLHclqrMkf2eBne8PRsHUGzKgD0MD4lUKrPtrsws
	gd0pI0ATja4ko6kh0UD1CKPwl15a07lbrQm+6oinzT58v/tnSfUsOd9eqkEx63D4WoCvvlXXigE5X
	48C8THlju6vrF/uoxFozH+Xrt4pquIVfAWTSKtWHlFh/bAJuHMBLsEnDdACCq50ECq7jPj6PwNMHJ
	Wb9U/JMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNTmt-0000000E98P-1pdW;
	Sun, 01 Nov 2026 11:31:47 +0000
Received: from xmbghk7.mail.qq.com ([43.163.128.53])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNTmp-0000000E97F-1RiT;
	Sun, 01 Nov 2026 11:31:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1793532694; bh=4PXzGc2Rw2fCXjkklglmjwOBpwPL/t0RkrO1+a8BwTs=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=zuHVTW5traxZzn7gUPJQzknvG+nR+QwyXrFO3v5WEaqzbrVbjLyfuHkhh46TEzDZD
	 9w07+o/XwWCYXC+BFh021ps/ZUDKzZM6kbsTbPEsJADmRVRn3E2KfsSfodVAMBNL3B
	 1/UnuvVzzFFVwL9ap+Go3dS1sz3JMr/wkGaEt3RQ=
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
X-QQ-XMAILINFO: N55iztL8edgQybSWYxuz+O1+9mOuF4a6o9IlPHWQBhRVZDIrch1h77KPomNJ/B
	 Nw0cRyirxwQuJC/Zmd9tvtdVZv9PIkx4G8zIqW3WkKGx3+cz5H6hAW0nO2abi4WxCICewmrkz24Y5
	 4gDCn5unlZ9E3H60lTVIBbeedRLttniY1vF6P9OkMwhsxezC6F/Wdf7dIRvfr+YD+120vBhn/EVBX
	 Z0N4RXfibxF4cTfeJfIO9XgA7m9H/qNUUUk8L/7XCfIxNeszcTEPCGxFw6cbzvCR8bK0urlao9GMp
	 b37eQJj1TNDomNLU4TlauNG2MLLe/m6YT/3/daLN4faXMG9c3Xv8RaIs6t2zXF5M9/eeO1kd6UZ2b
	 qRRMx99oge2xpz0V8EtCD10Y5P1nGdSQfF2s8jOzNVqJGx6NJyHBDk0jc+rhHR9yR/SPYT8f6qrW1
	 4AH8rJhciGcs722AuzpnWmRIZU+HlMtmSespSzXPb/TB+bLm4QWrGZ43zbe9ossVbsrsjxrneGKmS
	 iJ3OANCDWjL62o2EH5AQxN87S9cp0sdIgWeXC2gkMiPbP52LwlhXkgqI13Wp61sJdjNESXD/tYMw/
	 FDqhNQEC/MuXxCKLRbfplE+7AKq2OIADHhXFBVNHxB+rPvcsspfezSH0BGT51y7K47ikmjMehRln2
	 XWXJ1TbdnuKbJHEt16Itz/HLx9CBfKekPE8HES17zLT+hFZ35ZGBKcUbidyOyFfPbkvr1ptXCJ5vi
	 jCfJJRhxeq4WHq0tXZBSqCzc2y6d7t/BOfI7Gb0ixJuT8p+VxWRBzVmqtHW85fHoTA37+dT4zoSOY
	 w8K/yEhg2nELVC6UMYix9sTVhxJsTDFQTbuITdWsJ9n0meTHwLdzzhm1rdiJobHe0SUzQm5WxIxta
	 3wh2swzy6RCJswD+r8vpyXjztAdk2Mk9f5zgSuLLHtAAiUwfAyvc0pBoQQRWitDOALiwngHR9cfSh
	 9+4rckDH+rQFDCSdGXFPIvdjjpbNrKpevfwBSE9Msw10Uq7yxuPAgGU2didtugTq2H4sFXiiObg9Q
	 bIM9UM6CLnA2PE5SoggXwT3z2442zqIKO00Li2FJRLYqZppzIxLq1grqXRclociJt+SPB
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?QmFydG9zeiBHb2xhc3pld3NraQ==?=" <brgl@kernel.org>
Cc: "=?utf-8?B?bGludXgtY2xr?=" <linux-clk@vger.kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtZ3Bpbw==?=" <linux-gpio@vger.kernel.org>
Subject: Re: [PATCH 09/27] gpio: rockchip: Add RK3572 GPIO support
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Sun, 1 Nov 2026 19:31:33 +0800
X-Priority: 3
Message-ID: <tencent_82A28995065FC62D017F243F201551C14F05@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com> <20261022-add-board-ok3572-c-v1-9-0b0fd85a31ee@qq.com>
	<CAMRc=MeNF_=T2Yb6wzsQFFcpO+w7sLgaKR=sZhZRzRDFcpgumw@mail.gmail.com>
In-Reply-To: <CAMRc=MeNF_=T2Yb6wzsQFFcpO+w7sLgaKR=sZhZRzRDFcpgumw@mail.gmail.com>
X-QQ-mid: xmsezb41-0t1793532693thpegsapc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_033143_729368_B0C3C8AB 
X-CRM114-Status: GOOD (  14.94  )
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
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	FROM_EXCESS_BASE64,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

>>   pending = readl_relaxed(bank->reg_base + bank->gpio_regs->int_status);
>
> Please sprinkle in some newlines for readability here...
>
>> + for (unsigned int i = 0; i < bank->nr_irqs; i++) {
>> + if (bank->irqs[i] == irq_desc_get_irq(desc)) {
>> + pending &= bank->irq_masks[i];
>> + break;
>> + }
>> + }
>
> ... here ...
>
>>   for_each_set_bit(irq, &pending, 32) {
>> ...
>> + assigned |= bank->irq_masks[i];
>> + }
>
> ... here, etc.
>
>> + bank->irq_masks[0] = ~assigned;

I will add blank lines at these places to improve readability in the
next version.

>> diff --git a/include/soc/rockchip/rockchip_sip.h b/include/soc/rockchip/rockchip_sip.h
>
> The changes in headers in other subsystems should be in separate patches.

I am already working on splitting the patches by subsystem, and I will
put these header changes into separate patches. I will resubmit the GPIO
part later with these changes addressed.

Thank you for taking the time to review my patch!

Best regards,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
