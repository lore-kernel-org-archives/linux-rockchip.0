Return-Path: <SRS0=BK0I=JK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 821FDC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 13:37:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4F3E760551
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 13:37:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4F3E760551
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=prQKvrvBS2lehMD47zWraxkuE7UpoZax4N0iMSWEn8w=; b=R1YSmCGMl6v//l4zo73+cfewO
	w8MtAiqHpOUY2N38Eqt62h1n9opuhsWObGT/PS9zAHMbCywHiYWjvfnmri4hfqMnQcCOY1XCZE08k
	htprLhGN53yP2b9kNxAcVwcCkCQ3vBAlrMo0ukm2/2l53pQQvTYDo8EbYVqis+ZCoIguTuMRFIPZe
	0PjgHCmzzyfJIxVQUdce7kTehyoufbbuhOXHSVW3uoeTwl2TrK94T+aS6MXMYZAzNxVTsyUwNdaLy
	3yC201Bu9hCmSxtbMcQoE6a441JQYshEZrrUpMZS8vVYh1thtqRskMdSPTXNgbf1HcfqYD5h9e6wO
	MEPZNhwew==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWJEY-009Ov0-HE; Tue, 13 Apr 2021 13:37:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWJET-009OtX-1P; Tue, 13 Apr 2021 13:37:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Xn+qkSOy3KWxo2N+mRffQC+USY48yDM1PS9olUJC/UU=; b=ndfKhyS4OWZnRpQZ+VqLWhd5xs
 s2sK7SEyhNXdISwSbVCcdaL2eCArt1J98CdboMGhFiZrJi9r/kvmmeEgsxxfHdSm6FeZtY3U/oAVP
 1fVQ9pITizZk02Ln7MgqKSODYYyttSbCAV7NH4ReyT6yh0H/+b8OpRGA0PvKVLJe3/JWTMDoKC24E
 cxqVNy3fnIIbnqnzJCz/eORNSyhiXweqa/lEuR4HMbuyD8Tg+pVyLNkb3G0bzH1ErA/tTQ/2nzHZL
 rzEmPzVpAL7Cd4LhDzGZ/emlcDvX4eyYflqPTU9MPgDXZiO6/sHaU/3q82T3zX5hsfdoDiU1m9OgR
 xWkH+0MA==;
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWJEQ-00742P-Kh; Tue, 13 Apr 2021 13:37:31 +0000
Received: by mail-oi1-f174.google.com with SMTP id l131so11960715oih.0;
 Tue, 13 Apr 2021 06:37:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Xn+qkSOy3KWxo2N+mRffQC+USY48yDM1PS9olUJC/UU=;
 b=W3b3YXMZzzSCXViF2S3UDphCCykGlqlrkoyVljUUhs/2JTe5zSVfJKc0ZbngTw1LWi
 1CGV++2wD+8t3ycOUp0vw0LPHk6KyZhmAk1QUkM2VcyuFncy4MktK8NSU/dL4sSL+gPA
 AM919oqE8LCogdkJjAXDGE1geHxxH5tR6WiFDNxJmJzighQ8TlwB34prjwNe2lB9Wqpb
 DEDo2DC2iBIhVxjY4hA5TX+sxuUJyDdjjkljHVLSTKAkKxn28u00LUOEWC0+bjueAyNu
 xyERoe7N67+4JECxp1x5Xa1yrQFQ+JF6l8uM8c0jJwK/Md7M1Cs6pwGJGlbhT5vwqtLD
 UGXA==
X-Gm-Message-State: AOAM5310KKl7GniXYcRr+HS7dVTzlXM9rPBx3fvkGlVtBPb/1SCX10WS
 DE/dWKIvqMDMIvQnq+LssA==
X-Google-Smtp-Source: ABdhPJw0hyiYZe3k60GOvhnPdj8SpMVm2NrmkXHH8u9CXJ6mTgQ6LCCmoj3obd9wm15J9X4nBnBsUQ==
X-Received: by 2002:aca:3303:: with SMTP id z3mr52906oiz.140.1618321048567;
 Tue, 13 Apr 2021 06:37:28 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x2sm3486274ote.47.2021.04.13.06.37.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 06:37:27 -0700 (PDT)
Received: (nullmailer pid 1535101 invoked by uid 1000);
 Tue, 13 Apr 2021 13:37:26 -0000
Date: Tue, 13 Apr 2021 08:37:26 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
 thierry.reding@gmail.com, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: pwm: convert pwm-rockchip.txt to YAML
Message-ID: <20210413133726.GA1534983@robh.at.kernel.org>
References: <20210412200155.5316-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412200155.5316-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_063730_699912_F11DEB46 
X-CRM114-Status: GOOD (  14.57  )
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

On Mon, 12 Apr 2021 22:01:52 +0200, Johan Jonker wrote:
> Current dts files with 'pwm' nodes are manually verified.
> In order to automate this process pwm-rockchip.txt
> has to be converted to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> For some SoC nodes this patch serie generates notifications
> for undocumented "interrupts" properties shared between
> PWM channels till there is consensus of what to do with it or
> someone makes a solution for the whole PWM block.
> 
> Changed V3:
>   fix mistake with compatibles introduced in V2
> Changed V2:
>   changed schema for clocks and clock-names
> ---
>  .../devicetree/bindings/pwm/pwm-rockchip.txt       | 27 -------
>  .../devicetree/bindings/pwm/pwm-rockchip.yaml      | 88 ++++++++++++++++++++++
>  2 files changed, 88 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.txt
>  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
