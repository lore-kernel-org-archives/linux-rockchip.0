Return-Path: <SRS0=76ry=KN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC25CC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 14:16:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9BF0861007
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 14:16:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9BF0861007
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cGalHRInE3adr7FXeUaaLuQjZXiG5JPo3Dn6pWVmJ9s=; b=DCZ3R/FXMWcXSlc6+dbekwdHz
	IX/y6x4Mzl56NLP9ZMnNYUCWwYWmnAKdSSSJ8PUN8TqL/nc4DSMOyyK7JINJKxD07J7rcqmZ7yRr/
	1iRWAam78nl5hTUm8+Q0oA5NKExhbiRdXvCyfv0r46ByBMDzv9hWmnkpbsHCRT6+X3mDIpOA2ErOe
	J1nMuL9WBOHUxAv7q8XRjR1/QCJf6yMp4TqWLoLB/4egX6CItvgS42p27vRoczF72YYKPKyDI/1+J
	zPm6Vm6ZaBG2ETH3D56kyKLEu7OO+GcclOBwrwWoghrI74fmd2Bkph1r3S7dvy4MfphuKvXyaAioz
	/UGcjVlhg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj0WM-000z3X-O0; Tue, 18 May 2021 14:16:30 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj0W9-000z0F-2m; Tue, 18 May 2021 14:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=8/dUUomjGvbOclUR2QAeFNgczOIsJz86uWLzhgCHwkA=; b=oVjrvk/7ayx2OP/J+1psPsHXI7
 pLLDyGWFx0JARkGvwVF5SZOGPo3vXoeVYtE6HFgwp9oNWaT3IWW0f/RsZaD/jh1vwC0CfvGtEqL/W
 cJeNEtEQcSbyZlccD7tOpbZvWohCM0txUrUEulJyg5SySCE3TdHJW3gEILSqMBmAEGsVym0ehLu+j
 KlpJBomRwq8P6XRNboIEE1QQEA86EfpO3wJamqpSeDddbWTF8FUL/2DuM4dJ/Y02i7DcZBb2d7oYX
 ksm3y2bIIuJneI1K176lqRwKQ8UEBb6O6CFyXLXNdCady2RoAVjhhQBLJ6DRT1E3JueTI0IaInpF3
 h6K/OrTQ==;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj0W6-00EiZJ-NJ; Tue, 18 May 2021 14:16:15 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 i23-20020a9d68d70000b02902dc19ed4c15so8791466oto.0; 
 Tue, 18 May 2021 07:16:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=8/dUUomjGvbOclUR2QAeFNgczOIsJz86uWLzhgCHwkA=;
 b=nFPDrn9/dODmZDgs1U3yXBcukq8kKN0JRYTfd5qhJcnSYwYlnIq8L3PlLPuzG8zAIu
 rUqvRKjoq7817RkukzTFp6BEXDZMWhGDv4FA1eo+xoJjLX9TsNVPwNI27QxDQ8NagXjy
 /DjkuPdrRO3RaWhuHjXkKouvnP0AlrakmxKmPG7oxOWuWs0ZJK6CJ37pmb3Jt//JER8e
 7KySlzqeM5rse83jGZ0wq6+/JG2nQlC40hsOMPmSKv/vcq8MBGQJ6rF5kzPxPVo6whQP
 kkdB+zfhfoy4NQm633S5cKhfijsHbSYcoEbKWItCTyNGJlpmGHjBuPIADh3LbCEa7TrD
 00tA==
X-Gm-Message-State: AOAM530jpsys2e4R5KmPWmB8S6TNS01+jC0U/GZ2DNnBhMK0yQb1xSeo
 sEX64xEazeAa3bFlbEdhng==
X-Google-Smtp-Source: ABdhPJx7x7GxXWPoSEqkaKyzCpwLrsRj0UQrgFsgP6wnfOIrnRXcl0WMrwYUQSSHmmHVlTNRBVlxcQ==
X-Received: by 2002:a9d:491:: with SMTP id 17mr4529640otm.184.1621347373462;
 Tue, 18 May 2021 07:16:13 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u24sm3874096otg.73.2021.05.18.07.16.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 May 2021 07:16:12 -0700 (PDT)
Received: (nullmailer pid 611575 invoked by uid 1000);
 Tue, 18 May 2021 14:16:11 -0000
Date: Tue, 18 May 2021 09:16:11 -0500
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 linux-serial@vger.kernel.org
Subject: Re: [PATCH 2/9] dt-bindings: serial: snps-dw-apb-uart: Add Rockchip
 RK1808
Message-ID: <20210518141611.GA611494@robh.at.kernel.org>
References: <20210516230551.12469-1-afaerber@suse.de>
 <20210516230551.12469-3-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210516230551.12469-3-afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_071614_774886_FBBC202F 
X-CRM114-Status: UNSURE (   9.33  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 17 May 2021 01:05:44 +0200, Andreas F=E4rber wrote:
> Add a Rockchip RK1808 compatible.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
>  1 file changed, 1 insertion(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
