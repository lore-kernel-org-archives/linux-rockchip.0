Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BF6FC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Dec 2022 07:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHJha0QERTRrLqap6+Ae5TieG7oKESiw4sznqQSAH2g=; b=pJiMBEgUMPXQ3V
	gkgrfTv/Msqm34G4TkofxneqZEOQXKtMSoJEWgDykDqRKlZXKYezQ2iSO2tjdHs1ISQxBq4iE1PrM
	nq8d6GlIDH1y/rskpVjGSEGnWjfcMb17ra/QaYo4LKl0n8zVC14caz7+MgUZ7zMSQ7djXUySLJHxm
	0Dzl11W6UuFpJeYZK0Yb3iJjAiefWBNQmeXJf/L2NvI4NcIyKITsZ2YLP+aHRgQ3TggY/H8ehD6zI
	vsNPBxpKun55ozLs5dB0LUPWltTlRYPD8JPPAZH1M7drnLMhvCpWtFb6pmjJVMu25IR1m2pG+XZ4q
	q61znrQ9xIWIxxs+tWmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p503X-00DcLK-Oz; Tue, 13 Dec 2022 07:50:27 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p503U-00Dc9E-VO
	for linux-rockchip@lists.infradead.org; Tue, 13 Dec 2022 07:50:26 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id i186so16636089ybc.9
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Dec 2022 23:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9l2fk7v4XnHQZInb14bkwvMKyNtmuRr/NuOTSxyg8xQ=;
        b=ivRJ0ETZwUXTVOJRHoRUcoNeITJZE0Cz5IsDcLvN8VfcMplzrCCPor13Yqscl5ciTd
         2xSSS6o1zaFj7Tn4lhDfX/oVH5MwU6lxGcEFIViVra5kqrnf1oY4s4Z/J8oAeiKDcFnV
         qdw+Si4ICWtf7pXSNagstZgAxGWr4TGaWBB5yeixP7tlrIYMA4bZQhlnLM372dmSVjln
         lcuf2nXe6LzlyAelVq6D0/Bdb6LZI7KvhtMo5qGgeRlX2fcodEOtdzf8+3UZV8xFrFIN
         eYlZj2o77mdtSCqEtSng1cDHkvpaWQgNPe0w0tzNGePgBZuKWwqPhMZedlgZVyB2kbGL
         6SaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9l2fk7v4XnHQZInb14bkwvMKyNtmuRr/NuOTSxyg8xQ=;
        b=rnE2UKFWFY4v0Bnq02PjEHNbnb1P/OiCKA1J78h889YPxNQjCJ82tUThc7/G593M55
         tudgzDi6NhxHZ9HUDV7A4/uuq8BgjC0w6qV7OvAL50qA4da8x9CELqSQ2DtFdFclv6G3
         PBKQN6T4JqfjBH+Bmf+AiPwIJ6E0zFWRlBr/0HwkFial0E6DI2l2wJwTGA8vFOCPmoSb
         bbuk7vOuyNwTudsbDBKI3tBa4lnEM4TSP7yBefTEQlEYdF2QC5NCU6dwXmDWO3QwAXcm
         n73Vd3NQTW9i2EZS8tC08tuCE8Uyad15XlA+aIZhuAAbi1peJse8OG3Vi1oM/5XMWHU9
         eiSg==
X-Gm-Message-State: ANoB5pmUjOWTQSuTUrYOzvkZK8ves74DxzGTDBZJgGnQZ3AMVTZH8sUZ
	r1p45OdQuDYPE+LnrXCNc6xegGOyrW5PRoNr2yZEcA==
X-Google-Smtp-Source: AA0mqf70ndlyAVU0oWBOjUZhsFK3Q4bhMX81MCWGxZ6MMtnOPJFEF1WoxgVutlf+BQy0zSpsA5oEfF0b/tXJXANn29I=
X-Received: by 2002:a5b:ac6:0:b0:702:5c2c:c9ee with SMTP id
 a6-20020a5b0ac6000000b007025c2cc9eemr13964713ybr.44.1670917822086; Mon, 12
 Dec 2022 23:50:22 -0800 (PST)
MIME-Version: 1.0
References: <20221123183124.6911-1-jagan@edgeble.ai> <20221123183124.6911-3-jagan@edgeble.ai>
In-Reply-To: <20221123183124.6911-3-jagan@edgeble.ai>
From: Jagan Teki <jagan@edgeble.ai>
Date: Tue, 13 Dec 2022 13:20:11 +0530
Message-ID: <CA+VMnFwVt=t6kmYrvGgSJdkZDnHMuxKPHtyFCU7vBaGHa4hc6Q@mail.gmail.com>
Subject: Re: [PATCH v8 2/8] dt-bindings: timer: rk-timer: Add rktimer for rv1126
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221212_235025_251779_0ACFEE43 
X-CRM114-Status: UNSURE (   7.20  )
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

On Thu, 24 Nov 2022 at 00:02, Jagan Teki <jagan@edgeble.ai> wrote:
>
> Add rockchip timer compatible string for rockchip rv1126.
>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---

Daniel or Can someone please pick this? Heiko is holding this series
due to this patch.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
