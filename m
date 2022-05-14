Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57650C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 May 2022 20:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RlbYndKZYc0ocW24Wza2S2ns4WKbVfi9r9f9jyxUlnk=; b=Zzu3lU4nHjenJs
	mkfFUlTZOdfcmEVdnGtRvHk9B6kmAft9oybbahQbjyRgKZnddzzhcVldJ052qd+Mh5dv1U5v2D5vJ
	/s9qldpqPG7h4+2Dl2zKH9INpXl55+m2gazyhMxQnwMLulW++mwgLgzbvHybpcFX7NYgwxv6EzXlt
	yFDTnp6pJc1R3XffnaGlijx0hiNUZiFcP4b0L+RiqllKCwi2Vwt4n4Lah+uE4TGJTypXGN+QomBHr
	ZseN7lDTjKBOfk0Qva6XbfwQSrzKkWOtrgy8MGrlmK6aNKAYH6Xpxynw14TYGsOI/jN9ZA6EuzOac
	9tgiNmdrUWCxmte5JY2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npydY-002DsP-EJ; Sat, 14 May 2022 20:45:16 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npydL-002DmO-1Z
 for linux-rockchip@lists.infradead.org; Sat, 14 May 2022 20:45:04 +0000
Received: by mail-lf1-x12b.google.com with SMTP id h29so19915881lfj.2
 for <linux-rockchip@lists.infradead.org>; Sat, 14 May 2022 13:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=MdfM/HONZC3fS+MtAXHVlITNlpLFIi5MOZuDuXkooss=;
 b=khMzfOKisE9yhASS0XyoadCXEjwNI9/6dbBzGKxChR0LJbgMgMBBYOWeg+nYuuhUEi
 1mQTHxlSGWbOc43CcFAGyzUoPW3E870lAghxtmIqDhhs7Z5B4eAxeTAmbHymp7Q6j4kS
 RlrIDgAfmh+RJuAbCOTwImywdKNVnRRLlzrv7CsN64R7kAiBPoNwT3NuG5LCADJUJgX5
 5Ig+uhURyT2PYeh7MdPfQruC3sUVF3Nlx4G6ubLmlQhzwQOJ49W7v1Rp6Njo7/PRqpiu
 il81A7dTLCnHCvERK5RhLfMko6H6g8WnZD0CewABufBbB3KX0bniT1mgWPkhmHbfg+t9
 axtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=MdfM/HONZC3fS+MtAXHVlITNlpLFIi5MOZuDuXkooss=;
 b=Y2/lHz3U5uPaDdKh5dBtQFxTxZM9JXWJaVktz8H1FO408YTq3fRRxbKQ0zDyagPGa5
 jPDL/rw+ObnD7Jxt66yITLdjlPdZIu1h469LaRAjIJW7aQ0DdCsVKAzvGdBM0LUT0wfB
 M+c4yDpRXugJL2uKHq7y4vymLezgSs/J8Yzs8rmyq35CWchuLsrhhW8IDHeELyaRZpyn
 Y/X5ecDrQC5UreNVnTKu6Gqe+p4rFTiUCmopdu4VGmUapcTzbG7rtPgog1eZUuGDVKfn
 R3mFl0TsBAa6iM7EzWMLzv4zasngK5WN2yJXPgXRAlJuyArDtroOtBIO3SnPkL4vrsYx
 1KRQ==
X-Gm-Message-State: AOAM531aK+U2tfco0m4cLaB93FbQXhQMMkoTEna2vYDdZ3UOyLV7jtZw
 kjTPXgMlaatbRPa0t0MHslgc4A==
X-Google-Smtp-Source: ABdhPJy2KoQq0Weib9Kud6u4wMDOWPKK1rWbgJ/y837Uw6TP1i6MtO7ganhIRIxennTKxocnqGUmEw==
X-Received: by 2002:a19:5043:0:b0:472:36fd:4fc2 with SMTP id
 z3-20020a195043000000b0047236fd4fc2mr7660828lfj.258.1652561100624; 
 Sat, 14 May 2022 13:45:00 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.gmail.com with ESMTPSA id
 h25-20020ac250d9000000b0047255d211a5sm804213lfm.212.2022.05.14.13.44.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 14 May 2022 13:45:00 -0700 (PDT)
Message-ID: <9fb50d77-89a5-65a0-ba77-2a810f901518@linaro.org>
Date: Sat, 14 May 2022 22:44:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [RFC v3 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
 <kw@linux.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220514115946.8858-1-linux@fw-web.de>
 <20220514115946.8858-2-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220514115946.8858-2-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_134503_113881_671F8E19 
X-CRM114-Status: UNSURE (   7.80  )
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

On 14/05/2022 13:59, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add a new binding file for Rockchip PCIe v3 phy driver.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
