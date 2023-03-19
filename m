Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E143C7618A
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Mar 2023 12:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOaSLcrc+BjMt5q+DnccwQc5MRepjmBdKXhBiBuT9wo=; b=aH8F5jDuHYBd38
	hhW5wmcXfPpFGT2AwBvkD48FUwSwinAN71RVq7+oZeXc6Sn9YBKu2nzRmhTHHlmyUTCjQBDS/7lAY
	SW4z69mvyOa0rpj5mne7E2ESMf0sTHP7WaF578GFzZBpv4lWkFo8zVk3l8yrfmb4n4AWK0/Pu4cv2
	aXps36cvuHzP9nyIMeWsHNgBAoZO9i0lyfcAcnqR5vP25c5p70CFTYNA72IYTJ5Y9EQJzZzMYYV4L
	QDscsI3/8PAiU24HUPOIgXl7szjSWiwc4QG8JibvG49RCBJohaEk5VaDPOAhCJ+Zm2wRXg+sY21MG
	mVvQRQVCGQy9UpyK9lhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdro9-006caQ-0d;
	Sun, 19 Mar 2023 12:06:41 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdro3-006cWb-1J
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Mar 2023 12:06:37 +0000
Received: by mail-ed1-x533.google.com with SMTP id ek18so36785588edb.6
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Mar 2023 05:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679227593;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3GQ0kuX+CANTyKsciGzMU4Vb8Jeilt6T7QwH/C5HtcI=;
        b=q/Wwmwtmi5ctcH6j5K3nCXBiz9uR0+OP/odaZ0yeLNMn0P9OkvfGw11VAgRnOyicjD
         dRjK50152RNnjgjge6gAAt5Oam85/MTmtLQltFikeLXblNNntYLDxeIl/jxH7cl6DlQU
         sY4XtUDCoocxbk8uJ7HOQfu1jUXU17C+IKRJby/o8bWFg/PmAAU/fafUO6CqreFLjueK
         aMRfAOGK16sg24DvYuSU3+cwAV/ypTXHaiO1E7FzvjPIDtQxYYpxTuvdJPLO5wV+DQCA
         oFGeTeBYPJtHdqLfLxMfW+FmzXsQe40biKcOOPKt9peVzMslgC29+L/CA9QbxDf/a150
         Ne3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679227593;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3GQ0kuX+CANTyKsciGzMU4Vb8Jeilt6T7QwH/C5HtcI=;
        b=mNAeGHXWC0VjBU5POycBiWtM6dJLm0WsC8Wv+KEv66G8JtwjNPZgfRY6GDnGdUGWs9
         N0f/6pYnIj2ZDbXicPeUpj158ZCXlTRAi55nzPZDh8UaEVHvZXiD2Z2545NQNNj4DJCP
         m8M8q6S6Likxk9rC995zNR/g6GybGcCFlWQcqm4HHdtl0sP3R/1g+kVQ5zfM12rfYm6t
         KEdCNMo8aoASoKkp1zg421U1BRY0aN3/THUxSYBNN12/OWPOXEkmd/U2EngXEJHX6Qr5
         7F/JCuaDFX8MqR2buJ/Z2zyNZXQY7MIZ0s13pdaIucZnE+Xt/pds4SCVgSbOT1Bg3YpF
         QbZw==
X-Gm-Message-State: AO0yUKVqEZTMpdUefhD+asxe/GOUfamYKRiGZ1h/WVztppoyYnfXnwlS
	C+ltIkmGv+QEnUVZG15/CaaBYg==
X-Google-Smtp-Source: AK7set9NHq4wBQYJWJ/ZRlVN9Tlxwe4UcNKkxGkrS38jM5S1VezeVO4DSvYLo/+tr/EvFNS6LaAQbQ==
X-Received: by 2002:a17:907:2101:b0:8d6:626d:7e03 with SMTP id qn1-20020a170907210100b008d6626d7e03mr5390303ejb.40.1679227593238;
        Sun, 19 Mar 2023 05:06:33 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id i3-20020a508703000000b004fbd365fb33sm3468506edb.38.2023.03.19.05.06.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 05:06:32 -0700 (PDT)
Message-ID: <efc29278-b1b6-c30c-5c89-294e5198b80a@linaro.org>
Date: Sun, 19 Mar 2023 13:06:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: net: Drop unneeded quotes
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <mani@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@aj.id.au>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
 Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 Michal Simek <michal.simek@xilinx.com>, Andrew Lunn <andrew@lunn.ch>,
 Vladimir Oltean <olteanv@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Tobias Waldekranz <tobias@waldekranz.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-aspeed@lists.ozlabs.org, linux-can@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-mediatek@lists.infradead.org
References: <20230317233605.3967621-1-robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230317233605.3967621-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_050635_441377_059C7F32 
X-CRM114-Status: UNSURE (   9.59  )
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
