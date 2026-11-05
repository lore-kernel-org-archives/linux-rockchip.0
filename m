Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C90606A332
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 14:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XJEQgrBV;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=AaxsJ0SB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7vbOeNe2LLgZLAShcU2i6JXYY9MhyLtP/EIcKuCv4Sg=; b=XJEQgrBVfOU40qXlk7af7guw7n
	tGjdMFSIw7Z1ENo3rT0lWIlBG5LFD6TECVZzbSqmgfaRjNwXSAC0zZI0RaLMrQS/FU34reV7CHpGG
	7/2oNL6k0VEGAtB6U5EkEJu4HAGWv//U7pR67mYC8NEZckgdOkWFyVNnhL7LssUg6VIdoEVoddT/s
	AXykiO/KpoEWusZ3L0icCcYyQzjdTzvGYbQi+8fWMUpzq0Ca+2celLrhPsWCUS0qHu3kNfJAznBAF
	pVKSVMt5lam1B9YuGEtOBCE/RP0H9bWfAEcgUfeUohpcbhwMbD3DYvc/zXnRZyYc4VD866SwCtSqZ
	DiwQvISA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOyZm-00000009Iu3-2Hl0;
	Thu, 05 Nov 2026 14:36:26 +0000
Received: from mail-dl1-x1232.google.com ([2607:f8b0:4864:20::1232])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOyZj-00000009It3-1Xm4
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 14:36:25 +0000
Received: by mail-dl1-x1232.google.com with SMTP id a92af1059eb24-1ae18eb9ad0so2286566c88.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 06:36:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793889382; cv=none;
        d=google.com; s=arc-20260327;
        b=XXAYLmImtd5llyV1PS6nKzo50QWrWelNoIvW2K4plGR+PvgTKXGD53vNocPqFBuewG
         Pc3shcZi0vItJjrni3KVpa+vn2DfO6yAoy0glIGbMKieBS5FLhr5NYrQCM0HQcSrwNuq
         FlcEG7/LBfzP6PhFcT563w/PVNE3mat0Q7qdp119k2VL7WAxBjAtMvRgyOnKLWkB3wdb
         N39+g8LTOIYI76H9mdmGvg1Ir/+ha5f2P03mVx3g8gFwhdh0bMY9X9pBKTdEPspLjUqY
         /6vKJ1t2dfI5pQw6jPAEbiciviwMDVfTLo1NzuDk0MHC4F8zcI8Ghzn/ihEsTIUKWU6g
         4S6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=9Ymc+4AQvzzaiCWsBbLGU5SMznTThrS02qv+sUCHS1I=;
        fh=DDLqjmqrEq9gEMTyFCgyNmlHt9EhNPecSv0tFuLsA40=;
        b=k1dRWYVRanl+d2g8QvYn7am6SWmcVcy//NExrX1RZwCjwTff8EStzSLgAmdAuWQVep
         phJpAmK8EvG6XZo1gi6ERJK8e2yx4F55/z5nmbXyZZAgJJfU1hGP3nsbpcZY5/i7zTuD
         tOSlhybcxYjm2QQA5M0yCFwh0Mpt/oiLzER3w5nBggbEqyUSv+jAQeba+qGRaUAwkYuq
         c64drKQRX2TDD1EZfW0aMY95938sze7pwOXG4lfZwX6byje9jwh5Lh23OEy/hnB0Bh8V
         7OlG7V/7aXfhWi8fLfylXkiiXT8liYL/NJ7rZymMkcxxPFEd3xanZTTuh1TztM1s7crS
         faiQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793889382; x=1794494182; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=9Ymc+4AQvzzaiCWsBbLGU5SMznTThrS02qv+sUCHS1I=;
        b=AaxsJ0SBifIvCHby09kHsFg6WZh08uiOOQGAMDUynTln4KY4Dl7tpECHQ3vgqAbwP2
         072QaaTs/gGSNOO56AHTrGeJ4jII8I1m4qzFBxUl+M+un5sK+gYQlM6cxWy4TrpsEiB+
         AMxa0WzUmAfVAU/MP57ep6H+dcup5dUCR/nUbNnH+ajxLcn+YAhl1qOA0tOWvBeqQU8+
         F/s5INMPxq+CwNzqy9MSOa2Ek/JFkukj70VCBazdFy1P0CMvkT6TCvDCU9P+LprgnkCL
         kPNw0oo0P/TKMl0n0Ww5OqLTP2nBAOzaEaLP4Qic6jLo75I/uzRK3+ymWLLwIlUM5jsj
         ZKTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793889382; x=1794494182;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9Ymc+4AQvzzaiCWsBbLGU5SMznTThrS02qv+sUCHS1I=;
        b=P833ecS2Pve1Th6EETK47TZNSj/4TNPH85YepFURQgMlmieQEDVCEmhgWGGJOnZ4qQ
         CGxsSs7SRwlTsO7kA6oXDfHht4jhkrp0JKoJFyKToYLFC4xSg+X3+bH4mnRrNm39t/Tz
         DrTOo8lwtmHLfDqXmCCJ8cIdtUY1th1Qf2NlHqZyZg+fllAqYO+T1UblR05lswV2yYin
         i4Y0lnD0Vm4dvn2Z8p0T4ceZioN7gC8m07U8t/BTYp+pXOtwjUgFRg5tYM5uhxz08fF7
         iqjcaHgBUPSAYMPdGn07+ywgf7D8uFuf614PUyMijVg5hUpMLFW9tNXvtS+pQGTKxqC2
         twbQ==
