Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AFA4C48BE5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 23:53:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 171CD6023C
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 23:53:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 171CD6023C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kp8FhT63xinHNX1Ha8MWBaysrn8wjAN3NfCMr/MYy98=; b=mBQAJVy/VuIW5l
	xh6yFMLB+keEqz9ymfPAZwlIBtOOWD4argBWh45HFIwdpGAekjA3+jR2hGvBxxSCrISlYTIDXfW6c
	w0X4jLJlur+sskgkBoQjbqDRzKQIFcAbzzdIUvMg5cOKKI7zu7e3BgX/6LlcSGn/XXbZjFJpOfPY3
	2KxCMZi4IvCxmq+IDfT32M7q8PWzBoV+1YwmZ/xlur59TerNs/GN0w5n0l3uLx0Xal/VgLPC+z9u2
	ylGD0vLUmO8eVv+BD629N0rNnqQqAj9omdJGtvpBnWhuiBK/xltOP68EWzV3diaZ8auxFPNg4GGX6
	5MR59CZ75E0mdcemSGww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltIs0-00403e-M5; Tue, 15 Jun 2021 23:53:24 +0000
Received: from mail-il1-f171.google.com ([209.85.166.171])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltIgK-003w6O-Il
 for linux-rockchip@lists.infradead.org; Tue, 15 Jun 2021 23:41:21 +0000
Received: by mail-il1-f171.google.com with SMTP id i17so668497ilj.11
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Jun 2021 16:41:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EWFEdVpcxqJ4YsYToxwDqwB2/ISDZb6lR4H0UELvE1I=;
 b=c0iICMb0ILCtRIwqJnq8lgPL7KLeLETOOwCtWl+wUApywRT9sTpJxaRMV8lLbmN61g
 Wo6EPwOn0GqeXiZqv64TtIB9I1QCPEkNS040OVtjc52HNxLVallZrbJ2K1/6AgUhwTO4
 sK3HopibG9Kx3hMuuYK1YeMTQTZMB08/Xr+T6LX9aS6z7xIwskhVynSbUeOJ46thxVng
 UVR0cJxIQyDh3KO5jSV109IWvkqpc1qYzORqQuX815s7/Z3XkW/sRaz4jbz5UU8Ne2i3
 3iqpTaGI8BQp/RHEGXajCbXrebplZcguCOxDtd3NlemCNBPQqNYtIhmitDi/bN5eIZNb
 CgQA==
X-Gm-Message-State: AOAM533tsH+lTUotVKggtW3f0vKAQilJajTwdoDdEFcM+14Rcg9XEbVp
 acMuP+1U08vdiM+geJJ1Do4cG14slg==
X-Google-Smtp-Source: ABdhPJywlkSMCEA2eP7CvoATeqTddCXProQipK70vaaoS5osZvCNpAL48tCmeZXKTCV2f/VaCSMzEQ==
X-Received: by 2002:a05:6e02:150:: with SMTP id
 j16mr1282315ilr.95.1623800479860; 
 Tue, 15 Jun 2021 16:41:19 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id k4sm277725ior.55.2021.06.15.16.41.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Jun 2021 16:41:18 -0700 (PDT)
Received: (nullmailer pid 1681649 invoked by uid 1000);
 Tue, 15 Jun 2021 23:41:15 -0000
Date: Tue, 15 Jun 2021 17:41:15 -0600
From: Rob Herring <robh@kernel.org>
To: Rudi Heitbaum <rudi@heitbaum.com>
Cc: pgwipeout@gmail.com, broonie@kernel.org, devicetree@vger.kernel.org,
 ezequiel@collabora.com, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, chenjh@rock-chips.com
Subject: Re: [PATCH 1/2] dt-bindings: regulator: Add support for TCS4526
Message-ID: <20210615234115.GA1681602@robh.at.kernel.org>
References: <20210602112452.GA98@5f9be87369f8>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210602112452.GA98@5f9be87369f8>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_164120_674461_4FDDAB26 
X-CRM114-Status: GOOD (  11.22  )
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

On Wed, 02 Jun 2021 11:24:53 +0000, Rudi Heitbaum wrote:
> Add a compatible string to support the TCS4526 device,
> which is compatible with Fairchild FAN53555 regulators.
> 
> Signed-off-by: Rudi Heitbaum <rudi@heitbaum.com>
> ---
>  Documentation/devicetree/bindings/regulator/fan53555.txt | 2 +-
>  1 file changed, 1 insertions(+), 1 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
