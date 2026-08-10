Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4685C5B569
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 12:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W+Zt9xMRy77CW+/pAI6DIe4f1Yq4iJ5bf+Ea8+ZDJqY=; b=MSTGhC4YUezXu7
	vAa9Leb9dBeIQ+Ixbdy2U0uxG/z2Cc7lGTAghCeyc90lq06n0IXZpfyRKXfYlWrIr1f4bQOCDlgEQ
	0K1izqmgeDoQ0jqXzhzsvSOnaRBIrpiNye/awtePhxV7tWMXX1Y5oogqMZDvPfQB33v9Bten0f0Ot
	HkQziiboiRtzsW7YkYj6INfFT6CTaXhmOIkpa08oU3eZVOfpkwve/Tf5K+ifHYpVhA7cU+N+9kTJb
	DoHK2RiqW2DV1sul4UzUzhQ19TAdtLYrEIERGzL6a5msdnx49QzrZb33/ljOFRskbw9fiSmiUHnSX
	29PcYhjcLTIdXc53T+hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtPIY-0000000BnEt-1S9B;
	Mon, 10 Aug 2026 12:40:10 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtPIV-0000000BnDW-0gqy
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Aug 2026 12:40:08 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-69f4acf7047so267106a12.3
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 05:40:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786365605; cv=none;
        d=google.com; s=arc-20260327;
        b=cYJPYsDjj6tLjVwCCe0LWpHCrUT+BnxCVLv89wPGGRctysqZc2gYt0mnPljjMMa1eJ
         mtHYoh4k7Uyd652kOomVghcGDwZhBC/Qodg1/Bn5JJholnFrWW4zgGQr7pN4MSjJ3NSL
         kZIgppi1JqUL8d9HRYV8MWLL4aJG2/s8yEPyK6zmREQ37r3sXJfzb1iYlT4PW2roDz3B
         BBQKX67Xj35+HQB1Clb4Q89fU7p6TXaTl74cMqc6jebpyJyUoc7n/p+ktTO+W50AhEBU
         F5Z3ChJgzAk9zuQgt92VFvTtcTOOCxqgeK2eoh7EuX7b9xxk58Ap97IhGKHjeMUNKnvN
         styw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HzTjFhFkoXBLwd3NrSqY+4yLtTn3dkc2guIu8OqfuBY=;
        fh=8ZlABXqg7Llj3nvHkpXNiwZhXEmTcO8cc853JDnlP5g=;
        b=ekMh14b3n4AtgJQb6683ubEpIYazKsJ+DBus2LP5y4mzajUGIcZQKySG3d6GFiduIN
         QeiZNqTOUQE4AZWzP8iesemIVo8vqtJp963NOWBYQgGntXVC9MzWOKi4ihMGo2m2UG1P
         c3aFjPsSdNHZkL/bV7OdIhJAhC0w3OS72Oif0oPCVOr9orLr+5fBrzfSVEh/vCTnMWdD
         WE4LzRtZOAWyXzw4S7c6rjhqbFCIcfSv32SPrxbfWT7TJeLf+IxKFnYFuUxdXDNvbHT9
         oU9+pcklu+/RZS6DJ+W2icpD0k8yEZzXA3rSv4N6L0gBXIbFOBDj+zUp4kn8xUK3CJCe
         AroQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786365605; x=1786970405; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=HzTjFhFkoXBLwd3NrSqY+4yLtTn3dkc2guIu8OqfuBY=;
        b=PR5nFMryVpJbDZV8Drw+9LWFh0nMklw469A+ju5qtocKcjhJlj7vGxFArI6Fw4R/d6
         FQH2Lyx5GO+iLjT2r6rLLw1LB3kQfgqOBDSZhK4gVfBCXoXgdEfFJJ+eNshUOeIMRaeP
         nIMTz92CyzDy7JQPfEc9A8A1/t71+yyJL+GAl50ZYfe8eSYifi3S61+yIQDdf3LrWKJk
         C1/9cQXhYTRCdlXGph/oC7SLIhsbx+oDpi/Xeou9utf+96jJCwHwgG9SeAYy1B10WtOA
         08fGbYN8Yqfh83w3Nu8w3TWPcv0VFy7iK35exa2gQp8PqxviMb9+Pe5Lk+/blcLLH9Qf
         KIfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786365605; x=1786970405;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HzTjFhFkoXBLwd3NrSqY+4yLtTn3dkc2guIu8OqfuBY=;
        b=nkOo/F2JwDYNC1DNNP0cXUtmlq6sg03p07mkqTHEHCEt6pHk32GTOXn91tU2kbdoLc
         QhqIeBjOsYBV6e2E14DP2RolYpu5N47sIbV4+hVh5VNKy2AgionvKgWLQELIodYMRuTC
         hZMpwx8tWbLmaEAmwSBQP9ezTKS0pLQid6V+kgFKOQaeID9UtIuvvHwGsorVvBgWD0Qc
         hgojMOk5tqpAP813z7Ujn+YYItTESIdswCcYOEHXlAREDGDVugz3P9Clony9F5i0w59i
         5DXo3qNB/URJgP9PC1jzF4PuNezIVyNIna86KGErNQ/BHvwH6h5ocdAOoFOkzfWhQ22B
         PJ3A==
