Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D78CDC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 11:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qe2gsS8L/4YtBqUUYCP9jFXpXJgMlKwEJkW3hEszgks=; b=Q1PM0QVKbWC/xZ
	Btwimq/s4ftFBEGacwi3r+CLncbMXw3bNX9pYdt/tBAbxLv1/eIkloYJB66roWBQbesjaajXiWZRF
	aSxxXV2YsE1kny21tat8HobYpUolD5AYvL4SD5uPlDg+jjVz1GpDfNEugamdHmfvxz4oCzZ0iRXzx
	cOlMXq/uqRR26SzGgaeyd/ovyWrZo0mjhCAPWA+yicdWpv2aVZCT8oUtdgsH82We4YZztzcqdE59X
	Jw3FFPAxdNgLgrSmlEqxqQLW5JezVLdJX0k52O1wrIuNaiyNOiNVufueizZOwhoS7TdwL2ZDyTAzJ
	Pi+REqMAc7jGaIQgb90w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbJvU-0029wE-Bd; Sun, 12 Mar 2023 11:31:44 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbJvL-0029v3-2C
	for linux-rockchip@lists.infradead.org; Sun, 12 Mar 2023 11:31:36 +0000
Received: by mail-ed1-x532.google.com with SMTP id er25so9844259edb.5
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 04:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678620691;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cr42kcaharXx2QRFlpWoe74NVUOdmsTZyVPBJTpygf4=;
        b=hQecZn/ly4IBjxkim9gJavyByugCZ8UKQy6hvrqJjW0FYyLCW+cQvUvFvokmWjBNsE
         7lT/2dj3CPqWNRRZEXX3bGxvPIti3myf1dse8nKcwtv+ciDY+riHxbTqyCrik+Xh6tIV
         bHRyHP/J+7HhVTPgQzrO3aobuc87c0f7pw2tdX8E3Sqb3RnIlSdF9Qfp84p73rc9g5it
         jZ2rsBxdIPBrcwhwjrWggoM3d+dn9U26j3S4cWDm1y/cL7p8pSYsh+B8hDRubvPhJQuM
         g5+J01VJUS/kgacl6Ycdz7J9gChKgFrPuag5iPyzZg3YOWxphwjMIkY6vlxhifbrLC5a
         f/aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678620691;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cr42kcaharXx2QRFlpWoe74NVUOdmsTZyVPBJTpygf4=;
        b=MxWRvOiwcQE5pJjQ5DRPiyT+9jgeWqrOrB2BrO00cud2/Hoizo4s6fuNYrWYQH4kOQ
         ++TWNMUl3x5Gk73S0cLejm+hnmgGArZWeRwcga81F8Uw0Z/BDPb6T8xH0v4nKQYHBmVW
         R9zZFqopx+Kz3EXjt6cOPmHeZ5ooEG1xC9KNTXjVs/MYaP8mmSFFEh20YJYKLBuI/qfi
         L7DRBqguxg5GRyQaKjoxVoQBWTR4OhNtexTBmXUmbjZy3r2GvkpeYA24uqqWYxqnBj03
         AQsUl7GD7kGCGxUE+oh4ZV5MYK5d/ZMwlFxEsoOZNUAKZ51RrLF41AdnYhS7xzbWl9Cl
         Orxg==
X-Gm-Message-State: AO0yUKUHiMjbrdW3Aa7OmKSFObTru9MzxnyhcdWqmaEEQTaeyeFW3chy
	NlZDzmKC2GOyubdVY0N13+YYuw==
X-Google-Smtp-Source: AK7set8qbCyOZY99qFz7FnkwgjDP4VF0PZfxCulPh0hKCVOGTi5xdhcGZzImnweWu7luxjwXeV1jVQ==
X-Received: by 2002:a17:907:9713:b0:861:7a02:1046 with SMTP id jg19-20020a170907971300b008617a021046mr41936190ejc.37.1678620690994;
        Sun, 12 Mar 2023 04:31:30 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d9f6:3e61:beeb:295a? ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id vr3-20020a170906bfe300b008d4b6f086c9sm2125986ejb.185.2023.03.12.04.31.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 04:31:30 -0700 (PDT)
Message-ID: <33157da3-4ab5-11ae-9b65-b2ca9694bbc1@linaro.org>
Date: Sun, 12 Mar 2023 12:31:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 3/7] dt-bindings: phy: rockchip: Add rk3588 compatible
 line
Content-Language: en-US
To: Lucas Tanure <lucas.tanure@collabora.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof Wilczynski <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>, Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, kernel@collabora.com
References: <20230310080518.78054-1-lucas.tanure@collabora.com>
 <20230310080518.78054-4-lucas.tanure@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230310080518.78054-4-lucas.tanure@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_043135_113166_8A148116 
X-CRM114-Status: UNSURE (   7.50  )
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

On 10/03/2023 09:05, Lucas Tanure wrote:
> RK3568 Naneng Combo Phy driver can support RK3588 with the additional
> clocks and initial configuration, so add the compatible line.
> 
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
