Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44CB1C04FFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 10:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/uO++vptMxbvLai0PkNvTBgnuaDlvfL+mfqZuE1HzE=; b=EbS713BvvCWsdF
	8f9Ad4BvfI5U1MtUhtC4PI/6pVKsbbIlxD9eu2BsozYRt/XMHpQqg7wf88fx6VSHLClZqOAi5JDSc
	hv9wTcYhuEcktBi5n7mupj0CUjR7dpXA/RLxxSRw6Or+Y0FdR5X8nrZsMpaqFbmJykOMISV/koxNl
	Nx5GLPaKoTlAgO3087PZ3TJ33MMmTMprwMI9uToRE1ratLiB1xf16VVyfiVg1OWgPeQMLdvD0Fn59
	ssLbKvXeaAAxahW/h5XailCZ221RG9+LM6oarWsQ3KiE52DilUyo4yNGZgSyPBDxUVCrVHVhep2Px
	yt/55YnYLFuPc3LcGbQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4eSF-0000000ExuI-2tzK;
	Wed, 08 May 2024 10:23:19 +0000
Received: from mout.web.de ([212.227.15.3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4eSA-0000000ExsV-2Igw;
	Wed, 08 May 2024 10:23:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1715163773; x=1715768573; i=markus.elfring@web.de;
	bh=9u8e8s1R/YF6MXMjCBn6+TrL3a/2KyHI6/+JT09yEu0=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=QyeQ2Eo7XFGASiZJxlq49RshFXFLs1Uw0vy/nCme8V6lxX18Bqkld/3LPql71Re6
	 JZQ82wg8O1Yj6uFop4cn4iaIxxKZTOMoXpQ49+c9L9JZdYw7aRpahBwEtoxW9Q8fo
	 2hZpNU5sCY7wRYg6j/N+S90E2xWCkBfCeUFhiBpsXmg+6PHDPKKFVv8Hn4k9Mv6Tc
	 A58CiPhnDq8o7vxMjRvJxStMPhnLJhAYzJmoe67bwX+qZWBWAB0Mc0GaVEwOpoYbE
	 TJIMLIuqjEMvt4CQ7rSZfM22M+QYs7BnyrshVsxRN8shHPjua+n/DAXFEQ0CNYAxG
	 C1CF9DNxzyIR1OuuZQ==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.89.95]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MBjMO-1runbd23HI-00CIR6; Wed, 08
 May 2024 12:22:53 +0200
Message-ID: <662d3052-d0ab-4034-84d3-fff4f985875b@web.de>
Date: Wed, 8 May 2024 12:22:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel-janitors@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20240508070611.4153602-3-jonas@kwiboo.se>
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240508070611.4153602-3-jonas@kwiboo.se>
X-Provags-ID: V03:K1:FsK33dhQ+/BU0M0PjUpaQsMlcz5Garq5LIVOLVXlfoMnIbJyiOA
 WdEBFvyV6/bHKxib005lnuAyGPBx3RXAWxWLhOPJh0w9C8ZdOXl83uBPKinOrLh+BwiRmd+
 LlEMmnsS3AdrkHS1aZtUQXt4FP67Y9CoRKdDYf4ulGMDRfoC8+OoqEBNtNX10p//ECYnOJk
 lACFPbs1zkNDkR7Xui+7Q==
UI-OutboundReport: notjunk:1;M01:P0:sGs5kl6ytS8=;F4gMryC1X7nOoBR1b4G2CyVhvfp
 Tz1ybSjP4qqM8ZdG9HYzf7KlITPTQlcLCohaYkvskhcCnuia2MJFKy7bNQKvT0SjGEI+Afe9v
 wzv/H/bP1HWK04bEGyyi/iLf0N0REPPzfLcWx245ssTL9CrXV+eHmf1Is+rRLNU/CBSevl7dK
 9bAs97mEJl0k8yoX4XcV+a3IcxCDfL7UFO6pxGenU3YNDTGA87NeCSRshClF4bdBujrKRkMt4
 vFChGYBUqySsgdYleGWza+sbEuN9FXHC7WI3F7gZsgIj46Hv5I6UkNVwCbsit2WPZ+xDRXpCO
 M0NkDjjfEDnFAQtgFRRXBnNiz/nupPMmbA5aigUWhSOqV1fFRttUPPpgTi3Khv5Cl7c0uz4W6
 d2LpSfrvJvtN1psw4r0PcaAdnhxOMggtulyhJNfHfgCSRZUi7BkrIKQ2NoCa2/y1g736Mqb0J
 CkZPYwJtjthyyUm2sviIyNeypINZO3OXcspNJjrPZn//pdnUiZZaa7HhZWSvXo56OYnEg8YyI
 xVV6/OYIpv5va9WUadwuZMjFf0fCFw1B2KjES4kQiqCSIGyy3TQY7uLEDg9fc/WqEIF7U9F7z
 E3ujhvlK69Y5veMpK3I/N2nqIfxnvBnV9boUPdCXDeGoPa8tRI0eGLlG2KfanJT0XmwNDkyHg
 p3Pz9ecTH5ba+Ve4I1kjKBkUGzU7rjlu5hyly31AkSGc9i/Ran9wAjNuHoWjcaUsUaHMFvLh6
 xgKPsPAigFmcRUOLsCqQ5YkStl6i1qC1U8Bzd2tTOhvB1IURe+kVcyKHBhqpfUwNqdqZnJVDM
 68BsW15+pivFnjiAEoSQJqY3oBTi29N/zQnx3WocHPx9c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_032315_211785_64AF5503 
X-CRM114-Status: UNSURE (   4.51  )
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

4oCmCj4gVGhpcyBhZGRzIGluaXRpYWwgc3VwcG9ydCBmb3Ig4oCmCgpQbGVhc2UgY29udmVydCB0
aGlzIGNoYW5nZSBkZXNjcmlwdGlvbiB0byBhbiBpbXBlcmF0aXZlIHdvcmRpbmcuCgpSZWdhcmRz
LApNYXJrdXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
