Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4739D715E2
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Jan 2026 23:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/T0dEPmf+lwATGG3+EiMUkkPu/0FqF60AAS65CdonE=; b=K21aSm34g906tZ
	LgeCn1aA8LzxKhqiH3HbSR5o2cffG3/+hth2KEn0XNh5wklIH2xisOoQ/46e6H1Zym1PWTkCBfgH4
	ZMqSEYJNMfQQE70R8qqu0vnSvzyG2VyC2rrgfpSZ+EHgcaa9gUzaiqYnsnjwmof6ayhDkWwmg6vG1
	4lmg4KaZ7u7TkqG05YxSVOhhhjNUl1RcwD2+zMyw0k2FN27KAHYCXF6j0tywbox99/XvPkgV5j5tr
	J8pYoTaRosQl/08OVGZ8pTq7HUNQ1aPy3GZ40NmjSGXC+BjLciVf4vWoZ36Fg1kMYHFhHihmJfkoY
	QY72171iHzKQfYmj2jqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjnPZ-0000000Ahtw-1rXG;
	Sat, 24 Jan 2026 23:51:25 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjnPW-0000000AhtH-2Ps3
	for linux-rockchip@lists.infradead.org;
	Sat, 24 Jan 2026 23:51:23 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-65063a95558so4726624a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 24 Jan 2026 15:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1769298678; x=1769903478; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JvEA1f9ONRPJvobNgmX24gX18ZQa14zvBpNonY0IgwI=;
        b=Wg3nqoiXZVo0wyto+NYWnxTPLALiFtoKGf2QPEdpWT/MSYUcXsmlBRPAgIqlvLYcBK
         icoUX1nImSHRm8FpEt+oFPX6wmThKaK4XOhi4L30az2Vi9EjcFyvOPQIYy9kMnZR4fWj
         8OopHDocaGM9guUpkAWBxKStRyfPuPNePQYRw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769298678; x=1769903478;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JvEA1f9ONRPJvobNgmX24gX18ZQa14zvBpNonY0IgwI=;
        b=fWazUi1meCqeOkPvsLTEnhXmE4Tjlpnkubd1/NedXqA4d/Y9SrMBhGaPCvRVq4Jqqh
         RFRvSmJzj7x7cjxclYKnvm4dIxKm/Dec+aWQSTt3obgLoqNA5rNI5XN1XjO41r0Spys7
         tbxnxMQNLd1OUv+SkLD/lgV9RdQoYO2GZwsvzm2CTYspYOXD2zBv9SBqKK2XPg0LOzkE
         c3t/mM9KjAZznzh3wCbQszNPkV3nzGRqKN+KZx+/m0MNLgvlC5lMNwoMA3tDCGI8mfc+
         H6dqDgisdkuoUEH77lbXTLTGjErsMPg/1afTiD0dZg1ZRuUdqnBX/3w7uNyS173blUbG
         C3gw==
X-Forwarded-Encrypted: i=1; AJvYcCUZ4d87h30lj/a0Gfk3f+Bgwn3YKzMM0Xm038RIeI5T4DyxarTju0s4DNOQqxsqk514Ipx1GilMXNgOYoGy8w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzHCutDzTZkg8K387ORgfVx/2riOsRBdThVvHEpSbKVBndOeBca
	rmmpqww5xHVJG1Q8riWdufJwlLtZReVBb+S7tA2TF2Sq3gzqdXSrPqjGq0J7xK8bCwdF3F23awu
	slq8Uuw==
X-Gm-Gg: AZuq6aJTL35QQcX6iI3VgdS0N4CXjQRyfQeQNp8ZurSv6DbLvmzOpHrmz2If3Sizs1R
	ArxLroqMuvkhxb5dgfjkWabcgFwj/SKLQlMbjXcj4SGLdGAOYOAtThyfcw8fr3q1CE0m8zSuk+5
	hL7bWEbdVD6RsqisSM6Bt552l/EnKE4dBHj5wpDjQVlvCNfnXd/AEa0uFFnmx9nwKRmHd/Q9pO3
	F5TkT29o+rnXvB0Mtdx0M2Jo1eYqIptgN6Q1BIO/PkecR61KESLIMTN0+dZrs2/qsniK23xG7wo
	AjKFRv/Dfn0ot9Zi/U8dUcx71mPpg023CTgRWOEfJ/3H88iiLi6//s3NJiVcpVsc4N9O2mfkOFb
	p2IWGR5KqlRHVqWrbVYW05waJAxXjCs1EgOrpal1IfEswG1t46ky2EEk6zyXnOZmKlcFUDzR6GX
	Rb7yEvdjVXU1nKRr7MHwgMILEwRMCHmPLRrJNaCWnSMwZHJDoYrg==
