Return-Path: <SRS0=+3Ix=ID=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34F9DC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 19:13:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CEAB865074
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 19:13:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CEAB865074
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pd5FC8R0EQGR9bzWGHJT9yKOisFNlWET+/6IiJyvgJE=; b=gqAc2JUl/cDmCCXc/4+kHoYm9
	pBSByMYUxNUBxsjbWH9tQ15cyTXsn5kCtRlgTaiOprotWNcCtQXbgluNaHlc55XmcGlVey9HrOUQG
	zYQ1f5yhQ1t/1XKG8IFRTsdNKoeTN7BnrSWJiIe25FDcYDcSh7fkHnKfUdO1qsthuoojsOQul7NbZ
	2qlCuRG16naLApXTJUsbk6cQevQpnQqK9eywYj3xHGXxRNVNjd5765txBXmWQsFNMb9GbVYaPg5SB
	eJPWbHrkVGqr8beg9sP0XiNw/IdYNebKDlDieEl3NWtzbjOTosbEVec95hsgqN3qoCou4QzJM3DzP
	EOnwgw5ag==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIFtV-00G8uA-S0; Fri, 05 Mar 2021 19:13:49 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIFtO-00G8s6-8t
 for linux-rockchip@lists.infradead.org; Fri, 05 Mar 2021 19:13:44 +0000
Received: by mail-oi1-f182.google.com with SMTP id x78so3696698oix.1
 for <linux-rockchip@lists.infradead.org>; Fri, 05 Mar 2021 11:13:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7j21bnY8V6XoojzoBkuZb1Em80loFildh8CKtjCoQFY=;
 b=kiRZE+WK12kX09I0CEEEEoiJig9RfLELmUIyTNt0ggQH7wVLzCRCCjHscPAf8db/qb
 O//LhnY/Z+nCIG1XAbJvjR4SuwIqjx/48tfr2yivlLq21BbLQJBInKluqJ9G9z7geRiY
 iHsPPZ7tSsgbOIhSbKDIhPuQiPozSAppskJLnhCDCWyqNXEWQD8gseETGo14bBCOy8no
 JZql1HdqpD66X1PmmB+DFgTsENwWJ1Gy6NnDDBmPpWJmD9wPVpiVyaepPVXKeW7y+HbQ
 pdZkp7rHtexQTqb3JTnYHsiHUIXFo0EM721D9fWcC+zMrSkcndFfFjZbclanahOEv5q2
 D6BQ==
X-Gm-Message-State: AOAM530bAE21Ho1Ofq9CI+UuTwbSQ28n8qEtPTq5v2QK3RQU+iIvebGk
 /qijVv3O/Gl/otVEKhn4Nw==
X-Google-Smtp-Source: ABdhPJzdQQd2b6iohPA/qBq+VyyV2jEDmlGbzbgOGcsS+r86TXvBx5D0DH4bTuYrinqaApp6cKEM0w==
X-Received: by 2002:aca:5cd6:: with SMTP id q205mr8201202oib.94.1614971621083; 
 Fri, 05 Mar 2021 11:13:41 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k21sm763429otl.27.2021.03.05.11.13.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 11:13:40 -0800 (PST)
Received: (nullmailer pid 494318 invoked by uid 1000);
 Fri, 05 Mar 2021 19:13:39 -0000
Date: Fri, 5 Mar 2021 13:13:39 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: ezequiel@collabora.com, robh+dt@kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 cmuellner@linux.com, kishon@ti.com, vkoul@kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: add yaml binding for
 rockchip-inno-csi-dphy
Message-ID: <20210305191339.GA494261@robh.at.kernel.org>
References: <20210210214205.2496336-1-heiko@sntech.de>
 <20210210214205.2496336-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210214205.2496336-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_191342_523111_9A38732F 
X-CRM114-Status: GOOD (  11.21  )
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

On Wed, 10 Feb 2021 22:42:04 +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Some Rockchip SoCs like the rk3368, rk3326, px30 use a CSI dphy
> based on an Innosilicon IP. Add a binding for them.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../bindings/phy/rockchip-inno-csi-dphy.yaml  | 79 +++++++++++++++++++
>  1 file changed, 79 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
