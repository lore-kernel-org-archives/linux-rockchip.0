Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77E7606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 06:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uoKF1pQJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Ao76Wad1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JBXqOJ7XGiNW8h1Lh6NzqzB9Gv0znrsHLHjPM2obx3M=; b=uoKF1pQJATvGgI7AUvFzQuoAgA
	TXOp3IiwU3ua4mt0G1U+Df8ziD61qlUzZbWiJc51YlKMCBWM2Mw7OPy+UgukKBPe0pLNqxt3IAadk
	ffwijDevo31y/cskqHXjrkRaPLlCWLM6lT9PUIi05JXnxuerRhfS+K1fFKpOMLQVoC74NmXed+ANN
	7W3TTiiLQBkSLSI7FLYqrlxbm/W5HQZcEvfiBVnMUUClEWQCDd29DrUjY4UH11HOVPuKlOhF27vR9
	8DQHuWNCbEvLhlI5BFt83RlLKn6l+5Y1QREvukZ0HtquzhxUmTmeoOXOoddJWCf/EiIZlmPYRSW5J
	MP16MTnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTCsr-00000004gSJ-3XaJ;
	Tue, 17 Nov 2026 06:41:37 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTCso-00000004gR9-22s2
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 06:41:36 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-6b86bbbe954so51784a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Nov 2026 22:41:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794897692; cv=none;
        d=google.com; s=arc-20260327;
        b=BEEgZD9S+Yf3wtQfmOaedp/7a4hfTU2nST8D9bEEm7+uYsdd8d6AwFiUV+kRt704r1
         s1C+KZhRc1lkz1XuhIkA0G9xtDf4rn9rx5b4emDqtnTXc25RQX/j/Quvrb8jwFCqguH+
         OWjOfoPyuNHxxjWFuAKaIlYgag9IUukkd6v7buiTbD1XpqUiQVrve03pSadRP3ZO9KYJ
         kyEDNI5d2UGTPlS2Cp0llRI0AxAUcyyRTVJfVpu1/+bqwGgUZ5fxUSedtXUqIZrQQg6l
         eyEb7ix7AWXlkRIe2l74mdogpsgrYXyGVSOrbETHYvYTns1v4l7Zi/E5yXPfQVhMkuqc
         hycQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JPZhpWtYo4NPJA/y8/DpauPYh9eE6q0SsStIMNvIRZg=;
        fh=77uxmfLigoVqS+n5UMQwo9A1cbiA+SL1x8GItgCAQJo=;
        b=ByxjUZy8rk73IWCDPAEZW1/on99YH3RbVu3Y5jfiiKgVeNuXE01SJ0MBrkMPOB1Rbz
         Szs6WNRmMan91gbyUqMPLtwSkuJmwvfPKhCIDAp23zbRIZJehfDUhUF9/HOFj5ulCZbL
         +3XiQMMfg8UOhDLO+NSTK6yEO316kT8Dmf8PxgrzZgdMr/1fVZBGz6YuyX6juPwCBnKA
         V/Nk7RK4dHfCQuuXDQw+kKF6AwXHsVDvpeepBWLHP41sa8jFVa7riiWT/bNLzMhbm5/n
         kZa8umQEOLa2S1PI6nurQnWSAw1QmWy5MuE9EX/AFpiCt6wR2FGEBblUvlQAF97//UQ7
         k+7A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794897692; x=1795502492; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JPZhpWtYo4NPJA/y8/DpauPYh9eE6q0SsStIMNvIRZg=;
        b=Ao76Wad1Qs3p6CgfeB3oNiAfkid2hREWRqWifeF56+tBVORnq9636AMD8tAoL3tKvt
         A+XJtw1E4NWM72amwzDx5Gvm/QOEdpTzH+mVJG/4QeFB+od2ABTc0PyWttl0bBn8pORC
         nJrc6cxxZCbn4BE/gtain4WngBrIa1vdG4qiFlul9LWN9rB7NNsKDRGZuzp0hCGWKjqA
         Xoac/XlTlejBJQHe3s/VHC2gcG1ee6+Q4zyLht7aT6oAT8RMlOsfS1gOAVHF9vLzAIHY
         f/W2wX7NTllhKJk8bEYiHt6wbYzjhLkdAxBY88lca9otoOxMUXoiAMcFGiqP1VEN6PD4
         qSnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794897692; x=1795502492;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=JPZhpWtYo4NPJA/y8/DpauPYh9eE6q0SsStIMNvIRZg=;
        b=zL4dj1fTDpnWAoATHXLTQdMqZatN1MlK5tY3bMewfp0Znyv7q74rp6hmrouBVcVFCy
         10Jel4qcj5zGgATwsLTULLPsfrlQqqMmdXnbImX1D9ekvZA0woII38rJQsieDR5quk6Z
         r0AQD1WVR2+VkbmkO6CsMBpuYyaUS3xFdsF8QWozYp/R2ICrU0fZUW8aouMavYqDAE/R
         2AnNiv1YibDCRX1Tq1LtDPXy+RfbdqlxmtQlsOhzdyuqudZEFJcCkmIJLN7fvTABin1K
         L4CawUp3uUnZeQOBjdLNWSWnIsKITn3Jzk9M0rNAVhNWPG/EoIsY5a+qzEpCwoFPr0kp
         OASg==
