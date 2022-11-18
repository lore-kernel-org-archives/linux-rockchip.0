Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E220C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Nov 2022 13:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KtfD/S8+1TwWRVBblkG9EsYQwjAq5FiXBP9ZPm5IxXQ=; b=vM5WevUeSrrpa9
	iYnLpCCU9bJTDhlYtYe9zpdDmNZRVvbkqlszONcNS8vVBWEC4gFn/mmZMhH+k81aY2G78DWoXrp16
	m0JNkCCG7qYIXqaAtd1MM9pfWelcC02u6kGIYDwFZevwGhBZRQ2ZybaYQNgB8QSs3L/6/Slyl2Wgn
	8YYbL9v8RHOzC8dVh1UwIMJYvChfJhghPruRe3aTYfTl+VkWCMzFgbYryPMLPtiHjQWr2lVZjlalf
	9Sm/e97mZKbDKW9b/40CtRH/g8nbeWL5BGf+KERwolUisW2nkiyKLr6cOgZcYtLuFehcbbMGhvBQ5
	9T7EW8LO+hDy+JrrFkQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow1Sp-0048FV-BM; Fri, 18 Nov 2022 13:31:27 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow1Sm-0048CQ-EG; Fri, 18 Nov 2022 13:31:25 +0000
Received: by mail-ot1-f47.google.com with SMTP id t19-20020a9d7753000000b0066d77a3d474so3043042otl.10;
        Fri, 18 Nov 2022 05:31:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q0Mpv79OC10rvhUXLA0ACmvYs6p261vAofPBrF9lFpY=;
        b=zG63CDWR4pP8X40I2a+WwAzG5GwgDdZzww3UhjUlNZ5zHnGRV/IAJKnhZABq2u29MP
         QUvhqYueY9Mp93V7jCdAjLZJH5DXJqwJFolOFQRjHpg0E2q5osVg79fbyEFdGFO/dlYs
         r4rZj+U68n07ERETyy9pmkYbIp3ulUBGRn2NhQmHwAA2BmkfrTolNlSmiiiOOq6RULZG
         djqdnb4dSIby/FRs8RGRjoyFw244PNM3N6HOEgcJY6cMC4CAY+wf22yZroiYfM47VPed
         NaM3+ILKJSPxB1OWZFLdUisEfZ7eFhX54gnPs1xcsDA1Nasbm6QmRyv7SetG3Te+LZWq
         swKA==
X-Gm-Message-State: ANoB5pmh+NqzjpvwrasghSiwyAXQJHOXGLoKIfRbFFDW00/VIo6WiJ/T
	0iWSkS6abaqOvy3ICr/0gg==
X-Google-Smtp-Source: AA0mqf4sTJcECMo1xKL09IoTWj/i5Q4HzYzaQhgjRACHz9Us2B9+woBC7DGak4TQZHl4kO19R4t7tA==
X-Received: by 2002:a05:6830:6407:b0:661:8fc6:2d77 with SMTP id cj7-20020a056830640700b006618fc62d77mr3756668otb.288.1668778279794;
        Fri, 18 Nov 2022 05:31:19 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x53-20020a056830247500b0066c7733be43sm1536301otr.30.2022.11.18.05.31.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 05:31:19 -0800 (PST)
Received: (nullmailer pid 1482192 invoked by uid 1000);
	Fri, 18 Nov 2022 13:31:19 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Dafna Hirschfeld <dafna@fastmail.com>, Helen Koike <helen.koike@collabora.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-media@vger.kernel.org
In-Reply-To: <20221118093931.1284465-3-paul.elder@ideasonboard.com>
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
 <20221118093931.1284465-3-paul.elder@ideasonboard.com>
Message-Id: <166877740033.1426068.13359373358036408238.robh@kernel.org>
Subject:  Re: [PATCH v3 02/14] dt-bindings: media: rkisp1: Add i.MX8MP ISP example
Date: Fri, 18 Nov 2022 07:31:19 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_053124_498854_449F40E4 
X-CRM114-Status: GOOD (  16.03  )
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


On Fri, 18 Nov 2022 18:39:19 +0900, Paul Elder wrote:
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> Add an example to the rockchip-isp1 DT binding that showcases usage of
> the parallel input of the ISP, connected to the CSI-2 receiver internal
> to the i.MX8MP.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../bindings/media/rockchip-isp1.yaml         | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/media/rockchip-isp1.example.dts:199:18: fatal error: dt-bindings/media/video-interfaces.h: No such file or directory
  199 |         #include <dt-bindings/media/video-interfaces.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:406: Documentation/devicetree/bindings/media/rockchip-isp1.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1492: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20221118093931.1284465-3-paul.elder@ideasonboard.com

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
