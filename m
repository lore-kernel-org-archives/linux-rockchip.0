Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BAFAC636D3
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Feb 2023 16:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Krl/78sU2IdBDxvNjlfK3yiJoV8NTdnMVrS5pNL2ltM=; b=Y3JXUxpgQ5Gmk3
	Vf/eqhxY64uegfZfyuwp43KFTMiwmFeilkDgTBrUpwSs5AWECeEUbk1/EMecf+tk//067GhZ9ZTor
	0KKy7xYZYRF84FgAGBRBF7qgVT1akpHp4vlM2qdQiPHO6feVKvMb3i6VmcJjdeLpq6xRFl+5aErwJ
	EwO0zgoL4YxItdE0TYtiNKPMEXfJW0jlVh0l76WBFPurzxzvRrGgwSJIGWsJOK4lwdX9iiYbeEG0Y
	Ys7ik5/iTGFaoetjt5bXWpcgBHxD2yJHj8r3i3U4x90eG51z/sXFJtaJMSQKporMn6dZYhKyDAGU2
	4C04YeVb+tjH/E51rNKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRF0M-00BpKZ-2L; Sun, 12 Feb 2023 16:15:06 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRF0A-00BpGZ-02
	for linux-rockchip@lists.infradead.org; Sun, 12 Feb 2023 16:14:55 +0000
Received: by mail-wm1-x32e.google.com with SMTP id z13so7147195wmp.2
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Feb 2023 08:14:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MF7/vbJs0MIasH4Urg58rp48T2rF3hjYXHHT6Ln6xtQ=;
        b=efgPoAyvsUx1cIKnzwm/LdjiDGwm/n1mEoJu7i1Oiokqc+Ur2TTo154uQNt6rxcHOW
         QcRPITcuX0oDApdp4/UX6gBv2rwuIo82hPMLKvloTB/FogolfYxedlu8W+L9bg+4xJhO
         RuxJdaKSD0Ii2883U5tSlsIqFTNaUqLwivhH/YKeEQG/8mvWO71HGBtZjSbOwz0w+RjS
         8Yg51cuyIT8+fA1boMwV3SFd77ls4pWK93VxjboD03c9u/6tku1qTozQ6WuDk0irW4rj
         /teCEEMQCxdH8mywej05YsbwlMwzkOw7w4bCR2P/YDV+HIS1sUH/EB9JWevcgTWkd9mW
         /pRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MF7/vbJs0MIasH4Urg58rp48T2rF3hjYXHHT6Ln6xtQ=;
        b=pwNy/Z/nmEAJpfSTp5lTzBTszR/IRB/R9raMdeA69F1PiZRrDZ3Lt7g9GHYM8BhZ3j
         IfDw3rq/7eiDe+CKKowqWcXaYv4PO05Uk/BHsLCFn5f7GsTvVnod9/WE+rckeZZtF792
         v0JXC7nkEs9rajnHebvm5fcn7i6ZC6Y76aigdOYG4jRAVMPD0neMrO4pdSo27owok8FD
         rI9J/uDalGBVfqawvrohb2wDNBQr3ob112y8VZZ2TKCAjY+m50zPYYXFEKWE3S9CvGci
         HWv0RNah6zeZJOeLQGlRc9YXrPiUEzmuGM5WYec8D/qlxq9Gmhpa34z1WEimMTCbZG1j
         4WAw==
X-Gm-Message-State: AO0yUKXRIMNv5DQczSbEFKaoBRpvpGDDkWPdlWFMKqTf4Gkcu+vN2/bQ
	aRvehVmTe6gdJa3r2aSum5JUng==
X-Google-Smtp-Source: AK7set82gpA3fZoua53Cnxd03waql62CWCqDMUJBLUpUtt88FI+piYIUYuM7vRs9wt4H3r4tPV+vFg==
X-Received: by 2002:a05:600c:4b1b:b0:3dc:53da:328b with SMTP id i27-20020a05600c4b1b00b003dc53da328bmr20546758wmp.14.1676218492273;
        Sun, 12 Feb 2023 08:14:52 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j40-20020a05600c1c2800b003dc4480df80sm16229620wms.34.2023.02.12.08.14.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Feb 2023 08:14:51 -0800 (PST)
Message-ID: <e0bf4347-ec24-a4e2-0851-d5cdf850cc28@linaro.org>
Date: Sun, 12 Feb 2023 17:14:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 1/8] dt-bindings: gpio: rockchip,gpio-bank: add
 compatible string per SoC
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>,
 Linus Walleij <linus.walleij@linaro.org>, krzysztof.kozlowski+dt@linaro.org
Cc: Johan Jonker <jbx6244@gmail.com>, robh+dt@kernel.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu, john@metanate.com,
 quentin.schulz@theobroma-systems.com
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
 <CACRpkdbmXri1vtRShm7a3N0sRA7Qg_ni5FpAtiEv+72a6g9Wng@mail.gmail.com>
 <CAMRc=MeKdb=xmidwXQiNxtJpb1xii1D-43m1z6cNtF1VxFwogg@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMRc=MeKdb=xmidwXQiNxtJpb1xii1D-43m1z6cNtF1VxFwogg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230212_081454_044774_3ADAC48F 
X-CRM114-Status: GOOD (  12.04  )
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

On 10/02/2023 21:03, Bartosz Golaszewski wrote:
> On Wed, Feb 8, 2023 at 12:08 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>>
>> On Sat, Jan 21, 2023 at 12:06 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>
>>> Currently all Rockchip gpio nodes have the same compatible.
>>> Compatible strings should be SoC related.
>>>
>>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>>
>> Bartosz can you merge this one patch and keep the rest back
>> so we get a more defined DT binding baseline?
>>
>> Yours,
>> Linus Walleij
> 
> Krzysztof, you left your ack but seem to also have pointed out an
> issue - do you want me to fix it up somehow before applying? Drop the
> oneOf and turn it back into an enum?


Sure, you can apply with my comment fixed but then just please check
with `make dt_binding_check DT_SCHEMA_FILES="xxx.yaml"`, that
indentation is not mixed up.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
