Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4D16606A323
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 06:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JrHSfPO9;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=N4qMx+yp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=lGbyZC9i5S9QTWgBWyrB7e7d314sJkb4dHmwH6PASbw=; b=JrHSfPO9ke2C+N2dTqhEa4Lpl0
	YujeeKpXhLgIobj797jOBmSosb22RVjbT/Ck1+6OAxA4HxNRBHsmTLngApWTn66c/7md9+vvR2ml6
	nNynW3FgSqoakca66deEqGgY/ZuhmDEpZmJ/lBYQlZU+Fp1BWvS4wSJZQpePvsq5N2HOZVxWuY0D6
	Ckv+rprAt8+3FbJPr67cGtSq5FuccYnuAVWcA+Q0FqGJxvM2/x1aZnW3CfclRzGdNy4r9JpcbJnIs
	n/sseQJW9FZCgHIqNuDK98X1seenLJI4ufnu9Fy4UoZnujWGeBe3qA6xMN6yrhUWsc1oSST+RpR4P
	bNyz9n7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTCc2-00000004fQB-1Ykt;
	Tue, 17 Nov 2026 06:24:14 +0000
Received: from mail-ej2-x09.google.com ([2a00:1450:4864:34::9])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTCbz-00000004fP2-1Xeb
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 06:24:12 +0000
Received: by mail-ej2-x09.google.com with SMTP id a640c23a62f3a-c504b4f2b6dso167493366b.0
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Nov 2026 22:24:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794896649; cv=none;
        d=google.com; s=arc-20260327;
        b=rugziBD9vwHhkNtfZ0bJN9QGdJVph3DkaVJ/VB/tDfU3rfoCrEbvwEyQk0M9nNEjGe
         nOmnxbceNt04Yn6O58tNlk3KnT70FD6Pqg6nz0eWEUfWYV1hy3/M6fAExdMUVCQA4QO3
         fWMMfiS7WFAE5ZoG0Iw0QWZVbeoN7YAiw0ZE+gogk/QQNfGOZevw9DxOCJ0+WXaN1R31
         imDJtJpdaJJju9i0N+QS6WLyxXjh+9R/O3/w8dGNauOav+cgese7dyBMQt6mkJoQTLFY
         ejtsG947WagggizksRy63x6YeU2TTb2WbfhV80ikNsc7rc85fhmtQg7blrehjGXAf4uu
         eifQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Bv8z5Io8RhbyyeuDISboM7YRSTMS03SBG0kjxtz0W9A=;
        fh=1tONVqJcRBqupurpZEF972QIxj2TDDFqRa1VR2mzF9U=;
        b=M/Yn/zitpEd9zNY4gAoj5gYRavJiWPFjaLKBNUKiNGcyD+TeCRSsvP1Qfl9iZ23u5W
         k9lw8xa/DVElsppXxh9ckpgrbOTFALspJ+gvfyYE/VH0P88igY244n//Yi8MsSsEWDKA
         q5TCJr1Mr4CgNBSWs1FkkMweDwV7XE2mtQtIDNWK3RsE5oqV9J5vhU+qT32sKWe0cbGB
         Oj8cGGLL55hhKriRQELQmBWy2JdZeXI80nD5BMfnwVGNNsIK16hy2i0GLBim2UCl/jz1
         YgEAvhfQMJ1Bo/rGx2CvWO67oMn7LycUffU3xu/ZYHB4f77L6wf+6HS2cRVBR8ACG5Z2
         RZyA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794896649; x=1795501449; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Bv8z5Io8RhbyyeuDISboM7YRSTMS03SBG0kjxtz0W9A=;
        b=N4qMx+ypgI5gc1ixpD74oZdnRIHbyhvsSEFOi551vqFqEC9XRrImO2ZX+I1Fllqfoc
         Ue3zTiALgl5bYIPAY5JOkQMWxwIWzpPakHdf6vBMdhlCSAmJis8NMxOVMREl+QaY6AO3
         qWrTL+WjJGDeiTyypWt6AWfHaCOhIxRTlTSTEZpVFVGZVJRU2iQamcKSanZbtTm8g9sE
         cyM8NSmwrlDZhf2Y/tZZYhYZeGokyZWdxN/9wlBbuqbzvCxne24H+9Ct2ZDEPfVxmIPb
         hXUlK0oKwYEpXxe2k9TbbeT25D0Xz+Ak+9/c1MMhuDW+A8CNgeeYOo1FcX5QibuAoAsE
         AvYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794896649; x=1795501449;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Bv8z5Io8RhbyyeuDISboM7YRSTMS03SBG0kjxtz0W9A=;
        b=be8VPSupnK7vKN4QZ1ZzE+sBJM/W7+owOSQ/cm45K1BZO/qxGV9gab0Sp9BO1wnRkW
         CoUnz/2LB+5FdGE/kYvbvnbPZW0wiEkMjgqF9Pv7/yfbJ0468StySff5IZRiHA0kiefO
         KkVeRITiv2guhRSYE4cZTIuk7jfUPLW4BZyDWn4676seYZLzACTH2QMaoUpxOHhZv0Qk
         zHTPzZFfPG+alphZHI/qCLQ7UulvlEp/0EB4ld6sFyoSnK2cLZUVJ4yHWDLHOs8LGewr
         dYS5hzcCE3Lx37/Io+kfhiVy7sOscw0vFVITfspbkLH8FLO9s5fErUGl7a2C8cZZtcY7
         MxFg==
