Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E0EDC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 18:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojx9rDAZOW9nEvADruJXI/ULDvZ3ZSbIT/POrI8etfs=; b=kox1bF1n/1rtVq
	iT3h/2OOMkEuMPgTOjqABNDF7HJo3bl50MvvBZwXE+58tKo6/mXcWxK/S4MrOPPUIyEjqGxt9Hm0R
	xc1R+jfsoIVUPWAgXO2sq5fBIYHk7alQAdYHU0rdSWVXjJmYcmGSTUJ+GtE3z9V5abyUTh6cUlxaO
	mNvVh0I4Hszbg6xLMGvvhySWwXDixkZyOoN5MpLrAPyEllprqceub0xQsdf5KiwLeEeovyHjX5PGH
	bD7yRw3dTkf8U5fsjcF3fOkyUKz5NwwUoJF7h6AS90YFNCTy52zDVAJLPF9/VBgLJZdDaPdhxddT3
	ilYmA4NdvFzB1m4lQfcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj3nL-00Ay9C-0F; Mon, 25 Apr 2022 18:50:47 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj3n9-00Ay3O-0s
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 18:50:36 +0000
Received: by mail-ej1-x631.google.com with SMTP id u15so31342786ejf.11
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 11:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=I8OGAy692x2HlX0zDRT2WU4OQLJqBZjTeofFJMqhneQ=;
 b=yJtZUQbKaP4+1vaymO4wTdai+PwZjfZGL0Qv/GR27elZWHbpeL6kCjftSG2f0FChs/
 PL5SN243GPEnWSJ3LQTJXQZ146BTqccn2NGQL2nVfINMe4oWwerIYVRjDL6Qg1bnsdFs
 V15im6vwngYNzIohkZBUJ7Cd1jhBPdxlX4MGD+5qqiDnAutR2PAfLdSFIIFBzzT+PE3D
 Nip0LKHDnt2jITH47p6IeSNy7hXKUSimfnbs/tOfVlSqHn6ehA1AOaDUvcVX3eXNOxlj
 w/sYwfMmoWjBqtijJlFIEx2Fa0CnQOMzea986Z/A0BczlPCVCzTWkaO7nTUFLKJIP6NG
 Oijw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=I8OGAy692x2HlX0zDRT2WU4OQLJqBZjTeofFJMqhneQ=;
 b=zO7IxkikIZEGHJuFG/deLUuN+bD365T4VosKNx/Vry97uD6BjhMY1Ytg+++lT/YRO+
 VPbU5CahgEewugbx6/OpvkpNSppKNx/hBM4bga8hUehG6TbxIkEh20yn8RwhYW8CjXCi
 MJYeoiZX3qv+R+PGzZkVU6tlUO890JtmkrYWoDE3VRHWIFs2AgKqGZoAbL3HcMrlNuds
 3urClg8jB1aKevkEosZ++zAtp8jDrIUNdP3h47IlrTLXO02rFqb9A9jfmeMWGwuapA4Q
 J0hs9tGl6aE5g4GfaoQakrOGqTJtndkBXIdsi6Db3DEq8njNKmib7rlS/KASnUwnPPhh
 5H6A==
X-Gm-Message-State: AOAM531FEwpLMaByVCG0OngnUY2zXCw5NloYpUc9MdlMq9oAMGNeoffR
 6oBFEaBF1ChLPuFcdzHdyjIiNQ==
X-Google-Smtp-Source: ABdhPJwRiWolCCzfTOXvZ/aMVmJ7USEy6FBXDNaZxg/9Y1L8Bsf/Q7l9Ym1+l8z14ohrkIth/+dThQ==
X-Received: by 2002:a17:907:72d5:b0:6ef:a49f:133a with SMTP id
 du21-20020a17090772d500b006efa49f133amr17969076ejc.420.1650912631700; 
 Mon, 25 Apr 2022 11:50:31 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 p24-20020a056402045800b0041614c8f79asm4937824edw.88.2022.04.25.11.50.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Apr 2022 11:50:31 -0700 (PDT)
Message-ID: <4ab44d3b-8a10-e24d-7c60-f0073e6e89f5@linaro.org>
Date: Mon, 25 Apr 2022 20:50:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 1/3] media: dt-bindings: media: rockchip-vdec: Add
 RK3328 compatible
Content-Language: en-US
To: Christopher Obbard <chris.obbard@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20220425184510.1138446-1-chris.obbard@collabora.com>
 <20220425184510.1138446-2-chris.obbard@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425184510.1138446-2-chris.obbard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_115035_116710_A41ACC1B 
X-CRM114-Status: UNSURE (   8.91  )
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

On 25/04/2022 20:45, Christopher Obbard wrote:
> Document the RK3328 compatible for rockchip-vdec. The driver shares
> the same base functionality as the RK3399 hardware so make sure that
> the RK3399 compatible is also included in the device tree.
> 
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
