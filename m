Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92F6A606A338
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 11:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vWSov/uv;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=qI0gnQQt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=V9QILcc6a6IxdHY24WNFYaTgbxIQxUYTPqzJevk7mRw=; b=vWSov/uvowtQHWuob2gQprp5L1
	dRIp8D8rpf4s45kKtc+BmLb0nvv1ZQHq1FEagoiuZS+rEQ9eDaInNcr+f49y/v2/GCO8zynkf2fie
	S75W8JBPx9ooF8Mm1UJKR3GqZkUeVGlOiuxt6v9fHh4FLwTH78g/PT6iNLF7LDGnK0+ECZMNbsOuH
	q7wtEBS318QVWQRpCG61i01UaTmD36VEWnQP0Umvbkw2sUoFus39041JMdXPV/IMSKOPE968uVbby
	w5+VExSGx06HrC1AW9xJ6UdE26pRYPBpKImSUOzfsXhRBbMGvr3x5muLG4aSPmVC87hTpC+p62X0N
	WcqD6ADA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLfOi-00000004U7i-0H4X;
	Tue, 27 Oct 2026 11:31:20 +0000
Received: from out203-205-221-242.mail.qq.com ([203.205.221.242])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLfOe-00000004U70-3fhU;
	Tue, 27 Oct 2026 11:31:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1793100674; bh=TE7fyLyp5nwgFIebrTzV81TEIbWOb6SkTODvFbXRBrY=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=qI0gnQQtN8qNK6+VaPty62V/kgunfQdGPhAjeFZPmu2e04szr5at8+OjdnzbOfVl8
	 Biv/zIe8CBjAp+MWGE/LmlnAy9ZUzQwi3hqIbSd0Wx9z+FPUyVdIVlwQKKSdn70Irx
	 Xrj/e9keqLO9MVp99+2N1ULS05JAn4om29n3QxM8=
X-QQ-XMRINFO: OD9hHCdaPRBwH5bRRRw8tsiH4UAatJqXfg==
X-QQ-XMAILINFO: M070hzG9bpixdNYnLOYGQw/kRcHFlCK+icSEE8DKqa2kjogW5Vk/VQv6XckSlb
	 e2RZdJiW6XiIRME8iqrro55sHekX7IIDgqzjy40owqLanriVM7wJJ79WQ74HJ/+wpSI2h2MhtRMYv
	 WCUQknXTXsOsjborpTvw6xypbbDNhWR05QOJi3wOkE5mM5gXMNKagPaRK+N/LowN66Ez/IFQHIHmZ
	 XFvG65C+Qde13cPB9AChkFv5KEKsAvRZHEKWzKhNcJUF77Y7XM9Zu+6vtfP6VEwRnKkv3PtejdIHS
	 GVWP065NPXmdaLqmduajsd1EBSiVVox0R36tESQvTpTCA1dmD+KBQsvIJxk14a+W/PIofX3o/w/L5
	 ahkZhBgQV8qaboQCS9HyWCiEJMwIE8gjGOr/IVD92hqZiCxhMVXrLSk6ln+XcoC3LQVU9Lh524ZS1
	 R8pPay3RUJy/ACmSxZSdoHNIlTeTfdhntIqm/QjBh0JBOjQRHcwyCzC8hWMdgEbDR0IpwLI8YITjw
	 OVPcEaFQcU0VxRJ4Rwqwn+bve7t59qp6OzmsMS4AqmZf4LUp89taQVfm/K8/WHWB+m94UtGcPqT83
	 OCOVkXau6xL7jCWjKTMgecLQb9yzbcwhLDiHy+1YR2vWlMkW/Ygamrq/aekLEK6c+1qCDLW1ewlAj
	 Q/f8KMfR8rssUg4NrBG4e3R0zjsj+zBr8NU7290h3S+QGcBGV1RNDnKQIf+pF8cP30vIge8W02C8Y
	 fTUob0h6LSMFdew2kPhQqF7z7/pNHI/UtshggG6tsKan7m/zvuhjHV+Z2M1qtiE/sObP8mnCxpyCy
	 0h+e7DnNeLFkH8ICQTQOf2h/0EJFf/SmxmTWSipCTIeE9vaIhYBaea+mnzrENOvbCqHhHroUP2+wo
	 yLdEFxvMpeYAEip05g4ANuthGipK2qx7DRx//6UgODkvGfD12sSpOp4cPAUnTI5y/6wbcj2FRlQ02
	 mUlKbIaajK3Y8EnD+G8ilL4/JvZQ8g3ftGGWXuc2lnk2hyP4r8EClMPflwj+IEshiIjo/+xpsXFlj
	 eIW/BkXyXHjQO/y3q+2b9DxXtduLe+/FkugjDdmxKZdTyS4iywmkJrsGBISonIM5l/aaM29/nl+XE
	 1HXNURw2i5hTe+Vg21ZxtGgvD7r0cZw7Dw9NhHvjK2WZmK/DmS6eUnV5DmdSoxHsKMM=
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?SGVpa28gU3TDvGJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?U2hhd24gTGlu?=" <shawn.lin@rock-chips.com>, "=?utf-8?B?U3RlcGhlbiBCb3lk?=" <sboyd@kernel.org>, "=?utf-8?B?QnJpYW4gTWFzbmV5?=" <bmasney+clk@redhat.com>, "=?utf-8?B?SmVyb21lIEJydW5ldA==?=" <jbrunet+clk@baylibre.com>, "=?utf-8?B?Um9iIEhlcnJpbmc=?=" <robh@kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Q29ub3IgRG9vbGV5?=" <conor+dt@kernel.org>, "=?utf-8?B?UGhpbGlwcCBaYWJlbA==?=" <p.zabel@pengutronix.de>, "=?utf-8?B?RWxhaW5lIFpoYW5n?=" <zhangqing@rock-chips.com>, "=?utf-8?B?UmljaGFyZCBDb2NocmFu?=" <richardcochran@gmail.com>
Cc: "=?utf-8?B?c2hhd24ubGlu?=" <shawn.lin@rock-chips.com>, "=?utf-8?B?bGludXgtY2xr?=" <linux-clk@vger.kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bmV0ZGV2?=" <netdev@vger.kernel.org>
Subject: Re: [PATCH v4 2/4] clk: rockchip: Add internal support for 24-bit fractional dividers
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Tue, 27 Oct 2026 19:31:11 +0800
X-Priority: 3
Message-ID: <tencent_3EE2905F5ED310CDBC0C74C2D0C842800B06@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261027-add-board-ok3572-c-clk-v4-0-d4152b4fedaa@qq.com>
 <f9068153-0d6c-471f-a08b-41cff51ff748@rock-chips.com>
 <tencent_AE0E51DA2FACC999E65D6631016044234005@qq.com>
	<6321950.31tnzDBltd@diego>
