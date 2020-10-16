Return-Path: <SRS0=QPul=DX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F84C43457
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2020 16:07:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0A216207BC
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2020 16:07:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="YsY++W5j"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0A216207BC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LbxMmuUE6HXsWH3xm6F/7C4cCE6puikJ9yM3ksaOAd4=; b=YsY++W5jSLnb2AL00CQMi+DN4
	Q4hHG3TOZWMctqvlCdyphTh8s+6vDaWsQqcvJOzIFYyo6E+8wAaZnTTQdfn0slvmzrBCVuyMkyidN
	xxwfoUIIVrlV3YvWK2SUfPFfOGxt5Kt8wMg5oVXm1N4jMEw8lhGg91KqXtyddgI5vMcUJTFQnxdnQ
	3yIBgFuxRIRAL/LgRGbhSOovPYCMLfp1S+e4drrRzF2HKRGJ0y9TN71r0oU0BpaBvCqkEjpWU70wn
	R0u1RcuWigh+G7V7UeGPIHhiGFal0g1hHVZi+iMIt5ZbwN25QcNjSRbYGnmdF/aFQFtawQkRfLQ6I
	2qAGk3bnA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kTSGS-0004T9-B3; Fri, 16 Oct 2020 16:07:32 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kTSGQ-0004SY-8j; Fri, 16 Oct 2020 16:07:30 +0000
Received: by mail-oi1-f194.google.com with SMTP id w141so2998978oia.2;
 Fri, 16 Oct 2020 09:07:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FdAnypayCNAEHSt2e5tstCFOMa3BUpSuCuXAQeatv68=;
 b=Ohm74Pi0EeUcu0S3nQlyhjk2IGCcqwVLxPZJGxO/LvrxF/CsoqlOEriLNL7WcJ3CHa
 R/Kf3JCVDzL+pfKnVtGlPwolMhzjnwwweJJsKu7xziUPdPF8waKXxoVcrrmL2HJBJn+r
 W8maLIjgNuTiUZIHkXIxhzWkBRXQBX7+TeecEKDAZTuO/tJq+Yr8oUUfQ5Dm73ohfAck
 RFrBY0xFUGldp8gNhE1sf0lzoLbDo1QMeNDZoWzxvn+FSRevGACoZTTmorwjSn1A9pQ2
 /afFOG7dZDAqhEELZE8GZmLFieKAbmmPUdS8tKwTx8wtzLTaHN69b9SGDX+Q542Orslz
 YVEw==
X-Gm-Message-State: AOAM531hfmJaWG8/14Y/H/ipSuf26Vuxkzg3SodW6FeevNXNLl6vtnNi
 VOJkajuvDpb43i5f0EtbWkP4VqzmPw==
X-Google-Smtp-Source: ABdhPJyueM8m+wzO38JzNm013LzdtBhgW4tkYxr+nxNYXJKypyowhgl+vsWfboUwF6MtrbhNisZWeg==
X-Received: by 2002:aca:c54e:: with SMTP id v75mr2984866oif.134.1602864448669; 
 Fri, 16 Oct 2020 09:07:28 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t29sm1088993otd.51.2020.10.16.09.07.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Oct 2020 09:07:28 -0700 (PDT)
Received: (nullmailer pid 1499812 invoked by uid 1000);
 Fri, 16 Oct 2020 16:07:27 -0000
Date: Fri, 16 Oct 2020 11:07:27 -0500
From: Rob Herring <robh@kernel.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH v4] dt-bindings: power: rockchip: Convert to json-schema
Message-ID: <20201016160727.GA1499240@bogus>
References: <20201015101944.407487-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015101944.407487-1-enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201016_120730_349201_C687F4B2 
X-CRM114-Status: GOOD (  19.54  )
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 dianders@chromium.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org, Caesar Wang <wxt@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 15 Oct 2020 12:19:44 +0200, Enric Balletbo i Serra wrote:
> Convert the soc/rockchip/power_domain.txt binding document to json-schema
> and move to the power bindings directory.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> Rob, I didn't add a number of clocks neither a number of pm_qos because will
> be a finger in the air number. If you still want I add it, I can add a
> number based on the actual users of this binding but no guarantee that
> we don't need to change that number in the future.
> 
> Changes in v4:
> - Use hex for unit-addresses.
> - Use space between compatibles in the example.
> - Define child nodes for nested power domains even are duplicated but
>   more clear that adding a regex scaped to be a valid URI.
> 
> Changes in v3:
> - Fixed tab errors found by bot
> 
> Changes in v2:
> - Fixed a warning that says that 'syscon' should not be used alone.
> - Use patternProperties to define a new level for power-domains.
> - Add const values for power-domain-cells, address-cells, etc.
> 
>  .../power/rockchip,power-controller.yaml      | 283 ++++++++++++++++++
>  .../bindings/soc/rockchip/power_domain.txt    | 136 ---------
>  2 files changed, 283 insertions(+), 136 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt

With the indentation fixed, 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
