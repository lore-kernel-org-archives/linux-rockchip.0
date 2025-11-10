Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BC9ECCFA13
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 22:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZ3LAXEpiBBykOlRFYUChvinoyhl6w2NAHbS+SEWEs4=; b=2j3CeCjBCaHyDt
	7w1ROEkgXsiM64jgwR/DENSmni++qE19Q1hRwc3T5qPZSIUtKMc/7deKBrR+CW58ineJwM6RwkPbB
	O9OFKs0PHXCi3eS91t7xA9zkFTnHEXWRo2tsvnml3lazaAjsjiOE5ncx2Nehzaph3xrLBkSJXkzMr
	iDMzRSrKQLjpLcAxAC43Fhl3D7fqTrc61EQgUnyZtGl5atXA8Z0wqrzM4Aef7WUyRS16MFcwjY04R
	EUDOq0/Fq/3KoWX2CvKRU4+U9jz8JmrtiyxBUZgyrxRtSIBfqpZw79JMaDITor7aRAlvtObyuDqNO
	CcJXJU5WLU0gow35997A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIaJx-00000006CZK-2QZH;
	Mon, 10 Nov 2025 22:25:09 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIaJu-00000006CYH-0rTt
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 22:25:07 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5943b7bdc37so214721e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Nov 2025 14:25:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762813504; x=1763418304; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tkykz3S1CyycQbNzf0lzIqKhpFUnZB571m9tUf64HTs=;
        b=ikP5twii5vRIi9wFGkm7BiomMu9yvfvFusJJfQfE+BW8nuuDAPqhGqpLQO46Y9Qw4P
         V+7/o73dpaWexD6ijxVhYH913Lg1NGviRYiIeEDhkRtEqpgo1u1yPQXmRkknZmRD/dxl
         tfFOlVr2TouGT0qDrYtYzGi/aNi5USVz8o2ECNkGP/94rmeCPgbteaq6zMLBD2XnfZ4+
         VYfOATStmtzN+rxsYPDpekqlaqQRxfOPAO6atXBvdXvJvXLNj4RiYaJjkwZRW+ZeCbvG
         5jjI5DrMQCgQbMIZ4HgXXFw81pORPhVTK9qhnroiIzhrSREhR0VWHA372sZiyyPUHbNI
         FfIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762813504; x=1763418304;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tkykz3S1CyycQbNzf0lzIqKhpFUnZB571m9tUf64HTs=;
        b=lyLPbJBRFZh5Kmpj+oGxvE1Z28EOnckH0VzajQ7zOFbSPlNFG/acmWHw2/jk+ToFOH
         qa6+ZDzxtjOohK0uqWisQnNYK0fovgU30yNGTsP/epHfhI3sRO+6dqHBVL4m6Hf4tOzQ
         1BeGECP+lODvO6HgobxiN3eaKz3Gm3Sxx3YqD/vllQlCGMJKyw+kxbTbCsWt6kx6UM3P
         NTMDWnuhg54c1hCGJ87NdMFAhUVWpL5sMI0ri+utEJDwugXRQzpqK7RJKhveZdqQ6cGr
         SMiA3c0JczgJOt1CgaphqtZevUGQc3OtJZ3kZ5WRgtD343TR6uBZv3r2S91NN63sfjod
         CFjA==
X-Forwarded-Encrypted: i=1; AJvYcCXimC5UA3id0Dn38aYE7jlrkG3yupE3MXQgWuFmGLb5D68XHw8dMGTt0/wABe9zL1fFWSqVJNAdI0InGFhVUQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YztIvUm31G7fewbcEVH+1a3j8DrnyXMYMYZvcm9BkIM3iok2sVo
	rA4TXR5CIl46YK2hsCAUao644sForqGhVcFR3YxX6UQIbhyt4ii5RCmyt/m0PU+IVfWVqwuY5tZ
	5SXWVPeRobWtvpiLzkxs+EQVsoep99Y82Hdy3kPAAAg==
