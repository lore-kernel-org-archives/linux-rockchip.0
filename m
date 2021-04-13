Return-Path: <SRS0=BK0I=JK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CB27C43460
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 15:22:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B90461244
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 15:22:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1B90461244
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+miNNHqynoxyzSavpCh9gPf+DdOu0nX151rVJpwBfeY=; b=U/BwM8Hlp2lR4xjigpn0Aov7l
	nHAbyBzKGoHRJNTBb8sHgNRwkp8Aaaso2Fah+BqekKKJAy5T1Mb3dnOGgHNhFw7m7tnwBuDIxh/jL
	Mw7TXhPyis2cgNIdEA6JW5xdSAP/RZW59/5ZO6UFLQlZ3YYdwfRsrvvMlWGkKHwZyNUdEuzLBFKjk
	gBV74fzDpqqtvFcvAsEb4PeyXrmNQtS46LFNYMsh9s3XG0b3PYGalzI4L3vOseAdppyw4WH5J102/
	06JeJ/v0eNZU9WmLKpX48my2S+Os9edrCroUcZJudEf/0iL/qpiGj5L5g5WQcxJ3HCIeU9FJBvCvA
	dwRFZ0eGw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWKsQ-009dPn-Tn; Tue, 13 Apr 2021 15:22:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWKs6-009dH6-Ak; Tue, 13 Apr 2021 15:22:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=M5LRlWktXGo8iA/Vsd38aM0WTulSItsG6aBATWd3DBQ=; b=FBbfWEMzL2OW8HItriTD18Vq4Y
 JkN7PZcnvArGa5hdY0U/Rh/FgMwAxVVEghvu7Gss8Xa3+UToughLbBm5U0AtKUqfRA+XhbQjvoc1G
 92hfGY+T23OrHnF4iSqWxPaqUwlAztQ43DgeHNwysp9uwwPicnocv8EArx3mgmDRTah2D/lC8RuZN
 Q3abtg8o/WUR9AZ62Z7Lc5ojp9hM94r2y9UpT2A/cn6BZWth/FkJlGT7FZ7mzibd7nCvj/nDGf1hb
 +v0VMuaBxQBsPQhG5bi0vmpaqFo3X0CTro5uWmC19saI1CWEQE3oDeoHcljI4Uzjy9Dm3Py0Yg71X
 +booVBXQ==;
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWKs3-0078dR-Vf; Tue, 13 Apr 2021 15:22:33 +0000
Received: by mail-ot1-f52.google.com with SMTP id
 c8-20020a9d78480000b0290289e9d1b7bcso2345087otm.4; 
 Tue, 13 Apr 2021 08:22:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=M5LRlWktXGo8iA/Vsd38aM0WTulSItsG6aBATWd3DBQ=;
 b=b+vrfsE8nN4TVpLVTDA6RSIFubygYNHjT41nzKaaeFq6zI0dAyRAE02kEdbFwQqj5y
 GKxKXlypxgILtPSbXCgdAzgqNED5UgtnVsLvD5v+s0Wh5a5806AMeeVcgsPdsVLJcNYZ
 dHDfMmeV5xbC/JxneitN5ScGC8sWA83CTZhAP58gHGhh+Vb0GmZWmcZdSPuY1gMQQWvH
 DXbqiAU1Ifc1o/w1qhlVHbzBC7N++Hq8eeT/GhTE5brcnIWIFJ+OHUSus291vmSaUEoa
 CAj90gs8OBUuXq9uVJ4BjGeYwntHN6qqbvdGczAVtLaoIug0jbWkZwpJleAikHX9MA7M
 rlsg==
X-Gm-Message-State: AOAM531bfcHsdHV1XMAn0OFf0QePXFHFrcHc69YZv5gWqfb7wiTz8bDX
 YRAkAmhIS7wGHTaRSCYlvg==
X-Google-Smtp-Source: ABdhPJyE2+W7kpfnEGRVoGJRA12pV2gliQPOhMv99rM2tC2m7lXueFZ++JfkU3wSS8oiV9TXYajDtw==
X-Received: by 2002:a05:6830:3115:: with SMTP id
 b21mr28240296ots.318.1618327351138; 
 Tue, 13 Apr 2021 08:22:31 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t3sm579967ooa.18.2021.04.13.08.22.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 08:22:30 -0700 (PDT)
Received: (nullmailer pid 1702387 invoked by uid 1000);
 Tue, 13 Apr 2021 15:22:29 -0000
Date: Tue, 13 Apr 2021 10:22:29 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 bgolaszewski@baylibre.com, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, heiko@sntech.de, linus.walleij@linaro.org
Subject: Re: [PATCH v2 1/3] dt-bindings: gpio: add YAML description for
 rockchip, gpio-bank
Message-ID: <20210413152229.GA1702359@robh.at.kernel.org>
References: <20210412223617.8634-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412223617.8634-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_082232_038170_042708A4 
X-CRM114-Status: GOOD (  10.72  )
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

On Tue, 13 Apr 2021 00:36:15 +0200, Johan Jonker wrote:
> Current dts files with "rockchip,gpio-bank" subnodes
> are manually verified. In order to automate this process
> the text that describes the compatible in rockchip,pinctrl.txt
> is removed and converted to YAML in rockchip,gpio-bank.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changed V2:
>   changed example gpio nodename
> ---
>  .../bindings/gpio/rockchip,gpio-bank.yaml          | 82 ++++++++++++++++++++++
>  .../bindings/pinctrl/rockchip,pinctrl.txt          | 58 +--------------
>  2 files changed, 83 insertions(+), 57 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
