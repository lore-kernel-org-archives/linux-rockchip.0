Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD2B5CA5FC5
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Oct 2026 06:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FR0QTzakJqPIBbc1O8ijTFsPhTjzhGjtyDTavmUE/ho=; b=CSB6iMlBR6Kj82
	Q6KlCFfO1UZ6PL8/L+AtRbWoXnbTrjwAo8ktUv9DGmNzcd8sOJTkes6/a0I0wevP/pmFyBK5mcKqw
	iCgyFAQ/iiBBfey72C5oCcNUXwUgZ/uXGjVOe2sruqydw84DCSU9NtJY0GwBbaWx213IbAtIX3F92
	K/CPZeZ9tTBhN8QuYy0ExNT/P++02+3SRdn/6xkv3Im8NohhOr60yRHh/FMplGxZuvHzJ0phgjUQ6
	CXFvwNz1N19fBvf7GsPqUXIKd2CX1UNq6rvHJUPCl2IBPoe520z+SY72rj4pIi+g2yliCrKQMnfOm
	PAL35wUEO6ZueZEuL7qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCAlZ-00000007w3f-3aB3;
	Thu, 01 Oct 2026 06:59:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCAlY-00000007w3R-3KXz
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Oct 2026 06:59:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2D35744798
	for <linux-rockchip@lists.infradead.org>; Thu,  1 Oct 2026 06:59:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DACA61F00A08
	for <linux-rockchip@lists.infradead.org>; Thu,  1 Oct 2026 06:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790837979;
	bh=QJwfbKCyn/gh6UMXa/B9wDnCdxqQxEqYbYvEbOHcRzo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=Eb7QsxdVvwC6Q6ASOE6RHWopINjqmVsM+asCISC8KzX4TbbjLlLnsFGewjxLBiuAL
	 USpbOV25b9ZmxZxGODhRZ/pIOUEV4j/7ISqQiq/4Q3iBTdt2DVLljYevQD1l6XoyiL
	 /6myJolVu0oJo4EALqct9L6A2ND53yX9mOAI/X1jCNzZ1CH/ZbM+48f/OViR41yaiE
	 YSWVB+jXEhQSQQdD456ShpIZi68mzYXHl+aRD0Dw6RexksYrZgHbY19oPl/9V4B29b
	 xtsP823iFmnkNIANNLcxBYI21WhoxAkFuarvbrBPjvq3midaRtXgYMBNaY+ttNwSXN
	 HLUC7j9fQRUAA==
Received: by mail-lr2-f35.google.com with SMTP id 38308e7fff4ca-3a6124046f0so52239001fa.3
        for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2026 23:59:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBwux6W7xiX4WqNym4aF6oKVGnkPxP3fRK6ueuClhJbFU5rpHbCCX49dEwj4o1ptSvD3gtkqfyNpzhbOoCdaJg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJ+dlaf/5DXTy2JP0NFmiU1OXv/FyGYHGb+VDfdq8tACP8Ky7LC
	KubSJFYGigegTHolTiCHksBNd5dBYlj9Qe1QlzPYJLQ2s44lNSN+ew9qh1yuprKam2vJL8JbOFI
	djJ/Zmo7eXYrlPWHmY38pqVMXJu0WYx0=
X-Received: by 2002:a2e:a99a:0:b0:3a7:812b:d0b with SMTP id
 38308e7fff4ca-3a7812b1f22mr7437971fa.11.1790837978465; Wed, 30 Sep 2026
 23:59:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com> <20260916-drm-bridge-every-panel-v3-8-83afb4f1a707@bootlin.com>
In-Reply-To: <20260916-drm-bridge-every-panel-v3-8-83afb4f1a707@bootlin.com>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 1 Oct 2026 08:59:25 +0200
X-Gmail-Original-Message-ID: <CAD++jL=G5ObsdvbhHFsEOeGYQFSd8Ggo7jaEupRTEdPmQD1e1A@mail.gmail.com>
X-Gm-Features: AclHuK_sHPl7UkC73IJwZdQ3ifWpNCzHWYkFbMbP-K9-g_pDmrUnJv1iVcxQNBo
Message-ID: <CAD++jL=G5ObsdvbhHFsEOeGYQFSd8Ggo7jaEupRTEdPmQD1e1A@mail.gmail.com>
Subject: Re: [PATCH v3 08/19] drm/todo: add entry for removing the
 panel_bridge API
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
	Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
	Paul Kocialkowski <paulk@sys-base.io>, Inki Dae <inki.dae@samsung.com>, 
	Jagan Teki <jagan@amarulasolutions.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Sean Paul <sean@poorly.run>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Albert Esteve <aesteve@redhat.com>, 
	Anusha Srivatsa <asrivats@redhat.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	asahi@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-samsung-soc@vger.kernel.org
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

T24gV2VkLCBTZXAgMTYsIDIwMjYgYXQgMzo0NuKAr1BNIEx1Y2EgQ2VyZXNvbGkgPGx1Y2EuY2Vy
ZXNvbGlAYm9vdGxpbi5jb20+IHdyb3RlOgoKPiBOb3cgdGhhdCBhIGRybS1icmlkZ2UgaXMgZW1i
ZWRkZWQgaW50byBldmVyeSBkcm1fcGFuZWwgZHVyaW5nIHRoZSBwYW5lbAo+IGNyZWF0aW9uLCB0
aGUgcGFuZWxfYnJpZGdlIGRvZXMgbm90IHJlYWxseSBleGlzdCBhbnltb3JlLiBJdHMgQVBJIGhh
cyBiZWVuCj4gZGVwcmVjYXRlZCBhbmQga2VwdCB1bnRpbCBkcml2ZXJzIGNvbnZlcnQgdG8gdGhl
IGJyaWRnZSBBUEkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhIENlcmVzb2xpIDxsdWNhLmNlcmVz
b2xpQGJvb3RsaW4uY29tPgoKUmV2aWV3ZWQtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVzd0BrZXJu
ZWwub3JnPgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
