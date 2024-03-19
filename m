Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D092C54E71
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Mar 2024 18:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQ07Frt3fssBotK4APa2ysIFeU6FHt7i7MauEt733w4=; b=e/F+FUWzXkB4Oz
	ZIu7y/hZwGSYR3uTBOSxMrYdYHXkfXhavjs/Q0NnB62ZXzHxiRlrzZE1ieo8F9UzQEuSCdKHU7dY6
	9c4UCwOMgXxrkCJ8XrBTkrioPXi2hgnP7eBrA2y77F9ZycSeiQxqPSON1niKYGmevMLtQ+CjCqg7j
	bWalDQvNC+TmQyQ46aF7uLg+GAX2pKra2dsvTicVvVH4WLAcDIAGim5mCnzx4e/2RtkpDG75yxriS
	4ynsXaYSDlX1i+J8yvJX7R6smOoK68SBXreVHjujP+hK9EHqhiEeE0m/JRATcn5O5uwI66qf9vh+I
	B/Mi6JLrHGIETVQzDcFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmecP-0000000DtZ5-00uh;
	Tue, 19 Mar 2024 18:55:25 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmecK-0000000DtWR-2z2g
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Mar 2024 18:55:23 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-513d23be0b6so6288666e87.0
        for <linux-rockchip@lists.infradead.org>; Tue, 19 Mar 2024 11:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710874517; x=1711479317; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=83V+kLXEKnt3rHh9YFy/TefnTTCMNLk8pL8V6XrQ+/8=;
        b=ZloVqqbRu2rZAyFA8Tb379H2p7izb4b6v91EpjTyLRAJQnWE1dtJkc3R2qOmYqMS5w
         BjhmXqej8Kgi269Dcg6VwmYIvhBEUx0LzzCNEHJUAb/aMy+hSkR/VHbcZCq+0ymQjRLv
         +s83M9OLWGd3q3fIp0UOqb6a0AdzNd931+eHZ29dnt6r41RG1mzONIkeijNQPwtl6nFh
         SywwBm0RrnW01DXHpObsBw5oZIdf4IOusp5dAjOWhLDjqgYjr3UCFIfdnDx3fKShulkV
         GIP83WYTRfIDX/RWs6RF85Fx6DLrlrEmMISqER6wfgihID1pmCP7Hpw4tw8k6Isu2qGF
         Y+yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710874517; x=1711479317;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=83V+kLXEKnt3rHh9YFy/TefnTTCMNLk8pL8V6XrQ+/8=;
        b=eRU8WRY4wTYBhLv6FGNFvhc+737sAwHAaaK6vOfA60KnY6tGb2j+Bn+2c19t6dT9si
         +2gy1rrg7PQg1aLT4Ber96s/Kdzn3D4HXyZ/ZPaSMKJcF75ySlpp8xqZ6ySlvG/UKI62
         JHnQff4mOpbKXnBkFhgiVPfYmdhra9c/2+e9F56tAvIR6mh9llDHeM/KEh/clmGCcDoJ
         4dv/T5D/xSl4zrd9rsu4Lsn50gJ1mHG3CtTQLzAgjUkMLnRMHbcyHYFCM1ciHf+ynXZL
         5octsv4F1ySbSfL53bUE1BqtLg7sMUAVBCbb5zYefDbbMy9wz8U8CShymPbWQKaxUmJc
         X1BA==
X-Forwarded-Encrypted: i=1; AJvYcCXe/7IUqQc/21FfJsiS3JcJCLo8cT10vNwL4v7AwAOXGkdVnOtLAHfmLdK0aibeSXuKkun4cPNNlovOTnFR1NqlTx7K2KXW1kYz64meJCA/ocxX
X-Gm-Message-State: AOJu0Yzks4WKY7ZvDuq6lsC6bdu/8/3hV5etlOXU3AWL3oMLDh5UGkhn
	DU2990eJYjzFuDbUU48EeUQ5w578lT4Yk/uSZwQp9LWbVAmWc95g7mSrXZLerJw=
X-Google-Smtp-Source: AGHT+IEoKE7/yvG89Di0GzAV77SummXupTNxWOUpcNfs4kVIta6lcqVF6t/RsIBXEM6KgN+0jqSVZQ==
X-Received: by 2002:ac2:5a1c:0:b0:513:d24f:6455 with SMTP id q28-20020ac25a1c000000b00513d24f6455mr33557lfn.29.1710874516960;
        Tue, 19 Mar 2024 11:55:16 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id bw9-20020a170906c1c900b00a4650ec48d0sm6453124ejb.140.2024.03.19.11.55.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 11:55:16 -0700 (PDT)
Message-ID: <ae8e8151-b73f-413e-8535-95fc829654bb@linaro.org>
Date: Tue, 19 Mar 2024 19:55:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: iesy: add support for iesy PX30 SoM OSM-S
To: Dominik Poggel <pog@iesy.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Tianling Shen <cnsztl@gmail.com>, Chris Morgan <macromorgan@hotmail.com>,
 Ondrej Jirman <megi@xff.cz>, Andy Yan <andyshrk@163.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20240319095411.4112296-1-pog@iesy.com>
 <20240319095411.4112296-2-pog@iesy.com>
 <b4f4f8e3-9832-4789-b4fb-beeeeb5c859e@linaro.org>
 <8ace15e8-0da1-4384-9042-ab89329c352a@iesy.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <8ace15e8-0da1-4384-9042-ab89329c352a@iesy.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_115520_806877_6F86644B 
X-CRM114-Status: UNSURE (   9.42  )
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

On 19/03/2024 16:17, Dominik Poggel wrote:
> 
> Thanks for your input, I will use it and resubmit it afterwards.
> 
> Unfortunately 'make dtbs_check' isn't working, as it can't resolve
> http://devicetree.org/meta-schemas/core.yaml. Probably just a problem on 
> my end,
> I will investigate further.

There is nothing to resolve there... did you install all prerequisites
as mentioned in linked writing schema (dtschema, yamllint)?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