X-Forwarded-Encrypted: i=1; AL+hErHWdw+/lOuytwk1XeRqejyUK6cN4gmN4KKillB5mjTLT9sMB9BARJLNNLYMLczTBOv+Zxm1KR4zTIiG7uJSaA==@lists.infradead.org
X-Gm-Message-State: APuU4Z/ThFylO5tjYrE8gnOG/sa6j1opqMlLnwJSRdLmzbScUQj3k6Qv
	+SsUZRgqeAWCIQegMRcBWK9ZE+L5ElrZ0ksV9k7In498euHTR/KTDbHioJEIlstZwv27vUQ8ddl
	QpwRtZ+iV8mlP5y0xBDGqdDyqwBhMTFge4OeUkGk=
X-Gm-Gg: AYBFou2/yhNchFuLYSKGjgVVFv0Qxmz9SVrHtmP5MeLfuBjSrEWmgHfWEbifSHoaT8Q
	fCKynfrNrbB0+7LYOl7jMJ5bWYBUys69jQoL9QKzbdG1wluyCwPnx57Yt3TtQk3PvRoDtdAHwRS
	FhZYVslSHOaWOE7CROzirQ32hXFkNiCdPdJNkPkNSKnF4V4iaRhxRI5M7QEsn2+5yCgO10sptlg
	jdFBYyI2eKz4uKx7xL+N6vUOwPdzXzuGJo1LVVCXVhQABTuHBX2P206pNXTq7U4Z2dNjCPBVlXG
	ZG98T38htehYdJTvhpzO2/x7LClqdcNFUTSGSviz/aqrt8WQXBHg/EsT2nwEM5CXUw7lqexAjnt
	Lhwue2GsHKxGMFZQd2Zdo095EqCyD+1CEmGxzbNZBQyPJwmWD28PNGEBIrGGKzwwmpDoPNeNtkL
	JBupnfEFQsOHs=
X-Received: by 2002:a17:907:7ba3:b0:c25:91bc:ff55 with SMTP id
 a640c23a62f3a-c509636a832mr966830466b.23.1794896648621; Mon, 16 Nov 2026
 22:24:08 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261110160554.918652-1-coiaprant@gmail.com> <20261110160554.918652-2-coiaprant@gmail.com>
 <20261116183012.11a7ba72@kernel.org>
In-Reply-To: <20261116183012.11a7ba72@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 17 Nov 2026 14:23:56 +0800
X-Gm-Features: AclHuK_nLO104gw1yCZjvRwQLJzYX6sO8gDm56OtDyoqEcCmc11J_KEsaJmWM1U
Message-ID: <CALj3r0gTuJEDd==WzAQ+cK3Og-2zMqvmBrhrd2ARbKJctG5ZAQ@mail.gmail.com>
Subject: Re: [PATCH net-next v4 1/2] net: phy: move DECLARE_PHY_INTERFACE_MASK_ZERO
 to core
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, Paolo Abeni <pabeni@redhat.com>, 
	Jiawen Wu <jiawenwu@trustnetic.com>, Mengyuan Lou <mengyuanlou@net-swift.com>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Heiko Stuebner <heiko@sntech.de>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
	Fabio Baltieri <fabio.baltieri@gmail.com>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_222411_416458_90647E22 
