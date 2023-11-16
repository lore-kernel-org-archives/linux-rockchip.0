Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18DD9C197A0
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 18:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35f47JGAoiSpxPbIjQNDKG/cISZ1A+aK+uerzfIXnbc=; b=h8jxVMEWoT8sKd
	5dcZPILtyL8x4W8PG21s4ucC/X0fqcWx6yVoDWAuRebGuGQaRRxlK8ZtXAr4YrLptmDIfw/blUXWn
	XCyub6NXdtu4hDoy3gIilibeNg/6OanVFjh6GZQtYzV7rHS5XOp2NiuK/yFmn9sJdtgRqYzgvLkLp
	XbKrH/fZN7zoxDgf5vvPENzGFcLgYQQqi+N6o0UXp3CEcOcbRIhdlwM74Hmm3EGBV5H/OMKL4Cb+c
	oh+9RCsEuk1fHhB+q2CXDWob9X59hr3B/iWl0C3s9pCb1FQxjnrb6A2Hb8JlW5hyDJl9ODO14Pxtm
	8eRcnTzOcJnmdL9N9YZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3gpQ-004GRC-03;
	Thu, 16 Nov 2023 18:11:00 +0000
Received: from mail-ot1-f43.google.com ([209.85.210.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3gpO-004GQG-01;
	Thu, 16 Nov 2023 18:10:59 +0000
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6d64c1155a8so650779a34.2;
        Thu, 16 Nov 2023 10:10:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700158257; x=1700763057;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ROY1Wqfp/3P8z63QFesI122B6/cpQHGSlZFfNCRsrOc=;
        b=hTBWvkc5DPnM8iso5epEiWOL7dYVsNmSOUY/xFLT8YGQqVbvnd7+2Ex/y237JRlBSi
         mI8I6jojfrbuGC82zdONR4SHGX/qNaahlQK6ZFolEmEU3UYwDXD9/4yq/Om0WSRzZohc
         glwtzg3XCnNystLMvsnSgGNbZS5l6esStw2STm2DyXMEA/tj002XvPwhOsV4j7Hjl5DD
         TLs9BYv6iuyESAe1j/TVAft6ihXGnjipJ5QuUktEvxDOueHfWWoPbxQrpKRj94iGeH+7
         gnMEiCGfkdkBwtvwMoc4/W4jRu3/L6Rc3hmikAg8fPAkzIdrOrhjhCjmkhXjoerdZl0N
         xa5A==
X-Gm-Message-State: AOJu0Ywf5gc62jXUAEzTpT8QgUvWBbfqmv7MiXzhE2F19m0QORcfPh71
	iG5zMdbcduAlaz5i8VCfLw==
X-Google-Smtp-Source: AGHT+IGQVbSah4VLdiNniFKClh8C8runVoM6YISQHsmUtmoVK8BLwelOmP5bpgzP8A8L4hSFgDfB5Q==
X-Received: by 2002:a9d:6291:0:b0:6bb:1c30:6f3c with SMTP id x17-20020a9d6291000000b006bb1c306f3cmr8439558otk.0.1700158256818;
        Thu, 16 Nov 2023 10:10:56 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w29-20020a056830411d00b006c7c1868b05sm988406ott.50.2023.11.16.10.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 10:10:56 -0800 (PST)
Received: (nullmailer pid 2617753 invoked by uid 1000);
	Thu, 16 Nov 2023 18:10:54 -0000
Date: Thu, 16 Nov 2023 12:10:54 -0600
From: Rob Herring <robh@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jagan Teki <jagan@edgeble.ai>, Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 8/8] dt-bindings: arm: rockchip: Add Sonoff iHost
Message-ID: <170015825394.2617561.15272053355211067819.robh@kernel.org>
References: <20231113120705.1647498-1-tim@feathertop.org>
 <20231113120705.1647498-9-tim@feathertop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231113120705.1647498-9-tim@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_101058_045167_09A1E8B6 
X-CRM114-Status: GOOD (  10.05  )
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


On Mon, 13 Nov 2023 23:07:05 +1100, Tim Lunn wrote:
> Sonoff iHost is a smart home hub with built in radios for wifi/bt
> and Zigbee. It is based off the Rockchip RV1126 (or RV1109) SoC.
> 
> Signed-off-by: Tim Lunn <tim@feathertop.org>
> 
> ---
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
