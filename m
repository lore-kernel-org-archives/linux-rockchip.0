Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5546BC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 09:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEyk7tiyYpeF+sz/sPlVznwyT/ivHuNJ+o3vmel6KdY=; b=Lr1On/v1ob+Xmh
	27yJub7f5rwBEWNhAAqvWbnKVFB07gGkPeAFjKWJC7cEEiBz811k6QreIrHAC6cM0UBK6Hgb6Ey3q
	AO0cy+FgwUSPNLCM8iPIrhER3zjxjuttrll+rYgLABPjuB2bgPbKilBZ2ypTIo+0rqd5+EMZdcuTT
	d291lqBXtRCMqJdAQ1v8gtLcTiRG1ppYuUhNmOF5lF1pu/JXquU13bQ5p91xXvU7YFdz9qe4lsBkq
	WUZxxuMKgOBYGhvrtFlDB9xZ8Z9aVIRpxSOOaS5+QiXe/L7KXimFsJWC+x0pBIkfLMtAFedGz2E0x
	j4M48sJWomMWAFOM/evw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nivQk-0090Ln-Sh; Mon, 25 Apr 2022 09:54:54 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nivQh-0090JW-F7
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 09:54:52 +0000
Received: by mail-ej1-x633.google.com with SMTP id g6so5699325ejw.1
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 02:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=trwsUPYiG6KMyUq4Zqzfw1hzPN7iuzDnqEhgRCdHuUI=;
 b=rYOAM7eV9XQpqxE7Aw3qEkLaPXkoJMn4lNCYNPyaR4+87LfSffGXgEIKNDNk3/A8vp
 7v0UpXMIHdq/IvDWfqoMrzf2v5+xcWTQMsUgd9PxUweb5dPPr/vrt0LuJTJYYI8ODKqe
 LEoJvqcuQ1ULNrjaHNODwiSNgpzauSpQfse5tAig0sY/zCegKm+Ka+CY42coAOKSGGPM
 80xKylv42zx3cXct2vGWAqEqrxRzpG4uLXnBBPle/b5p2tR/yf2rzAuLzQntEm/8zM8S
 jWSzh/NXiZ1NNqosUp0l5uLedxEmYK5uZ14TMNt5Ieb4mhSueDzmW/pWoMDlU1A/MZFJ
 oz/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=trwsUPYiG6KMyUq4Zqzfw1hzPN7iuzDnqEhgRCdHuUI=;
 b=60oNgVVHfYN/SXRxT6XNqtHd44QlF8MD2KdQ6k98i1tgImLiZQjdDke1FymGPRGi1Q
 QsK3qXkg2jGrviFSDnEEAm01m+CTSkWKTDPAulreLHFMYw4Wc6xQnnMA6/VnT5VMCiGD
 exHklurCiuNv1e6vkLP5aFuJxGCWt0g//Nme6XwR1NcvSeHKGskhZT7v7xUAjFNLMVcO
 ga9XTWIQJVmia9b8sJDpXinr2E5lDYQCWBeM/snDqIZIEWj0Ssjqk8hfO/gjE0Bk0xVG
 oIsLp2/XI7zN0fYtBbLUk74lUibl3bDvH3HChsw5ArYqvgvGvmfsG9XuYKl5rr6+yAdQ
 PT1w==
X-Gm-Message-State: AOAM5324DHAABWq37xSS9y0QCsOruZvVD+uT2rU1O+Vq7GLdn4P1nYqF
 hDYUY/g9gxBu3CjHHqNVXKpR8g==
X-Google-Smtp-Source: ABdhPJzHUl7WdPJb8e3R+EAvKEqYuZilIU+1gVVN/+yc6x4QkrsNDSGk9bBwgTJjHg7xp78HXBiVcg==
X-Received: by 2002:a17:906:2bcb:b0:6e7:f655:3b96 with SMTP id
 n11-20020a1709062bcb00b006e7f6553b96mr15216794ejg.175.1650880490060; 
 Mon, 25 Apr 2022 02:54:50 -0700 (PDT)
Received: from [192.168.0.241] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 f1-20020a056402194100b00416b174987asm4434770edz.35.2022.04.25.02.54.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Apr 2022 02:54:49 -0700 (PDT)
Message-ID: <e7fa738b-774f-0763-ce0b-6a9aa0c28b3a@linaro.org>
Date: Mon, 25 Apr 2022 11:54:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/3] media: dt-bindings: media: rockchip-vdec: Add RK3328
 compatible
Content-Language: en-US
To: Christopher Obbard <chris.obbard@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Alex Bee <knaerzche@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20220422133803.989256-1-chris.obbard@collabora.com>
 <20220422133803.989256-2-chris.obbard@collabora.com>
 <ff87d5cb-b0d4-95a2-90b0-7827a2a34d05@linaro.org>
 <34819690-5cb7-bbce-a2f5-3f6e66661049@linaro.org>
 <366fe755-6f07-499a-0b19-f046fd03c89a@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <366fe755-6f07-499a-0b19-f046fd03c89a@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_025451_567642_01C2365E 
X-CRM114-Status: GOOD (  12.18  )
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

On 25/04/2022 11:53, Christopher Obbard wrote:
>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> I acked this but Johan pointed out that your intention was different and
>> missing patch context is quite important here. Please explain what
>> exactly you wanted in the patch? Now it looks actually wrong, so my ack
>> is not correct.
> 
> Wow - I think i was in weekend mode and forgot to run dtbs_check ;-).
> It will be solved in v2. I have now added the check to my "pre 
> send-patch" review checklist.
> 
> Just out of interest, I didn't get a mail from Johan and I can't seem to 
> find it the archive either. Is that message in public as I'd like to 
> address any other concerns at the same time ?

No, it wasn't public. :(

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
