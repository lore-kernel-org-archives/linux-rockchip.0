Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9AA9C00140
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Aug 2022 15:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AUoRpQUUsDf7lbzPrSAJcp8nwXPrDbcReRAJUlw+Mgc=; b=nUzfmNUFJrtllO
	UPbDfW9oZKem+dxcLbtybBKIWAfbkSoaokN35x1tR+wDnr5lbrlA85mCkXSPPpmvcIvza49sl7GEQ
	UBEuEsQ3O7Tvq8j6TvvzPh6X+3ahp+j++PYmAkgAUEAgitGNEeEUqZ5ukd5435ddEYDzbvNfQMxjR
	k1mgJg4LFT/y4Qquq3YP+UxTUR9bUbOMLbsHpJi0JV7Tg1RD2TIPnrzh46HkrBHMTRrJUlJjKvRn2
	cIqQ5byxaC7eYxGAN2YXm5gXh21/8oGKVx768/iClN0R/RGBlxx4eZYg5LhyRMM96EpkOk0o9hC4h
	7jb7w88SGmaqVGBlxK6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL4ct-00Efzt-Bq; Mon, 08 Aug 2022 15:25:07 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL4ch-00Efty-P2
	for linux-rockchip@lists.infradead.org; Mon, 08 Aug 2022 15:24:57 +0000
Received: by mail-wr1-x429.google.com with SMTP id j15so11311317wrr.2
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Aug 2022 08:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=ZpNv7ygwpU3zV+hJKbpVC7ZqN2jr4ZrI6/ImvtG79CQ=;
        b=V9aizwtf5bs5ufS+AFsPhP9M7sxGgDdWLNtfFFo3ER0Rrwp6I3Trj4PbIq1qTev0b0
         CnV3ic9QVAlle4buR7D7Eg/tNpmDJM7RfL3w5kngiLRP9sxsXnWuHqsATh2GKxFzpHE5
         1WAFcG95bi7Yd5tOqLuS1NVTGNGWhRTwiiMKetOu3l/x7eIMSHpp/ryoJG3NT0GLqnJi
         djSl5KCDmJiLdWzJEb/qf+mbp20dS1HUwj4/mQg/0geGHSOVGYLknIWnF28ectN8H3gm
         eJ0YS/D0M3PeB+LaSvWcuMF7+nWF0X4Dsv5KBYbAt+Eitmf/mvXrqet+3C+fbNOrl9IY
         vDSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=ZpNv7ygwpU3zV+hJKbpVC7ZqN2jr4ZrI6/ImvtG79CQ=;
        b=ZXbnGLeEK6/ib57CdsYih322AO/W6qypI/h0khWnkKRIOfSR6aYiLqf2/6LU+1Beb2
         SBcmTAA92PEXJaJuSKi8MGKmKNz5xO5r0Zcp71MJpdS+LQbMaPbLYfsP82HFBnEgQXbO
         S6bY7PZqksT0amQbm21t7Sd5Yw9a1NtMvjfzlyCTkbFV24Kfs0Lk4oKhF/h42LaMec1L
         9Gzsajdr+XlaFckkErFZtTC8UFJO0DDyA10kjZAc4CGz6Jx429SJKcYR4XHdlwas5BJp
         TKQ9xINE7bud81dFG9S9UjRo3WdZi137RiN+AxtA4QQ2SCWzBW62KrTmDwNwx1KeGTig
         45xw==
X-Gm-Message-State: ACgBeo3fNFHwNwtIdxjJh5q7nDhK8HuSvHR37Cj02Je2sB+T3MaHQQ2Y
	WStEQiGMs8eK/xak5ZW+Fd6itQ==
X-Google-Smtp-Source: AA6agR4QLiZCUrwV0FifQHEhnZLHY6IIgq++1rOAYUuv93A0aufVJZ2RqDUkCoBv6moBInwtwTQ/0w==
X-Received: by 2002:a05:6000:1011:b0:220:5a7d:9cd6 with SMTP id a17-20020a056000101100b002205a7d9cd6mr10979515wrx.504.1659972293418;
        Mon, 08 Aug 2022 08:24:53 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id u13-20020a5d434d000000b0021e74ef5ae8sm11602753wrr.21.2022.08.08.08.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Aug 2022 08:24:52 -0700 (PDT)
Date: Mon, 8 Aug 2022 16:24:51 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	Lee Jones <lee@kernel.org>
Subject: Re: [PATCH 16/22] dt-bindings: mfd: syscon: Add Rockchip RV1126 QoS
 register
Message-ID: <YvEqw0iiW9jAdFP9@google.com>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-17-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-17-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_082455_841961_23A0D769 
X-CRM114-Status: UNSURE (   9.89  )
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

On Sun, 24 Jul 2022, Jagan Teki wrote:

> Document dt-bindings for Rockchip RV1126 QoS registers.
> 
> Cc: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

-- 
DEPRECATED: Please use lee@kernel.org

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