X-Forwarded-Encrypted: i=1; AKwUvBxLjqEmB0zcNA0PEjUjiAyUgGrKPTLmpHKFeh/yHIJnoM7Z6ocSVyR+7pdGTdDvH0btWOXh2CerbUawltpMvQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z81UWs0CUEexWUxLLT7nosu/go4clfucImq2Ji3LSu3IsLQpaar
	2Y4tnFhZs7D8dIO+alalaapLXVqCMSODCI4tW4ZO5eNqvOEyzum40QPvwMkrRWFEAb+Cb7NKqGH
	pv4tKHwwPgOUaCGITEumfCiez5pY+V1QaJphiwo/i6g==
X-Gm-Gg: AYBFou17Cu0uLbKRlwHsbDokxm/GWDdy7J8ZUYQ3FknMUpck+GnV0KJLOSoELKLSZlq
	Agy5Mh2U1mheXTx4+RekMVyzzQtT7t5wEcvvQhKiLeS5cZceApmMJ+KBUYiVdVBDpGiKLDzv5qo
	RJ3Er6IARg9sO1fmimEeGPzklCU9uJqogOK32X+38G4geEmveLkfR/RCv/fip9XHPDT/81u5h8m
	mbbFcOh4tmtERqwZatUiLrWND86I/WUFhxwiLFTk3mXZ/QhJ9IA3V1ptTgF3A206YdxQHq1BwKn
	t3A3p5p622ZTLy4GekikYRl4RYwOneiP6FBCXKfv3WGJjcC/AzShJR/Se9gyIChj41iaazZ94SV
	Cpx8ltgrTaW6OEcZ9EUad+IJPWhBDDWg2yyZB
X-Received: by 2002:a05:701b:454d:20b0:1b2:3b5b:b80b with SMTP id
 a92af1059eb24-1b23b5bb847mr12680614c88.8.1793889382405; Thu, 05 Nov 2026
 06:36:22 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261105-dw-hdmi-qp-yuv-v6-0-1bb63ef5766e@collabora.com>
 <CAPj87rMQdE3eeUxGSb4oQfB4Adry6UV8CvhGoTKtdKGQHdSo4Q@mail.gmail.com>
 <81fbb960-abde-44ea-82ab-3adc054da836@collabora.com> <34506010.aRNtrjHk3s@diego>
In-Reply-To: <34506010.aRNtrjHk3s@diego>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Nov 2026 14:36:10 +0000
X-Gm-Features: AclHuK-P65od5HCTUxTkNtF8XI9WRdmLEVnuoZ_IAiO-y4WkOrppI1hKYcCtIdc
Message-ID: <CAPj87rMyMB05OTMDLSPe+oDZJYUW=oHF9E-f2LaTPCsBrKAAhQ@mail.gmail.com>
Subject: Re: [PATCH v6 00/15] Support 10-bit YUV422 and 8/10-bit YUV420 color
 format on DW HDMI QP
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_063624_651434_017A3F86 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
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
Cc: Sashiko <sashiko-bot@kernel.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Andy Yan <andyshrk@163.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Daniel Stone <daniels@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linux-arm-kernel@lists.infradead.org, Igor Paunovic <royalnet026@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Sandy Huang <hjc@rock-chips.com>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVGh1LCA1IE5vdiAyMDI2IGF0IDEzOjIyLCBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNo
LmRlPiB3cm90ZToKPiBleGNlcHQgcGF0Y2ggOSBvZiAxNSwgb3IgbWFpbCBoYXNuJ3QgdHVybmVk
IHVwIHlldCA6LSkKPgo+IEl0IGRvZXMgbG9vayBmaW5lIHRvIG1lLCBidXQgaWYgc29tZW9uZSBo
YXMgYW4gZXllIHRvIHNwYXJlIC4uLgoKTmFoLCBJIGp1c3QgZm9yZ290IHRvIHNlbmQgdGhlIG1h
aWwgLyB3YXMgd2FpdGluZyB0byBzZW5kIHVudGlsIHRoZQpkY2xrIHJlc2V0IHRoaW5nIHdhcyBm
aXhlZCAoSSBmb3JnZXQgd2hpY2gpLgoKRWl0aGVyIHdheSwgaXQncyBkb25lIG5vdyEKCkNoZWVy
cywKRGFuaWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
