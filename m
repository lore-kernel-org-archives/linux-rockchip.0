Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAF72C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 16:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/rfbC6DbHwDPkIFPOWtfkIRX2osChy8TsgsDbD2Npc=; b=y4gfZvdb7ifodo
	fv+YlANG9uaWh6ZfBk5jgKMozKceGEUnRX1NIsf8KCNC+oqHEajWZIWwaGrP5j2ZvRVj0X0I4+lVm
	fOyBSgtDGzrQZy52S28tjnDC6nM3J0Awlf0Z6jVei1Kb4RZHRnePhv9EhRUygEJtiXSex851jA564
	ZvKEwb3uLscd+sK/H2FFDiINB1fLzvJmFY/b5xjyxptJihJ2F0elUs2vezZmMs4CTwlTkEFdRy6aH
	t1fAGV7C6fp8muWoM4L8g2TmSLYC25tu3NXqnW0M/6awWCp1jsPEsJbBN/9CCxo1fWYToru8U2Vb3
	ocqITYn54fHWH6C/B6LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBdy3-00G4VM-2P;
	Fri, 08 Dec 2023 16:44:47 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBdy0-00G4Ue-2n;
	Fri, 08 Dec 2023 16:44:46 +0000
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6d9f069e9b0so395230a34.3;
        Fri, 08 Dec 2023 08:44:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702053884; x=1702658684;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MQNz+xvqRdVvhqlnaesIupD2ZldVHm05D8bBXCEt6fE=;
        b=j+vY79ZQ69zeFfmrizUbgcV8SAxwgtOyv2uleSNENAaNZsowskz5DH8eQwHRFGAy0s
         vMeWClCXNGKPOaDKMhLLdmS6ysUsHPTQ4DT2S0FTCdqAPDWPOakXuitLhYBFZt2uvvMM
         1/gDJTZYqe5wfySDsIucq4hEzdAvNsMiiDPxnfSqGmEkfhmey5DSsUb1AeES+GF5drGL
         LYB314oeQEgfHg5XO/tu+yWFmc38SBygvGtzunVx0vtqxxKiqjC0Aq3yeisKE2JQ5/iC
         LyuNX9KZyksSt03TB//YmACY9Aqc6KdO28mki+gbJXMdd9PqDlUJ3tuCghwD0ufX12gz
         m6wg==
X-Gm-Message-State: AOJu0YxbaYJQiK3/kvZNdvHfh+TD7ZlUVW7AmcpH3nJaFbRs5H1uMYzl
	FxjmL0pYwzu3ofqyMGGaUQ==
X-Google-Smtp-Source: AGHT+IEElGzMDgsf5XKgsEJBooUGCELsszhJ/I7kKbKCN+yZO/mIQ5M8oB94icul6SeFg7QJKz8wzw==
X-Received: by 2002:a9d:6a4a:0:b0:6d9:a5ef:a2c7 with SMTP id h10-20020a9d6a4a000000b006d9a5efa2c7mr372426otn.9.1702053883797;
        Fri, 08 Dec 2023 08:44:43 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w26-20020a056830061a00b006ce28044207sm349258oti.58.2023.12.08.08.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 08:44:43 -0800 (PST)
Received: (nullmailer pid 1748007 invoked by uid 1000);
	Fri, 08 Dec 2023 16:44:41 -0000
Date: Fri, 8 Dec 2023 10:44:41 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: maarten.lankhorst@linux.intel.com, robh+dt@kernel.org, linux-kernel@vger.kernel.org, heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, tzimmermann@suse.de, conor+dt@kernel.org, airlied@gmail.com, hjc@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org, mripard@kernel.org
Subject: Re: [PATCH v1 1/3] dt-bindings: drm: rockchip: convert
 inno_hdmi-rockchip.txt to yaml
Message-ID: <170205385847.1747356.13765108616438619401.robh@kernel.org>
References: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_084444_903542_BB979C47 
X-CRM114-Status: GOOD (  10.12  )
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


On Mon, 04 Dec 2023 18:39:03 +0100, Johan Jonker wrote:
> Convert inno_hdmi-rockchip.txt to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Note for rob+dt:
>   Used enum to "soon" be able to add "rockchip,rk3128-inno-hdmi"
> 
> Changed V1:
>   Rename file to more common layout
>   Add/fix hdmi_out port example
> ---
>  .../display/rockchip/inno_hdmi-rockchip.txt   |  49 ---------
>  .../display/rockchip/rockchip,inno-hdmi.yaml  | 103 ++++++++++++++++++
>  2 files changed, 103 insertions(+), 49 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
> 

Applied, thanks!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
