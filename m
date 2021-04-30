Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 222AAC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 21:18:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B89756145A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 21:18:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B89756145A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kONTQkJq2J4J4L0Rm7KqYZUsf8DvrJAc2RP8Vg79Rp0=; b=G0l0xxrQpujdC0BODTpeBsEi2
	IWCCb61zQe/Z6uSLACLLX9f1Blsux3TJNtQdjwszfWfSCcT+MEtpiswiXxzrumYHP1Zv0kLKsEnSP
	Tw+lV96IMl3z6cHlo4ywL4P2TfJ9zuCYk8fb/oRN1gGRS78Wdt2qGSMtCW5oYlg56Xb5ojIgLc54+
	OlXeUDxqztSdXfy08pw19hPhE/TWaIOBkGg2zlORXeFHxtvvB+A8vpePV0lp9I2hauh3Q8yUUlV1V
	Hv97BPVn1Y/eskDK2U75nA5Dwf9atArTGPeYbyQLViL+WKaKd/6d29VszIkKFHh9g96AEyT0yqXMh
	w/MSJfbNQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcaWU-008cq0-5A; Fri, 30 Apr 2021 21:18:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcaPx-008cDU-H8; Fri, 30 Apr 2021 21:12:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=CUDa8mELslYYsnwCk0fnXA024TFYhBlM4dLFukV6z6c=; b=fRyl2icBlmP+eNo+KRLv7o8OHp
 1u8sAbXY0rliNFAd7ODRY9xvyHZ/ChpgaLbstCbN47VX4Mg3RjQMa/r69Lms5l6swBOtkVE09YqoC
 8PKC+27ElqHn4vJAPrS2r7fxKi7ewfCWvEfZ2fpRy+EuyL17vMahItAb1muQhpt9eXbgwIqU5F54t
 yw8nuWYfXSPGF+vCKfd+5D20PKsYL03D57IFUULIlSQ6ChJ+hHZlMTE6t//9GRI+fmTVV4YYd55mv
 1fQYfGfE4bGU4tkXV7x1DA0Vib473050U/upuXiBWTYl9v2wuksCjLYw17+QHLR5Tf3JDEhtvJX8W
 z9PFsm6Q==;
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcaPv-001fq4-4j; Fri, 30 Apr 2021 21:11:20 +0000
Received: by mail-ot1-f42.google.com with SMTP id
 d3-20020a9d29030000b029027e8019067fso63751687otb.13; 
 Fri, 30 Apr 2021 14:11:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CUDa8mELslYYsnwCk0fnXA024TFYhBlM4dLFukV6z6c=;
 b=tZ810u+Z9Yo+2sdCvkT4ICN2EuUQBV8Nj/9DeVxHDLrTRuMuHQCNE+ePlOd2Mk8W/6
 oFYR0psZU9IdS01aw0FzwLB7DmyiKkfhGrnL+ayok2zCkAlrfjH1PrAKxbq86146T2YN
 woerzI8vFiFl6l82J6ISXFOmNvLxLKlrUJ2By7kEknpNrTQz5RwSYII58WrmgaLDjaan
 kZwSAMq38jn9PDPal8isQuGpf3VgJ801SWYEvnRcRWZ+LI03IL/OiXtt34ntgiGXDP5o
 XLUeTjbYIsYezFTOa5FzKNXgyPr2s2StDXBEOlhiR8b8TeuTK6L/fK9OGKo9/NX1Zk5N
 e5Lg==
X-Gm-Message-State: AOAM530WJRBCoaDO+MBYbgepjdMCb0AcTi59NTCBRAI33Rj3ftON8r/N
 LB8MaUZ6wAYUT4F2YpTJiw==
X-Google-Smtp-Source: ABdhPJxZqLwNO1zjieg6NjX5EQB0zSGFIIjI8Lb0vVSY7a1bPvqP8LDCfXF2RiE2HNve3ZY7Hid9DQ==
X-Received: by 2002:a9d:6106:: with SMTP id i6mr5108080otj.237.1619817077739; 
 Fri, 30 Apr 2021 14:11:17 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y123sm1096826oia.7.2021.04.30.14.11.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 14:11:17 -0700 (PDT)
Received: (nullmailer pid 3900648 invoked by uid 1000);
 Fri, 30 Apr 2021 21:11:15 -0000
Date: Fri, 30 Apr 2021 16:11:15 -0500
From: Rob Herring <robh@kernel.org>
To: cl@rock-chips.com
Cc: maz@kernel.org, jay.xu@rock-chips.com, zhangqing@rock-chips.com,
 robh+dt@kernel.org, linux-serial@vger.kernel.org, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux@roeck-us.net, shawn.lin@rock-chips.com, linux-mmc@vger.kernel.org,
 jensenhuang@friendlyarm.com, michael@amarulasolutions.com,
 mail@david-bauer.net, cnsztl@gmail.com, heiko@sntech.de,
 huangtao@rock-chips.com, ulf.hansson@linaro.org, david.wu@rock-chips.com,
 linux-watchdog@vger.kernel.org, jamie@jamieiles.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org,
 uwe@kleine-koenig.org, wim@linux-watchdog.org, jbx6244@gmail.com,
 jagan@amarulasolutions.com
Subject: Re: [PATCH v4 02/10] dt-bindings: serial: snps-dw-apb-uart: add
 description for rk3568
Message-ID: <20210430211115.GA3900619@robh.at.kernel.org>
References: <20210429081151.17558-1-cl@rock-chips.com>
 <20210429081151.17558-3-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210429081151.17558-3-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_141119_208540_5B2508C3 
X-CRM114-Status: UNSURE (   9.93  )
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

On Thu, 29 Apr 2021 16:11:43 +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> add "rockchip,rk3568-uart", "snps,dw-apb-uart" for uart nodes on
> a rk3568 platform to snps-dw-apb-uart.yaml.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
