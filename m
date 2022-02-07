Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDB70C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Feb 2022 22:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChCgg9HaTZ2rr8XSPx0uTTu6F71l2eWGp2/SIC7ltEI=; b=I24818w+dUwQX7
	f33r+43AnNhrK39pVH/xPzUaoRgAcdeRMuAFBbjxFseeiwrB00D3P9ghhbScdbrhTq2S269zgWMtg
	ZVxxwyszrnJcb8kIoWgL4S+hbuqdOOSQOE9AGIdL0/kAVYuSEnSzFFf7FvWUoNkYH7Pu2b4UfR/QG
	xFQL7JS1yXOepolaY/MKfEu80PGZWoPmjDc/QZ/RMNFmOInFxFlBlDfdOq8iM+s8WtmphL8Qq9ByU
	YniTqo89ZIuwk7gpPJz1vmJ7IVTg0plE1nS5DfbIddYQ1V15al4SL6zZDzhP7Q2Rna0U9z8gXVHw9
	fgG2wcjKgu1U+xN0ddeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHCvv-00BuWf-TM; Mon, 07 Feb 2022 22:56:31 +0000
Received: from mail-oo1-f49.google.com ([209.85.161.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHCvt-00BuVv-Jz; Mon, 07 Feb 2022 22:56:30 +0000
Received: by mail-oo1-f49.google.com with SMTP id
 c7-20020a4ad207000000b002e7ab4185d2so15479377oos.6; 
 Mon, 07 Feb 2022 14:56:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BmFI+q45YMcvomfhfLrjDMiP1+XWJx7omIVN2lFQ8M0=;
 b=N3Sr5Vzq6xhvzHhHqKeqoPFJeQvRcw9rQG6LiMQrcpixGgsQrbke8xfjhCQ84gUftZ
 CX2Ir25xnd+E6Sb19rAIain4PB3ezR076pEUdBdZYFAXsTk7m4ByPk6C3rFcii3E86jT
 FXrG8hXXRAQEmGae5M2HU9k9arB4DQPiVC+Ax4GkDmrZABPefd8L8ZYCTnH0999QkkeA
 nS6U6p3Az8nQRHB66miTidyLEePTq/tTfNA8MeyvW+hCywAaP/dYwyZKRv7g5JBTnEhZ
 WNer0xblrcjCC+EVumkPCidsIarV8it8mmilITkmKwXARuP/CVjvBl2txvRswpl6rtc3
 gLhA==
X-Gm-Message-State: AOAM530XgRcZCtM5/Ylf3E1ldCA+j+vDMRmzQdv0LbNiV+d5TlQgr4oV
 8ZaKvGBuofI5DoQaGZrQsg==
X-Google-Smtp-Source: ABdhPJwpY3DiOxQGHIBlNjzmF3SPnnu9F68MKT/GtouYtpE8Lp2q3KAgvciQZOhPYzX5nq/FLGuSTA==
X-Received: by 2002:a05:6871:581:: with SMTP id
 u1mr390160oan.139.1644274588097; 
 Mon, 07 Feb 2022 14:56:28 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id bh7sm846291oib.6.2022.02.07.14.56.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Feb 2022 14:56:27 -0800 (PST)
Received: (nullmailer pid 1082342 invoked by uid 1000);
 Mon, 07 Feb 2022 22:56:26 -0000
Date: Mon, 7 Feb 2022 16:56:26 -0600
From: Rob Herring <robh@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: linux-rockchip@lists.infradead.org, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: rockchip: Add BananaPi R2 Pro Board
Message-ID: <YgGjmtyvioH8Vjrt@robh.at.kernel.org>
References: <20220123135116.136846-1-linux@fw-web.de>
 <20220123135116.136846-2-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220123135116.136846-2-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_145629_686869_86D94860 
X-CRM114-Status: GOOD (  10.48  )
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

On Sun, 23 Jan 2022 14:51:15 +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add Devicetree Binding for Bananapi R2 Pro Board based on rk3568 SoC
> 
> Co-developed-by: Peter Geis <pgwipeout@gmail.com>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
