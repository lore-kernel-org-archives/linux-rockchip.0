Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD5C8D462B2
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 14:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tMXTf3nScxPxYtszo1+GVr5ZxjLnfEXWtV6Jwsi5R5w=; b=NOaX0BkgLNr30g
	psfRN/Wfhd5eBmrCK1Oqgu+n8zlVMaqd5qo85lhIG5RG8slFQijYH/dnVScUcfmL2sJ1EWcVxjOQi
	njKJXaombtPGc46thxK09uT4IyJz08pfJejcOSonBFNTAiqyygV7mQxBArE+iDHLqKuJJELdSYJsu
	xMj4W873G+iEAu/eL+9ms51dPmEMdY+mj1AorTfAOpSh23+6LAFTmeMl87IXLL0xY48e6LW9VRWut
	k3FykLrVRbi/4JV636MAcSS2RgnPYGWxcZA/mZ1vtBn2YPxSEPO2UW222zYz7ZQcifNGCw07vqz4m
	0APn/o7W6b7QddjA/AvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBEOz-000000079o8-2Jag;
	Wed, 13 Nov 2024 14:31:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBDMI-00000006u73-0EjG
	for linux-rockchip@bombadil.infradead.org;
	Wed, 13 Nov 2024 13:24:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Ns9y689y8f6zmCcg+0fPw1Yh+V6fP1NKoYCbI8gIu3E=; b=HKrhED0YITbk7sMlP2yuY6hgwA
	a5B8f7zI+2QzgfDbl5HmU5muMtfF9Zdj1ZCOjjQZDcZlLpp0dnaH6X9NWyubIUfWDRm1bYNZ6nl/4
	OTLhYDqV6zkORz36FOh4OTT8Vv3pg5MHMYJmtd1I9ewEFjcmi2rnqryeK5X3Q58CpV6GNzJYDzGtc
	IsODLELJwNedisuKrFmXkiO3JkjQTFsuGAkM5EqbZdqS9OcsOJiKLm/ThJshtImYuX9nLEjM1uZ1j
	IFJ3LOwvuVyLBbeM0VTCymaj7NqyFZdJ2i7fXqFpCVKvq4LPcJbd3OSwhoPzMlK9rVKcrYo0CYFS3
	iwB3B7zg==;
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBDMF-0000000DHBK-0SLu
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Nov 2024 13:24:32 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2fb3110b964so59521851fa.1
        for <linux-rockchip@lists.infradead.org>; Wed, 13 Nov 2024 05:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731504266; x=1732109066; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ns9y689y8f6zmCcg+0fPw1Yh+V6fP1NKoYCbI8gIu3E=;
        b=reuth4ARW6zryspRaEZui8JcSwDtbpDAKY1MeO3hWLU4iL0+Qac9HVLCWKdbzLCL1q
         Dky9fXO5k1dyf4SmEt/3KstKEP1w1FYA6HyATCYsyowTEgNdwgx0kZzWqV46GoVEwcxe
         jgH/VoR8bxPruWH9E7vVaBWOlSmhZmcrflTfR0CShQxJ8Ukq8lJpBU85Mr5gDnDH8S9B
         i5okyI93cZ/daviR2N9GW44ldM9KA6J70XcGSNqxPtqvIwQlAiUmLUJnG/tvZPhjVBX1
         WMFYZCXfCDWFyxVzE9S1JkYSaq+/cRHsqcpHGqVeHOJ42GeGTYWDLWYcSoU2qeRk3TsD
         LQWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731504266; x=1732109066;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ns9y689y8f6zmCcg+0fPw1Yh+V6fP1NKoYCbI8gIu3E=;
        b=LKvemhANGnTkSWlIczxIsfuHqjMAUj5mNyBcOJ6wyT6zUHAYEcWLJZiOBcTwEs00xz
         DQSewSMamPy9EsiNJGkTf9GIQbpHfsKvmnShLjzy0mLCEp82dPobnR77gCDOEZgOdJUf
         t8zmJ+K80OviqsGXMQQ6sLC7WCMxQEquU2IyrQlpW/mBDpWsGPg3DUx23/QC2n/xyGoj
         yJwrh4g02cnfDvRID+aUbcZjkaQivL/hxqyfBnYrlyY3H0N0POuhjOQ8Ypk/il9FUNDS
         oJ0B/EJGWsSpDiC8gp9qA+AT3i2LAF4JZsy+5qr3Fz5x4RR9HUk7qbq9MqINSxZ+N9Z/
         c2KA==
X-Forwarded-Encrypted: i=1; AJvYcCX73XuTFaSimqOAMNdkcqCV5jKmvWw457wIoMGUzmu2LfjdwRH8+gY50+08xDnoz5AS1d1pre8SPy861K+zTQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+2EAHNhdN2wapuW18J3IISpY4Ddd2q6v9YQi7eCQaYHmhl+Fn
	+ycZw/7Md/5vcQH8o6Kc4uRMdacdRvjacaF8ixyXDvk5+7EP4nqGEWFJWXwYZ93rOWei5tZdeHN
	jsrzgPaYW8PAFmumUsSARMCvQC/4usVHls3w3aw==
X-Google-Smtp-Source: AGHT+IElutiwbB0GChUIk6s9+3Hj1zTtPyYMVahc4j+aIc1M11PmzAL7ureY4EqXBaAJRrLw6NSOMokzms+jMIpiufg=
X-Received: by 2002:a2e:bd02:0:b0:2fb:3bef:6233 with SMTP id
 38308e7fff4ca-2ff202ac4f8mr110018711fa.33.1731504266571; Wed, 13 Nov 2024
 05:24:26 -0800 (PST)
MIME-Version: 1.0
References: <20241111023412.3466161-1-ye.zhang@rock-chips.com> <20241111023412.3466161-4-ye.zhang@rock-chips.com>
In-Reply-To: <20241111023412.3466161-4-ye.zhang@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 13 Nov 2024 14:24:15 +0100
Message-ID: <CACRpkdZxO--q29BdAv9OLu4tBWx1rAkXM8qaXNYEQSta9zjPOw@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] gpio: rockchip: support new version GPIO
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: brgl@bgdev.pl, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, mika.westerberg@linux.intel.com, 
	andriy.shevchenko@linux.intel.com, tao.huang@rock-chips.com, 
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com, 
	elaine.zhang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_132431_253908_F056AA7E 
X-CRM114-Status: UNSURE (   6.28  )
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

T24gTW9uLCBOb3YgMTEsIDIwMjQgYXQgMzozNOKAr0FNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cgo+IFN1cHBvcnQgdGhlIG5leHQgdmVyc2lvbiBHUElPIGNvbnRy
b2xsZXIgb24gU29DcyBsaWtlIHJrMzU3Ni4KPgo+IFNpZ25lZC1vZmYtYnk6IFllIFpoYW5nIDx5
ZS56aGFuZ0Byb2NrLWNoaXBzLmNvbT4KClJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51
cy53YWxsZWlqQGxpbmFyby5vcmc+CgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
