Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1FB1C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 May 2022 14:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTgCu8n1jpdBaN5yw14mmidVwqz97WhIfNpc53lO+Fw=; b=T9gz/yZplrFWTz
	BP1Dvv7/n/sDW32N63g3CJ0w/ugd+P1NQE9cooxcH0g+WBEMBVqaxsUajoTarJE5Ik/mAjMbZnjjJ
	rEJw2Y6vbekxOy4OvQGB8R7zBJOH0h5Sws1Fb1mWlZu3CYNRXVCTDn5W/IF5KEBrSTiggaMINZjZ9
	y+YzJllOO5ItjsW51kt0KuXtNV/uGPhx89f8tEdkm1U+2ykBwJJZ0uyMqXnHcAUXyV3Zl0lWwI45u
	teIK6hNKqqtxr8XjdEVH9ob3LsG4d+Mk1JQ2JqQ6TOAsNQASWzE0kN7md3tWpHcC+hYaSY3GiRsKd
	ilXzuCaLlFXPLgjd5miA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1np9h6-00CKun-0W; Thu, 12 May 2022 14:21:32 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1np9gi-00CKhz-SK
 for linux-rockchip@lists.infradead.org; Thu, 12 May 2022 14:21:10 +0000
Received: by mail-ej1-x633.google.com with SMTP id m20so10517853ejj.10
 for <linux-rockchip@lists.infradead.org>; Thu, 12 May 2022 07:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=gwwa4KEdZsBSVIiZ/u69uGht/OG8CUxR+7OXw5afM9A=;
 b=kKpsHtTMFWb7QKuSduAjkuTKGuBKLnVZAlGB9pHwkmj6zu0GHNa1piAzog2sZfXWVq
 SsykJv5I7rqCnx2C5Vu+umu7lKGRXsEEwkCZL/JpNSj4vKZqhHYvD+GCPOpT7Gz+O9s3
 q4fuVJINtOwaBuGubVBqax1UabAvSVWiKKzHEC8/DAxcE/UURqPoKahqVCtEETIT8bIC
 ihn0OOTZ0ZjHgcIdy48yrBvSKR47PW/NMP/fMPcqiTDqbdGlO51GtijSmARDMsuhyuwN
 00ADURgTXmcFTpeqM56tT/7R/tGxRxrjRLwpe59SIX+gbavbR9GvxVGJ534dhRomN8wR
 fy/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=gwwa4KEdZsBSVIiZ/u69uGht/OG8CUxR+7OXw5afM9A=;
 b=r5TP/3oJCMLoEPUgPXqz01CWkxzy8102et7Jur7geVLmxHMboIUxmZlFAHBy0tzB7/
 CnQ8S/DdTpFpqScg6+CqmTye5ZnE8MeRdxXnEYq5tkoQf2J8W+8AgmgEaKw7CwgqLOPt
 cWdiwBfYIMXjCbgoLHngO0LHUT9yiysA4EbOGktrmyFR+DhIU8CHLX0kYJUjkDAY3u0T
 +bxZq+X57H//8pxEb7zUnilUfmqCnqp28pKeD2W7bwIFNfoR2qLZ0stF160egChkL4po
 PwL3KYy2VogzvVI9qfMTMmQ9mM7ViEHZkqlXR3OC2DSUzBB7degPVgHx1VuVk+AlELXQ
 R8Nw==
X-Gm-Message-State: AOAM531nIzIm/XFKb+3qWVoM/8qNk6y211IvSVS0khRUhM0JZPm8WP1H
 KJDiN0o7jQr7ZdZfQjevupjlsg==
X-Google-Smtp-Source: ABdhPJy6oM6zHB6ogbyacVZojXHJSVoOXoEbk7yyqF8wbuQPWR8uijnU02sDtFjZFSsAMWEdcDB8xQ==
X-Received: by 2002:a17:906:58d2:b0:6fd:daa7:3a6e with SMTP id
 e18-20020a17090658d200b006fddaa73a6emr176871ejs.0.1652365265105; 
 Thu, 12 May 2022 07:21:05 -0700 (PDT)
Received: from [192.168.0.161] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 ws20-20020a170907705400b006f3ef214e5bsm2150543ejb.193.2022.05.12.07.21.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 May 2022 07:21:04 -0700 (PDT)
Message-ID: <82a89be7-ea69-992b-ec66-3fba0c0103e1@linaro.org>
Date: Thu, 12 May 2022 16:21:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v1 1/6] dt-binding: clock: Add missing rk3568 cru bindings
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220511150117.113070-1-pgwipeout@gmail.com>
 <20220511150117.113070-2-pgwipeout@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220511150117.113070-2-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220512_072108_971218_DB47A192 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
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

On 11/05/2022 17:01, Peter Geis wrote:
> The rk3568 cru requires a clock input and a phandle to the grf node. Add
> these bindings to clear some dtbs_check warnings.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3568-cru.yaml         | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
