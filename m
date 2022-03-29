Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD17BC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9mR2rcv3DcdZ45thf2FH0hl6oGHYb+e0nIczjio01So=; b=fIJ1LIxRa5GEiK
	Vo5b9BfQKyiv8od0OjCQnmZBb0VbHGErXd6m+tuD2oxF4HPtsmqmG1zZOPFJNf0kEFf1vaV+WikFu
	VkHo3yeXGRQLrtVuYcFAcqX+9KmIGhm9+Pl/o7tC2PHBXBT+KDZn2GaiORQDV/HCPRb3iRa8rsVcc
	Y6FGEAa6X72pVvQGIjqUmfZNu8nUSuCpYa0dK4ZRh/FtpearPfOPCWCPK8G8JT/G1njOPO+053daQ
	HTXQ+slRuTp4wm26Tc6cVNWJc7cKpETJg2R9mF03Ls53q8QXGUBB61zplRFqEp0AMbYs2/bcLlPMg
	kX86DLJLehKFh25Wme1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZDuS-00CjgD-UX; Tue, 29 Mar 2022 15:37:29 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZDnm-00CgKD-Nm
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 15:30:36 +0000
Received: by mail-ej1-x636.google.com with SMTP id c10so17503226ejs.13
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Mar 2022 08:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=9s4lhXjKpwZnBP5OBDO69JPVEpFDyvkrKT28ZSCHe50=;
 b=jDhWGvbg45hFMUc2H7L/PyMkYepJE8Brw9CTox76BJp6yPuVDBNvo5TZrS4eMek5wM
 pfF+gywAT7TFWN+4+Cdf1eifEK1m3Nx9NdlETbTn7GgWzKR94JYAG2cXI0DNc3OcR9Nd
 a6ZrUtyti5au1h8RnTM6R+4PgBaUbg3YdBQGPnn3CFd8x+6zA8NzLLBfoI6lX/CLAKJI
 lqk4JxyM6at65/JWMnEmDXl71Orl4KqnbVNzDDsMd8eZEUUkhHp/Rjwt4J0YhOqLzTMI
 HW9g8uZw7x7xTBDfheGd8qZlGxL6SK1cBCI8L/80jGmpbePGZBxplREsBaJPUJFdqZix
 ynNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=9s4lhXjKpwZnBP5OBDO69JPVEpFDyvkrKT28ZSCHe50=;
 b=eNev1yttjM4sc7Fa/d1Nx3XoLdgsheAt9E8XahlDIa+gtD3tppxrxmzRmi4d/FiAHf
 Jn5//wcBSNjinGrBr/nI+3phGLUNpSLKqP6jxhRwoih4AB4FezRY5ooI44F+BsyFnVCo
 ydGcTafKHpuro1jL7nQeoPzuU5VKyhEVWv4KnByuV8OQRWo5uXwdZ5KaSoGc3z9kU1MW
 raWY9cvkF0k9jXx3qzU4XqzfG+GKlGhajE4C67kv2SHIZyOh22SXQCztMANv/Nkvxmzs
 +EwfRpK/ARaJQPJwE+2wGkSx5S/e65T0UEP2h3amXmtcmcyd+5dTW7QPwfTwYFDWmu50
 btoA==
X-Gm-Message-State: AOAM533MrsrNEYB4fQKVZh9s/J+HXk5RlV6OzBFDOxAKTVT41zd9jeXK
 XbPpS7+6rtiYksoRkv9u+yXylQ==
X-Google-Smtp-Source: ABdhPJyggpvt+L2mf4BO89ncYH14tsLLTo3h13rFb/YMGVlS4Lafq4DYQ0pjj0PQ8J9clwYcURhZ2Q==
X-Received: by 2002:a17:906:dc8f:b0:6e0:5ce7:d80e with SMTP id
 cs15-20020a170906dc8f00b006e05ce7d80emr35826397ejc.435.1648567833374; 
 Tue, 29 Mar 2022 08:30:33 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 o3-20020aa7dd43000000b00419db53ae65sm3024996edw.7.2022.03.29.08.30.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Mar 2022 08:30:32 -0700 (PDT)
Message-ID: <7f3d8d2c-ec83-b79d-621c-312636285eee@linaro.org>
Date: Tue, 29 Mar 2022 17:30:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 4/6] dt-bindings: clock: fix rk3399 cru clock issues
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329150742.22093-1-jbx6244@gmail.com>
 <20220329150742.22093-4-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329150742.22093-4-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_083034_844623_98B51B2E 
X-CRM114-Status: GOOD (  13.48  )
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

On 29/03/2022 17:07, Johan Jonker wrote:
> The current rk3399 cru DT node gives warnings like:
> 'clocks' is a dependency of 'assigned-clocks'.
> 
> With the YAML conversion somehow "assigned-xxx" properties where added.
> If a proper clock is added to the cru node these properties are no longer
> needed, so removed them. Currently only one clock will be added, so limit
> the clock maxItems to 1. Add a clock name to be able to differentiate
> and filter bogus entries.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3399-cru.yaml       | 15 +++------------
>  1 file changed, 3 insertions(+), 12 deletions(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
