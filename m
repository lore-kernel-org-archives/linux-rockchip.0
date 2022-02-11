Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04896C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 17:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6B5k+tTXbF1xxly9eOMW5BZujvc+Y+nJ1+5GPbjD3ZY=; b=KcdYpoXGmpc/3J
	oGMRtA0U7iJ7hBWA8VsXZM4e/MYX9YX8nDujJ5lFT/++vufwCoRhvVhJR+p9JPNxlmiQjlqY5D+MO
	69XM8E9LHlAF/rp/vTz8cVBjyKPNDA1svSG1gW1eNP5X8lSJwAr9+xjLVCmc+zmcgZClCA5d8rSLI
	LKXHr16esvpA894E5gdXzDv/kUsEynoUiy/T0Z3N9K343smgDvYsQHQA2MmI+A0U/oICfyG9wRcG8
	lCKpwnh0rPcKLSchzeEfJc9fQW/bWmepWoP54O/mnWplI6ContZqWXFyDJu6psRKZG/cg0gV7Od4f
	66joMTEbRRBBQNH+klLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIZPA-008CN4-IK; Fri, 11 Feb 2022 17:08:20 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIZOu-008CK2-1c; Fri, 11 Feb 2022 17:08:09 +0000
Received: by mail-oi1-f172.google.com with SMTP id q8so10231930oiw.7;
 Fri, 11 Feb 2022 09:08:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=R7TWwHQgq/gUi7lhU9NsZIWS2INPHgAbX9uQVxuU8C8=;
 b=mboQcbZgY84JX/VoIV50plfPeuABqGcE80gBca7gveiyIwGx5YbdcDpLqzfVjViGsG
 j9/4GXQ9PnetBwiuVQdiMjq7n8oAPiuU302S7DCQG1tURz+jMmZYopcPUOsAGVoL4/8C
 px3JwRBIFB8CNcUmeh56YpdpjgiyJ7xcpVAR437leqxV/6XuQuykzLRccXmWLR2t1AA5
 KcX7+/5jMRVJCN+48vNKtLz60SgV07AJEUZQEtWFcjeY7tlvkre+bw0tVVbddEYPcDIg
 4sSTudRvOGoGOxTmw5I23e+5EILSeddv4BqfBCJkUwHlbin/RvXAkdOpi5DLaZZMQNpf
 a0pg==
X-Gm-Message-State: AOAM530zmn2BazTS/F/SMJW0B1XskLB1XUebcxFAekcgCTdXLBbqtZEb
 DcgGCgzboPWlfNB6k8hKEg==
X-Google-Smtp-Source: ABdhPJyxSa9G6VEbAaX4cveou0lyE+/EhRjxN4fbYgq4kSA+bQ00S52Xggx1BCfmuOEo2hhcrNR4DA==
X-Received: by 2002:a05:6808:221d:: with SMTP id
 bd29mr675535oib.63.1644599283411; 
 Fri, 11 Feb 2022 09:08:03 -0800 (PST)
Received: from robh.at.kernel.org ([2607:fb90:5fee:dfce:b6df:c3e1:b1e5:d6d8])
 by smtp.gmail.com with ESMTPSA id
 z4sm9269527ota.7.2022.02.11.09.08.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Feb 2022 09:08:02 -0800 (PST)
Received: (nullmailer pid 530607 invoked by uid 1000);
 Fri, 11 Feb 2022 17:07:59 -0000
Date: Fri, 11 Feb 2022 11:07:59 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: linux-arm-kernel@lists.infradead.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Liang Chen <cl@rock-chips.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Alex Bee <knaerzche@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 linux-rockchip@lists.infradead.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-kernel@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH v6 1/5] dt-bindings: gpu: mali-bifrost: describe clocks
 for the rk356x gpu
Message-ID: <YgaX7ze76nFtEcN9@robh.at.kernel.org>
References: <20220209215549.94524-1-michael.riesch@wolfvision.net>
 <20220209215549.94524-2-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220209215549.94524-2-michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_090804_108639_003711FE 
X-CRM114-Status: GOOD (  13.47  )
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

On Wed, 09 Feb 2022 22:55:45 +0100, Michael Riesch wrote:
> From: Alex Bee <knaerzche@gmail.com>
> 
> The Bifrost GPU in Rockchip RK356x SoCs has a core and a bus clock.
> Reflect this in the SoC specific part of the binding.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> [move the changes to the SoC section]
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  .../devicetree/bindings/gpu/arm,mali-bifrost.yaml | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