In-Reply-To: <6321950.31tnzDBltd@diego>
X-QQ-mid: xmsezb41-0t1793100671tc1fp95h9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_043117_229166_AE53A6AE 
X-CRM114-Status: GOOD (  12.48  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	FROM_EXCESS_BASE64,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgaGVpa28sCgo+IGFuZMKgYXPCoEnCoHdyb3RlwqBpbsKgbXnCoHJlcGx5wqB0b8KgS3J6eXN6
dG9mwqBzbGlnaHRseSzCoGxlc3PCoHZlcmJvc2l0ecKgaXMKPiB1c3VhbGx5wqBiZXR0ZXIuwqBJ
LmUuwqBhwqBzaG9ydMKgZGVzY3JpcHRpb27CoHdoYXTCoHlvdcKgZGlkLMKgbm90wqBhwqBkZXRh
aWxlZAo+IGxpc3TCoGlzwqB1c3VhbGx5wqBuaWNlcizCoGkuZS7CoHNvbWV0aGluZ8KgbGlrZQo+
Cj4gKysrKysrKysrKysrKwo+IFNpZ25lZC1vZmYtYnk6wqBFbGFpbmXCoFpoYW5nwqA8emhhbmdx
aW5nQHJvY2stY2hpcHMuY29tPgo+IFthZGFwdGVkwqB0b8KgbWFpbmxpbmXCoHJvY2tjaGlwwqBj
bG9ja8KgYW5kwqByZXNldMKgaGFuZGxpbmfCoCh4aW4yNG3CoGlucHV0LAo+IMKgwqBkb24ndMKg
aW50cm9kdWNlwqBDTEtfTlJfQ0xLUyzCoGV0YynCoF0KPiBTaWduZWQtb2ZmLWJ5OsKgQ3VuaGFv
wqBMdcKgPDE1Nzk1Njc1NDBAcXEuY29tPgo+ICsrKysrKysrKysrKysKCkknbGwgdXNlIHRoaXMg
Zm9ybWF0IGluIG15IG5leHQgcGF0Y2hlcywgbWVudGlvbmluZyBvbmx5IHNpZ25pZmljYW50CmNo
YW5nZXMgYW5kIGxlYXZpbmcgb3V0IGZvcm1hdHRpbmcgYW5kIGNvbW1lbnQgdXBkYXRlcy4KCj4g
QW5kIGFzIGZvciBzcGVlZCwgbWF5YmUgZ2l2ZSBpdCBhIGJpdCBtb3JlIHRpbWUgYmV0d2VlbiBp
dGVyYXRpb25zLgo+IEEgdmVyc2lvbiBwZXIgZGF5IGlzIGEgYml0IGZhc3QsIGFzIGl0IGRvZXNu
J3QgZ2l2ZSBwZW9wbGUgdGltZSB0byBhY3R1YWxseQo+IHJlc3BvbmQuCgpVbmRlcnN0b29kLiBJ
IGNhbiBsZWF2ZSBtb3JlIHRpbWUgYmV0d2VlbiByZXZpc2lvbnMgYW5kIGZvY3VzIG9uIGltcHJv
dmluZwp0aGUgcXVhbGl0eSBvZiBlYWNoIHN1Ym1pc3Npb24uCgpCZXN0IHJlZ2FyZHMsCkN1bmhh
byBMdQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
