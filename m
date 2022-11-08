Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26373C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 18:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToYDBJ7J3FCutGFYJF7IWmi9OuXOlSR0Y5H9DiVmdgY=; b=CJ93NXSb4rWXQY
	BNgj92sRv6bjIqELr59OtDDPvZFEAQMxV6e5tJoP0n8hzNQqQttX3x5QJCmNYJ1JYrjsfb6B7EW0H
	3htoFkWuCJ6fj9R+jTMlwQcNbeCOEIrJCOXQX9VP8/HbR1c7g1uwPCUImTvZneX1fxjhG4t9BPouN
	wZbBVVK6VuHlsMacbKkabPBMlqF2iu99jxnJTengRi/4zAF73Xw0vHnYWlCUoqwM+h51by7d2+p3R
	eojfn0ZkFH4BjvCy04pIfhU3niJlxNHy3L2Jyr+M304esRjn19KfoxdVZyAYPWJAfRnIZsS+AF6XB
	tLn+d1/+0Fh4DAHcE3tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osT3t-007Muc-CE; Tue, 08 Nov 2022 18:11:01 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osT3r-007Msh-8d
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 18:11:00 +0000
Received: by mail-lf1-x12d.google.com with SMTP id bp15so22277034lfb.13
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Nov 2022 10:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GN4ncCbN5RXq4bC+MjIVUQcmL6JMKzPTfDQ6haXvn40=;
        b=TvkxlNCJYlXgbwKJ9uhCOG1ZdtKYxRdjqIoE23FwVJwjBRO452fLQA194b0cxvY4bX
         PqMgG7HVAu8bRxc9KkQNpQK/BF7AgQJMCc097kvMqV6lR1cW0qbEE/hPYNEpXyn2SmWX
         QmoED+FTYkD3gxElk8y0uZ7hkEA83qlUpMnzPAFISDC4VWG2HJha1EAnOq+QPkK1ObFo
         uRU2hkN6tW/mC4f1EKwb/xoNmHJme3mvQ48XjAT5DUyirJA6jwabHyT4DwwDPqVA5iB8
         1Du8LV/QYG4Lt9kMLecUhSihQdiXrZ+ZjP7mxzfiyBUjGKl+kjttu+lFDZZJ1wvpd73x
         2Isg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GN4ncCbN5RXq4bC+MjIVUQcmL6JMKzPTfDQ6haXvn40=;
        b=0G4zYnoL/NFwaLBLOaa5ucwNh2P7Kw7uqYo4l/uwWd3CCUguWr1sBaPcdlpy90cH44
         m9Pt596GAC5+n2GC+koOoqnWz8cdxFF4tagYlUtCkBI5W8JAaBTfAGIHISaUokjZSa1N
         AWMBZeVsAco5w4sv2SdLvIJBtMKLSn32LrAdAD2hhZ8mVJbph8yK08iSmKLkhbgwS4iY
         Ak/Hi/uJS+tMCLyOa1Ksrt4AxCsOznb+GVaPH1ExizN5YwGJ4/NJJ2t2Ggfy8Qo3zdUm
         I8RSd1jIz1dqotKVsS7FCW6humKrShQbpZ2arPvbFQQVvqQZXkaI7IXsCbZn0jLJTmb6
         f8jw==
X-Gm-Message-State: ACrzQf0AdWDq3grpY/rH56EsxgIt9BMtAmeR71ZV3RSFlfXORt6tVQUM
	4bGiZIRbTO8K5/LY3SfqLUOPaQ==
X-Google-Smtp-Source: AMsMyM52maW3sfRovKLSKGvPEi5QOxDIojC6VtVzehizWEqqHR11l1zKljI5liw/ss4HdcCpLn/rhg==
X-Received: by 2002:ac2:447c:0:b0:4a2:4fc6:4cbb with SMTP id y28-20020ac2447c000000b004a24fc64cbbmr19141894lfl.99.1667931057375;
        Tue, 08 Nov 2022 10:10:57 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id k19-20020a192d13000000b00492b0d23d24sm1867848lfj.247.2022.11.08.10.10.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 10:10:56 -0800 (PST)
Message-ID: <e77cf459-b4f3-199a-0c59-85a166a286a7@linaro.org>
Date: Tue, 8 Nov 2022 19:10:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v7 04/10] dt-bindings: timer: rk-timer: Add rktimer for
 rv1126
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 linux-kernel@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>
References: <20221108041400.157052-1-jagan@edgeble.ai>
 <20221108041400.157052-5-jagan@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221108041400.157052-5-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221108_101059_337654_455655E6 
X-CRM114-Status: GOOD (  10.09  )
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

On 08/11/2022 05:13, Jagan Teki wrote:
> Add rockchip timer compatible string for rockchip rv1126.
> 
> Cc: linux-kernel@vger.kernel.org

There is really no point to store it in the kernel log.

> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>

I would argue this also does not make any sense to keep in kernel log.
It's maintainer, not a person who is somehow interested in this commit
and should be cced.

Keep both below --- in all patches.

> Signed-off-by: Jagan Teki <jagan@edgeble.ai>



Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
