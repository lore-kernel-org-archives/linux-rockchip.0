Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 480C7FA3740
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 08:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqZBkr1ZCINFKIY9uwNx3zwGFn1sFBSVQ1Dt6cPFF1k=; b=cUqllEfFFE3oV0
	d9m+Dzy5t8/Hu0+ILPkp6AE1zgoiNzzKPZ97skkTxgs2mVXWuYBFLf0BbJS5h79BH3z1CO5051W6B
	JxUVkusIe7n2BEdi441vm8FPQ4kQmPjRvr0OVZAjFC6GAA5kpgco64Wy5y3DEQYcaHuzHQ0VmTAnL
	xKZ13GrP9N0X/3S70eX5SpfsOKRdg79IIphc9edDAqjl6Ff2bfNr2bH/TPGW7LRcMKZh6KaOa1aLq
	funQLRMbbIfEV1mmf43H+mQ4pB+7vydC0dHHiPYWO5TcusnLIQaFjF1OS/tWohkeML7olvyGEQxLu
	H5Bfo4GkIRJBRLwJkKfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opQ4y-009Ycp-VC; Mon, 31 Oct 2022 08:23:33 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opQ4v-009YWS-5A
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 08:23:30 +0000
Received: by mail-wr1-x436.google.com with SMTP id o4so14858789wrq.6
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Oct 2022 01:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GBjX1O1DcI8vaNSNvjRBLAcS9TKRieTO8wxKUL4zLUI=;
        b=kyiMogX3Fc6zyqQ+KCFc3VfGF95/6P/uf9wCnWpawXf2OL6+Wq5/hY8b6CsxexG1mL
         bDz1pGkcGZ+4Ho/NJ+wbYgJGbmHN01xEO/T6xdsVPtq1zk/eZK/qyNA2n2wt6ouOyhZl
         GOcnRyGBZS9dpDxWrb6mNBrtb1cbaJdMH/ULMf2M6Bu7aPw4bz+IRAZQN8bhUD/6RI4f
         9x/bcgz/lvpkOPPJrPssJ6gseFHsCIRKPXQK/HhCJzm4Fn/YqPWGBr382M3r2Bc5EVTq
         hAi/nkC8xsMvYTZg7hxK01Nnq4rElsM9L51KhbUQakpar9Dgym7BIB5UkE+zsB0zMZcg
         xzuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GBjX1O1DcI8vaNSNvjRBLAcS9TKRieTO8wxKUL4zLUI=;
        b=xY/I5Ynxp7+f80aNIR6q3YqbTOxoCSs9GgcKoOHhabT0dTvTURRvmvPb+hPwp/O3hs
         SFQqjL6TyGOXo/7tCpo4dwW7FMGJLra3elFsNuAlERhwel5zPTqXrdFJw8eGkVY1a6QB
         nDLlFM+M5Cwdf0hmawtrHpqZhHbumGDnqtqDnLnOanLRi7doDKOc83K/f3QWJgNy3+SS
         BxMgFKmBNMfeGzCcb/ouO2ri4sgo6C2bDj/yYiokbnHgKbgVlWq98uZ1x25gwRlqT1Km
         hGKLaERaRbcotMvh4QSM+syMhQ8QfLqnaxCIgz41UMwzW3hGwJdiWSducOgO49D32/Dt
         egfg==
X-Gm-Message-State: ACrzQf3jIgQkARoK39g6wlLdvxtT74YwIq2Ji7daDaWmul3tpDqXlnVo
	uWtcbzdROkoLJe4Ir69cPpugMg==
X-Google-Smtp-Source: AMsMyM5IFBtq6DgiyrWcyRfDJxoQ0QJzxCDg8oD5MIyuqTVwTfLHW+/92iI1o7CJpSzKRfkKQ1ExSg==
X-Received: by 2002:adf:f883:0:b0:236:a6a3:d6ac with SMTP id u3-20020adff883000000b00236a6a3d6acmr7345634wrp.538.1667204607833;
        Mon, 31 Oct 2022 01:23:27 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id e7-20020adff347000000b00226dba960b4sm6416302wrp.3.2022.10.31.01.23.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 01:23:27 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-rtc@vger.kernel.org, linux-kernel@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 linux-amlogic@lists.infradead.org, Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-rockchip@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>, kernel@collabora.com,
 devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
In-Reply-To: <20221024165549.74574-1-sebastian.reichel@collabora.com>
References: <20221024165549.74574-1-sebastian.reichel@collabora.com>
Subject: Re: (subset) [PATCHv2 0/6] Convert HYM8563 RTC binding to YAML
Message-Id: <166720460675.3774207.3260903176135865754.b4-ty@linaro.org>
Date: Mon, 31 Oct 2022 09:23:26 +0100
MIME-Version: 1.0
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_012329_392617_8F6F8270 
X-CRM114-Status: GOOD (  11.30  )
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

Hi,

On Mon, 24 Oct 2022 18:55:43 +0200, Sebastian Reichel wrote:
> This converts HYM8563 binding to YAML and fixes
> the existing DTs.
> 
> Changes since PATCHv1:
>  * https://lore.kernel.org/all/20221021170605.85163-1-sebastian.reichel@collabora.com/
>  * Added patches fixing the existing devicetrees (Rob Herring)
>  * Dual licensed the binding (Krzysztof Kozlowski)
>  * Added maxItems for clock-output-names (Krzysztof Kozlowski)
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.2/arm64-dt)

[5/6] arm64: dts: meson: remove clock-frequency from rtc
      https://git.kernel.org/amlogic/c/2c5240a018afd6f46fe648ee2396983f5ce1e087

These changes has been applied on the intermediate git tree [1].

The v6.2/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