X-Gm-Gg: ASbGnct18bqazRJkuXtdeEU4BnKJusJ7TEPjiUBxmlEDb9l5J0V3G5Pg8KD0MBPuDLb
	sW0kssiqX+h4eMJuo0p8Ig0R3kfT4w9SG9YrPiJr7PJhN3gOT8MxGi1p0ojVjzkzD849jbCSX28
	aOYp3tzTHrm2t+aa1ESuluUJPB4Ira59K95w0s43SDzsmpWHfMYHY8ye4MaKa97Ce1roq1T8M3Q
	9blI5X8zJ1mek8kllnvCEmFgxNv4ctkdEuxd0dZqag460Jpwh/irt2QmcMZ
X-Google-Smtp-Source: AGHT+IH/bobBHFWFdtH9zZZK7pDa53PdeYG6iIiYCN8HDJy4OkCpiUpXjuiD4ZHFmsvNrZImVkrpEn3cIhnyZOsajDU=
X-Received: by 2002:a05:6512:3408:b0:594:2c42:abd4 with SMTP id
 2adb3069b0e04-594745a4d40mr256456e87.5.1762813504005; Mon, 10 Nov 2025
 14:25:04 -0800 (PST)
MIME-Version: 1.0
References: <20251104021223.2375116-1-ye.zhang@rock-chips.com>
In-Reply-To: <20251104021223.2375116-1-ye.zhang@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 10 Nov 2025 23:24:52 +0100
X-Gm-Features: AWmQ_bnqL4tp4-XtSfjpF2SJDcbcu-l1tzSoL6TKzmSJf79bXaH7H2zLWLM2NeI
Message-ID: <CACRpkdaR=_K-hewNne2fPN=RKu7iyOe0gLYhMEBfQVvemJJuoQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] pinctrl: rockchip: Add RK3506 pinctrl support
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	tao.huang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_142506_261168_52E37F68 
X-CRM114-Status: UNSURE (   8.82  )
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

T24gVHVlLCBOb3YgNCwgMjAyNSBhdCAzOjEy4oCvQU0gWWUgWmhhbmcgPHllLnpoYW5nQHJvY2st
Y2hpcHMuY29tPiB3cm90ZToKCj4gVGhpcyBzZXJpZXMgYWRkcyBwaW5jdHJsIHN1cHBvcnQgZm9y
IHRoZSBSb2NrY2hpcCBSSzM1MDYgU29DLgo+Cj4gVGhlIHNlcmllcyBpbmNsdWRlczoKPiAtIFJL
MzUwNiBwaW5jdHJsIGRyaXZlciBpbXBsZW1lbnRhdGlvbgo+IC0gUk1JTyAoUm9ja2NoaXAgTWF0
cml4IEkvTykgc3VwcG9ydCBmb3IgUkszNTA2Cj4KPiBZZSBaaGFuZyAoMyk6Cj4gICBkdC1iaW5k
aW5nczogcGluY3RybDogQWRkIHJrMzUwNiBwaW5jdHJsIHN1cHBvcnQKPiAgIHBpbmN0cmw6IHJv
Y2tjaGlwOiBBZGQgcmszNTA2IHBpbmN0cmwgc3VwcG9ydAoKU2luY2Ugd2UgaGF2ZSBjb25zZW5z
dXMgb24gdGhlc2UgdHdvIHBhdGNoZXMgSSBhcHBsaWVkIHRoZW0hCgo+ICAgcGluY3RybDogcm9j
a2NoaXA6IGFkZCByazM1MDYgcm1pbyBzdXBwb3J0CgpOb3cgeW91IG9ubHkgbmVlZCB0byBkaXNj
dXNzIHRoaXMgd2l0aCBIZWlrbyBhbmQgaXRlcmF0ZSBpdC4KCllvdXJzLApMaW51cyBXYWxsZWlq
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
