Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CE3606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 14:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ceRPm2fJ;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=PppD0vWl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8pHPlWc6Msivq6z0zNBGAOKP/5uhFdKhrMCZ+82SQuc=; b=ceRPm2fJ+CEPv6f9zDAa10o0vr
	A/rAF1SPXNN3x9Nk7u67/igtHBw9grzzEQZpRVKP7uc00K/LA1DR14TMJBNp7qNI7O8t/Hsvx99gL
	+cm1P082QhHpT4nPVhAgKSEXum1p0WweNKkAq6X/JUibZpvoPEOzC6X9ixFHwoqjMU7neYAPyTANk
	ips5PfO94WzoNK3V1Yothb5zKbYWxFB/QBy6j2k+0AxdNElNsSl5CWZknZxbCdTzCBiDlki+Tjvj1
	mb3r+XZLsHvqVLN/I2UNfwIjHIiACn68N/tm8dMMvkVARVmP/GfOnL4k2zjOPPFT9+iNYd7QQ+ZQP
	K3QPCpvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLM7w-00000002iwc-07Ck;
	Mon, 26 Oct 2026 14:56:44 +0000
Received: from xmbghk7.mail.qq.com ([43.163.128.52])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLM7U-00000002iRV-2cEY;
	Mon, 26 Oct 2026 14:56:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1793026569; bh=RuotPnZdxuGHvCO6ci2amZgNLLfOtFoXm03Qr+Is18Y=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=PppD0vWlUeA4ARw8FHIXRROgGVyDk5jCbe+w12ek6wXZWsdNzRGR3EAxpda+W98hy
	 9Sa2oXOWHY//uQSKLkmJO1f/kf2zPPskiDuMWQ9rIVqYgn+Tol+BobSe+ysFCJkxHe
	 ejGgrUhmrZJuWqYdoa80ADnSknXjpsD3aUquEZKw=
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-XMAILINFO: MQ+RLpP3ca9B9zFQFr8c37Afr8ztaUfPPDNMfVcY5KPNfYldBzuLMvpZy15GU2
	 9Iq4E+qjujD5hoa+Oye155otpR5xOhdP5dkBUq/ruyNgvOOxSRsFNeYP5cICdldqrCgfd98yDhU9Z
	 eb4ZmgwE6vDV53KUoKUx5Q+8FnzPNdJhPvV/50oIuMOK+2I5YtdN4gYiuVH8U9CaZXIUI7eC617B+
	 YtaIgFG2oT8rru28r6dnZLw6/HBXG/5V4VSbA45f4EHIiA8OwjeS/NcapKdaK8LP8PYhjD0KIoTdO
	 JMcgF2oFHrVjF13XFtSilGIGJOKsRW3F2lFDi5RZQf8nfZ5xmD+2Nnbcwn6YTRueswSYJn8F39Xjp
	 pv8qCIhfSfTeQbd8G3oLX9hXQoFbsbinJq3gUUap83xyU0nNrHjIfvIAmQ99fLMSfuS+F4gUZHs3e
	 BFMf0LkxW5YPi6ZDBNFJKBtVBDrfeL+XKqQ2T4aREK+KWS8YYS6CWxTttg+iqo3VNk36yxQSP3S71
	 ojlUhEuo9Knf7aU7LbpkHuXzXRTDozl8LQDSn1do3r9zB/XBuVIsMNVCuufCahskxns6bj1SPwAUG
	 KupriVTNprhqaPo646OyPIutu5X8PDePEh6W8n351qbL9KhTNGz9M5zAAkA3hg4I9InmlLcMldM2p
	 IoZtoHR3wOMhRVqlIKNYsAsAlZK04tyFQCTm+/AQtgWD6iBa/513WbqwejeGOdhQ2WgmWzKbztnCD
	 TzdYkKSyzMw/6/jrW1U6MkpF2mU5FLxVeeCab+OWV7ibLYYGHjRitZaGOaf3ihppsFwFzlodbO+DW
	 PuNSz2/mIRsBCN0ILzuSOg/jk8T/IC1KO4HPRv3umIPzdTdckDdK3YRxkalaXSXx2Ct1elM4o0x1n
	 4dT6R25EcqP+tdxbFYXcufJxNC9ZayTv81l7T8f0i5zLYPGn+YhHFKoHRlDBW/KjEn0vlhbFBU3YW
	 1UzpfmkhPFqISBmTzNdhj+LABVGB3VbChpsrc4vOkUpdpFdNZVEsoaa+ERi/WBet2OLL5ys2Fpru2
	 +yk86PC2wSO9+jMfYPrY8t+ysB472iILL3XDrSRN2vPUbCYpGDcAL1ICyCmleWvy2Da7n
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?5byg5pm0?=" <zhangqing@rock-chips.com>, "=?utf-8?B?U3RlcGhlbiBCb3lk?=" <sboyd@kernel.org>, "=?utf-8?B?QnJpYW4gTWFzbmV5?=" <bmasney+clk@redhat.com>, "=?utf-8?B?SmVyb21lIEJydW5ldA==?=" <jbrunet+clk@baylibre.com>, "=?utf-8?B?Um9iIEhlcnJpbmc=?=" <robh@kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Q29ub3IgRG9vbGV5?=" <conor+dt@kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?UGhpbGlwcCBaYWJlbA==?=" <p.zabel@pengutronix.de>, "=?utf-8?B?UmljaGFyZCBDb2NocmFu?=" <richardcochran@gmail.com>
Cc: "=?utf-8?B?bGludXgtY2xr?=" <linux-clk@vger.kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bmV0ZGV2?=" <netdev@vger.kernel.org>
Subject: Re: [PATCH v3 3/3] clk: rockchip: Add RK3572 clock and reset support
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Mon, 26 Oct 2026 22:56:06 +0800
X-Priority: 3
Message-ID: <tencent_6876096D2306016F88487E0E4D78345B3208@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261026-add-board-ok3572-c-clk-v3-0-dbabfa39d692@qq.com>
 <20261026-add-board-ok3572-c-clk-v3-3-dbabfa39d692@qq.com>
	<0d5de6fd-3150-4898-a652-7f5b64dcaf07@rock-chips.com>
