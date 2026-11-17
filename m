Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD8DE606A32A
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 06:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1vSA3r0c;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=LyNyvH8P
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=kX5Q5qtGbPLE0gQjR7Er7UC8Q8ZSQRBWal6Fkz7fnVc=; b=1vSA3r0cNZF5eiZ5Fpdn+hUvM3
	1EW0LLF7fLv0bCuLgFM5OEJKQhpon5uegDk8iSP49P+ri4ORb4hVKOBAvONyMaAFz3AENxggOf0xH
	sjTpP4GB16EKd+o6Jl+zi4bo2F8SCgAA9fpFP805xyTEiSJIqm9UVRFoJoQgN1y1Xqef7Jl27blLH
	D3r/klIsEBMyLhslcm8PhhqTD7ZsBg821Asf2lddJXDDQoU8JqUjTNdF7944lhXAIpFmDOQq+naE0
	Eb/1w863AuESXVBs8nCzgf7igvD3xjx4RCbO7urH6g1sGZK2WVYmoWq1tlzI8fCMHDL6P85WtirOW
	Q7vOaw7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTCR2-00000004eYm-2Yad;
	Tue, 17 Nov 2026 06:12:52 +0000
Received: from out162-62-58-211.mail.qq.com ([162.62.58.211])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTCQz-00000004eXu-10jB;
	Tue, 17 Nov 2026 06:12:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1794895961; bh=3vsxfZ2MDOq/K41CQAgTtWIJsNxDIx0dtdlSnCViIUM=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=LyNyvH8PlKSUawdsGsOJNsSYwia0oQw1KWMwpPOmWCU0doc8vKci7gimMC+Tr93Kf
	 zLTpdNPtIIKdJysfsoVRWwf9V3vNIV07EGv3EoXVIY7v457oSOBHNXOZoYvXNgpjNB
	 9/xOarpcfIpa0HIK16NkmE2QcmueiFTRe8GeXgf4=
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-QQ-XMAILINFO: Nco5cZgmLIi8YM/CBblmom27fNnvM6KwZ5pAr8uzyhJr2gXKCLA0OBKW05HmXh
	 AXEIczDfcgO27RPMZ52osd/uemxiqp+la7U99Hs1eR2eB6TLGrjjSZrUG7F1T/QVApZlePcq6Ivuw
	 klBROncxPutQEM1KSmQxkmJkEsFcGj63zxv2sz3lZybhN7EeM6ss4wnCGf5cuHVYXf+ghDg7FaD7u
	 7OPApDlLttlc1Lk4qkRKEgIWHy4gVoHEuRPhOUxnvtkH/oAxLItSl6s5JpFdaDFuEtPkqPSIolsuC
	 GtpCz14ZaeZhfpXbQEt/8hTDJBNLq17E8VFnGAepn0xtCz9K3GGKBQoD6nhfv0DiemGTS74NaLZz/
	 T5Ji8IcYELJRwLloxXOcjqlfoVRZihI5J/aI07/V9OUyD/OEO1D0RxVLe8vbLQoZnYzPXrMu//Ae1
	 mQA1otiXE2irSF7A2X6p3Ot2LyUv64gj1CpHVA8dsn6TxWvlEq223ph4wbLVYYaQDNKfdBs3Cx2M/
	 TVeMikPLNg4oCjwtzUWYKku5G89cLvbQGUags3MbORX57XV7KWjht/5SCW2FStCp9Hp/ic3l6Dw7H
	 4rw7Oy1Xm4ycnL+9XOwPx+vDls0p8FRqAdMUJa3tkflKvhu387vdZJfzIp9OSd+zl5P+Vpe7Vc8TI
	 jWd5Y9M3lMIGZ/NKsoBVkkt2hfJess3YTLDuZ3DecplJaGtYjCvxK6v3tBags20u9R1Cj33W+l8/i
	 orcXtrhvrnHmKY6Vd0BjsbNGpoEmwBlc5j6vSKPylVUjmk8KJ+0tydh+ZYpdR2EDds7vokucHyZf/
	 w1GTsKNlAbIBQCpV1O6vUTA8wgnji0szdmVoZDkc34D2JZhj7CDpNr90LLN4bBVDz9DY53saGt/Kh
	 x01+S5AlyH+H4ZgwmlhSmzI/2fQplGhnlQf7fLgctpXjwQ6cv0BaPss3TStTi5qaGIjo5tsf7h0eP
	 VGxAnCjP0DNQwVBOr1SEkmQRaN3cVFcPC/wm/Y4dkZoZ+P4UBdAttClPyHK+hEH9CPjnOzBSQ8qnC
	 tm6BZ2jX/DUKqoeGNXJULQjojqed2tC1/tKwB2kbqY+9AcvU=
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?bmV0ZGV2LWJvdCtzYXNoaWtv?=" <netdev-bot+sashiko@kernel.org>
Cc: "=?utf-8?B?bWts?=" <mkl@pengutronix.de>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?c29ja2V0Y2Fu?=" <socketcan@hartkopp.net>, "=?utf-8?B?ZGF2ZW0=?=" <davem@davemloft.net>, "=?utf-8?B?ZWR1bWF6ZXQ=?=" <edumazet@kernel.org>, "=?utf-8?B?a3ViYQ==?=" <kuba@kernel.org>, "=?utf-8?B?cGFiZW5p?=" <pabeni@redhat.com>, "=?utf-8?B?aG9ybXM=?=" <horms@kernel.org>, "=?utf-8?B?Y29yYmV0?=" <corbet@lwn.net>, "=?utf-8?B?c2toYW4=?=" <skhan@linuxfoundation.org>, "=?utf-8?B?cmR1bmxhcA==?=" <rdunlap@infradead.org>, "=?utf-8?B?d2c=?=" <wg@grandegger.com>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, 
	"=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtZG9j?=" <linux-doc@vger.kernel.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>
