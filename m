Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F107606A33A
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 09:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=x9lZZCNI;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=oSr97Ei1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=uG56QHbfjyxnHzmoHwp1edE5TRTV4p4+Y76v/9kIiVo=; b=x9lZZCNIJd7L+p0OJn/vEjl9AG
	wDKwaAbfhiKBZKXtKRdG98CMxflvPiIiKtWtflG3Rd2He2vmIsjwPd6Nquo6PkX/YzUU9Ca8osE5r
	8dyyt3OOYABBuq+3eEX5cNsTtOq5EbtgNv8tKjdvaFC3oMBxys2qZ1Li/XX5FKQOWpVaS1igxYx8S
	vLd0Bej4ktnT++x5jzGsMDRk1WXPSSF/vLFQidTAvML76qt6Hg+lhFlixyzU25Ro5LmOyAWgD6YYp
	saWNsd7klmS2KaBWW/X1iAzGwNJVhMwROxQcsTW59SsLJ85sXvmRdLpG9TFthnOcRWv8q6IVW2Sm4
	8tRlxKgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUL6q-0000000EUCS-0TZh;
	Fri, 20 Nov 2026 09:40:44 +0000
Received: from xmbghk7.mail.qq.com ([43.163.128.49])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUL6k-0000000EUBd-0qe6;
	Fri, 20 Nov 2026 09:40:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1795167629; bh=FYDZTGaxRQkg6ye2y37LBZ7R/w35GWMR5g7vC5sJq90=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=oSr97Ei13la3XAwmDA99AgXnUonx56cczMhNiwcJUmlax4sLs6n5Nli6FvZyBONMo
	 SDXJuOfFuv9G2bMkib6dFSovX2cjgtsOe/e2LpqU3ZlER68u6rL5qpIw9Ei7jTblHU
	 2lR7DdiWTzWxG94lx8Hom7FylzG5gyLF6CdIMjzQ=
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-XMAILINFO: M/BhhHt976mJlz9cj1QS+sHBoY4gKMr0HT9qk0Ju/X9qGHRJoxbU6sekW+/tRR
	 fX3NkO49H2B6nMWAn74Wn4yTGfbgZRlh5TTkgP3nKSyAU9VtmO14+11NkoGeuPp7I8lhDlXmuEMNT
	 zWC/h0LlvTefphW/1H1PjEf3OtJSMdtFj7XDEbnY5Y0CjJPPAzFLQR7O0Cv1HWri07qydg1YVoD6x
	 0bNdln+QIDRl9mWWNPAX4MdVtB8t3LkwvaqJVtWnmfvsWXaEsfSqOHk1XaxovE93MtRfN1xBqy9qA
	 XSComPs4Qu6WPs44lPo5jtS4EejhYCiFp5pUUpBlnuCwh+WOBITT0CoVP/UJKkS28lKDhjlQxJ2p1
	 nZwSOshkwULKNxiVkrupQr6FkYkutE6mkC8LXvHSV8Ap60E07P9lfbRtdeYseA3cDZ8irYMg9bVnP
	 bXOvZlg3iceF63haGYmvL39lJh/QJjWmcO0lWk9To7pJfFDyhnSEAajOP0dB+jypiBb8gGQyrZ7Zp
	 4OrE/kxgq4TEcoPlB2C5KQAbaVZTI0AtYbo9ZGI82VY3GGTZcqbIQsOkuhN+jHyhNL5UeSY/lgPYf
	 BFz5fjbl4IKQYvUgneTtbk1h8kPMP45nxhLZLFiJ1tJcH5fndHha1v+wN0zOKvRhrBAIbQQfvxpJL
	 aOWpd2EefD2VU+xSe4DGyGgs5SkiUz/kyw8wAEhvuVYciFB6q/JiZee1wnuoHPfmbyg4WEWY18ezd
	 bTvxk7mVV+h273bD2hlh/daw8xoW96T9A5bVa+xNC1CFot16kDeaKWD8qR/FJuHzigAeRdQXZFV2q
	 /YMw6K2ANZOV9qFI2256UZ+JrAWTd7K6xCf8aHDH7q7AHitbwGB/ikHRIDGVrqKWqgH+KxmfaP/VN
	 gjM6/c43x62rtF9tNxiwg673PILsZO3MrRZoqLr8VDjGDY8omhQgASYFsudH+ur0XCEeFDWGO8aLv
	 292L81594Kr+dPfvw5kJzPHwubBfZp/Qch9vrG/aER3L3R0awUSPYhIDnF72HdVk6DoffKwaXQSGq
	 ENFssGVkf6+H/feoNyidI1BByoIZm9gisfX1o
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?Sm9uYXMgS2FybG1hbg==?=" <jonas@kwiboo.se>
Cc: "=?utf-8?B?U3RlcGhlbiBCb3lk?=" <sboyd@kernel.org>, "=?utf-8?B?QnJpYW4gTWFzbmV5?=" <bmasney+clk@redhat.com>, "=?utf-8?B?SmVyb21lIEJydW5ldA==?=" <jbrunet+clk@baylibre.com>, "=?utf-8?B?Um9iIEhlcnJpbmc=?=" <robh@kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Q29ub3IgRG9vbGV5?=" <conor+dt@kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?UGhpbGlwcCBaYWJlbA==?=" <p.zabel@pengutronix.de>, "=?utf-8?B?RWxhaW5lIFpoYW5n?=" <zhangqing@rock-chips.com>, "=?utf-8?B?UmljaGFyZCBDb2NocmFu?=" <richardcochran@gmail.com>, "=?utf-8?B?bGludXgtY2xr?=" <linux-clk@vger.kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, 
	"=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bmV0ZGV2?=" <netdev@vger.kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v6 1/4] dt-bindings: clock: rockchip: Add RK3572 CRU
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Fri, 20 Nov 2026 17:40:26 +0800
X-Priority: 3
Message-ID: <tencent_BB5901AB88D47E874D0E348B32A609A92308@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261117-add-board-ok3572-c-clk-v6-0-cabad6610c5f@qq.com>
 <20261117-add-board-ok3572-c-clk-v6-1-cabad6610c5f@qq.com>
	<34dbd46a-29cc-4b86-b9cb-9477dc0a4da8@kwiboo.se>
