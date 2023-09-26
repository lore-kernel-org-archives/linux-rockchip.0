Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62A25E7D241
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Sep 2023 06:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4ycSUvmWQcQJOzqfFLJeJMbRGWOcSGKOHM6kHCtkzQ=; b=B6m/6ABJpp60/V
	Fmy16p8DiV5BG6KAfTtP2IJk7A/gwcBpU5Mq+VMuy1uBQTJRJdMb3zTU3ELZoONKCeO4KpOQUedC3
	YtMzac7JGdimcB4XUOrdDwz5SXUqSoZ2MbMnIj763Yofc30jth3W4+6rnXnonNYIc4DR0k4a6e0Hk
	tXcvjYzNKJMXg5SCJHXkUPIKSg20i9UO+Krw4LnaZntp22iK0O1z+vie90XEDWJApvVq9OywSl/UE
	NRcYSB5IVWLBlST+r2G2IukQ2tWJGnRSWcq7W9+kQQHJemyj8MkFUXWQl9QuSxQ2b7fzXoReiviG9
	zvAq/4an74gQ0DqQJfOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ql1yp-00FkpS-1X;
	Tue, 26 Sep 2023 06:55:35 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ql1yn-00Fko7-0i
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Sep 2023 06:55:34 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-59f6e6b7600so46519477b3.3
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Sep 2023 23:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695711330; x=1696316130; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eHSkNGK03t5d9rG+f10qQXua3Wp3jtHQqzKshE119FY=;
        b=tpJ5dqqt2J7xVrpi1+N2Ri6SjQGAZJtxcHP5UU+Wf9Evwzlok81U5eAbPOY2f9otNd
         45Nb2e81FkSA2/+0UIrGqDXYnMJWoitHeOZvWpyy5LTnBdsbawUwrdQJrzSvR7nTDSml
         +kHvRY/gdeQ++hcH4ckBijiFyhNO4vcBhvWFhvQ6ir0ytt16X6lZW8tO7nvPda51W9mc
         g7Vq/ezT/ow3OHAICamA/gKTmgS7U01Vpvc5n+Ll72yGKkTMUxU1/aV8/oSa6Qb6puyj
         iJy2xV0AaCjeyQ3SkJ4N1QadKOi5TjHMXpb2LPI4ZOtwYebK8+C6/V5X202JJxnwVC4Z
         /+lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695711330; x=1696316130;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eHSkNGK03t5d9rG+f10qQXua3Wp3jtHQqzKshE119FY=;
        b=BVPCzOw8Qvhu5VqSylPs553LarJahcoNXoqwKUYsWgrk+8I73pOl4dW/TXJLFYA/9O
         BE+xoBsCj9wUusV+z2zvmqK1a8B+2r/f58MMlWyxyabBR7aWQIXSEST3tf+5RC/MnGey
         aAs5I8g/zWDPe/t244US+4rXqwrTRImZsZKMG5RudvJbjZXtkOWCpwq+lYpsichyuGVR
         jFGZlQk7NbGxdX/hwOG1OXGe8pnEMKV2IjU10xYz7n2v19EHhjfjmnIBTupTgGt8OFKP
         JWRJVyhfEMJA4FszZOl2nv+itucToTq/OJikeDGKIlEx3sUVNeYY0Gwwb4FTh1SyRwQv
         jcGA==
X-Gm-Message-State: AOJu0YyHG4szx4Jld+vKBYSRmzW+ubN6x8o3fdfepw0DH8Q7MXhEcrzH
	Wt1s4jCUhEEwuuQ6y3Hh8lF4TjuaNDcQEwtCWmmD6A==
X-Google-Smtp-Source: AGHT+IHoO7TBziPA5htbsuH2VXUX9yGcO/aIOtLwPZZVCJAErZgDwgIkJ3nSHIbU3VSV/WI7WX5/gfB00KELiu+FW9A=
X-Received: by 2002:a81:4f92:0:b0:592:60e9:97cf with SMTP id
 d140-20020a814f92000000b0059260e997cfmr8225904ywb.12.1695711326765; Mon, 25
 Sep 2023 23:55:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230925212713.1975800-1-robh@kernel.org>
In-Reply-To: <20230925212713.1975800-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 26 Sep 2023 08:55:09 +0200
Message-ID: <CACRpkdYSvgUsuMS+-=LXmCtH0bLF=EMguuvWwZ7VjUfnx+uyaQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: Add missing additionalProperties on
 child node schemas
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230925_235533_259603_F8EDE910 
X-CRM114-Status: UNSURE (   9.25  )
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

T24gTW9uLCBTZXAgMjUsIDIwMjMgYXQgMTE6MjfigK9QTSBSb2IgSGVycmluZyA8cm9iaEBrZXJu
ZWwub3JnPiB3cm90ZToKCj4gSnVzdCBhcyB1bmV2YWx1YXRlZFByb3BlcnRpZXMgb3IgYWRkaXRp
b25hbFByb3BlcnRpZXMgYXJlIHJlcXVpcmVkIGF0Cj4gdGhlIHRvcCBsZXZlbCBvZiBzY2hlbWFz
LCB0aGV5IHNob3VsZCAoYW5kIHdpbGwpIGFsc28gYmUgcmVxdWlyZWQgZm9yCj4gY2hpbGQgbm9k
ZSBzY2hlbWFzLiBUaGF0IGVuc3VyZXMgb25seSBkb2N1bWVudGVkIHByb3BlcnRpZXMgYXJlCj4g
cHJlc2VudCBmb3IgYW55IG5vZGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9i
aEBrZXJuZWwub3JnPgoKUGF0Y2ggYXBwbGllZCEKCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