X-Forwarded-Encrypted: i=1; AL+hErHIkKinbMqscH8HdLEg55q2pvzRfRD2oR0v9ig4faqgZVb5aIdkrvW8Z2HZdqdwGjMqF32wu8FZR8F1uxhh4Q==@lists.infradead.org
X-Gm-Message-State: APuU4Z+LdiabG+4MbZUKay0ktrhmjFpIDTK3qfCpEBVQ88SWIGOTbDF8
	acrHOtbx5alD9LqsL7v5B76ufI/2XSztNev3PRqVKM7IbYMu1020D4Mb68+fCldg7qppSsMprWG
	imzRgI4hJUpMjBNK9IbY6jKfTDiIvVMk=
X-Gm-Gg: AYBFou33pt5SwTwUWaoAC9UQJBRkwboAM7NgHeSxzUoQo2SFRrmk/22+rcqlvrqiUI8
	nfyOklAHN3jmceAm78NABSj87fSDDGg5teB/TXIr9F2yAhuGi+3gz1K6WH7q+dZUTwEistntkuH
	V4Qz+YmnBqpCyIYYbb53iQPhNyf30zuEJ4lB5Hwje0rPXivV746+jWCah7Dqid7XB6o+soh/+u5
	i82ZMrrENBN05yQQ8K5RxDenBuVO/xGVIsNApZKjCJ0z2DljW5HSZa8C7LBPHb5MNB5SGqlyeo5
	y6kWxq7fXlFlNg/gQpUKuhwkHJ2p7ePuoj3edM6NV6WKa4jDrfwr0qaKjREleCldOwizOaTcTH/
	Ls/EJlOjh3jeBPIBC21JoZL+eFLn18ZLID/2kF6LnTBBtlTZqcyQG3UZIv/spPj20dsc23Wk=
X-Received: by 2002:aa7:dcc8:0:b0:6b1:b5b8:b695 with SMTP id
 4fb4d7f45d1cf-6b7c05c2ab6mr10001732a12.0.1794897691319; Mon, 16 Nov 2026
 22:41:31 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
 <20261110-dcphy-rx-v1-v6-3-d681ba20b36a@gmail.com> <3ab93996-7e37-4143-aa4c-b4b4b0e025d8@collabora.com>
 <CAPwA33JHxsd=nr9F9_KFKWPx+HGaR8P3ee7hxMc8XCS6QY46gw@mail.gmail.com> <0d837fe2-e192-4fc6-a2e5-c23df40684ab@collabora.com>
In-Reply-To: <0d837fe2-e192-4fc6-a2e5-c23df40684ab@collabora.com>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Tue, 17 Nov 2026 14:41:19 +0800
X-Gm-Features: AclHuK9K0tynceSVuGQK7zRApbKLpPj305E_NQui8VbqIokOScWH3FFiT-Y5p9Q
Message-ID: <CAPwA33LgQqQSnn3vUOQF2wTUiqP2QROKfUpsASJZqjJP6WDi7A@mail.gmail.com>
Subject: Re: [PATCH v6 3/9] phy: rockchip-samsung-dcphy: Unwind power-on on
 PLL lock failure
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sashiko <sashiko-bot@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_224135_467739_F572A558 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.8 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=0.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Michael,

On 11/16/26 11:00, Michael Riesch wrote:
> Still what we discussed makes sense, so let us do some refactoring in a
> later series.

As discussed, I plan to add the tx_ prefix to the PLL helpers in 6/9.

I also noticed that struct samsung_mipi_phy holds phy and lanes, which
TX and RX both use, but also the RX-only hs* fields added in 8/9, while
the TX-only PLL state stays in struct samsung_mipi_dcphy.

I am thinking about the following:

1) One struct per direction:

struct samsung_mipi_phy_tx {
  struct phy *phy;
  unsigned int lanes;
  struct reset_control *m_phy_rst;
  bool legacy_mismatch;
  struct { ... } pll;
};

struct samsung_mipi_phy_rx {
  struct phy *phy;
  unsigned int lanes;
  struct reset_control *s_phy_rst;
  unsigned long long hs_clk_rate;
  u16 hsfreq_cfg;
};

2) Keep only phy and lanes in struct samsung_mipi_phy, and move the hs*
fields to struct samsung_mipi_dcphy, next to the PLL state:

struct samsung_mipi_dcphy {
  ...
  struct samsung_mipi_phy tx;
  struct samsung_mipi_phy rx;
  ...
  struct { ... } pll;
  unsigned long long rx_hs_clk_rate;
  u16 rx_hsfreq_cfg;
};

Option 1 changes 6/9 to 8/9, option 2 only 8/9. Which one would be more
convenient for your future work?

Thanks,
Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
