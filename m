Return-Path: <SRS0=REIB=OY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF9D8C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Oct 2021 17:53:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 966DC611F0
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Oct 2021 17:53:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 966DC611F0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRRD2eCaxy/q1y6Ooc/zdQiuD2iAEB6fiURD3j7m8GE=; b=D6snyL1whwl00C
	rtPoIVnEeXoZkHogLGZx9UPx30bZMKi7cT8nhEIeUB6BAtECg4nmzs17+0nhwNEDZaBygc54moBnr
	emhVYiuCIsp3ZAmGhy0ggHbQjNwW0yfV1l0GBtxGCP2DEEc38G+tzVVC6R8WKA1KrUwGuvH2r9Pv+
	M1QVpyXarJwWWobqAJrIl3E1AR5Pkij7NPgjv1+4Ec9mXVUmaB+n1hBDGXX/E4eb+HFrsiJfvBjgs
	XBPdPY+wgSwX/OOype31Ih9EevIipJ9/iPetQekQh3e9nVHq+8QspHh3aA2Fxkr2+xTKtSWyRE0xb
	i+c8Ipq86kB4YnxQAg1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXS9d-007Ti7-Rq; Mon, 04 Oct 2021 17:53:33 +0000
Received: from mail-oo1-f51.google.com ([209.85.161.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXS71-007S32-Ia; Mon, 04 Oct 2021 17:50:52 +0000
Received: by mail-oo1-f51.google.com with SMTP id
 e19-20020a4a7353000000b002b5a2c0d2b8so5635972oof.3; 
 Mon, 04 Oct 2021 10:50:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+zC+9JjryvwDtMGz0rvDmz9oHTnshjJfExDGt6+S9Q8=;
 b=ab0W8A/Jz2r0hFp5kr6usXnqOtIunkGnd9Sc6d+5AdRLgUqk2GCRigj9VoaB5twZxZ
 HtzUDSv7Q8a1LlQwSXS7fKXcsZiW/XxOF2TI4PRZkKvzZUkJrkWJ0a9JJNB7ybltSCWE
 CRBJuPVykp0YaOuaR5wRsiQ1Ve0YAVEHccFrTYYRxk8PJTTNAifRb8XtKQTBgODyfV4/
 MNe9AOH+L4ISkEQVFCuVTDPOKYkhj17nr8MmgCRQYbfqgvnQjPt8iTY9n5n9U4oVeDRB
 S6m4BtAdCY27lL6+YNeZ6aR5WrjidhZ3MvTRAAIHNqkYW/l5Y9mQ3RkrA3ilRHNb0/wn
 Q1mg==
X-Gm-Message-State: AOAM530StBrc5rA05mb9HkmPNdEqueWNBpdicPQYzsRngUfHnIkS3kuC
 7Qn8kmXdniDiUOUDblwtdw==
X-Google-Smtp-Source: ABdhPJwtLOj0GQvoRwKaaX9S0QQStXq70Uo/EtSf5edm8922Oyvtqwgn0+jF78EGdqN9fM3fzHM0FA==
X-Received: by 2002:a4a:de57:: with SMTP id z23mr10076843oot.70.1633369850186; 
 Mon, 04 Oct 2021 10:50:50 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id d7sm2996775otl.19.2021.10.04.10.50.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 10:50:49 -0700 (PDT)
Received: (nullmailer pid 1552189 invoked by uid 1000);
 Mon, 04 Oct 2021 17:50:48 -0000
Date: Mon, 4 Oct 2021 12:50:48 -0500
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, jbx6244@gmail.com, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: rockchip: add rk3368 compatible
 string to pmu.yaml
Message-ID: <YVs++GqW6ZXoI4/g@robh.at.kernel.org>
References: <20210925090405.2601792-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210925090405.2601792-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_105051_650610_9B1FD00C 
X-CRM114-Status: GOOD (  10.59  )
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

On Sat, 25 Sep 2021 11:04:03 +0200, Heiko Stuebner wrote:
> Add the compatible for the pmu mfd on rk3368.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
> changes in v2:
> - new patch
> 
>  Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
