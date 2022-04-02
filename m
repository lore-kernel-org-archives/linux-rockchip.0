Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18506C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 16:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=018JMrCjgKWk9qSZ1+VviCcvfLBZa9KiYPrhDT+GcLg=; b=wRf3yvdUmeafrh
	wwACAglKtrTS52fmqlH11+lNqZBlU4WHV9RNmukpkedgo2gXcKFGI9YNBEy75Pn6hPd9skXBPm/EE
	/IuQkeAl9yEMA/22TFuxO2JCICSdsj/oBmRjbMnYtlxYeFHjzHOCLmwg6SHKOwsbbcnBYhOtERG7C
	Gg2BstuL37VH0E3f8Z7673VauiYfNn4djsXzj+rqWcPT2IwRDRJafn34AW6RdGUJwcqseARVKZsJV
	tVkgs7/TbKOhxY2p6NsCoh36i2brnmYe8m6R+C1LAq+BUyZD0CeGANdwZZQlZaF7cqUcZ61kZcvRv
	Fz2U3nzbMKngpmNt0SDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nagsO-009e3q-84; Sat, 02 Apr 2022 16:45:24 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nagsL-009e3J-3e
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 16:45:22 +0000
Received: by mail-ej1-x62c.google.com with SMTP id ot30so1902982ejb.12
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 09:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=lMPLaifjlPREZXBjIBwue2MEcz05yGzVfgoyVmaFjVc=;
 b=jcRbVQ7gDzmFwowuWWQ6xJvWYfyqCNL5vGwkDQFJobitvVqY8+B3A0UeAzlBWwjiHX
 Eelggmqlw/iYUUPitF4AH8JGqVD2MwUm/LtRsDHZeGNp4y+A3gtD6mS/PfjX+eA/qHDo
 pz+YxUzoJ63J5yQoP+e/FOQzuNCunTjPjUsPRIdQTpRKU61gZ1zVdwgAXPlXBLGHrfHn
 0wr3/R2O6bIvwo1FUVNQEVuyxlJSrDsF3lQNx2omTxC/VmVyZEW8qHcQTkCbQtjxWiam
 JFQbqsObmgMQPD4gb3s/e/Sn1r9+0iOLhXnDIlZZq1biLZpmg7hMCMpGHyzSlyNf/5MO
 C4/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=lMPLaifjlPREZXBjIBwue2MEcz05yGzVfgoyVmaFjVc=;
 b=1Ly5cd1i85JXRv6kq72/A7nEa77ZTkW0XEybQed4qGY71jDf2lNWMiAD2NWRgeBHex
 K4UnEIiZ3FoAWbC+fjALItqBbiymACLXHbWOd9ZrAh6uoixMRMLLFNzuwF4RtrPyg5bl
 aOioK7lzONr7zZIcSWPvD5Fbmut4fQTfzvrmYBP7O/lbsY/WcStdJZv5F+PByEr8Sedr
 7XytbhayXESFo7tSz00p9UZzePyqcv7VMmQUFsBL0U7if/X2AdeAgLO01K+goWSz8aKv
 oZFYeXuHySep0Z8jLfvwVQ1Ut6rW3gE1OmjFbiahg6bp5exqa9nZ7bHaDJ55o6t0FfN/
 qDFQ==
X-Gm-Message-State: AOAM532BdG8m89l6dUsLMpgKOOnZFfqf3BCdwoN66mGGg92LFLzlwrs5
 u9uC7VaVgetzKNkoZDIbsij5UyoS9dED7ge3
X-Google-Smtp-Source: ABdhPJzhU+ug0BNuIctU+TjiJXc7sRo/j6vvpcsPZBTc4sus6x/7hOzEVPdrlIgjCgVySW155Cw/7Q==
X-Received: by 2002:a17:907:94cd:b0:6e0:b001:aeb6 with SMTP id
 dn13-20020a17090794cd00b006e0b001aeb6mr4354843ejc.283.1648917919486; 
 Sat, 02 Apr 2022 09:45:19 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 hq15-20020a1709073f0f00b006dfc0fe42b1sm2280633ejc.177.2022.04.02.09.45.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Apr 2022 09:45:18 -0700 (PDT)
Message-ID: <553ac698-48ea-d7e6-6338-34395efbf603@linaro.org>
Date: Sat, 2 Apr 2022 18:45:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 00/16] Convert Rockchip clk
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220402143636.15222-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_094521_198155_7189AB86 
X-CRM114-Status: UNSURE (   8.22  )
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

On 02/04/2022 16:36, Johan Jonker wrote:
> Combined serie of previously converted Rockchip clk bindings.
> 
> Changed V4:
>   combine dts patches
>   add more clocks
>   add clocks to example
>   add clocks requirement
> 

I think I reviewed most of them and gave you tags, but I do not see any
tags. Did you remove them because of some change?
See also:
https://elixir.bootlin.com/linux/v5.13/source/Documentation/process/submitting-patches.rst#L543


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
