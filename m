Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1CCBC71153
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zCULmIGHh/8oIZcIbpgDqt4w6SP3OeUEaK/x31/cAoo=; b=IwTW8Dd8GzatJz
	Q4ChfHqNBRiUn/IEOzaZ0aznye8eTcXrmAiAu/pRpBgJG2hkYFA2XDl6LSotkQ7o09aejKshePvL8
	pMmq9muHUadQ69kJ/EWMTeG1DN8Wk9lSn24GKRJHLtAno3yc/u3CPGLAIH1Av4/wpTm53MWY7ng5/
	/iHHMmL0l9LAv62Jl8ivCVjKwNnJ9d8UdlVHwOQmH1mInLNtWox4MmMYBt0/R6Nyje7os1V7YIeaY
	dy+LIFhj6EKsNqD00VLyO/V0aR0STtwX9tnM+O58TcQF14vtHfDtmPJpDsqubPAO93u7Xi/yynhNW
	9JMie4yISyJeustYvJwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5Tc-00CEFR-1c;
	Tue, 29 Aug 2023 20:38:16 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5TY-00CEEz-36;
	Tue, 29 Aug 2023 20:38:14 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-99c353a395cso626772366b.2;
        Tue, 29 Aug 2023 13:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693341490; x=1693946290; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oVkOEcU4wbyK+9rXUwhm3LMU7ZPhuze+DSTWENcgNPo=;
        b=r2f09btXrC34+K3rAYHymHKS55QP+IuvCHY+u6i5xV5ViM17139XrWiWhNqtrVD9tv
         oyKHPOQjs3bpksftgR1ZdjBA+KIdb70tNN5h1sQr6sun2N/QpiPSfASCBCPIKkjMOiGz
         NWmMQcgB1nUqagkLQslwKNDVX3SR9Jat6MO2LLp6bqg5RD8qM+yaudMKn08IX5i/MuWE
         xzYcuT4jrEkt5j9BTro6vrxQXSaFE0tkb7rY8FCNejUynK452zdsezkMnp3eenNU+oMI
         uwXu76At326rzgbr4C0/szGEYQtXDPNWvsTx63D8WX5uorrLmmjIRNK/VLk5E9+qCaR0
         d9uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693341490; x=1693946290;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oVkOEcU4wbyK+9rXUwhm3LMU7ZPhuze+DSTWENcgNPo=;
        b=SyiYpS+EXIGDpcz3lu/NjNS3NemGRgP2xOv/lx9kbLriyBfst+cqSEBqr0HTMb3JcJ
         RIcExmOTPsVDAVSl4u1UXoCS2IJlKZ2bIIW7fYwGuZRg7F1SuYF9HXWQrkjDnU1VkXSx
         Z5YrGg2By6WTZPkwgauEqmxMuU+gWgjsLlLq/fZXoGX0GqVbaR85KCNxATQHIK2M5iQc
         w0pFMo3ySimuGeFDoHC9RCKwrKL+jf8tUyOkwAs2b5PGuR6CQQL4GzR21VmTlP2vt3hs
         P6OrgnMRMxHbAAE/24R82jAVZt03nPTNezThRqgD7A9HCP/QV8eINPeSbLexZBwqou89
         S59g==
X-Gm-Message-State: AOJu0Yzdy+zMM4XGN2/Vv+HW87cGEWr/QTnDUkawKYZutFfVhJsmx3pw
	diBSaolj03ESIRMJDppx9g==
X-Google-Smtp-Source: AGHT+IFO8hRNcI4fJYBv18ZFabbI1YyvvyoSX9D8CPWeMLUDsb9S8/5U6mBuEQTCuTC1nQOeKO72hw==
X-Received: by 2002:a17:906:31c6:b0:9a1:f81f:d0d5 with SMTP id f6-20020a17090631c600b009a1f81fd0d5mr90992ejf.54.1693341490456;
        Tue, 29 Aug 2023 13:38:10 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id f18-20020a170906825200b0099364d9f0e9sm6301908ejx.102.2023.08.29.13.38.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 13:38:10 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 0/6] Device tree fixes for RK3128
Date: Tue, 29 Aug 2023 22:37:19 +0200
Message-ID: <20230829203721.281455-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_133812_998284_F1D27BBD 
X-CRM114-Status: GOOD (  10.35  )
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

This series contains several device tree fixes which currently prevent
the hardware from actually working.
Please see commit messages of the individual patches for details.

These patches have been part of the pretty huge RK3128 fix-up series [0]
which I've splitted up now, as suggested.

[0] https://lore.kernel.org/linux-rockchip/20230829171647.187787-1-knaerzche@gmail.com

Alex Bee (5):
  ARM: dts: rockchip: Fix i2c0 register address for RK3128
  ARM: dts: rockchip: Add missing arm timer interrupt for RK3128
  ARM: dts: rockchip: Add missing quirk for RK3128's dma engine
  ARM: dts: rockchip: Fix timer clocks for RK3128
  ARM: dts: rockchip: Disable non-required timers for RK3128

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)


base-commit: 2dde18cd1d8fac735875f2e4987f11817cc0bc2c
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
