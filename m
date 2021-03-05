Return-Path: <SRS0=+3Ix=ID=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78056C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 23:25:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EC3EE64F4B
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 23:25:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EC3EE64F4B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N3uCxfQoAabLjSOXp17NYvPEBZPDFdw2pawjrPY4xe4=; b=M7pqVh5MYHsjHwzyfQ5VeMlYk
	7W4B20b8sEyFn+IUP+0A9SCrApVN35uCDn7/JJcbjMWX4Jkb7WZArxj3vZjYSIga8ROmkmFvAI7JP
	yeT1bS1I5eotfLGwg65FcL27+rb77R0Xwlq9BO9DD1OEzdkKj83MSAV0qQ8wRMusSBJgV9W3r/mE8
	BkNWaxYseIcEh0LsJ4Qwj/4hVtEgSxipsjY7x+T2FwH+5YWvydAW44RTpUiNS61m2gPqCdfb5jb1i
	P3EFvPHixVCUdyBoD0Vp0soDNd6HqdXP036yXABKtp/+lUnFv2qOcQXgGcm4kpQHEZ+FYKOUQ1ewv
	gEHmD5Ojg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIJpR-00H6M8-NJ; Fri, 05 Mar 2021 23:25:54 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIJpO-00H6L8-FF
 for linux-rockchip@lists.infradead.org; Fri, 05 Mar 2021 23:25:52 +0000
Received: by mail-ot1-f42.google.com with SMTP id f33so3415186otf.11
 for <linux-rockchip@lists.infradead.org>; Fri, 05 Mar 2021 15:25:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mb/bHLHRlD1QhUjsA/kL7M011uwxJwJbkWKDR1d1xxQ=;
 b=BI0zgu35srtxiMMTUHf52xqMjJPAhf6uk4EixBhDm0X/vGz1tjUd95CYHDDey4VAPn
 MwF+GuijkMy1PJ31xpzP4vXJUYygSVXa084Ktcvx1Zev7r5cYDSDTOF+jHz4ljJE7Gca
 eCv5fWJHjst/yCfnmt9GvFmS8g7XYUKvd0fWMyuY2ukYOZYhuk1+IkFDrvGKDGf1uBGP
 7mz237PhElTYgnMZolx57o/P30ZhSwbiQgmd8ZQd2XT9n46ZzcoKdFkkpOk+7S0oYlG1
 VrgogvlW3W5z9ff9/vdjTq3Hu20kSg7IgpM6x2pTKdwWELd/lptIMJkGUvbrihe9VYuI
 8Slg==
X-Gm-Message-State: AOAM533G19V5d/p6bW8p7qzgo2dYS0U1FbnCBC20qdYkKjrg/9oogoHd
 iKfsroYHC56UYDnOaixf5g==
X-Google-Smtp-Source: ABdhPJx1AqrTrxCgGfAxgOvLtnbl3D/Y4pWyJcFyQrRf1ZvWbsAjlcom7dlm1cSekmmuXhE1nwRhXQ==
X-Received: by 2002:a05:6830:1db5:: with SMTP id
 z21mr9345356oti.95.1614986749320; 
 Fri, 05 Mar 2021 15:25:49 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q65sm881483oia.0.2021.03.05.15.25.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 15:25:48 -0800 (PST)
Received: (nullmailer pid 834554 invoked by uid 1000);
 Fri, 05 Mar 2021 23:25:46 -0000
Date: Fri, 5 Mar 2021 17:25:46 -0600
From: Rob Herring <robh@kernel.org>
To: Simon Xue <xxm@rock-chips.com>
Cc: robh+dt@kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Message-ID: <20210305232546.GA834502@robh.at.kernel.org>
References: <20210222071721.30062-1-xxm@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210222071721.30062-1-xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_232550_605237_002590A3 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
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

On Mon, 22 Feb 2021 15:17:21 +0800, Simon Xue wrote:
> Document DT bindings for PCIe controller found on Rockchip SoC.
> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml        | 141 ++++++++++++++++++
>  1 file changed, 141 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