Subject: Re: [PATCH net v9 04/10] can: dev: check netif_running() before bus-off recovery
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Tue, 17 Nov 2026 14:12:38 +0800
X-Priority: 3
Message-ID: <tencent_CF62B15F445313CD974C5502DCC84F000B06@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261111-rockchip-canfd-restart-close-v9-4-6643f3825ba3@qq.com>
	<179452272955.488853.2430789088711910750@kernel.org>
In-Reply-To: <179452272955.488853.2430789088711910750@kernel.org>
X-QQ-mid: xmsezb41-0t1794895958twn8o40ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_221249_845106_91501B45 
X-CRM114-Status: GOOD (  13.48  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	FROM_EXCESS_BASE64,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

PiBUaGFua8KgeW91wqBmb3LCoHlvdXLCoGNvbnRyaWJ1dGlvbiHCoFNhc2hpa2/CoEFJwqByZXZp
ZXfCoGZvdW5kwqAzwqBwb3RlbnRpYWwKPiBpc3N1ZShzKcKgdG/CoGNvbnNpZGVyLgo+IAo+IENy
aXRpY2FsOsKgMMKgwrfCoEhpZ2g6wqAywqDCt8KgTWVkaXVtOsKgMMKgwrfCoExvdzrCoDEKPiAK
PiBJZsKgeW91wqBiZWxpZXZlwqBub25lwqBvZsKgdGhlwqBpc3N1ZXPCoGFyZcKgbGVnaXRpbWF0
ZSzCoHBsZWFzZcKgcmVwbHnCoHRvwqBlYWNoCj4gaXNzdWXCoG9mwqBNZWRpdW3CoHNldmVyaXR5
wqBvcsKgaGlnaGVywqBhbmTCoGV4cGxhaW7CoHdoecKgdGhlwqBBScKgaXPCoHdyb25nLgo+IElm
wqBhbnnCoG9mwqB0aGVtwqBhcmXCoGxlZ2l0aW1hdGXCoGFuZMKgeW91wqBwbGFuwqB0b8KgcmVz
cGluLMKgcGxlYXNlwqBsZXTCoHBhdGNod29yawo+IGtub3fCoGJ5wqBpbmNsdWRpbmfCoCJwdy1i
b3Q6wqBjciLCoGFzwqBhwqBzZXBhcmF0ZcKgbGluZcKgYXTCoHRoZcKgZW5kwqBvZsKgeW91csKg
cmVwbHkKPiAob25lwqBzdWNowqByZXBsecKgcGVywqBzZXJpZXPCoGlzwqBlbm91Z2gpLgo+IAo+
IC3CoFtIaWdoXcKgSW7CoGNhbl9idXNfb2ZmKCnCoChkcml2ZXJzL25ldC9jYW4vZGV2L2Rldi5j
OjI3NC0yODUpLMKgdGhlwqBuZXcKPiDCoMKgcnVubmluZ8KgY2hlY2vCoGFuZMKgdGhlwqBzY2hl
ZHVsZV9kZWxheWVkX3dvcmsoKcKgY2FsbMKgYXJlwqB0d2/CoHNlcGFyYXRl4oCmCj4gLcKgW0hp
Z2hdwqBUaGXCoG5ld8KgbmV0aWZfcnVubmluZygpwqBjaGVja8KgaW7CoGNhbl9yZXN0YXJ0KCkK
PiDCoMKgKGRyaXZlcnMvbmV0L2Nhbi9kZXYvZGV2LmM6MjAxKcKgcnVuc8KgZnJvbcKgdGhlwqBy
ZXN0YXJ0wqBkZWxheWVkwqB3b3JrwqBvbuKApgo+IC3CoFtMb3ddwqBUaGXCoG5ld8KgdGV4dMKg
aW7CoERvY3VtZW50YXRpb24vbmV0d29ya2luZy9jYW4ucnN0wqBtYWtlc8KgYW4KPiDCoMKgdW5j
b25kaXRpb25hbMKgcHJvbWlzZcKgYWJvdXTCoHJlc3RhcnQtbXMuCgpwdy1ib3Q6IGNyCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
