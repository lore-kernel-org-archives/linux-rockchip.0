Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DADC4EB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 07:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edh+M/M40fI12qxxid+ozwzNkB9iRXxZcQVjr+3rCT4=; b=MLTVdLiSZayIiP
	0rxuvlJ4Wy38Up5ylLtNugPo3NzOlUBB2fqteEBWt0wV3EBIGFAPd6VlCcCcUTvilsILql40atbCH
	8dxQrczQbaG8uLD4Oi/aOiC/Q3TJLufgCm3VSrqifxwDKv667tCx9Hm6/eZk4l5KwjxVg7YKUwA5l
	VAF6jRQ9HUJK0Os/o5UvX0nKGm7MbS0kgUbXL9B5T4dJCarer4fm5KqtmWa6Ky0xtVM9cU+X+mMha
	Fj8RKMmT+9xkV9MqoqEm5P2g67Gp8w0GSf/6M3eYikGZY2DVWdEdVgauJWCBrA8R8IOhUUPYoNNom
	ox1dyFGw54Eea+aRi2tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE3JH-00COjF-00;
	Tue, 27 Jun 2023 07:40:23 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE3JE-00COhK-0h
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jun 2023 07:40:21 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2b69dcf45faso32819791fa.0
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Jun 2023 00:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687851616; x=1690443616;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6NTcpMVbPtfKRTcDrSmD8MoUfkjuvD8dm7rw3ArPL9I=;
        b=swdKSXqee4DsixhpEGqQyNNW3XBWrUevNKszorloHuIBaCA0PcMPOfsuOzl9+QiTte
         4wOsYWBVcN7F8Tj78icmZyMkGYOi7Dm+2krXIRn7atuzwAfMsfDBMaOZ9rnRRGBreFTM
         T6w9ELsAX328Q75z7uohV2hndIY+XECbVG2a2EjOF+5CpugPTygos1zEsS/Efj66b8rp
         FE/YMAM82KyOJcjbDpIYUnEKa3Caf5z4C/YQN9PxDLKCsMG3Si0/KaASqAsXFCONmnQL
         9zuEFehYEYN9wLs03oc5+iWVK1iVNsitw/5ptAAcaTVhDNfxMHzKllJ7PBJJ9IiaC2h3
         ItEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687851616; x=1690443616;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6NTcpMVbPtfKRTcDrSmD8MoUfkjuvD8dm7rw3ArPL9I=;
        b=JhyuN0KHy+NvSpGViVhyanC1FkHL1N3EUeYY6HnQT/8eUwam0Hk+NRP2o4pFlc16+p
         iqCvupWRDIpEmYGKCVPGqU/OwR0h3HWXsd6B0rflNLZU5R39KZuC+mibIugb0Dh7jULu
         gtzedfnVFRzhbiZWJ0AFL1xGZ9v8MYP0gZ+fdVvdhYNs+KGiFwjRgGIq/ggLaHdZGxJl
         fC5fv7YsaEPezY5WpJZ1VGJVqfFIaWjyKQEdJkauBXUF74fg/6jJ90mgtw1SfsF0BBsU
         0vs98+tEO4fRzofNrpdbhgljwKhN3Y2VqXAkaczMsYV4WeGo0mQ3/PKdsMQlCHxZhKyk
         dAyw==
X-Gm-Message-State: AC+VfDyi4vYToRV0VADxL9p4PGkj0ldCqvX5KnTgH+otgkCeHqi6PpEd
	h86FY471RVT+CyOSyyZm5J805Q==
X-Google-Smtp-Source: ACHHUZ5+P/WxO4oUioGdTlGmHsZgaxSX0SXG7cUKhxcYXN9myY+XUcQUBUCnCbqT23LWO6u4jDOXNg==
X-Received: by 2002:a2e:7e11:0:b0:2b5:95a8:412b with SMTP id z17-20020a2e7e11000000b002b595a8412bmr7300556ljc.52.1687851616523;
        Tue, 27 Jun 2023 00:40:16 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id m14-20020a7bca4e000000b003fa786b5195sm9823842wml.42.2023.06.27.00.40.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 00:40:16 -0700 (PDT)
Message-ID: <61f9a781-81fe-d553-6c85-eb069174e6f0@linaro.org>
Date: Tue, 27 Jun 2023 09:40:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 13/15] thermal/drivers/rockchip: remove redundant msg
Content-Language: en-US
To: Yangtao Li <frank.li@vivo.com>, miquel.raynal@bootlin.com,
 rafael@kernel.org, daniel.lezcano@linaro.org, amitk@kernel.org,
 rui.zhang@intel.com, mmayer@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, florian.fainelli@broadcom.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, thara.gopinath@gmail.com,
 heiko@sntech.de, mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com, tglx@linutronix.de,
 matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
 srinivas.pandruvada@linux.intel.com,
 DLG-Adam.Ward.opensource@dm.renesas.com, shangxiaojing@huawei.com,
 bchihi@baylibre.com, wenst@chromium.org, u.kleine-koenig@pengutronix.de,
 hayashi.kunihiko@socionext.com, niklas.soderlund+renesas@ragnatech.se,
 chi.minghao@zte.com.cn, johan+linaro@kernel.org, jernej.skrabec@gmail.com
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org,
 linux-mediatek@lists.infradead.org
References: <20230627071707.77659-1-frank.li@vivo.com>
 <20230627071707.77659-13-frank.li@vivo.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230627071707.77659-13-frank.li@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_004020_284012_92A57007 
X-CRM114-Status: UNSURE (   8.61  )
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

On 27/06/2023 09:17, Yangtao Li wrote:
> The upper-layer devm_request_threaded_irq() function can directly
> print error information.

I don't understand. "Can print"? It does not matter if it can, if it
does not. Currently it doesn't, therefore change is not correct.
Otherwise explain a bit better why this is redundant.

> 
> Signed-off-by: Yangtao Li <frank.li@vivo.com>
> ---

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
