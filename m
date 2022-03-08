Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46547C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 18:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGsyAuVh4d10MLLJC+mKrVHIqQ7EuVatapTXojJszKE=; b=k5jW8ijT6TR7WK
	9zVsL3FM+C2D4QjTkjyhTPbL0VuSpnl73O4GcCJPmrVsA++VgVjzdVOlqOXPa3SPVM2vDhud6RNxG
	Wkl457CSP8P77kyNa8yMptiUTgVuDwAoYCj04aPUCrM8stRack49lD1yVUc56htryteHDER5Ohrrm
	bDSxbA1nt6JgmlOrCmtK4MnpiYqWpEJ24rHbNymaC8Dgqbd8kTPwwNgQn++w5b9QFjIoOiASinSBR
	U0+toxk8fAEQQcpYMcVnSHPCnP+q+8pqRi/wS2nKeLjZolLkNPo5zEixI+JuPBWE//cVfHXIDpy2A
	u5GYg+7d7pTqMLmdCj2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nReHm-005jhI-FU; Tue, 08 Mar 2022 18:10:14 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nReHi-005jfG-Ni
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 18:10:12 +0000
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 75DAF3F61F
 for <linux-rockchip@lists.infradead.org>; Tue,  8 Mar 2022 18:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646763009;
 bh=P5NfD1dxp72/Z/UJR5oJ5juKBT9hEONgDz/FvaCJI40=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=jSzKNQ/w58XuU2p4z4aXPdeR3XWy32BU4Vu/23BqPC9TWH6DUyGo3MVtlZEC4QKCO
 ec4jTXLEkG2dPm7fkLbI9Stu7XwDrkuTQepaCHKCZEp/vuzyuyqqeinj1ozpkmbFBH
 KtLcUcmEeXyNtsD8JVDlWBV2StZ2AypBF3AgEVIBue0tqA3+QaudHRAtXhmDyZYDyJ
 Bi5dvknVplyl7hH0hxOwM2gE1N6l+JbfXuGGZ/URvmjSZIKQEfa2TqBFyabQYNKNPG
 IXw6OnYMYoMExevQinDgBj7dxl2uFGGsW9w3MVOdnWZZjMOlgVPYSKCNj7CEEeTUep
 bSepUhObacpSg==
Received: by mail-ej1-f72.google.com with SMTP id
 h22-20020a1709060f5600b006b11a2d3dcfso9105128ejj.4
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 10:10:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=P5NfD1dxp72/Z/UJR5oJ5juKBT9hEONgDz/FvaCJI40=;
 b=lTPHpER7k83ER5B9UQKc+WZRKZQV/FJTjgX9GGvxRZOa3fucBqUy/ZuBMct3F1B8nn
 z0LyrpOnAHvs67ItXLTV5GVvq5nZIPEAvK9aDFOy81D4aFXJaNELebFeayGg7jgpJISu
 lxkR8vezvdQWX/O6S7DQ0UZRPBeqJVjFMunutvSsR5+FNFTsmvAOIkhwkaChbw62zSpS
 8+yeF8xGGRad/PqIo9jyepljOxcArYM92/ZfztqXY30IQBBW+8rI4fjenOg8LxbluOEO
 iWdyMZJzsaAgSjC3jeYFp8PoNYrzDcxvnM8MOsvlYewjLV8jrZGNsyCAYSx1+qD14/+l
 2udQ==
X-Gm-Message-State: AOAM5334iMZBGN9cJ3e1gsWM3iuUZ0RJrw7oPIHZIU+dkhYNdywh48g3
 h2rEG/QaJgp9OlNED5UtMNsmqZ3+IRm5VJjZwT6tZSA0V0sECPh1V+DlCjkE5hXokm9/J/lhgFV
 cyMiLx/4ltqZBbNxYK+psRbGDirm3Dj/8FIqICEaov5TcJuUJRA==
X-Received: by 2002:a17:906:2a50:b0:6da:ed06:b029 with SMTP id
 k16-20020a1709062a5000b006daed06b029mr14158895eje.506.1646763008685; 
 Tue, 08 Mar 2022 10:10:08 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzdsvPNPxGbwShrZZxnDXdfQoC5eYJxtPkPGLQtGTq+xlcflRFTJjtk66/HeJ0oH8kS8x/sSA==
X-Received: by 2002:a17:906:2a50:b0:6da:ed06:b029 with SMTP id
 k16-20020a1709062a5000b006daed06b029mr14158874eje.506.1646763008423; 
 Tue, 08 Mar 2022 10:10:08 -0800 (PST)
Received: from [192.168.0.144] (xdsl-188-155-174-239.adslplus.ch.
 [188.155.174.239]) by smtp.gmail.com with ESMTPSA id
 qx13-20020a170906fccd00b006bdeb94f50csm6141273ejb.203.2022.03.08.10.10.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 10:10:07 -0800 (PST)
Message-ID: <e80dd94a-633c-b1be-64c4-1c8fbdfd677f@canonical.com>
Date: Tue, 8 Mar 2022 19:10:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 05/15] dt-bindings: devfreq: rk3399_dmc: Add more
 disable-freq properties
Content-Language: en-US
To: Brian Norris <briannorris@chromium.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: Lin Huang <hl@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Derek Basehore <dbasehore@chromium.org>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>
References: <20220308000945.706701-1-briannorris@chromium.org>
 <20220307160918.v3.5.I382d4de737198ea52deb118c9bdc4d93d76e009e@changeid>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220307160918.v3.5.I382d4de737198ea52deb118c9bdc4d93d76e009e@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_101010_915980_8513AF54 
X-CRM114-Status: GOOD (  14.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 08/03/2022 01:09, Brian Norris wrote:
> DDR DVFS tuning has found that several power-saving features don't have
> good tradeoffs at higher frequencies -- at higher frequencies, we'll see
> glitches or other errors. Provide tuning controls so these can be
> disabled at higher OPPs, and left active only at the lower ones.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> 
> Changes in v3:
>  * Add Reviewed-by
> 
> Changes in v2:
>  * hyphens, not underscores
>  * *-hz units, and drop the types definition
> 
>  .../bindings/devfreq/rk3399_dmc.yaml          | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
