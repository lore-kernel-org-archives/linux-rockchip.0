Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A2F6C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 14:40:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C5ECB61244
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 14:40:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C5ECB61244
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YNcqjJN2wJ57NMg1ADFBPHkKil2OpLU+PAsEjVYpoEg=; b=D2h9J9hI1rBjWQqoMpCJB16g4
	L/AftxV12B2Mg9Fi1fmsgHF0vKULFr9KQ5joUZb8AmEIaVQJcL9ZUu6JW07hWOMzWjJQr/EUBnVfr
	k+6suyM2GV2yxKZU/KaAbogHOHOyEcIvScHbIJTOwU1ZPCGSJ2nNza37JaoZjycTotRUidNQAEoUF
	DuWGGoeOUlWctGWqiyfYdY2Fc+trBh4HPxrNjwc1zylD3V7RxzYsfcH2H+dyjkHbfTs1pO55HybVz
	53UpoDT9mWpU69e920KFSUzkqmq8gaQDJsyU71+ryAcpVk/eGBnHQ0caApALIZvIx3+5C1i5Rwt/Z
	Mw1F0lUXA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljNMl-004IPU-Kx; Wed, 19 May 2021 14:40:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljNMj-004IP8-JM
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 14:40:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=pUl/PDtyE06AGaUOVVOSgM6u9E5gD62PhUnqij8b4GA=; b=tLF4KW9+Qeq1A1cGetjTfnz8yb
 gCOLCVlCslf910Rb2cLfxBcsX8jFP/XEqIZr9jB3HAbdnDwA4QZ2OhnXq9UDO4h7N4y/k6dQ/jdB+
 UlgWyQkvmLWCrWqGKG3KmDu+dTx69+aMQWjmbsW3rZWWYnDtlqVgy1veECJlAY8mk9BkDb3cMAnp1
 KQBTH3E/sOMxK7vOnwT/nZgK13osUt6M22SX0bRe2TWucnxuF7pqtg04Hs6sXqamMmYdQU4K/WPXR
 LpO18KM7NW+XVPccirUaDxZDDiVCdqAVMjnZGCyUNKx/6IFgp44xs2wUl7IeDVyWJiGqIsYhxPt+a
 5dCvwF+Q==;
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljNMh-00FYQM-48
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 14:40:04 +0000
Received: by mail-wm1-x32d.google.com with SMTP id
 z19-20020a7bc7d30000b029017521c1fb75so3619127wmk.0
 for <linux-rockchip@lists.infradead.org>; Wed, 19 May 2021 07:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=pUl/PDtyE06AGaUOVVOSgM6u9E5gD62PhUnqij8b4GA=;
 b=Xh0ZPv2ZA0iIOHxdny9BbgczhC75uldbin22zXLJGsUVkzDT74YHAUORAmwunVI7dO
 1ZSInzcNwn5W9OCI+DRtq43J+rHPAQAtjeXWIjjc+YHsMOcfCb0AX0iQNQp3dFx4amAV
 UCiOlSarrf6hGXfWltEp1sZGgA3Z01FCl2ud4avN1JCJRkh2gk3pQL8TH8ZI7Vpk95yn
 CTjj34VwMu3lKXRCgUtd+VGTgePWM+wwOmwvs9RPWA/UVEP37jG4pBSFaxd9UCmUH8+O
 UntqKF3ex/1cubUDxpxD+PkeUQI4oJzkTsjeVqBH/6IJG0HgOlisPxZgiOwTqPnd92Ld
 Jv+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=pUl/PDtyE06AGaUOVVOSgM6u9E5gD62PhUnqij8b4GA=;
 b=KzeWRonm+SCRvabA24KEPuCG2MJILaC2FTst9mQPLFXpES7io8/xi0yNsJudwO6XrB
 ZV+tYkLW6rFgd1kh1AhFP6ODd5BMQlz1J+imhX9XMl0LKtz8hVtA8OG6jLdIJED2TBF8
 oVjdxbw8gH8JFCw+bdUTxvTJ77Q1KDZIKaiNt4aSSTqHIt+mk/0yhQVpuluqz/mFFRLs
 jDLqoN9RhmcG33nMScJlzx7l4iB3ktWhNk6mS2gsxsd31mweTbUqRS/JXg5Zc1xZjAy5
 Mgl/2Cm1EfwRFLar3VeYMHABkoWcyD0IRO3oXwJCJL843YQW1ZvG1XSUwxRK7+HJNPhN
 MRMg==
X-Gm-Message-State: AOAM532b7sbFjAW+m05vfZbguNP2B/VqTCZQJ56+a+qyoFF4V26wj7ta
 1bMrOwPKXDt0CB+9mMyS2X7wVg==
X-Google-Smtp-Source: ABdhPJyst0ljQrlv1Es78T/vHYG8kLHpsdD73B7dbX3o4KuF1SW42FcIYG8H6rYBKR+qegLl34td8w==
X-Received: by 2002:a7b:ce8d:: with SMTP id q13mr11355217wmj.109.1621435198003; 
 Wed, 19 May 2021 07:39:58 -0700 (PDT)
Received: from dell ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id w20sm9489272wmc.44.2021.05.19.07.39.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 07:39:57 -0700 (PDT)
Date: Wed, 19 May 2021 15:39:55 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v11 3/4] dt-bindings: Add Rockchip rk817 audio CODEC
 support
Message-ID: <20210519143955.GH2415519@dell>
References: <20210515025749.11291-1-macroalpha82@gmail.com>
 <20210515025749.11291-4-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210515025749.11291-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_074003_185639_5CFA99B6 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gRnJpLCAxNCBNYXkgMjAyMSwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgoKPiBGcm9tOiBDaHJpcyBN
b3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IAo+IENyZWF0ZSBkdC1iaW5kaW5nIGRv
Y3VtZW50YXRpb24gdG8gZG9jdW1lbnQgcms4MTcgY29kZWMuCj4gTmV3IHByb3BlcnR5IG5hbWUg
b2Ygcm9ja2NoaXAsbWljLWluLWRpZmZlcmVudGlhbCBhZGRlZCB0byBjb250cm9sIGlmCj4gdGhl
IG1pY3JvcGhvbmUgaXMgaW4gZGlmZmVyZW50aWFsIG1vZGUgb3Igbm90Lgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gVGVzdGVkLWJ5
OiBNYWNpZWogTWF0dXN6Y3p5ayA8bWFjY3JhZnQxMjNtY0BnbWFpbC5jb20+Cj4gQWNrZWQtYnk6
IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL21mZC9yazgwOC50eHQgICAgICAgICB8IDE4OCArKysrKysrKysrKysrKysrKysKPiAg
MSBmaWxlIGNoYW5nZWQsIDE4OCBpbnNlcnRpb25zKCspCgpGb3IgbXkgb3duIHJlZmVyZW5jZSAo
YXBwbHkgdGhpcyBhcy1pcyB0byB5b3VyIHNpZ24tb2ZmIGJsb2NrKToKCiAgQWNrZWQtZm9yLU1G
RC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCi0tIApMZWUgSm9uZXMgW+ad
jueQvOaWr10KU2VuaW9yIFRlY2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFy
by5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJv
OiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
