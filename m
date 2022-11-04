Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81D84C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Nov 2022 21:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VeIvBDPgebj9U3o96smXgBKHW7L+ejaL/iOn2ZRVqg4=; b=JSdexVuR/YAb2b
	Y7Sy8ab8qIZ+GJ03NCsb3xMu8ZnHRepXtDGTAdgD2pyASGt5B7fPJGqyq0sI3vsmqKGpAAR20MVDC
	uK0zeNSYM00wizAww1z3gul/oEqV6HdivOCgXt3i1jyn659KOF4ewsuvUsfopykRdCBL/Rl7oaeGP
	uurGId/PaAhSzih2zunxotnohYe1+Jg8nPDq+3ttdrZme8Y9NfSlstDb2SocrydBmH7xgm0UFzERt
	XZawCFkasgtTSbRSUoV6rY/0xi1JQ1Hb0YWniu9ZZE+xxNbnfMqoji3q4rZcZtsEELdwv6QTjfL3S
	35+GmP3WOlYxXwDTer1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1or4aI-005GTQ-W8; Fri, 04 Nov 2022 21:50:43 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1or4a7-005GSR-Hk; Fri, 04 Nov 2022 21:50:34 +0000
Received: by mail-oi1-f176.google.com with SMTP id c129so6575551oia.0;
        Fri, 04 Nov 2022 14:50:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kNHFEnaya9ZBg9ioaAzkgnt9oyFzleBQd7F3+qKPXGk=;
        b=o2M3VUk1vVX27hJY9mKNLbGwwCBrRu/cvzqSrDUJ4eDzwhPz2WT04Kj8AZu/bbi8zV
         ZsBQ2CMeAupS0QRaYqR49ZguqD/KgJMCBIK2Id/5HXkqVcym0mK9V6FQgjR0C/Lt+Rkb
         NNdmTpfLQC1q+RpIzIVFeG5ynizplijpqYA0Sv6Nazi3LxYIJg0TTedb7L6SDzLWuCav
         4YfcsAHBrjWvP8bO3BtAuZ8Tc2zmWaRoIEA9oVy4vBPAEXUbAbWqWaKi7Uiz1+gF/J6W
         V8rI+6rpSfhH/+N8Ye32ZehM92CsHD4ZaBGRuFSF8ZK63eG/o5p444TCb9ZIR7cTl5yP
         a2Sw==
X-Gm-Message-State: ACrzQf28rBnSRYv30ph2ix3Xls3KkLVpL8cTR6G0/D7ulA/pJxwIzP9L
	l4PJKAg3xJkgkP36gVoECHNMFT3zRA==
X-Google-Smtp-Source: AMsMyM6yNVy1BsSmG1N5ZHrya99OHO+odkRjZ/KrpfadP24lG+7gLfvuqy+Wd7elh3dP82lqTIxWvQ==
X-Received: by 2002:a05:6808:238d:b0:355:2484:6f30 with SMTP id bp13-20020a056808238d00b0035524846f30mr20447532oib.26.1667598629704;
        Fri, 04 Nov 2022 14:50:29 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id v20-20020a4ae6d4000000b0049427725e62sm126579oot.19.2022.11.04.14.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 14:50:29 -0700 (PDT)
Received: (nullmailer pid 2888890 invoked by uid 1000);
	Fri, 04 Nov 2022 21:50:31 -0000
Date: Fri, 4 Nov 2022 16:50:31 -0500
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v6 4/6] dt-bindings: arm: rockchip: Add Edgeble Neural
 Compute Module 2
Message-ID: <166759863038.2888834.11852706242849643366.robh@kernel.org>
References: <20221102124607.297083-1-jagan@edgeble.ai>
 <20221102124607.297083-4-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221102124607.297083-4-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_145031_607494_B630EFBA 
X-CRM114-Status: GOOD (  13.00  )
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


On Wed, 02 Nov 2022 18:16:05 +0530, Jagan Teki wrote:
> Neural Compute Module 2(Neu2) is a 96boards SoM-CB compute module
> based on Rockchip RV1126 from Edgeble AI.
> 
> Edgeble Neural Compute Module 2(Neu2) IO board is an industrial
> form factor evaluation board from Edgeble AI.
> 
> Neu2 needs to mount on top of this IO board in order to create complete
> Edgeble Neural Compute Module 2(Neu2) IO platform.
> 
> Add dt-bindings for it.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v6:
> - updated SOM and Carrier name
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
