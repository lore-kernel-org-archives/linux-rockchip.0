Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9230AC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 May 2022 20:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=552X+f7EHEE3jtCoGi+zE3KqUc4aueSRxqs/tfxI5vs=; b=038KI5Q+6C1RCi
	0A6+EDrRO6POTvrRYHTDqksLdy6NUNSPbBq5F7BHeplBQGnD2XgHUWjHTBtAcPX9lwKY+b075zcxt
	U5YZzw9zpmQdA332PcqznMm/nGWpzQ2ySd7ItUye8StrXagRuW6XIUb7SDfox1s90b99ThxMpVRg5
	mD67qglydlKmyjECfkZEynq1MXWj8AT8IId9r0FooVj3eYpeer0fhhEbnSwHvr8O5ic90hjrOV6/x
	6SgAAFJXiVum2eZIP1WM3BJPpp9Bxd2KaslsL7im1eYApe0KAo4KIf46CfxJMbzSXHtehBJrQXJX3
	4NfCrc/cbCdVQ+i20Krw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npycA-002DPg-Tx; Sat, 14 May 2022 20:43:50 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npyc8-002DOW-Bl
 for linux-rockchip@lists.infradead.org; Sat, 14 May 2022 20:43:49 +0000
Received: by mail-lj1-x22b.google.com with SMTP id q130so13982176ljb.5
 for <linux-rockchip@lists.infradead.org>; Sat, 14 May 2022 13:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=v62VZWh5zQMQj8G9NtipATuEu9X1kMOa29L98K+aYJ0=;
 b=MyozKlrbXZbVXKqQFFX5h2WzJD4WscKLb1no7bXzcxBvjYJZ3r4UFtWu3nS8rAJTrg
 VMPGRgDqEKT5aOKa//byAMIWgJcPtAcqHelesHxK90sOc1Mm5EPrN0ZQnnHD/O2/9Q/+
 qwLgXsu6FtB3dyN1b+nN6k+UUDzvQCM8eAsAA5H3CuwGd1Rnp+QWD33BqOBhYAHAJR9h
 92KmvJHYeRI66CndEDU6rxIyhJwxhDSZNmH6NGeTyzyEjZaAg6v0E3HBk2BCQwZPEBqQ
 X01/4s5IpfHZGyQogcbohC8IyFqVafuhPG3l+r7W1LojpueZQ5QaMEIHiSY82eVh6opP
 se4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=v62VZWh5zQMQj8G9NtipATuEu9X1kMOa29L98K+aYJ0=;
 b=d8oww0hZkVe92R+cHS/ZnUi8FjhKH+iq3khyzlo9DO2LHwoTbihXij/hnqpXbuc3S2
 6psjFlE/p9yEJ/eUy92Iihuxu3uZf9SrWjtB8jkFuZQwHJbuB3uVD8iQu/cy2S4jdBjN
 X9OuLvEPg3v4kb2DqaYO1WnsIdWbSge0RyVy8a1XWue6VZgXDCvg3oHuJ7aJCe+h0pY2
 uk+W79zjoJLUX8v6P98+h1UIQOTZn7E5ychhVtb0i13aLoWgpQbECawFYEl2ONwSTWTf
 IjtEiKGRvwPts9adiHsLk2G5LyZLxazVBFmdG+y0LxYITvrCIFalWJN6DvusR8D/ngpQ
 u2Ng==
X-Gm-Message-State: AOAM532bYhL/BIfYOFNHBxxGflm6iYHj1CFlMKWDoCIz7c+mZajjEOtj
 FXO5UoPpnFnJI5L4t6dLlT+LxQ==
X-Google-Smtp-Source: ABdhPJylhaA//YyukUFNU1Rqe/LUPZSyVbPExJhknnh9wZMcJQuMypd2gHavHFxWIHiVZJppE5m7Qw==
X-Received: by 2002:a05:651c:158b:b0:250:a056:7e48 with SMTP id
 h11-20020a05651c158b00b00250a0567e48mr6939097ljq.64.1652561026599; 
 Sat, 14 May 2022 13:43:46 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.gmail.com with ESMTPSA id
 y15-20020a2e320f000000b0024f3d1daeedsm941204ljy.117.2022.05.14.13.43.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 14 May 2022 13:43:46 -0700 (PDT)
Message-ID: <680c241f-671f-fafd-611b-277e08ba46d2@linaro.org>
Date: Sat, 14 May 2022 22:43:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [RFC v3 2/5] dt-bindings: soc: grf: add pcie30-{phy,pipe}-grf
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
 <20220514115946.8858-3-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220514115946.8858-3-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_134348_451335_73DE0D9D 
X-CRM114-Status: UNSURE (   7.08  )
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
> Add compatibles for PCIe v3 General Register Files.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
