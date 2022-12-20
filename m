Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21C34C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Dec 2022 10:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEB+wyCkvNHFgSA2qG77fZ768n1Gg2ywwKhkRwKGvdM=; b=IeZk3jmBlMP1c3
	RlkYHBZoKBrXER5QS37Lzw8e6S72AjZ6hcy1yGHVppoGq81c/fxV96FUCY0Jwy2dLMaSiwrU/oAae
	99NIrpVErJDH+HDmHafmLxbd3yeHAgw76pPAA9ehs/2Acu+8lQbyK9rfv36GgsISBVQQNqnDrqZ4y
	YClDlXiJ9AiMwjLHbNJpFyqW+WE2FyOj4zVVvciYkccUhSEekGkDaTcOIWoD+LXqGRpSfpmx4zsXj
	A4yYSxpf9hXfDggkzqyeHVHtyfibBpcNr904dhA5y9KgO5VguKrHHoSqqX/JaV3gX+g+STHCCKgRo
	OwIHZFfxL/ebj3jMKL1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Zag-00DC1J-2q; Tue, 20 Dec 2022 10:11:18 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7ZLS-00D5jJ-O6
	for linux-rockchip@lists.infradead.org; Tue, 20 Dec 2022 09:55:36 +0000
Received: by mail-lf1-x12f.google.com with SMTP id m29so17560694lfo.11
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Dec 2022 01:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5F3EDqHaAaBkwK8dgS+P6ptpGavemal+xXF9dHVZ1Mo=;
        b=hZUVLL7EDHfJZhxzTxFapYTZHxS7c0VQUioNmCOCJw7i9iV1AIx2pQuTp5diNyxIY/
         cvpKNTQglgXR9AuUqg7UQC2CQB2gKZ4z/WgcdYJXs9gyljd/DdNLC5w7VJWenCgoz5sh
         J9WSzDc/0h01Tkvn4MGFBCVEACSKHlM1+WdWwSTbRWwRs70Vk1Y6kwRRgJcSOXsadTWn
         6BP0Iu36PwhvgI3v8wHi3rNPkcYNEgDw/w5IWhayxkTVL2srHBSfl7a42J1aSowqmhUh
         KOw7lIuu6bDEyK06iQHrjDwEkbBI8doceNv7c2DMEoxpPMngi5YrmqgGPwgmPOSTrSMl
         KkFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5F3EDqHaAaBkwK8dgS+P6ptpGavemal+xXF9dHVZ1Mo=;
        b=Xsr0xyN4IX/UJ7/u+q/azfXQDScc0qDFk1XTrZYwwrQ+94a8luKseWmmXraSkkp1gb
         xlf5mwZqdQax73L23dNxSRTH1aYVNYC0jOvENmGLYA5rI9M3xsP7Qgs3KJyHhHO0VSVr
         KWgyMP6AgUou+NEvz5fmqbRGhHkSTqsczdfBgjL/iXFX8JRRqASu+EFnIU//VzVTQ/kh
         L9RaiAiJoVBuwOBTQRPLBo940dEBnmgXWc4k/oaL/1Lp1Zl315Jn0tlvHULXUtDNYGVz
         mtpZJJnUQewwTS94sk+f1VM/vTeAtYwEkbiwA4SMhOpOOwkYyhYX7pU0N45afoZPrHAg
         C5xg==
X-Gm-Message-State: AFqh2koUm07hi/XFfsayYREijvFqV+pyo9x0LBRV1UetV4atin/CX+fQ
	ZzYBrPDtVLKgepI0G405Kr5peg==
X-Google-Smtp-Source: AMrXdXstQOU+EuywhBXn05xJVw1VNj9pca0CefR0lvpIHyr15hfGmdJwDvONL/yTCuejQPkFV4buww==
X-Received: by 2002:a05:6512:34c2:b0:4b6:fae9:c9b7 with SMTP id w2-20020a05651234c200b004b6fae9c9b7mr477078lfr.7.1671530132182;
        Tue, 20 Dec 2022 01:55:32 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t5-20020a056512208500b004acd6e441cesm1387856lfr.205.2022.12.20.01.55.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Dec 2022 01:55:31 -0800 (PST)
Message-ID: <26d4662b-1742-2963-a7d9-08a39bcfba7b@linaro.org>
Date: Tue, 20 Dec 2022 10:55:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v1 1/9] dt-bindings: media: rockchip-vpu: Add rk3588 vpu
 compatible
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
 <20221219155616.848690-2-benjamin.gaignard@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221219155616.848690-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_015535_066000_E75C5255 
X-CRM114-Status: UNSURE (   7.61  )
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

On 19/12/2022 16:56, Benjamin Gaignard wrote:
> Add compatible for rk3588 AV1 vpu decoder.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 1 +
>  1 file changed, 1 insertion(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
