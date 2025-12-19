Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D993D7496A
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Dec 2025 09:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wNCYBV6JlXmbQs1ReWsAuMWYw+gDdOBf0TnfxzdjGpU=; b=CLuSFA/eewn1XW
	/LZrzwhun0p0HR95xt3hV2W70tgYJHPb/Y4jCKDq0Q1u7FxIM3zH0NRVpf8CXAzMAQ4sUO0Fb6Jvb
	Cr2TC1puuwj4qyg6gSyklzinU1qZQKD/CF+7dlUESFFxd2QwDShAE/oKM0mXY8fj9dIubQ7AEKqLB
	SRwjzBfB/XhfqBYD4ShsGPfBFZN6opRAGizgSAKBFCtCyzVOJNM8jss51tFb6rcO/2xoGrWC4tVNR
	v7WnPL+5vcLQXY+s7WWH74E27sx6HH6fVdJEHqFrJtKVu7Oj2w3gNzWrIIjzXFh2uLsKofXtt4/iT
	34Or2/RrpqbW90d0w+Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWce-00000009vYF-0VyQ;
	Fri, 19 Dec 2025 09:18:04 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWca-00000009vW9-1nRG
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Dec 2025 09:18:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1766135877;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UOrqOC5iQbPsgw0GDAF8bS1t4BrrEVQdYEt9Qz67A0o=;
	b=g4jOVjbEmK9XEuspXciVHvTff7vW18gG4zsAK6UmVadgZkJvfTEeinxOs/EkCVs2UQ8u2O
	qJ7rnSB08Vw2ZSw9njkajDPiU/7lrmPrh0gjy5unukPfun5qXWlZlExZkFfkS+RgXQuVVV
	UyYmfAFtGZcE9do6PHZiPI5NlkOjSjg=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-675-DGb-DtlmMWSImlm9XSgFWg-1; Fri, 19 Dec 2025 04:17:55 -0500
X-MC-Unique: DGb-DtlmMWSImlm9XSgFWg-1
X-Mimecast-MFC-AGG-ID: DGb-DtlmMWSImlm9XSgFWg_1766135875
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-430f8866932so1069395f8f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 01:17:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766135874; x=1766740674;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UOrqOC5iQbPsgw0GDAF8bS1t4BrrEVQdYEt9Qz67A0o=;
        b=gdANBLaKZY3VuigBCet7WObXzYFIyxFTKVNXHFt9pc3WovWCD51d1H8ecyM1Y5qmLV
         dSEPcq2qLIA5O2mSLuaMrPOz8A3SHvhepj375Xkd6bShZB/KFTjvOh4SvDjAQ5H2TY0D
         b7mC/ZBqSNh/9zQp96IZNuHS3VR1NrKgKev3JWPHE6m39/mrWDG3hngluiD2Pd+NM5p1
         tKjBk31aTo/AlK8xOpaVRS/mgHpx6gADQwXAMnf6Pr20pUdQCFAB/Ff3xj0zUVVHxwfG
         Ro61Z1VJvg6nfWjfHXnmFUKKuaOqj43ml9rmFPe2qDfLFwtZfN9zoSD1UR07Fk6SY6tf
         Kwrg==
X-Forwarded-Encrypted: i=1; AJvYcCWKlK8+jvDGXUExJBG/kqup9EataQKDFYHHkd1G5QwDKPDs7Qy0CLoaj06qAhDdD+N6ksD772JMYIPMLx19hw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzlcmyOfTRiYGp1+AFG6TpA24tB839mtsxd3Z9tqkfr7+lQlKLG
	RU0gTWL/o7NcmitMJwYJV6c3bXT31Wuv05LLq4pwNDBLJIhvCZ9QydZ7HB2O3tIIMFhOW8Px1c9
	XM870R3aHhUVsOSrsFjKaqN6PR6JOjCoPbTGWnZMsLGJXPywEJ4kWm64ds69GpNh08RgDnVRyWQ
	==
X-Gm-Gg: AY/fxX7sBcjMPmuspaR3gN0lYIG6nZiIAagBQAqDwk2nCWitPvvqxOQgO0n2nbXBJgu
	ODshW9PxFvAEPNiMb5aqt4ULqi9oxkudNb3NKH8QtC2qqS4l6g1pqdenqJD40bsnfq47e/QmBzL
	z6XBUwLfZ9X+V/2dCsMZF6jlcEO5ygh2/a/TA9rpe+Sp8IdiTXUvjIQmbXqCxA5UYySo3+MFZpE
	6OhtFHwttCh5tlbDIE4Mn14bgNCLW7GCQmVMe7RMdB1hUi/Ej81pIm8hrDTyr51KRNvh4zC1XlP
	mU1VdOQz7KyMm7Te2zBOyU22TBuMMhiPamsdrGlr3NZuUHbyqM6gCEaj03K5tWUyh0cqgOIkTDf
	NWBx1nLds6FWp
X-Received: by 2002:a05:6000:178c:b0:431:104:6daf with SMTP id ffacd0b85a97d-4324e709ab3mr2628690f8f.54.1766135874629;
        Fri, 19 Dec 2025 01:17:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEgrjQPRHArCAjoq010AgJgcm4Stpg3HSOJLPvFxNuWXO0HKkDXVAQ+3nly1Bi0al/c+unpYA==
X-Received: by 2002:a05:6000:178c:b0:431:104:6daf with SMTP id ffacd0b85a97d-4324e709ab3mr2628669f8f.54.1766135874255;
        Fri, 19 Dec 2025 01:17:54 -0800 (PST)
Received: from [192.168.88.32] ([216.128.11.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea227casm3924193f8f.15.2025.12.19.01.17.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 01:17:53 -0800 (PST)
Message-ID: <3c72a0d9-88e2-422a-9f9b-900ca7867091@redhat.com>
Date: Fri, 19 Dec 2025 10:17:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 1/2] net: stmmac: dwmac-rk: rename
 phy_power_on to avoid conflict
To: Lizhe <sensor1010@163.com>, heiko@sntech.de, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-kernel@vger.kernel.org
References: <20251216150611.3616-1-sensor1010@163.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20251216150611.3616-1-sensor1010@163.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: UtrDeI9W3x9YlxB10NhExfiIHUL83CurKEpyv3lFx0Y_1766135875
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_011800_617254_BD8CB244 
X-CRM114-Status: UNSURE (   6.17  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 12/16/25 4:06 PM, Lizhe wrote:
> Rename local function 'phy_power_on' to 'rk_phy_power_set' to avoid
> conflict with PHY subsystem function. Keep original error handling.
> 
> Signed-off-by: Lizhe <sensor1010@163.com>

## Form letter - net-next-closed

The net-next tree is closed for new drivers, features, code refactoring
and optimizations due to the merge window and the winter break. We are
currently accepting bug fixes only.

Please repost when net-next reopens after Jan 2nd.

RFC patches sent for review only are obviously welcome at any time.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
