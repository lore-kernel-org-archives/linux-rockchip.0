Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1E82C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Dec 2022 16:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=um8+PycW6QOyvOgpCas71SmvmidaM39WauztF5V7tKk=; b=pWFjCrx/2ijKSv
	psuJ4PYp7oKuN2rBYp9C2mztVGFN26oq9y2xkYVbip7GkDOFyXn23zGvZluct6lUwOAGnCxi4/RLg
	z41FD/F3DcplKJBcL9csmJWsOlmhkZzd74ZPgcJ6QfgLzmjy1QMfaikbAtADex4wawJp5d6XDaZeU
	h4tP2/+o0WBVyDAC/SOq3staE/vQt3sKoHzniVRK6jrJ4jZkkZ0JAoMQtBhJVu/bY9gUA6iBWzszs
	7SzdvsPHfU982VIRW3xRjcYmFZDlE4n9Z8ZbiVHjGAP5zsqSRwKa89DH3peN5bVHm/LWAyOIiSjDV
	xOPrAcbDQJWilkmim6DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6DDO-00GFYt-W4; Fri, 16 Dec 2022 16:05:39 +0000
Received: from mail-oa1-f47.google.com ([209.85.160.47])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6DDM-00GFVk-Fo
	for linux-rockchip@lists.infradead.org; Fri, 16 Dec 2022 16:05:37 +0000
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-1447c7aa004so3754889fac.11
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Dec 2022 08:05:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eOSCsqaoeoIju0eLDf3WqxL6Do53Bv9D82WTM/iySek=;
        b=uEpAaagDbLRrwcpf0fr+O3aTvCM1/sBvc+kqwA52FcRwegXnenS9pj+oNyFQKwTlR6
         nSY3e9fXHhGIeIBqKLb9pfn85uZUvivKuU+BDvzj828exro/Pn9Ksi/952JV9xMFlTm/
         Clv2Z7P4JoiEV/wB123zuqpq0ulkVkExhyqNDVZ9oB9SdbKDNPijqr16yv/eyeNnxgM/
         /W+eOckJJk2/J5EdlnjAipJOKZ9dglSblMQg9c3Tf99GQkNqWWVYH/ep62YTkMrySxK7
         25Y68VFwhOLiJrw1w0jbVpoc8+Gpvm5Haawir9a/iBmViGReDS9ga7VOOn9Aj5W2ysbr
         3F9w==
X-Gm-Message-State: ANoB5pkJaVA9umJS+QqYOVmovOqidT6qzO2ojGnyEmQkZTBc9zU5Gceb
	4lAM5Ci0FGr4PrgEhWxtTg==
X-Google-Smtp-Source: AA0mqf6fQAQQ0eOGxAWHGt+fS4XPjjQEzyVhHbTXOdayWO2k0T+9QkpLSd0OFY+e0tZDdpj0DZznqg==
X-Received: by 2002:a05:6870:f29b:b0:143:d9f7:8127 with SMTP id u27-20020a056870f29b00b00143d9f78127mr16644708oap.42.1671206732605;
        Fri, 16 Dec 2022 08:05:32 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z21-20020a056870e31500b00148316f78fesm1124816oad.2.2022.12.16.08.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 08:05:31 -0800 (PST)
Received: (nullmailer pid 2826511 invoked by uid 1000);
	Fri, 16 Dec 2022 16:05:30 -0000
Date: Fri, 16 Dec 2022 10:05:30 -0600
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: Chris Morgan <macromorgan@hotmail.com>, maccraft123mc@gmail.com, heiko@sntech.de, daniel@ffwll.ch, sam@ravnborg.org, maarten.lankhorst@linux.intel.com, dri-devel@lists.freedesktop.org, airlied@gmail.com, robh+dt@kernel.org, linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, mripard@kernel.org, thierry.reding@gmail.com, tzimmermann@suse.de, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH V6 2/4] dt-bindings: display: panel: Add Samsung
 AMS495QA01
Message-ID: <167120672298.2826350.15042409228492859514.robh@kernel.org>
References: <20221215185211.1560736-1-macroalpha82@gmail.com>
 <20221215185211.1560736-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221215185211.1560736-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_080536_550776_35966C09 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
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


On Thu, 15 Dec 2022 12:52:09 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for Samsung AMS495QA01 panel (with Magnachip
> D53E6EA8966 controller IC).
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../display/panel/samsung,ams495qa01.yaml     | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