In-Reply-To: <34dbd46a-29cc-4b86-b9cb-9477dc0a4da8@kwiboo.se>
X-QQ-mid: xmsezb41-0t1795167626tagk7ay80
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_014038_874648_2EA6CFC6 
X-CRM114-Status: GOOD (  19.69  )
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
	FROM_EXCESS_BASE64,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Jonas,

Thank you for your review.

> [...]
> > +#define PCLK_DDR_MON 527
> > +
> > +/* Secure clocks */
> > +#define ACLK_CCI 600
> > +#define SCLK_DDR 601
> > +#define CLK_STIMER0_ROOT 602
> > +#define PCLK_SECURE_S 603
> > +#define HCLK_SECURE_S 604
> > +#define ACLK_SECURE_S 605
> > +#define CLK_PKA_CRYPTO_S 606
> > +#define PCLK_KLAD 607
> > +#define HCLK_CRYPTO_S 608
> > +#define HCLK_KLAD 609
> > +#define ACLK_CRYPTO_S 610
> > +#define PCLK_OTPC_S 611
> > +#define CLK_OTPC_S 612
> > +#define PCLK_WDT_S 613
> > +#define TCLK_WDT_S 614
> > +#define HCLK_TRNG_S 615
>
> Are these secure clocks meant to be used as SCMI clock ids? Why a gap from
> 527 to 600? If I am not mistaken SCMI ids should similar to Linux clock ids
> start at 0 and be a consecutive series.

Yes, these are SCMI clock IDs. The CRU IDs end at 527, but the SCMI
IDs are a separate set. The vendor header [1] uses 600-615 for this
group, matching the IDs in the released RK3572 BL31 firmware.

I haven't found the RK3572 BL31 source on GitHub, so I can't rebuild
the firmware. That also means I can't change the clock IDs it exposes
via SCMI. If I numbered this group from zero in the binding, Linux
would request ID 1 for the DDR clock, but the firmware on existing
boards expects 601. With those IDs, I wouldn't be able to read the
correct clock data on my board.

I'll add the SCMI_ prefix in the next version and keep the firmware IDs
unchanged.

> [...]
> > +/* CRU-->SOFTRST_CON01 */
> > +#define SRST_ARESETN_TOP_BIU                     0
> > +#define SRST_PRESETN_TOP_BIU                     1
> > +#define SRST_ARESETN_TOP_MID_BIU                 2
> > +#define SRST_HRESETN_TOP_BIU                     3
>
> Please drop the unnecessary/redundant RESETN in all constants. The SRST
> prefix is already a short for Software Reset.

I'll fix the names in the next version.

> Please see [1] for the header I prepared for U-Boot mainline RK3572 support,
> it should have all these symbols cleaned up, to match naming patterns used
> for all currently supported Rockchip SoCs.
>
> [1] https://git.u-boot-project.org/u-boot/contributors/kwiboo/u-boot/-/blob/rk3562/include/dt-bindings/reset/rockchip%2Crk3572-cru.h

Thanks, I'll follow the naming convention in your header in the next
revision. I did notice two possible issues with the reset IDs:

Your header skips 421 between SRST_LINKSYM_HDMITXPHY0 (420) and
SRST_P_PHPPHY_CRU (422). I've fixed this gap in the current patch.

Your header also assigns ID 453 to both SRST_H_PMU1_BIU and
SRST_H_PMU1_FW, but the lookup table [2] maps them to bits 9 and 10
of PMU1 SOFTRST_CON03, respectively. Could you confirm whether these
two reset lines are meant to share an ID?

[1] https://github.com/rockchip-linux/kernel/blob/470f9dccbdc42e7b8a824d0a5c5640a10e9457d2/include/dt-bindings/clock/rockchip,rk3572-cru.h#L542-L560
[2] https://git.u-boot-project.org/u-boot/contributors/kwiboo/u-boot/-/blob/85afc941266af08ab30a897dde794f952321025a/drivers/reset/rst-rk3572.c#L605-606

Best regards,
Cunhao Lu

pw-bot: cr
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
