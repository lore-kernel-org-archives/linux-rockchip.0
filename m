Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAAB4606A33F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 07:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iKpuu0P0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=lqIs+7bC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+Vkb6/15KeDLAeb99pRqUKOhYVgoS5yO9XawB8GLkWw=; b=iKpuu0P0qe0qJ5xTvpzuRQicsH
	/WCIcJB0qMCyMPegdhSyENTzqurAMhEPxZ6sXUo0iBZSosL48uo+d4HyJl1+7u6mp5pQjVTdoWkGD
	2QW/XZ5xgQJe+jN8dTXuoresBJN7aZsm47Ah8RXGIYEO8xMX+iojAYRpZ77jTvZRBd/DvLKShjaJ3
	SMzaEf3LBAzaUe2kgQGDL8m940sBHs7qrBgriTFyYS//+x8YIDv3fbZehqUUbXKQIO748s4MmGrbT
	fQ1LQvt+Auk0FbnY14GwFMwXoI3RKv16CPkyvoQkhhcll4D6ySxrdIUiuH9Il3gH32dTCFR2xuaZe
	waQFuvZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRm79-0000000BxEw-2wRF;
	Fri, 13 Nov 2026 07:54:27 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRm76-0000000BxDB-34hn
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 07:54:26 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-5c09dbe96b1so53733e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 23:54:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794556463; cv=none;
        d=google.com; s=arc-20260327;
        b=EwvOEtif2NVZG31FGNo94ezdfXOP616v5dijJrXXYGTyT8EzKNhgzY6ZdZy0Q/kxgQ
         g7aJUdxXV43DMvV83i6FQmbG0ZrURIxwh9exNfVZBQLzQWVcflqOE5qDuDnLHUaYoIuP
         quej/GK/TNlvbrMeBz10dYd7NhfjYJvHupzIQuoUzO1+GHMJBnSKqkk1H4/qc+dVJimw
         aio6hJAMOsqoUwh6H1XI7c+a10ZKDWpVQupWf/gZwzX4zYpaQqwycxKAiBrPrDq/Nk0z
         bxTjsFH3GLT/GNa+U7GGit7pnDTCfpJyWKFFHki+sFaK0/G8dTw3ihjY8q8/L2NCYqB0
         OZkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jLWs2ipoib4sqkrDJNqUZN3ZZXCrx/V1Jn/vcRzhZf0=;
        fh=QzViHFJlgzuqQ1AEBNZ5Nz45oqaw2aGBrTURfqB4+EU=;
        b=em78y6LQkPGrLgpQ28CsHv+mHtT9vd7TmvhA+MqMiP48ApmY10UGXArhdh5Xln6dvS
         cpxHaejsInuPdO4UIw1tED5G2NCn0xGrT8+H8VkQzpeUYTSj+2wDbEeq9xn9jrNaZwoc
         KvbI6rxTUpYHM7fsyG7Tzmv8NlOPWizwu8OS6X0djxsoAZhrsfqQhV4caBUe9Oq+E9mb
         2B2SwDnb8g7O8lWsJM20oJyUNVvoOc4nt6lB5qAE3hgEFdMJ0R+363uhD2szEWRx9aST
         YN26N2n397CiYIh0F10Uz4I8M0jLDFFfpaq80xFYQmcHEEFo666uAxN4IFfYbb4qUSwi
         jS8A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794556463; x=1795161263; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=jLWs2ipoib4sqkrDJNqUZN3ZZXCrx/V1Jn/vcRzhZf0=;
        b=lqIs+7bCiFE2Urm4NyOe23V8EnOFpSaD/381F4r0Eo0zLxRWd+XPcYRWvrg/0JO9hl
         sa7MxwuZjqq6w8Xx0u1gVlk8fFwVSfwje7pgsnwnJ5WIkYk11k1o0Jblo4InyVLzxS8X
         zyvqRGB7QV7eLe1R3Gm8DtnLVl/e/W//qTFGEqcz7An7Vf+2gOoVFq2wQcgiLoaPDL3b
         bB9wG8q6D/xVjAEBE02qhlkZY9Kq68RHdADl5+SKGIA18zhckGw8EVZaRz392A3zgiUo
         FmzdE+JXRnfIBYtA9Lik+aX+YOLLfDDK82CMR05WWeLVMTpP9I7ovECjWU7LP/u6yWXs
         htuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794556463; x=1795161263;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jLWs2ipoib4sqkrDJNqUZN3ZZXCrx/V1Jn/vcRzhZf0=;
        b=SEAFO8/ZtrfHS8nJe3YCT+Mn2UsChxF8ihbaiiu5ntr8jVGw9Vh24VnU0aCufeKE0O
         8S4n5nAgOrMnG/6uqnwvqGtd89+EIUK4FQFPBNkMWzSKR4EW99Sx9fWN8JHLxpb7Hc4z
         GkkibussD+jeUZ4dvCMwbw8o0a7LDbSSQ2Qb6jfcHEBAgJl2mMdiVqQ78qrekYcGdoIl
         LjlkcoqAfOy2nsTbOjUmbRZ1oR51kMgK8TGlIHxPdVZILhBXKTtjUUmSLqZUYlsKaaLe
         2AC2uFwyio512jRhRuI99Wc85YsktYGVWD3UCih/Xj6sWz6NPaov4Pr7Rg7c67C9vQsM
         yAWg==
