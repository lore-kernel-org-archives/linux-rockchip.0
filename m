Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E44FC43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 20:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KIaT++bJvaNhNYtXCo+38OJbk0dlPtkJKErlivFCo8=; b=M8NRmthXofzUbH
	Oi3uVYmSjXXhh55Hartt2QxQtwhN19S61goKn67KDu7guKVECku1KpupwEr+BvO2V2OMA0h5gU7HR
	r6qvBSyz1cCLmHTPxWCS/JdwiD395AKU82CHnOoCZ51VQUHS0eDXrmDMhgaQwYIqxoIt+wwpm9qN0
	2aeUfly21MIlq9c3UTOrjE/KA6yz8t6s2UExkFC4pzdiqQDgPZg6bSgzKIia5cXnuM4X5FrZI3S7A
	S2X0PylWpIsOatT7IZ3bEDPZIAWhoiNfgJq25A5zI02BP+pkfmyzDl0zhFSCDcAoVu12FYM0SJi4b
	CcQEvPZpqxDuo4nuPy8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7N5K-006lo4-Ul; Fri, 01 Jul 2022 20:17:50 +0000
Received: from mail-io1-f53.google.com ([209.85.166.53])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7N5I-006lmq-MW
	for linux-rockchip@lists.infradead.org; Fri, 01 Jul 2022 20:17:49 +0000
Received: by mail-io1-f53.google.com with SMTP id v185so3270623ioe.11
        for <linux-rockchip@lists.infradead.org>; Fri, 01 Jul 2022 13:17:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=L+J73+vdV/PGctyRmhCgIGT9iR/WXHXxzhXGHKHUvwY=;
        b=ceu4paIQ+plVcJqhwUBJGx3pLbVyuTQy/I0/j/apxYkNU/mKv9JP+9umLlhdE3damA
         GQ5FAoSPPCpZh6awageKIAu7xomJS8LQOzEXZbLFu1krMc+QxYMthy10/yX6aW05tSUa
         z0G8ImF/RY9vjk4RQ2tPlpYx4QwqV4lWecgFJ8tfpzZzxDrbsj4ZQlyj+1KDFQqF1BtG
         bHzcXrEPiFvfvy5htJ6efNach0XRlPkyDL9wT2vJBiFNsxvbFlnup3eZkFw7JE+zLOv6
         tyGol1Uuq0lqmLZYV1gezZiDOtyWqrcRBc2VRkavs4NHgNsY+o+LdWPUGw+4ASlSUIXS
         Aqrg==
X-Gm-Message-State: AJIora+B8negXiv6C8eK4YMXtnToNdadDHs2LeZuVfNbGF3crvfE9ABB
	337tVMzKM20JY3ubsAq+8g==
X-Google-Smtp-Source: AGRyM1sVN6vixZJkx0n3n55NBj1VVJZFB80abfEjRsMa+IerrCpMxFINUJUSe7TfvsJe3mf+nfyCmw==
X-Received: by 2002:a05:6638:380e:b0:33c:bbf7:56c0 with SMTP id i14-20020a056638380e00b0033cbbf756c0mr10243381jav.71.1656706663566;
        Fri, 01 Jul 2022 13:17:43 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id s21-20020a6bdc15000000b0067533ab9404sm7279557ioc.16.2022.07.01.13.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Jul 2022 13:17:43 -0700 (PDT)
Received: (nullmailer pid 1450120 invoked by uid 1000);
	Fri, 01 Jul 2022 20:17:41 -0000
Date: Fri, 1 Jul 2022 14:17:41 -0600
From: Rob Herring <robh@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>, Helen Koike <helen.koike@collabora.com>, Paul Elder <paul.elder@ideasonboard.com>, Rob Herring <robh+dt@kernel.org>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 42/55] dt-bindings: media: rkisp1: Add port for
 parallel interface
Message-ID: <20220701201741.GA1450061-robh@kernel.org>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-43-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-43-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_131748_776214_56991758 
X-CRM114-Status: GOOD (  12.61  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On Fri, 01 Jul 2022 02:07:00 +0300, Laurent Pinchart wrote:
> From: Paul Elder <paul.elder@ideasonboard.com>
> 
> The rkisp1 can take an input on the parallel interface. Add a port for
> it, and update the required field. At least one port is required, and
> both may be specified.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../bindings/media/rockchip-isp1.yaml         | 23 +++++++++++++++++--
>  1 file changed, 21 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