In-Reply-To: <0d5de6fd-3150-4898-a652-7f5b64dcaf07@rock-chips.com>
X-QQ-mid: xmsezb41-0t1793026566tx8hx42zl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_075617_056921_4A1E6A30 
X-CRM114-Status: GOOD (  16.04  )
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

Hi zhangqing,

> This is in clk.h, please submit it separately.

Thanks for the review. I will move COMPOSITE_MUXTBL to clk.h and add it
in a separate preparatory patch.

> This is incorrect here; there should be no negative values. Two's
> complement is used here, so a conversion is needed. For example,
> -12955 should be 52581.
>
> In clk-pll.c, cur.k & BIT(15) is used to determine the two's complement
> conversion.

I agree that the hardware expects a 16-bit two's complement encoding:
-12955 is encoded as 0xcd65, which is 52581 when read as unsigned. The
difference here is how that coefficient is represented in the rate
table on the kernel version this series targets.

I found the cur.k & BIT(15) branch in Rockchip's downstream develop-6.12
tree. There, k is unsigned int, so the driver explicitly checks bit 15
and subtracts the magnitude of a negative fractional coefficient.

This series uses the upstream implementation. Both v2 and v3 are based
on a804c5742bff, which already contains commit
581478883477 ("clk: rockchip: Fractional PLL coefficient on RK3588/RK3576
is two's complement"). That commit changed the k member of
struct rockchip_pll_rate_table to:

        s16 k; /* fractional part, 16 bit two's complement */

On this base, rockchip_rk3588_pll_recalc_rate() uses signed arithmetic:

        s64 frac_rate64 = (s64)prate * cur.k;
        postdiv = cur.p * 65536;
        rate64 += div_s64(frac_rate64, postdiv);

The signed type represents the negative coefficient directly, so this
implementation does not need a separate cur.k & BIT(15) branch. For
example, the mainline RK3576 rate table already contains:

        RK3588_PLL_RATE(955520000, 3, 478, 2, -15730),
        RK3588_PLL_RATE(785560000, 3, 393, 2, -14419),

These are exactly the same entries as in this RK3572 patch, including
p, m and s. Mainline RK3588 uses the same entries as well. Since RK3572
uses this shared upstream PLL implementation, I will follow the
mainline RK3576 convention for its rate table.

Writing 52581 directly into an s16 initializer would require an
out-of-range implicit conversion; a reduced compiler test reproduces
Clang's constant-conversion diagnostic. An explicit cast such as
(s16)52581 would produce the same signed coefficient, but would add a
conversion that the existing mainline tables avoid. Using -12955
directly makes the value used in the rate calculation clear and stays
consistent with RK3576.

The register encoding is preserved: the write path passes k through
HIWORD_UPDATE() with a 0xffff mask, so -12955 still writes 0xcd65 into
the coefficient field. The five initializer changes from v2 to v3 only
make the signed values explicit; they do not change p, m, s or the
16-bit coefficient encodings. In particular, no further adjustment of
m is needed for these representation changes.

I will therefore retain the signed coefficients, following mainline
RK3576.

Best regards,
Cunhao
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
