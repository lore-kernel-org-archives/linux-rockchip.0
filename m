Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 707AAC38A2D
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Oct 2022 14:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mw7tlpDCD3tjfWdag74F/w40gWQDWzh/i1NSgp3vuoI=; b=kRBZCp7rHwHh6x
	r+oVwzv5SWG3xh1bZJuUt77Jvg+MojqXJkItSBMeirM+LoIkk8qRhk85zEVNafV27VH9YR/hVaTto
	+U44trwhE3NtSUb5/hKV9e0gpw5mRsAQOkDE1pqpxbpkJnVztpwfPEGwBzZkaTh0zRVJSMlKspasc
	4VVk4CB3OZVkRQdj6QSMpiVsHUbh5F0IWmnSJAVaxTgBerX6KTs111KIb++SA7vy+HdvYblo63XzN
	JF7zsMkx4sLyJIrFKCkQWG4Ci+CU0DHSm2du9zrd2OsejvxYupedz6bh3x9RV0RRY7uVGxKQeoKU/
	pOjXMaclGd+xQVSi0WIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onhlv-009kbS-6f; Wed, 26 Oct 2022 14:52:47 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onhlP-009kIz-9K
	for linux-rockchip@lists.infradead.org; Wed, 26 Oct 2022 14:52:16 +0000
Received: by mail-qk1-x72d.google.com with SMTP id b25so10672451qkk.7
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Oct 2022 07:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XFsg3VaRlU5pxW1lEeoGciN3HKmsr7ycQpb1StDHLVw=;
        b=MzkwyRDaO5uwuyV/+Bp4E+fFxXDr4H7nfO6+Ud+q4PAz7gED00dODWJLXSB9bRUwse
         oYB/seLhzgYTA5/wyVjpPRTESprDJbZjPTO8ku75xXfW9nWe7keVEmNDGbWLawoGLryd
         VzpB1NCGlEu/gR7OO1A3q30qqFY8rg72mTIA7pNVUaUr+lUUK/UlZcpusg3gWXGcXziP
         LSWZJFjQdILda4SkKdrF/90vwuTYoZUoScqGMTZu9RXdxA2ZPlYzR2CK4k8/tMpoAY4q
         9BajPohCBtDejb1fU8E3DD48mTrxF2ad0vHHVnxclgsMf4Q/SUaY4nNEZ5epceO6Dks9
         1W3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XFsg3VaRlU5pxW1lEeoGciN3HKmsr7ycQpb1StDHLVw=;
        b=6bVsHFB3iiMIW969aT+67lVwDhFqG9167Gux77zCalXVP8T0XNZXB15Emg+FkBfNy+
         v1lzaf/How+0PrNUqgFlz+jWFEPNrZKx9YwqFouseacei9KmleagYs7sDu5g8E3j4n01
         WmCDsD54eBiermnwpTdqOzvJyyaXvN91TFJdHrQCdsj+l3d8JNMCGxK80Ce7+SItMQcx
         cf4CLhcKO1gMXnzmjz5gjbR+iPQLFBXrAxFv6l67VxPqmwDVIEqmfeAb5linAzsBHe8k
         /hVLliPmqW7AZUfDh+5pxj8GDAWoejhlB+0IJrBeCdP5FoRgJJpxBqXsQ1kQD24I566p
         Sxog==
X-Gm-Message-State: ACrzQf3thrY7wQJOl/ohEJ1+3kVTOojl7856Q/F/i8yR9ze6rVnM3JhO
	CiawC21vAnt8ttn8ZS8wOLTTMQ==
X-Google-Smtp-Source: AMsMyM43VlfW1crv7c4yz+ryVkPmd6YzMvdZxoS70WyqIwWL8Ks7MzDBd2DCfQtH33HOzeOZ/FPsmg==
X-Received: by 2002:a05:620a:4081:b0:6ee:80ab:25b6 with SMTP id f1-20020a05620a408100b006ee80ab25b6mr31494872qko.517.1666795930463;
        Wed, 26 Oct 2022 07:52:10 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id w25-20020a05622a191900b0035bafecff78sm638447qtc.74.2022.10.26.07.52.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 07:52:09 -0700 (PDT)
Message-ID: <94b3dda4-5674-8166-f3aa-f3d943e44581@linaro.org>
Date: Wed, 26 Oct 2022 10:52:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 3/4] ASoC: dt-bindings: rockchip: i2s-tdm: Add RK3588
 compatible
Content-Language: en-US
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221025124132.399729-1-frattaroli.nicolas@gmail.com>
 <20221025124132.399729-4-frattaroli.nicolas@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221025124132.399729-4-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_075215_425078_BC206C4E 
X-CRM114-Status: UNSURE (   8.52  )
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

On 25/10/2022 08:41, Nicolas Frattaroli wrote:
> This adds the compatible string for the RK3588 SoC.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
