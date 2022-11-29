Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2427DC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 07:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKTdX1nvdPUQfDHDcTr4+Byv/gRuF9miDm2kHub4Cuc=; b=Lkdso9nCS9naOU
	7VHTD88e+qHlTebfLb2s7Sccn25ndfQmY0hm9/6ur31cg0xaYu5/6gSIhGM9CtEpqUmJik1nsSpjL
	aZwcdYXjBkurMcdpwxxZW5lB5R8atXCLqY7nd2sZrUyVCzT0bUMVwg0JfW7vyXit2YbslbtiYalyq
	f9ZKX+Eoo4SILcy75BITstrQi6m6Prnz2J5jrtuC4lM7eL5M+7dj8TrFQ3HmOD1tzm/fH39X72GNG
	v3yKVwe7Q1JtIS1+iZMY0vjegyrJepSl4A8YaRuvMy6YhsWcB1DpcUGmF6KP9tGr+s7WfGQ6PFqIx
	xmZHaDH0mC3h7+Ndk7VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvSp-0077gj-1c; Tue, 29 Nov 2022 07:55:35 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvRy-0077D7-W4
	for linux-rockchip@lists.infradead.org; Tue, 29 Nov 2022 07:54:46 +0000
Received: by mail-lj1-x229.google.com with SMTP id q7so15864118ljp.9
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Nov 2022 23:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sPR+p+kGl+0k/RjkknsYsCEKzKVPPKTVLJLFeCPw9io=;
        b=lReZcflhNFJ/RsdgzdE0hHMbkCizNZqtojH2rU+NvNrVEkpKcKrmCz582QluIoq7bD
         RufFlKdraGBy+VOFCZhPNqoavidkndtCyDTiyAdA1FbJ2NLwfzMjwg1KiGktB38DrZNC
         p8hLR/3i7XMboYFsI/gfQ/Urw15zTRx41DyXjy8ooFNLTVCkd1iLHHgtEBP9S9GIxp/O
         5k84n2584baNQBDhAKZ6+CRh+iW+wK/VPHktHk6WD6l03nF3lTmj/WoLwPuFVrE4kqrM
         ah8AMQJcGtBu9dJ2qBvAZi9IKj0caQpuBY239uDGJVcv5Ya2Ye87pRLcaTYDytl2AQvL
         mW8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sPR+p+kGl+0k/RjkknsYsCEKzKVPPKTVLJLFeCPw9io=;
        b=I4sgjJO0Yl1E7USg4eHiGDN7y6gM//Lz3zLaao2we7f2qSAEtMRkDVei5grWgyq8Bq
         +3EPSLSCKAwrMJYqpVPjwzgBPFqeQgbrrGtcITnBPrBA4YoixXPEqQhtIN2j3/brS1z8
         Vpt6KAZfQ9N+KyilGlRY2TNVHlqE9VdzBbNdSZUXsKk8kRdyNrhgfQ4SURVs5A8LR9cV
         uZPHuGXkkgQdNYWA2+A+JZChi91voqR17WqA3oMMK8y5aMi8Vy/bPnR36C0vc4eaf+/a
         WrhhUES5UGm2qPzuq18Gsf5sQJghHjKSG0dTY2OYLD8xlfUnvQx0fq9va8nkg+VRsCxD
         Ik9w==
X-Gm-Message-State: ANoB5plkAmz9EFXFQG17Y0yyxbuYZrJKH4HAw5+uYQNPci3+WaUESjJL
	RhCYVODQdXJORXTdddetjemmhw==
X-Google-Smtp-Source: AA0mqf6ySTkqODS6y9U19ECH7tmUJLsWx5XNO7n57w5Hfp/bOMMqDtpocgZ+mTigVC5v1IbYhIgA5A==
X-Received: by 2002:a2e:b809:0:b0:279:9b4a:c325 with SMTP id u9-20020a2eb809000000b002799b4ac325mr4599936ljo.79.1669708477552;
        Mon, 28 Nov 2022 23:54:37 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d23-20020a05651c089700b0027776efa48csm1429844ljq.91.2022.11.28.23.54.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 23:54:37 -0800 (PST)
Message-ID: <cd0e324f-eaa9-4d63-9122-391a9dd48e7b@linaro.org>
Date: Tue, 29 Nov 2022 08:54:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for Radxa ROCK Pi E25
Content-Language: en-US
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20221129070614.19720-1-amadeus@jmu.edu.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221129070614.19720-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_235443_148308_D387619F 
X-CRM114-Status: UNSURE (   7.23  )
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

On 29/11/2022 08:06, Chukun Pan wrote:
> Add devicetree binding documentation for the Radxa ROCK Pi E25.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>

Same comments about subject as your other patch

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