X-Forwarded-Encrypted: i=1; AL+hErHflog0EPEvRrJ1n6TUvTsPDskmuvfOeubasqWRR3L5bbjVNf8cK6OE09pPYvMjrhHMGNro3vh0mBw/+0Qkhg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+4AF9faY8KABnnkigeqr0GV1B04c24lDVZSB6i6pevAeJ/xT18
	IfqvpX7cCGBUPYY+796oNGhq55+0vXiHW8D/rt3ISTylpZXxtRU3mVufPbAE9rNEeaZc5ePA7mQ
	Tm+2Z/KliRmviLYUSm7vsEYCo+njVoAc=
X-Gm-Gg: AYBFou28j7KtWZSz46XQ47km+EKcOpZXqde6lRJuFO+LISSA1u4urO3X+uNCbAdKluu
	BiC6Q3X35LNC9MTKJvEW6gERPpmkax6TDMRcDLQA31O6xEA0N/rajpPDwTXcsBZLT95HSS3E0r8
	Yr9sO/x7ZpRzYfz6OHxPnzKfqBd7rRJdB6og5iIZA+BXxwsgt78SRVknoZZaXz7pIP6P9g7MU/E
	4oi7oliHJzpZb2ofDv7DoJXLSF3hglK2t8Tc49rrt75a/+dZH+qkaZZZ36qq17QeZtD7tVS5JPq
	FPJyl58x9xDJt2+qwJI6msIMzieFbuXppKJPrhJ7xaoLl3t6fDCoMk4uWvH8SXegcY51TthpzOX
	QbGdrzqDysQ2iB3vSfncA6Zn1/px7JkFGhBJ/Pqw6pBwNSE4A2Ywdp3hR4GlomrBVLkth1Hk=
X-Received: by 2002:a05:6512:3da4:b0:5bf:ce1f:cd22 with SMTP id
 2adb3069b0e04-5c170434e66mr787433e87.0.1794556462452; Thu, 12 Nov 2026
 23:54:22 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261112-hantro-robust-v2-0-18561fd48838@gmail.com>
 <20261112-hantro-robust-v2-2-18561fd48838@gmail.com> <c97eef1ba88daf83d231d2ecc78b47fcf524385c.camel@pengutronix.de>
 <f212840b-92fd-4d97-a6a7-2768a55483f7@collabora.com>
In-Reply-To: <f212840b-92fd-4d97-a6a7-2768a55483f7@collabora.com>
From: Arun Iyengar <aiyengar1990@gmail.com>
Date: Thu, 12 Nov 2026 23:54:10 -0800
X-Gm-Features: AclHuK-bvo5dDl4JVbgBvuOoQVFelHqw3mvt8zCrdDgOeg2cHm6xn5vl5OrzWyU
Message-ID: <CAEy9hNU2ox76TFKtdisqUHDxZ=3gPVBDBcjz_W8RtCpCpK5d7g@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] media: verisilicon: Don't hold the VPU in reset
 after remove
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Hans Verkuil <hverkuil@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sergei Khomenkov <shomenkow@gmail.com>, 
	Tharit Tangkijwanichakul <tharitt97@gmail.com>, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_235424_786196_52966A7C 
X-CRM114-Status: GOOD (  13.88  )
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

