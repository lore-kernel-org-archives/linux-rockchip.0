Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66B0AC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJgubYS21SyDi17SSY1XT2vvlsm1KJs9Xnls5Lap124=; b=SK6uFu07w31CFj
	zt3u43l375OUyRQLMRpSrVjUBNZAMpHsP9cYqw9c/TTSpJP5/MCCmHpYn/2bCDZnr4O43oummdob8
	X0wspFe4/UdZJIV3dcQk55TEO1opc6Uwg6E/bDrgpqoqQ7m5cFhzphJMuYmqdLDtraAYFk4mY+o6c
	S0KYmBSjpJZiFTWEZfTMCs67c4gN48G+SSdHnAhPWQsUdxyQJ0TFOjidWRko8a94hp2kzIMKfr1YU
	nlTLeQxljAOGxI09Up+kOYMCGB9vhWjEN7NXMB/csvC+8I+TpMLARnUl1iPWPE/QkuaucaDC+Kh91
	lMp7+N6F+ED2g6da8APQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbRA7-00G6DD-Na; Mon, 04 Apr 2022 18:10:47 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbRA5-00G6CU-VU; Mon, 04 Apr 2022 18:10:47 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 88-20020a9d0ee1000000b005d0ae4e126fso5786092otj.5; 
 Mon, 04 Apr 2022 11:10:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=G0RgFfB88IxA96E+rK9rj+vt/jiIu7zVdnRSF6wl4nk=;
 b=s5X10IJgv7pR6p08sTUXC6QrdHi4+u7Iz/5T/xCosfXzl8Z1dxi/gvXvK2e8PQ2H2l
 MEpPr6Sx/nEj2xRVglbibLcbts+C9AtHJcB4hhrB0LlBcIsSz011KBZAyLBQ9NDlXpmL
 8UHTTB9e04znFg1Wk2HwGB91lTVYKNA1fBrjzjKC1n1idaTbR0jGNmMkQ64AjBOIpC+h
 Mbwc4pFFwcCfrslk8TkYrggGXFXtdbFU25Qj4Jz+sQ1ukDsE5FU97LgbYGaG1stlC0ho
 asMiTXuY/aPHmTNhFMBTApcSBdTuVGGm4xLdJrSpzjZvlDKWOmp+DvvvrK3u1KvIFmCZ
 TrrA==
X-Gm-Message-State: AOAM530zm5Li3WDImWxOeJuiv4ScQtklTntu5k1aPTbce0YcKiHYaujq
 uaTrTyT17B39kQn8EkL1pZTnrDwT9w==
X-Google-Smtp-Source: ABdhPJyz+du1PDetPMb0yA4IHexN+hr9rTsyusvv+hG1hp5UpyCr1hKgkqUziVw9bZUCG92xFnwWPA==
X-Received: by 2002:a05:6830:1e8d:b0:5cf:b0e6:82ed with SMTP id
 n13-20020a0568301e8d00b005cfb0e682edmr308936otr.177.1649095844556; 
 Mon, 04 Apr 2022 11:10:44 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 e7-20020a9d2a87000000b005af548abe73sm4957784otb.4.2022.04.04.11.10.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Apr 2022 11:10:44 -0700 (PDT)
Received: (nullmailer pid 1646653 invoked by uid 1000);
 Mon, 04 Apr 2022 18:10:43 -0000
Date: Mon, 4 Apr 2022 13:10:43 -0500
From: Rob Herring <robh@kernel.org>
To: Dongjin Kim <tobetter@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: Add Hardkernel ODROID-M1 board
Message-ID: <Yks0ox5gDKhEe6ka@robh.at.kernel.org>
References: <20220329094446.415219-1-tobetter@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220329094446.415219-1-tobetter@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_111046_051867_EF913EFC 
X-CRM114-Status: GOOD (  10.79  )
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

On Tue, 29 Mar 2022 18:44:45 +0900, Dongjin Kim wrote:
> Add device tree binding for Hardkernel ODROID-M1 board based on RK3568
> SoC.
> 
> Signed-off-by: Dongjin Kim <tobetter@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