X-Forwarded-Encrypted: i=1; AHgh+Roh6g2ew7QS+9kJqrjHBxl4uGLLENp87RQNTs3LBvplqvm+1ChbfNOXP8GnECaXNVEYVHrltdqfRK5vXdh9nw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyKRTOIzdaMek7wCQcUGGTyVng54PdhcKzM1YAA1/87w3EpYdYC
	+Q6/NG1qo8DbL01JM41WBHDHF5vSX4OXfbAq+Stpm75dG9OTjEWwttVyC8pxVP8dCqwgUC+7nyx
	6ynKjH9sQxW+9diuXMAWg/J4ctzJ9X2A=
X-Gm-Gg: AR+sD13QjN+HaRKpFMY+un18iOgxELgIMrIW7a9BeUqY0I2oQSNFbnk0dnBLL2AvYXD
	zKApV44WVHOZoCKYUwTMPKG3gr9Lp1DTW+0ohXAKB/GJWAtfz0MYBXP/AeDi85CjGfw+EEsmUrg
	gcFGQTjajWMXuWfRHNFfO5Pa7QjMQ126On/xtuKcvvgF9yKtegUwhR5yZMBuIY291dGAPnL9l74
	i/ARag6caeBnuqXL/oEwMxpWwkGTq2Fx2F965Aju6t8h4H5c2rz5Z3EzeLM/BX3onL2HqPNGXU6
	iCuDEUpXg2B+I0nIPj7cXwdC00k6CK2ziqLSFB29aeD4wtjd3HAuJursm/Q1mEWXzCHXvotWRjV
	JjQ==
X-Received: by 2002:a05:6402:2351:b0:6a1:fd14:8829 with SMTP id
 4fb4d7f45d1cf-6a1fd1489dfmr3529309a12.4.1786365602791; Mon, 10 Aug 2026
 05:40:02 -0700 (PDT)
MIME-Version: 1.0
References: <20260726-dcphy-rx-v1-v2-0-cf9cc34a412a@gmail.com>
 <20260726-dcphy-rx-v1-v2-3-cf9cc34a412a@gmail.com> <7e55b8bc-d11d-4b25-99ee-d5d181be158f@collabora.com>
 <CAPwA33Jnp6N7a=2tcrgEzFxXRpbxEO25ktrRDiea--9Uy5upNQ@mail.gmail.com> <00d6ee9d-0ef1-41d4-8cd7-affb320b84f4@collabora.com>
In-Reply-To: <00d6ee9d-0ef1-41d4-8cd7-affb320b84f4@collabora.com>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Mon, 10 Aug 2026 20:39:50 +0800
X-Gm-Features: AUfX_mwg7RyitAzo5nWhArTwTiYbA1EMZOXHMkTdNy0X60zc4wq-eQxbT6UdjPw
Message-ID: <CAPwA33KHoH6AM7HLMQSBMwy2-TS2A_J=QyLwcg-S=t2yQ+_78w@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] phy: rockchip-samsung-dcphy: model TX and RX as
 separate PHYs
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_054007_214315_569ECA27 
X-CRM114-Status: UNSURE (   5.78  )
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

TWljaGFlbCBSaWVzY2ggPG1pY2hhZWwucmllc2NoQGNvbGxhYm9yYS5jb20+5pa8IDIwMjblubQ4
5pyIOOaXpemAseWFre+8jDA3OjAw5a+r6YGT77yaCj4gWy4uLl0KPiBPSywgbWFrZXMgc2Vuc2Uu
IExvb2tpbmcgZm9yd2FyZCB0byB2MyEKClRoYW5rcyBmb3IgY29uZmlybWluZyB0aGUgc2hhcmVk
IGJsb2NrIGFuZCBmb3IgY2hhc2luZyB0aGUgR1JGCnF1ZXN0aW9uIHdpdGggUm9ja2NoaXAgLSBt
dWNoIGFwcHJlY2lhdGVkLgoKdjMgaXMgb3V0OgpodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIw
MjYwODEwLWRjcGh5LXJ4LXYxLXYzLTAtYTJkMjVjMjlhZGZjQGdtYWlsLmNvbQoKVGhlIHNoYXJl
ZC1ibG9jayBoYW5kbGluZyBmb2xsb3dzIHlvdXIgc3VnZ2VzdGlvbiAtIG9uZSBzdHJ1Y3QgcGh5
CnBlciBQSFkgd2l0aCBhIHVzZS1jb3VudGVkIGNvbW1vbiBibG9jazsgdGhlIGNoYW5nZWxvZyB0
aGVyZSBjb3ZlcnMKdGhlIGRldGFpbHMsIGluY2x1ZGluZyB3aHkgdGhlIGhlbHBlcnMgZW5kZWQg
dXAgYXMgZ2V0KCkvcHV0KCkgYW5kCndoeSB0aGUgR1JGIG1vZGUgc2VsZWN0cyBzdGF5IHVudG91
Y2hlZCBmb3Igbm93LgoKVGhhbmtzLApKYXNvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