PiBMZSAxMi8xMS8yMDI2IMOgIDExOjE5LCBQaGlsaXBwIFphYmVsIGEgw6ljcml0IDoKPj4gSWYg
dnNpLWlvbW11IGFjY2Vzc2VzIHJlcXVpcmUgdGhlc2UgYnVzIGludGVyZmFjZSByZXNldHMgdG8g
YmUKPj4gZGVhc3NlcnRlZCBhdCBjZXJ0YWluIHBvaW50cywgd2h5IGRvZXNuJ3QgaXQgcmVxdWVz
dCBpdHMgb3duIHJlc2V0Cj4+IGNvbnRyb2xzPwo+Pgo+PiBEZXBlbmRpbmcgb24gaW1wbGljaXQg
YXNzdW1wdGlvbnMgbGlrZSBhbm90aGVyIGRyaXZlciBub3QgYXNzZXJ0aW5nIGl0cwo+PiBleGNs
dXNpdmVseSBjb250cm9sbGVkIHJlc2V0cyBzZWVtcyBmcmFnaWxlLgoKVGhlIEFWMSBub2RlIGxp
c3RzIHRoZXNlIHJlc2V0cyBmb3IgaGFudHJvIG9ubHkuIHZzaS1pb21tdSB3b3VsZCBuZWVkCnRo
ZW0gaW4gaXRzIG93biBub2RlIGFuZCBiaW5kaW5nLCBhbmQgYm90aCBkcml2ZXJzIHdvdWxkIGhh
dmUgdG8gbW92ZQp0byBzaGFyZWQgcmVzZXQgY29udHJvbHMuIERldmljZSB0cmVlcyB3aXRob3V0
IHRoZW0gd291bGQgc3RpbGwgaGl0CnRoZSBTRXJyb3IuIFdpdGggdGhpcyBwYXRjaCBoYW50cm8g
bmV2ZXIgYXNzZXJ0cyB0aGUgQVYxIHJlc2V0cywgc28KdnNpLWlvbW11IG5vIGxvbmdlciBkZXBl
bmRzIG9uIHdoYXQgaGFudHJvIGRvZXMgd2l0aCB0aGVtLgoKPiBUaGVyZSBpcyBhIHNpZGUgbm90
ZSBvbiBJT01NVSBkb2Mgc2F5aW5nIHRoYXQgb25jZSB0aGUgSU9NTVUgaGFzIGJlZW4KPiBlbmFi
bGVkIGl0IGNhbid0IGJlIGRpc2FibGVkIGZvciBzZWN1cml0eSByZWFzb25zLgo+IFRoYXQgbWVh
bnMgdGhhdCB3cml0aW5nIDAgb24gVlNJX01NVV9BSEJfQ09OVFJPTF9CQVNFIHJlZ2lzdGVyIGlu
IHZzaV9pb21tdV9kaXNhYmxlKCkKPiBjb3VsZCByYWlzZSBhbiBTRXJyb3Igc28gSSB3b3VsZCBz
dWdnZXN0IHRvIHJlbW92ZSB0aGlzIGxpbmUgZnJvbSBJT01NVSBkcml2ZXIuCgpJIG9ubHkgc2Vl
IHRoZSBTRXJyb3IgYWZ0ZXIgaGFudHJvX3JlbW92ZSgpIGhhcyBhc3NlcnRlZCB0aGUgQklVCnJl
c2V0cy4gdnNpX2lvbW11X3N1c3BlbmQoKSBkb2VzIHRoZSBzYW1lIHdyaXRlIG9uIGV2ZXJ5IGF1
dG9zdXNwZW5kIGluCm5vcm1hbCB1c2UsIGFuZCB0aGF0IGhhcyBub3QgZmF1bHRlZCBoZXJlLgoK
SSBkb24ndCB0aGluayBkcm9wcGluZyB0aGUgd3JpdGUgaXMgZW5vdWdoIG9uIGl0cyBvd24uIFdp
dGggdGhlIHJlc2V0cwpzdGlsbCBhc3NlcnRlZCwgdGhlIEFWMSBkb21haW4gaXMgcG93ZXJlZCBv
ZmYgd2hlbiB0aGUgSU9NTVUgc3VzcGVuZHMsCndoaWNoIGlzIHRoZSBmYXVsdCA4ZTI2ZDRjMjBl
ZDIgZml4ZWQgZm9yIGhhbnRybydzIG93biBzdXNwZW5kLiBUaGUKbmV4dCBiaW5kIHRoZW4gcmVz
dW1lcyB0aGUgSU9NTVUsIGFuZCB2c2lfaW9tbXVfZW5hYmxlKCkgd3JpdGVzIGl0cwpyZWdpc3Rl
cnMsIGJlZm9yZSBoYW50cm9fcHJvYmUoKSBkZWFzc2VydHMgdGhlIHJlc2V0cy4gSSBoYXZlIG5v
dAp0ZXN0ZWQgdGhhdC4KCklmIHlvdSB3b3VsZCBsaWtlIHRoZSB3cml0ZSBnb25lIGFzIHdlbGws
IEkgY2FuIHNlbmQKdGhhdCBhcyBhIHNlcGFyYXRlIHZzaS1pb21tdSBwYXRjaC4KCkFydW4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
