Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18D57C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 16:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNXmvpGDH8UVO52qfXaa7PGqYKuHN1v9audLr5pL+Cg=; b=cpX8CvmzOJqdTb
	jyhZgdIngsEnyPwPFP8FI0xk2TwdBJqdAamh2nh5cN/9oZpGz0JpG3k+awygHG0njE4OwZQgfqgoz
	CzEsYMUw1vBecpi6kzjxAAP+wKkcGSCrzve/WGMMDW6ZjPSRgmVP96S1O1W6GbXokf90/9r0n/XQ0
	DsNQj6arZJtlD5SHn76KCMs3nZX3xOzihpMIqwJHlNeiEd9WwsUsM7chH01+CyqPkBoeweGxgmupy
	zCTkSQzmfv+eiapg5jbmbBBaaDeKAvxKvmTQGKrzdpeA5so3TiluibL1OoZBzQaO5xKVkGzc9GKpf
	LC7hv1wY87xR3I0QHb0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgpVk-00BgRT-2T;
	Mon, 27 Mar 2023 16:15:56 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgpVh-00BgQ0-1Q
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Mar 2023 16:15:54 +0000
Received: by mail-ed1-x534.google.com with SMTP id eg48so38334574edb.13
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Mar 2023 09:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679933751;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lcnz9uD6kVVYcsrNu5BKDBQufDi73RMrxZYxEDLPtoQ=;
        b=aMAGTZ171GD6z2MDT0itJEaqxVe25urwcNMTgIVaHZYAvIl/04fU3fVpvZ7GLuBNPP
         O1NTz8Zp/6PcwyCaijn8fDucXHFaHbOLzZZfD/cAoqy0hP7Z55wjEwU9d+/minaKni+Q
         Jpe6gyeUlhu9Z1uAWpIvjJlse7dK/YhH7tbWLVWFx/fiE5IxO1IXFNrCotkJp7mD+4tX
         gHOi8FKmD61etk+oP64GrZBXibUenetUh0WoVhUgBIWkeJqv1dWqdrm1+lv6LbjEQEaq
         qo/mYE2XbUs2++UdNGZNicf/KI1KU2xxkDCSjC782Ftj6VZuvRGIvu6XkMRIVSJpQ6aL
         ZWNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679933751;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lcnz9uD6kVVYcsrNu5BKDBQufDi73RMrxZYxEDLPtoQ=;
        b=fN3y/kXUXAE0P/5IZV16Zp2Imuo3brcObVfSewVqiKMa7JLspZ6wEblYRDLYno3oAI
         OXXpHMrWTmk96ECk8ahRjO8FBc81xBIlx6xz6HNA9vKi2Ov4HKLrcCJYgt5uTMz5uJu9
         qribG0eXuWbYe+cmcJ8f7kjlpB59q9eLx6GnM6PwssCQUenslCDzvafqnJM1zTZYsKrK
         hO/nXhxBSL1oGQYtIMFkXhzEvuB2aBVxbAXDioPcW43e5gC6YR3qY0kNuOPUpZsc/drm
         g28XhyzUlollpWn+pT3yZPmfalQEs5e/xn7KJheVxjUCUTM89n81y2KfwIPLYBOpykjy
         cuyw==
X-Gm-Message-State: AAQBX9f4djBV4ZKmJzK/qmskIn8l3qG5JnXz1DL/3tLOkmXB+0NhQEmz
	RgUZyANodLY/BtG9/8ziGx870A==
X-Google-Smtp-Source: AKy350aywImtc66UcCGfYA1bloroePfqv/MskbtRkXyCkarTePh/XoTk0a1nmDA4xqwUdjFPfDqkoA==
X-Received: by 2002:a17:907:6d1b:b0:93d:e450:f53b with SMTP id sa27-20020a1709076d1b00b0093de450f53bmr15891040ejc.72.1679933751062;
        Mon, 27 Mar 2023 09:15:51 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:581e:789c:7616:5ee? ([2a02:810d:15c0:828:581e:789c:7616:5ee])
        by smtp.gmail.com with ESMTPSA id lm15-20020a170906980f00b008c76facbbf7sm14340794ejb.171.2023.03.27.09.15.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 09:15:50 -0700 (PDT)
Message-ID: <b42c69d9-d91a-dc7c-165d-09bf689370c2@linaro.org>
Date: Mon, 27 Mar 2023 18:15:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] arm64: dts: rockchip: Add clk_rtc_32k to Anbernic xx3
 Devices
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, jonas@kwiboo.se, maccraft123mc@gmail.com,
 heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20230327153547.821822-1-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327153547.821822-1-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_091553_475641_63EDE9A4 
X-CRM114-Status: GOOD (  10.19  )
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

On 27/03/2023 17:35, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> For the Anbernic devices to display properly, we need to specify the
> clock frequency of the PLL_VPLL. Adding the parent clock in the
> rk356x.dtsi requires us to update our clock definitions to accomplish
> this.
> 
> Fixes: 64b69474edf3 ("arm64: dts: rockchip: assign rate to clk_rtc_32k on rk356x")
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

No line breaks between tags.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