X-CRM114-Status: GOOD (  14.60  )
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
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDEx5pyIMTfml6Xlkajk
uowgMTA6MzDlhpnpgZPvvJoKPgo+IE9uIFdlZCwgMTEgTm92IDIwMjYgMDA6MDU6NTMgKzA4MDAg
Q29pYSBQcmFudCB3cm90ZToKPiA+IC0tLSBhL2luY2x1ZGUvbGludXgvcGh5LmgKPiA+ICsrKyBi
L2luY2x1ZGUvbGludXgvcGh5LmgKPiA+IEBAIC0xNTksNiArMTU5LDkgQEAgdHlwZWRlZiBlbnVt
IHsKPiA+ICAjZGVmaW5lIERFQ0xBUkVfUEhZX0lOVEVSRkFDRV9NQVNLKG5hbWUpIFwKPiA+ICAg
ICAgIERFQ0xBUkVfQklUTUFQKG5hbWUsIFBIWV9JTlRFUkZBQ0VfTU9ERV9NQVgpCj4gPgo+ID4g
KyNkZWZpbmUgREVDTEFSRV9QSFlfSU5URVJGQUNFX01BU0tfWkVSTyhuYW1lKSBcCj4gPiArICAg
ICBERUNMQVJFX1BIWV9JTlRFUkZBQ0VfTUFTSyhuYW1lKSA9IHsgMCwgfQo+Cj4gSSB3b25kZXIg
d2hvIHN1Z2dlc3RlZCB0aGlzLCBoaWRpbmcgdGhlIGluaXQgaW5zaWRlIHRoZSBtYWNybyBzZWVt
cwo+IGEgYml0IHN1YmplY3RpdmUuIEkgc2VlIG5vIHN1Y2ggZGVmaW5lcyB0b2RheS4gV2UnbGwg
bmVlZCBhbiBBbmRyZXcKPiBhY2sgZm9yIHN1cmUuCj4KPiBQbGVhc2UgdHJ5IHRvIGFkZCBsb3Jl
IGxpbmtzIHRvIHByZXZpb3VzIHZlcnNpb25zIG9mIHRoZSBwYXRjaHNldAo+IGluIHRoZSBjb3Zl
ciBsZXR0ZXIuCgpIaSBKYWt1YiwKClRoYW5rcyBmb3IgdGhlIHJldmlldy4KClRoZSBtYWNybyB3
YXMgb3JpZ2luYWxseSBpbnRyb2R1Y2VkIGxvY2FsbHkgaW4gdGhlIFdhbmd4dW4gKHR4Z2JlKQpk
cml2ZXIgKGNvbW1pdCA0N2Y4NDhhYWM0ZTcpIHRvIGhhbmRsZSB0aGUgdW5pbml0aWFsaXplZCBz
dGFjayB2YXJpYWJsZS4KSG93ZXZlciwgdGhlaXIgbG9jYWwgdmVyc2lvbiBpbmNvcnJlY3RseSB1
c2VzIFBIWV9JTlRFUkZBQ0VfTU9ERV9NQVggYXMKdGhlIGFycmF5IGxlbmd0aCBpbnN0ZWFkIG9m
IEJJVFNfVE9fTE9OR1MoKSwgd2hpY2ggYWxsb2NhdGVzIGZhciBtb3JlCnN0YWNrIHNwYWNlIHRo
YW4gbmVjZXNzYXJ5LgoKSSB3YXMganVzdCB0cnlpbmcgdG8gZml4IHRoYXQgYnVnIGFuZCBtb3Zl
IGl0IHRvIHRoZSBjb3JlIGhlYWRlciBzbwpib3RoIHR4Z2JlIGFuZCBYUENTIGNhbiB1c2UgYSBw
cm9wZXJseSBzaXplZCwgemVyby1pbml0aWFsaXplZCBiaXRtYXAuCgpJIHVuZGVyc3RhbmQgeW91
ciBjb25jZXJuIHRoYXQgaGlkaW5nIHRoZSBpbml0IGluc2lkZSB0aGUgbWFjcm8gc2VlbXMKc3Vi
amVjdGl2ZS4gU2luY2UgeW91IG1lbnRpb25lZCBhbiBBbmRyZXcgYWNrIGlzIG5lZWRlZCwgYW5k
IGhlIGlzIHRoZQpuZXQgUEhZIG1haW50YWluZXIgKHdobyBhbHNvIGxvb2tzIGFmdGVyIHRoZSBX
WCBkcml2ZXIpLCBJJ2xsIGtlZXAgaXQKYXMtaXMgZm9yIG5vdyBzbyBoZSBjYW4gcmV2aWV3IGl0
IGluIGNvbnRleHQuCgpJZiBBbmRyZXcgYWxzbyBmZWVscyB0aGlzIGRvZXNuJ3QgYmVsb25nIGlu
IHRoZSBjb3JlLCBJIHdpbGwgZHJvcCB0aGUKbWFjcm8gZW50aXJlbHkgYW5kIHN3aXRjaCB0byBl
eHBsaWNpdCBtYW51YWwgaW5pdGlhbGl6YXRpb24gdXNpbmcKcGh5X2ludGVyZmFjZV96ZXJvKCkg
aW4gYm90aCBkcml2ZXJzLgoKSSdsbCBhbHNvIG1ha2Ugc3VyZSB0byBhZGQgdGhlIGxvcmUgbGlu
a3MgdG8gdGhlIGNvdmVyIGxldHRlciBpbiB0aGUKbmV4dCB2ZXJzaW9uLgoKCkNvaWEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
