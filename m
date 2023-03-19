Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 722D7C7618A
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Mar 2023 11:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOaSLcrc+BjMt5q+DnccwQc5MRepjmBdKXhBiBuT9wo=; b=lZ6vFYF8CmjDNm
	CKHtRQKdvEGuC44Bb+dqF4IaVJEddD3NvCSMp6g84glmgR4nlL81PB+kxml+zEPGbs0ia35LDHzly
	vA7YFcRW29sj3GQlVcpMZDD2kEpCVSGWU6eGqaf0RJsPoWArcsNb+M+pO+rrV9G9CbvrSc+R4kj9Z
	mSkECAElBX24SDbkcxv6zYDZUu1s+rUXi1ouXQ2PWO/Qz90TrTtVk1V7L2wXd8E7GkCbsbRPEWRTA
	KAqxoDoyU3klTbigc8byVUEVLhPNv2Fr8cC3ubRFWgrVXCh/WwB+axjJZnTuJ/n07B2T+FjIgrYpn
	EMbCfgcSz2eIhNROhXew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdrLm-006WdQ-12;
	Sun, 19 Mar 2023 11:37:22 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdrLj-006Wby-2g
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Mar 2023 11:37:21 +0000
Received: by mail-ed1-x534.google.com with SMTP id ek18so36629423edb.6
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Mar 2023 04:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679225838;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3GQ0kuX+CANTyKsciGzMU4Vb8Jeilt6T7QwH/C5HtcI=;
        b=D00+NhyYkKydBEbINUkLHKWGHGCpBkp/v2jQXmxjRv/PR6O1KzPoAfGXvqXlBDooLw
         MDFhqQJBmoM8e0aMQlOPM1snaeCnDase6u1YX06J1yJn3jOcq8kY8pSv+Z2tHI0Bn8jG
         PSI+eRufB8QEQUlU2Gki2Ya73RQoA/20yzg9Y+Ja5tNE+hG5GZR+HoF45JfcXg9JoB/k
         j+ltjUtUS2dErsGsR3X6YwIbE2VvJibb1xva5SsX7lU6AfNraU+Q58J6z5Br7IEJDilp
         eLRbTXyYU5E/EXS566kszMZH8tnrZ/mtdK2Ys1e7HjnnwoGz/phODt2Ql//XUs2joiqt
         W7qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679225838;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3GQ0kuX+CANTyKsciGzMU4Vb8Jeilt6T7QwH/C5HtcI=;
        b=YOW9YDuiDP8uq8Z/CsbCFGIa4ITkvZxwjSWzs1a15W01W4Xc5yftYhpssBWmC4Bv5I
         1887rBQIaw8Qe7APsPkke4rcd0AHOBoeoZfGK5qE3zI2ZJEs7K4Y6XL8NG9RF2n5iGOq
         d938Ol16mpxtTP38R7BcW4fgDC/EA8HkmhvFIYTwos7PscIC+KhisggYvYe0079JvK26
         /vaDJnEXBUPPGN7HuF7VrIv0gzGrrV/ZQPlRO0jWQWFp74teMD/87LoRHPIPPx3k1O1B
         6uTzcYD2EhNDaEPYk3uj+7rTmQrw7ImjxiO2lCPfRxGxBUA7hnUECQukLL9NU3/WP7Nj
         aRYw==
X-Gm-Message-State: AO0yUKWsvZ6wbj7W5AKMIgNKqpTEeu5suaG2cDmmGCRrjsNp68f+az8M
	q4uz/TXG9lBnu/VGLVRc+2C7NA==
X-Google-Smtp-Source: AK7set+v8lgMBbotLK7i5EuslBypcEkfi/Fu+fPXJdbgw87inJZ/klcBJwVzuNGiRec4HuUe5I8AaA==
X-Received: by 2002:a17:907:2bd2:b0:92f:bef6:7843 with SMTP id gv18-20020a1709072bd200b0092fbef67843mr5238447ejc.22.1679225838160;
        Sun, 19 Mar 2023 04:37:18 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id v19-20020a17090651d300b0092b86d41dbasm3178595ejk.114.2023.03.19.04.37.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 04:37:17 -0700 (PDT)
Message-ID: <de919fd2-898b-f8a2-cc13-c66995e787c3@linaro.org>
Date: Sun, 19 Mar 2023 12:37:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: nvmem: Drop unneeded quotes
Content-Language: en-US
To: Rob Herring <robh@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Hector Martin <marcan@marcan.st>,
 Sven Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Vincent Shih <vincent.sunplus@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 asahi@lists.linux.dev, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-mediatek@lists.infradead.org
References: <20230317233640.3968821-1-robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230317233640.3968821-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_043719_873480_9BE6B3C7 
X-CRM114-Status: UNSURE (   9.28  )
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

On 18/03/2023 00:36, Rob Herring wrote:
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
