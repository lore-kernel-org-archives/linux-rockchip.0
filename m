Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 264BCC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 00:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMwjycw2O0Lnsj6UhNNfwxSJMQ+zRRGc6nxmtEz9X74=; b=nGUVclQ7atgVCO
	kYgtrMjOiEXjL6JQcWaSxbYn/g/a3678N4d1crV0RWt9eyuhUV2tx3VcjWGrkYxDAEYn4g892pq4z
	pCiViSXI6l2uUzk3PNKbRep1gY5l5ObJ2mR9jVnITA30ZLJxFWl/XCJXwjZtDL9/Z1D9lo045xrEL
	xCr2ASZhxtGqPI8ZLUM6JDp5Uwz0VZqJ47hCFf9vTumaz6+qsg/y2CW6z7ws0sXrVRyGYwFu+dL/t
	09vYzB+LWftByddyqs0bDs0JTypstvx62Q4Fi4sS/U24nY61PrErKR2BbtVmztCeKyCFEZnPF/ouT
	659Io2W9Gb0CZqe4LbDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1d9Q-00H4ki-0R; Thu, 16 Jun 2022 00:14:20 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1d9N-00H4jX-Ab
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 00:14:18 +0000
Received: by mail-pl1-x631.google.com with SMTP id f8so11735928plo.9
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jun 2022 17:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LwNIyVGl6P4q0gd7chMhSD65ZMv4OXZcE0ZHZHBWVBg=;
        b=fLjfQ6g9D6t7DbLzhTEj8+KIW6cx6uH3ZXhKouWQK1Q+B6ieJXymTthUGW5ECpB8ZC
         5TJ79PUaWJ3LBhLI3cEJZKCPaZl+JTuti21cALWrdbOUC0Iy0HKxKijGiW+M6qLAddqz
         Tt8soxYtqFYboG5mCYJWA6yHHzToezDon/P2XsKv/VOPEaoPw3jIJdFVMIta7pqfr8BE
         3YE46EzaPwe+lCa8Z4GgRNDOkixePTjPd1VLt2O/ECtRPRVytcS1x+ALIMd5K2EBwPlY
         fCKhQXHwxvrlX5Gw1AaMHrEAtVJckd+mh/SJEOskOKrtHZIMIgtqpOefkbaibthwXvmy
         5dPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LwNIyVGl6P4q0gd7chMhSD65ZMv4OXZcE0ZHZHBWVBg=;
        b=YqXmPy8v5NN6hjdR1qCHadWZk6z21Ny5cGGC9/tbCmu7QbqjoGxbc/bgu/QR/Iv5e9
         6UIwSt+aYgmg7e1h5bwyf085CjX05ImnudZSxOdbFsVkAPUurtCmaDBE/9J6Xegs8o6s
         kUbl7wVvLeYJW15XzmoRwEdKWn61d0h4jAxog+0jMtrnAOV/GuR0LU3SRlCiv2rTVs/8
         8ZueP+GIwYORbQ8Cg86lRM77CZliN1oeo1+AyBA+tpDUS0mwCSezKULALV5q6yt+HMqd
         0WFcR2APOuNqH6zPp4hgolFmy+JHZBMXkAEMORe/IRLlSujC3fHkw+CKCABlgeKcYGPc
         zf7Q==
X-Gm-Message-State: AJIora+KwKO1RaJoY+drA6QhhZW9B/DylXturwLAo10PEbCw+eIkZFKK
	2NJuw07u6oHfxLzk16KDJDl3+A==
X-Google-Smtp-Source: AGRyM1sQOb+rad8pqIV9YhewcZC4WPd7DgSUhozcuO72HEHuc2mD+EjlwkpfXKkIGoK/O26/OL83kg==
X-Received: by 2002:a17:903:18f:b0:167:47f3:4a with SMTP id z15-20020a170903018f00b0016747f3004amr1818855plg.70.1655338455266;
        Wed, 15 Jun 2022 17:14:15 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id m22-20020a638c16000000b003fa95b940bdsm169537pgd.88.2022.06.15.17.14.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 17:14:14 -0700 (PDT)
Message-ID: <394e551d-c81f-5c06-3291-748a18713772@linaro.org>
Date: Wed, 15 Jun 2022 17:14:13 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 0/6] arm64: dts: Add missing space around properties
Content-Language: en-US
To: =?UTF-8?Q?Niklas_S=c3=b6derlund?=
 <niklas.soderlund+renesas@ragnatech.se>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org
Cc: Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, Wei Xu <xuwei5@hisilicon.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tero Kristo <kristo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_171417_406183_C184A4F6 
X-CRM114-Status: UNSURE (   9.31  )
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

T24gMTIvMDYvMjAyMiAxNTozMSwgTmlrbGFzIFPDtmRlcmx1bmQgd3JvdGU6Cj4gSGVsbG8sCj4g
Cj4gV2hpbGUgZGVidWdnaW5nIGFuIGlzc3VlIG9uIGEgUmVuZXNhcyBib2FyZCBJIGZvdW5kIGEg
dHlwbyB3aXRoIG1pc3NpbmcgCj4gc3BhY2VzIGFyb3VuZCBwcm9wZXJ0aWVzIHRoYXQgaGFkIGJl
ZW4gY29waWVkIGFyb3VuZCBbMV0uIFRoaXMgZXh0ZW5kcyAKPiB0aGlzIGZpeCBmb3IgYWxsIGFy
bTY0IGZpbGVzLgo+IAo+IDEuIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJlbmVzYXMt
c29jLzIwMjIwNjA4MTc1NzI4LjEwMTI1NTAtMS1uaWtsYXMuc29kZXJsdW5kK3JlbmVzYXNAcmFn
bmF0ZWNoLnNlLwo+IAo+IE5pa2xhcyBTw7ZkZXJsdW5kICg2KToKPiAgIGFybTY0OiBkdHM6IGJy
b2FkY29tOiBBZGQgbWlzc2luZyBzcGFjZSBhcm91bmQgc3RhdHVzIHByb3BlcnR5Cj4gICBhcm02
NDogZHRzOiByb2NrY2hpcDogQWRkIG1pc3Npbmcgc3BhY2UgYXJvdW5kIHJlZ3VsYXRvci1uYW1l
IHByb3BlcnR5Cj4gICBhcm02NDogZHRzOiBmcmVlc2NhbGU6IEFkZCBtaXNzaW5nIHNwYWNlIGFy
b3VuZCBwcm9wZXJ0aWVzCj4gICBhcm02NDogZHRzOiBoaXNpbGljb246IEFkZCBtaXNzaW5nIHNw
YWNlIGFyb3VuZCBwcm9wZXJ0aWVzCj4gICBhcm02NDogZHRzOiBxY29tOiBBZGQgbWlzc2luZyBz
cGFjZSBhcm91bmQgcHJvcGVydGllcwo+ICAgYXJtNjQ6IGR0czogdGk6IEFkZCBtaXNzaW5nIHNw
YWNlIGFyb3VuZCBwcm9wZXJ0aWVzCgoKSSB0aGluayB5b3UganVzdCBkaWQgcXVpdGUgdGhlIHNh
bWUgd29yayBhbHJlYWR5IHBvc3RlZDoKCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8/cT1m
JTNBa3J6eXN6dG9mKyUyMmFkanVzdCt3aGl0ZXNwYWNlK2Fyb3VuZCUyMgoKCkJlc3QgcmVnYXJk
cywKS3J6eXN6dG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
