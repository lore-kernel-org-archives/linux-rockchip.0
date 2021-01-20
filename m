Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D723C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 01:45:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A68012245C
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 01:45:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A68012245C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AVHVstn8ObGaFW5ET/bXm+ddHCI6ejzDvEA+HTmSAkk=; b=xQwHn5M9hqvUjbF0UzL4d9ChU
	yv84niQK4W5etz36X3OROiTH43kGY4kpkjzCDlMedGcJl0zc6MNwUbdqn51PXZjVTv/8D9zDSLed+
	7bK613KUCVX0kQfgOJQ7EzAcMRWFP8KZyU1igzRJt8R6J6kOUzj4t0Opq/sLdycjMgzDNuLOSbkKm
	TkV88SuNK4ptm/WytS6mxBNAmYl7QCKB6Ys6GNvtvSIj1w0upO/ftmAuXftZusPeXS+7pbA6LHHIf
	sn2NFdwVMwWnYderGCWzOm+1wM5dxtOCnQ7dX/+ROcdrELBlClhmGEzF3i6XASDCnQ/a2UPAR8xvi
	3ida14ryw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l22YN-0008NK-4n; Wed, 20 Jan 2021 01:44:59 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l22YK-0008Mz-Ba
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 01:44:57 +0000
Received: by mail-ot1-f45.google.com with SMTP id e70so6439053ote.11
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Jan 2021 17:44:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4zFLIX6YbpN5aLim6yrRCBFClVwkiMJYaqWYmkOOPrQ=;
 b=gFDrkR7E0N6XzfVrqAWLaveYj6gZmMncuBqS9feQIfibZ9F07mflQS34gXkYUXezXv
 UzL3u4f0rrUxvD0Fvp65v0TgsutMzQ8jTd2awtcAYXml8x4Zd4LsTj6zKhrDeiqnPhBQ
 hard7R6755tOBK4YiaphTMMNrc013ZPuA48XiENGoas8ox74xD+jI6D+YsG2P0kQ3WlM
 GecIaplB9zOiU+FB29mJAuhXJmx+1fNpX9YNdStNAUe6Eilo0Yl//uDXAfb1pdMmbyg4
 D5JM5w+o0498Z2VlBmM33IIzQwpCwoSl77XG1Vk6YUK1fFkWOWFEJQf+nHHVyyNxM0KR
 vCsg==
X-Gm-Message-State: AOAM532AXJJSDHdyOyOMIo4DZGKljgvmggVhxshkTNRdQopyZUY+3EKW
 ijW1cFE1XHnVGN5Jrx4kFA==
X-Google-Smtp-Source: ABdhPJzNzLwDdCRWb7mfJZPjC5yXOTPWn6hRch00Trm6xqHb+giSCQZAzkcjk4lDkIWsGAcxhvOK9g==
X-Received: by 2002:a9d:313:: with SMTP id 19mr5381524otv.147.1611107095736;
 Tue, 19 Jan 2021 17:44:55 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s24sm99037oij.20.2021.01.19.17.44.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Jan 2021 17:44:54 -0800 (PST)
Received: (nullmailer pid 3016866 invoked by uid 1000);
 Wed, 20 Jan 2021 01:44:53 -0000
Date: Tue, 19 Jan 2021 19:44:53 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: powerpc: Add a schema for the 'sleep'
 property
Message-ID: <20210120014453.GA3706951@robh.at.kernel.org>
References: <20201008142420.2083861-1-robh@kernel.org>
 <752e9355-defb-6d3c-248b-f626247d4cee@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <752e9355-defb-6d3c-248b-f626247d4cee@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_204456_414852_AE183BAF 
X-CRM114-Status: GOOD (  12.84  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-kernel@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Jan 17, 2021 at 05:10:03PM +0100, Johan Jonker wrote:
> Hi Rob,
> 
> This patch generates notifications in the Rockchip ARM and arm64 tree.
> Could you limit the scope to PowerPC only.
> 
> Kind regards,
> 
> Johan Jonker
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/powerpc/sleep.yaml
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/powerpc/sleep.yaml
> 
> Example:
> 
> /arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dt.yaml: pinctrl:
> sleep: {'ddrio-pwroff': {'rockchip,pins': [[0, 1, 1, 168]]},
> 'ap-pwroff': {'rockchip,pins': [[1, 5, 1, 168]]}} is not of type 'array'
> 	From schema: /Documentation/devicetree/bindings/powerpc/sleep.yaml

IMO, the node name should be changed or just removed. The grouping 
doesn't serve any purpose and changing wouldn't break the ABI.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
