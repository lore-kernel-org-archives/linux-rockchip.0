Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FC71C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 18:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AK5W6BdB0IqRWoUXbgLL46+htrb03wcdVzv0RyjXOnM=; b=O4ff1d+Vzvt13r
	UOVoGtxVSYliJy2AsNkedC7/3zba9iahiTed8k0MvmlVhrjog+3xKKvxk1AzTc/x0fKzmRykflWKu
	d0r4GySBESNuaiziF3chTivTEX5L8PKmRTJ3cfblFV4cMzqZR7XCBtd6Y9zhu7PBjBZamuP45PnkK
	yBRvxKuVmPNllNypBIPC2oS0TD6jy5QSw/4/zAOoHNnejki0dGo1Yi5uWmH6GdeT2aZp8OhyRZHOk
	VVXBTb9cvhv7JJFgiVbNn8SOWedi5aItAePwfZJZYVVvG+wh88FqDYzec2kWqEgwd0QknBA9zWlGk
	Bpl8fu4B5XJtghF/aq4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nReCn-005i7X-4a; Tue, 08 Mar 2022 18:05:05 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nReCj-005i5s-Vy
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 18:05:03 +0000
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B68763F79C
 for <linux-rockchip@lists.infradead.org>; Tue,  8 Mar 2022 18:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646762700;
 bh=eGfr/Gi+1TNrE/Evd9NiuKAxgUTxUS7szQhSnGLVsuU=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=Fi8cbzVSFiPyUrOB1HnC1iIe9PxtbYedVF3hdTHeFjoMTyP85WDWWz3gRLRwZ4U6c
 JHe7wmpl/GTFeaolsPW1UIB1LA6yCfFSDL3CvpPyCK7vhvt4iQCWMIB24ayYTWCEiK
 PHE24GTCkpfdFNWDO46pS5rJZwZvSrqGDR8M2+r6bcjcq2qrL3zNk0GxzVDZM1NHvt
 PiJa9+S5OZWMMnA3cEcLmFEHHXRYEHxZ/5v5lwp/9MRhqKpD6F+/oDcfCSWPdnZLKa
 fJGaX+9cwVmqvmDU+HtAEVxR5WmJsBgx7e/zXIKggDQWIyBm780tm598X624VHegua
 3RAtaIg9Kk6xg==
Received: by mail-ej1-f71.google.com with SMTP id
 hr26-20020a1709073f9a00b006d6d1ee8cf8so9013171ejc.19
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 10:05:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=eGfr/Gi+1TNrE/Evd9NiuKAxgUTxUS7szQhSnGLVsuU=;
 b=UB7wqEax/FNOmE/VqRg63GcyNYOKU4YfxOkK8nnyWNCVBD8+UJ7731tUiF4guR2Njt
 cbp9Ur9EYMyqa8qic00Pmh3rrZzqR1VxMeGKve2tGYhfcvRjG0qbl0tsiNHwbw0VAl9W
 RbkYkTCLG901JGchh6bCAJFqxZOyBVqW+xd0ur73IlEZY4uJDe+3DnpAN9+t9zf4Qcs9
 LNL8wqzlqT9+2GyRaL4rP8traqxsEK7d98alcCmc8hNV9DrjsdTIzcJIxCc7pTb0n46q
 sY8POo836g7XMgJsGizDmPhJHPy7vsupEP7BzHLSUUcjT0sijB5MNQ1fQd/ZeJmb3g70
 E/Rg==
X-Gm-Message-State: AOAM530qd2q7zEmO51cUxFa8kwaxl9OsmRlIcKtvIeHzw0gK51lVD3gO
 fboCo1Ur5AVrNKW576i3SqilrTsbylzZgjmdJmytr8H8E+CRT7c1e7vmtPNxietoVtF710C672i
 JZSR09/9yI+wWKRLrbLLfAofLSvEHATtLzar1ZV+jCJD02PgSEg==
X-Received: by 2002:a17:906:b893:b0:6da:ab5e:ea34 with SMTP id
 hb19-20020a170906b89300b006daab5eea34mr14373909ejb.657.1646762700163; 
 Tue, 08 Mar 2022 10:05:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwR9N4OFXwg11cFMOkm0NAH6N8FDdi1Yzof7ATeNr8EXvzHvnUdqOqBP2nsfgHZhcV6rY0lcA==
X-Received: by 2002:a17:906:b893:b0:6da:ab5e:ea34 with SMTP id
 hb19-20020a170906b89300b006daab5eea34mr14373891ejb.657.1646762699994; 
 Tue, 08 Mar 2022 10:04:59 -0800 (PST)
Received: from [192.168.0.144] (xdsl-188-155-174-239.adslplus.ch.
 [188.155.174.239]) by smtp.gmail.com with ESMTPSA id
 o10-20020a056402438a00b00415bc425022sm8205522edc.33.2022.03.08.10.04.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 10:04:59 -0800 (PST)
Message-ID: <df7999e3-53ea-c3b4-45a6-1fe34b50caf0@canonical.com>
Date: Tue, 8 Mar 2022 19:04:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 02/15] dt-bindings: devfreq: rk3399_dmc: Deprecate
 unused/redundant properties
Content-Language: en-US
To: Brian Norris <briannorris@chromium.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: Lin Huang <hl@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Derek Basehore <dbasehore@chromium.org>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>
References: <20220308000945.706701-1-briannorris@chromium.org>
 <20220307160918.v3.2.I5ba582cd678d34c03d647e5500db8e33b7524d66@changeid>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220307160918.v3.2.I5ba582cd678d34c03d647e5500db8e33b7524d66@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_100502_225546_3FD056DC 
X-CRM114-Status: GOOD (  15.93  )
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

On 08/03/2022 01:09, Brian Norris wrote:
> These DRAM configuration properties are all handled in ARM Trusted
> Firmware (and have been since the early days of this SoC), and there are
> no in-tree users of the DMC binding yet. It's better to just defer to
> firmware instead of maintaining this large list of properties.
> 
> There's also some confusion about units: many of these are specified in
> MHz, but the downstream users and driver code are treating them as Hz, I
> believe. Rather than straighten all that out, I just drop them.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
>  * Add Reviewed-by tags

Messed up commit msg.

> 
> ---
> 
> Changes in v3:
>  * Add Reviewed-by
> 
>  .../bindings/devfreq/rk3399_dmc.yaml          | 42 +++++++++----------
>  1 file changed, 21 insertions(+), 21 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
