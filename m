Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CDBC63777
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 18:23:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3845920705
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 18:23:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="NQQCSvh0"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3845920705
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pUHRy+9mVvfu4NiCC0slm1z0bJiq8HD6V3kCV1f4S54=; b=NQQCSvh0Jb12LnhHyylUCpjgl
	o8lTn092MeNqtj3VUX88VnuDjiyaQ1scswaSYMZBI4R8DX/A9KJl5mVD5/OuRJkBnAwgfSb82EGrc
	jSD5N2HFjnRW9USj/ks6Vadbta17pdw56u154a3x32GuLA/F7JHbxDeXa/9W829rurnnU+oVnjVjy
	JsjIGwmT4yYuvIs93zYRuGbGu8Plz3zo8oAB0OrMzYVH/BcZJlSCxMZtqDpW73wThJ3EV9tGdUgkA
	uLj3NKCHNdTK/ih+hQT8P93YlYKxcXgWeMTouBlPgpmNNAkgm1wmMS0b8cTu+1fSnEfWtSmy6FP2h
	eb8pUtWkw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjnpn-0002UW-69; Mon, 30 Nov 2020 18:23:35 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjnpi-0002SR-4o; Mon, 30 Nov 2020 18:23:31 +0000
Received: by mail-il1-f193.google.com with SMTP id g1so12247837ilk.7;
 Mon, 30 Nov 2020 10:23:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0neMxzWOSFLOXSknMHOSEKClv5G9ep++zXnTP/Rc0O8=;
 b=T2mjrhcPLoi98qq06qhm/nx+Ijr1WliYpjIbgebTmxoULR/AoAXLZV7zicqabkBiZz
 5YN09l1t00FtBX5JdJinQ6Dow5NTGfTgWTd4mJnn6FD8X3ArGgVH297aeGw6u3JDs6n8
 3tSuacyiQ/X4AStBarwqSH64zgWd8VNNp3wuLaaVDTnvNk3kZwLkHWREbuiAwdU9uGqJ
 VUsKR2+LT/BzdGnoBsfujYf8W/gQGp5AcTNbq2/yhkrQa85vCBAm2hnY7TIYwuVzS8xn
 b3TsNhrek/k2Zwri9nL9e+UQk86LFL8V2JiklciY4h0a2JYtaQsi9CLwsX87EPE+HtLy
 Nvgw==
X-Gm-Message-State: AOAM531ua3DES3XruQpwhgl47zem4fLA3Pnn0r8Z3OQUfQfm+zMMyEwe
 7dI4yGt8En8Kfnzmi3EqvQ==
X-Google-Smtp-Source: ABdhPJzHXlx/TfQVfpIfEHQeSQemYh6/jCa4ib42N0v8d/w5/13Z4A2a0QvXXmVQUGCBpZNO2HvgFQ==
X-Received: by 2002:a92:40c8:: with SMTP id d69mr19411707ill.66.1606760608911; 
 Mon, 30 Nov 2020 10:23:28 -0800 (PST)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id z6sm11205177ilm.69.2020.11.30.10.23.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Nov 2020 10:23:26 -0800 (PST)
Received: (nullmailer pid 2759200 invoked by uid 1000);
 Mon, 30 Nov 2020 18:23:24 -0000
Date: Mon, 30 Nov 2020 11:23:24 -0700
From: Rob Herring <robh@kernel.org>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH v14 1/8] dt-bindings: mtd: Describe Rockchip RK3xxx NAND
 flash controller
Message-ID: <20201130182324.GA2757731@robh.at.kernel.org>
References: <20201120095613.20172-1-yifeng.zhao@rock-chips.com>
 <20201120095613.20172-2-yifeng.zhao@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201120095613.20172-2-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201130_132330_263169_29CB58E0 
X-CRM114-Status: GOOD (  16.83  )
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
Cc: devicetree@vger.kernel.org, vigneshr@ti.com, richard@nod.at,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 20 Nov 2020 17:56:10 +0800, Yifeng Zhao wrote:
> Documentation support for Rockchip RK3xxx NAND flash controllers
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
> Changes in v14: None
> Changes in v13: None
> Changes in v12:
> - Fix some warnings while make dt_binding_check
> - Drop a allOf defined
> 
> Changes in v11: None
> Changes in v10: None
> Changes in v9: None
> Changes in v8:
> - Fix a error while make dt_binding_check
> 
> Changes in v7:
> - Fix some wrong define
> 
> Changes in v6:
> - Fix some wrong define
> - Modified the definition of compatible
> 
> Changes in v5:
> - Fix some wrong define.
> - Add boot-medium define.
> - Remove some compatible define.
> 
> Changes in v4:
> - The compatible define with rkxx_nfc.
> - Add assigned-clocks.
> - Fix some wrong defineChanges in.
> 
> Changes in v3:
> - Change the title for the dt-bindings.
> 
> Changes in v2: None
> 
>  .../mtd/rockchip,nand-controller.yaml         | 161 ++++++++++++++++++
>  1 file changed, 161 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
