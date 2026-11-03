Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF730606A333
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 13:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GSyQz14B;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=hT1uyxmX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=IYXm886i8FWZVi3ZxJbVQc2EW8iOyeUz58dTJou2u+A=; b=GSyQz14BthEEMp5ZcQsB4x6Ilb
	r1MgKD1QMsCsHw+DGJOYN9JMIkL+lC4CaKLkggk2aB+j4TnowHsd1DfInApchERUh7i4CnFQqrKuJ
	7W+zKJdfsV950Vd6QKCee9us4ewRDCkKsH8zxkX8mgp5Z3FadjFIRGpMbi5qoj6fUs7TpA4tD/zfn
	GvWmtMgOps0P1H6fM+GX6v6JAI1KdN79SwFWyrrTxONXzobF97MG38vU44z3eVoBnwtrHzX91q5eb
	lEvYpjgRbVge4NxrVcFnl1t7V1vHIPbR+eWEx6XoKW9Mzo0Zav5DBV0f5Q9lpK3upIMB9ID5QTsNZ
	eI/xUY/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOEqF-00000002clj-0Cp2;
	Tue, 03 Nov 2026 13:46:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOEqB-00000002chb-2I4j;
	Tue, 03 Nov 2026 13:46:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=QeBIzSBgbncOGqlM98hwD+JA9fUoC+6t2mWGJwt78Kw=; b=hT1uyxmXlGd35FvwuJi86gP5fh
	jJrzYSLnWjbn9JrgM1rOrYootc4LL5NwR+NlFuitkSw7wZftZ9ZwVbceHpXJ0pgnmW1XFOVY0ebfQ
	HV9g62vS9L6dqKIRX8jKqMSoGGM565N2LVqlrKtNU7HOV3PDrb+zQTwbBINLiM+UgUtsdlvAmiMYs
	/l45+mUYAT1M5Ouw3p7oDCkLni+r+V3Cmegi7eI/tCgbZO5+9LMt2OVQXn7CpEv4my1az7GreJ5UW
	0jJ/eKX19DRD/5u1dyjZGs9VcfS/rS4ZGNdRg3hTsY94ZlSJR0S+PkmqXA/pVzgcZ+ct0vyRID0d4
	q96ujZmQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jingoo Han <jingoohan1@gmail.com>, Inki Dae <inki.dae@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 Damon Ding <damon.ding@rock-chips.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v5 00/18] Add HPD support for Rockchip Analogix DP
Date: Tue, 03 Nov 2026 14:45:41 +0100
Message-ID: <6109289.1B3tZ46Xf9@diego>
In-Reply-To: <20261027132810.1746118-1-damon.ding@rock-chips.com>
References: <20261027132810.1746118-1-damon.ding@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_054619_649280_391BD8BA 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDI3LiBPa3RvYmVyIDIwMjYsIDE0OjI3OjUyIE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgRGFtb24gRGluZzoKPiBDaGFuZ2VzIGluIHY1Ogo+IC0gQWRk
IGZvdXIgbmV3IHBhdGNoZXM6Cj4gICAtIFNlbGVjdCBWSURFT01PREVfSEVMUEVSUyBmb3IgRFJN
X09GX0RJU1BMQVlfTU9ERV9CUklER0UgdG8gZml4Cj4gICAgIHRoZSB1bmRlZmluZWQgcmVmZXJl
bmNlcyBmb3Igbm9uLUV4eW5vcyB1c2Vycy4KPiAgIC0gVW5iaW5kIHRoZSBicmlkZ2Ugd2hlbiBk
cm1fYnJpZGdlX2Nvbm5lY3Rvcl9pbml0KCkgZmFpbHMgb24gdGhlCj4gICAgIFJvY2tjaGlwIGFu
ZCBFeHlub3MgcGxhdGZvcm1zLgo+ICAgLSBEZWNsYXJlIERSTV9CUklER0VfT1BfSFBEIG9uIHRo
ZSBBbmFsb2dpeCBEUCBicmlkZ2UgYW5kIHJlcG9ydAo+ICAgICB0aGUgaG90cGx1ZyBldmVudHMg
dmlhIGRybV9icmlkZ2VfaHBkX25vdGlmeSgpLgo+IC0gTW92ZSB0aGUgbmV4dF9icmlkZ2UgcmVz
b2x2aW5nIHBhdGNoIGFuZCB0aGUgZm9yY2VkIGNvbm5lY3RlZAo+ICAgc3RhdHVzIHJlc3RyaWN0
aW9uIHRvIHRoZSBmcm9udCBvZiB0aGUgc2VyaWVzLgo+IC0gVXNlIGEgcHVyZSB0aHJlYWRlZCBJ
UlEgaGFuZGxlciBhbmQgaG9sZCBydW50aW1lIFBNIHJlZmVyZW5jZXMgaW4KPiAgIHRoZSBJUlEg
dGhyZWFkIGFuZCB0aGUgZGV0ZWN0IHBhdGhzLiAoU2FzaGlrbykKPiAtIExpbWl0IHRoZSBydW50
aW1lIFBNIGhvbGRpbmcgdG8gdGhlIFJLMzU3Ni9SSzM1ODggcGxhdGZvcm1zIGFuZAo+ICAgZXhj
bHVkZSB0aGUgYm9hcmRzIHdpdGggYSBmaXhlZCBwYW5lbC4gKFNhc2hpa28pCj4gLSBGaXggdGhl
IGRpc3BsYXkgdGltaW5ncyBsZWFrIGluIGFuYWxvZ2l4X2RwX2F1eF9kb25lX3Byb2JpbmcoKS4K
PiAgIChTYXNoaWtvKQo+IC0gQ2hhbmdlIHRoZSB0eXBlIG9mICZhbmFsb2dpeF9kcF9kZXZpY2Uu
aXJxIHRvIGludCB0byBmaXggdGhlIGRlYWQKPiAgIGRwLT5pcnEgPCAwIGNoZWNrLiAoU2FzaGlr
bykKPiAtIFJlYmFzZSBvbnRvIHRoZSBsYXRlc3QgZHJtLW1pc2MtbmV4dC4KCkV2ZXJ5dGhpbmcg
c3RpbGwgd29ya3MsIHNvIGZvciB0aGUgbmV3IHBhdGNoZXMgYWxzbwpUZXN0ZWQtYnk6IEhlaWtv
IFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