X-Received: by 2002:a05:6402:f23:b0:658:1035:6550 with SMTP id 4fb4d7f45d1cf-658706ccb49mr98495a12.22.1769298677973;
        Sat, 24 Jan 2026 15:51:17 -0800 (PST)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com. [209.85.128.49])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b92ba55sm2655796a12.21.2026.01.24.15.51.16
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Jan 2026 15:51:16 -0800 (PST)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47ee3a63300so38303785e9.2
        for <linux-rockchip@lists.infradead.org>; Sat, 24 Jan 2026 15:51:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUgC8Ids9AnNzkSbHeLsqxKDAl49eXTRzk+pCZQ6vczSYZJOaiCq9W49GvNWCHRqrmbZzyCZyenrGUyjPJBOQ==@lists.infradead.org
X-Received: by 2002:a5d:5f93:0:b0:427:23a:c339 with SMTP id
 ffacd0b85a97d-435ca06bd9amr202107f8f.14.1769298676341; Sat, 24 Jan 2026
 15:51:16 -0800 (PST)
MIME-Version: 1.0
References: <cover.1769191673.git.robin.murphy@arm.com> <c7f6f75d55a4801eab63a0dc81d14ae27866aca9.1769191673.git.robin.murphy@arm.com>
In-Reply-To: <c7f6f75d55a4801eab63a0dc81d14ae27866aca9.1769191673.git.robin.murphy@arm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Sat, 24 Jan 2026 15:51:04 -0800
X-Gmail-Original-Message-ID: <CAD=FV=W+hbNiDmSmzPqGQsmH2WD_3Nm1vb1ZsvE2CORdVdR=DA@mail.gmail.com>
X-Gm-Features: AZwV_QgOnwu8ZDNoMgAedT6RUZDiRd84e1b3_o2xjJbMyBz7YJt7WbVufA8oGT4
Message-ID: <CAD=FV=W+hbNiDmSmzPqGQsmH2WD_3Nm1vb1ZsvE2CORdVdR=DA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: display: panel: Move FriendlyElec
 HD702E to eDP
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org, thierry.reding@gmail.com, 
	sam@ravnborg.org, jesszhan0024@gmail.com, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260124_155122_620710_B71A1513 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBGcmksIEphbiAyMywgMjAyNiBhdCAxMToyMuKAr0FNIFJvYmluIE11cnBoeSA8cm9i
aW4ubXVycGh5QGFybS5jb20+IHdyb3RlOgo+Cj4gVGhlICJFIiBhbGx1ZGVzIHRvIHRoZSBmYWN0
IHRoYXQgRnJpZW5kbHlFbGVjJ3MgSEQ3MDJFIGlzIGFjdHVhbGx5IGFuCj4gZURQIHBhbmVsIC0g
bW92ZSBpdHMgY29tcGF0aWJsZSB0byB0aGUgYXBwcm9wcmlhdGUgYmluZGluZyBkb2MuCj4KPiBD
YzogPGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnPgo+IEFja2VkLWJ5OiBSb2IgSGVycmluZyAo
QXJtKSA8cm9iaEBrZXJuZWwub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFJvYmluIE11cnBoeSA8cm9i
aW4ubXVycGh5QGFybS5jb20+Cj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvcGFuZWwvcGFuZWwtZWRwLWxlZ2FjeS55YW1sICAgICB8IDIgKysKPiAgLi4uL2RldmljZXRy
ZWUvYmluZGluZ3MvZGlzcGxheS9wYW5lbC9wYW5lbC1zaW1wbGUueWFtbCAgICAgICAgIHwgMiAt
LQo+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKClJl
dmlld2VkLWJ5OiBEb3VnbGFzIEFuZGVyc29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
