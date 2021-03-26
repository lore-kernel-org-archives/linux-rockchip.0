Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E207C433C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 20:06:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 032FB61A02
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 20:06:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 032FB61A02
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u7tXvtgNnq6qiKPSmT6jGBRGcTMhDWxrmCxbAGDtf5E=; b=dauWfYqEfu3kc5pYFu0DvTsCW
	WjMet336+wER2WKK5pEeD159vIRlLR+20tPPZxBp6PZ2YxcE3raoS5/A0MhkVQeCFUi5PX+gGHnsr
	yHnqZq0bCsEFsshu7nWiSQYcCbZaG8gjgN7kt5i6P07R3mQPnJMnRFKIgTqdX315tJ+U9C9bCB4lt
	vZuifdLzxzq2a8x3q3/bsPyiR+RJQP80x6ZidByNHS2ZDA7yilEiByLMM7Al5La7HeBNaREMPu+H9
	9o20+xX4w4C9HQdducuvMYCeuLS16QShFHwsQHooIE33Q2ew41TGlFmpgVU4oUa2ZNuQ777s5gM47
	zSJs2z71A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPsjI-004Ggm-FA; Fri, 26 Mar 2021 20:06:48 +0000
Received: from mail-io1-f47.google.com ([209.85.166.47])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPsj2-004GfO-4B; Fri, 26 Mar 2021 20:06:34 +0000
Received: by mail-io1-f47.google.com with SMTP id k25so6635876iob.6;
 Fri, 26 Mar 2021 13:06:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZPC6AhpeUK9aDOYittyj6FiD+H8vNNaEbL6HgDphH9Y=;
 b=mYyE7slpQnBMO7pPy0kPxjArpTTktRW6ZOXICl01D9xMc5oFa56polbZk+uE3TY7mh
 bsVicDm0krSyhc8v1h5OTqAHXmNl0SL0qvJ9ciLDg+XSEmg3tweWSRn4/i/cdz7KLg3O
 fRj9gtAxtZHJEKq+qSnQnB/Rps38ggGX1H5qxtZtYP5NV6ccQpLRa5rrFQ50Au2ntnLp
 0dpVfXravxA3dsNFaWpfYm2ZWyga1QZvVvUi5icjCkj7wt6QYSEFEP9AwkHYZXN4/xu1
 lmwc8WiM+Bo0nSOPH3rqRgQweDOtejwot/LrZUcpSep47+QFgThUEwZoS3OJEssWBnL+
 dKyg==
X-Gm-Message-State: AOAM531RPT1kw/a+ySNeZUxJsdDzB3s1Ux5Hy6MakxRpBOJJJ49RUy2Z
 g2R6jRnT2XTQqPNcOmLj5GEv5El+Ow==
X-Google-Smtp-Source: ABdhPJzyEzuLouL86I5aw/aN83geqOXKVBaxXOaOqVr7XPwcSkwq5woeldZd12J9taFb95HyphUP2A==
X-Received: by 2002:a5d:9e09:: with SMTP id h9mr12176395ioh.178.1616789190894; 
 Fri, 26 Mar 2021 13:06:30 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id y18sm4914955ili.16.2021.03.26.13.06.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Mar 2021 13:06:29 -0700 (PDT)
Received: (nullmailer pid 3781826 invoked by uid 1000);
 Fri, 26 Mar 2021 20:06:26 -0000
Date: Fri, 26 Mar 2021 14:06:26 -0600
From: Rob Herring <robh@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: heiko@sntech.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, cl@rock-chips.com, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, tony.xie@rock-chips.com, finley.xiao@rock-chips.com
Subject: Re: [PATCH v6 09/11] dt-bindings: power: rockchip: Convert to
 json-schema
Message-ID: <20210326200626.GA3776228@robh.at.kernel.org>
References: <20210326102738.14767-1-zhangqing@rock-chips.com>
 <20210326103036.15173-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210326103036.15173-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_200632_410078_ACC4BC0A 
X-CRM114-Status: GOOD (  13.37  )
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

On Fri, Mar 26, 2021 at 06:30:36PM +0800, Elaine Zhang wrote:
> Convert the soc/rockchip/power_domain.txt binding document to
> json-schema and move to the power bindings directory.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Link:https://patchwork.kernel.org/project/linux-rockchip/patch/20210225102643.653095-1-enric.balletbo@collabora.com/
> ---
>  .../power/rockchip,power-controller.yaml      | 291 ++++++++++++++++++
>  .../bindings/soc/rockchip/power_domain.txt    | 136 --------
>  2 files changed, 291 insertions(+), 136 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt

My review checks tell me I already reviewed this and IIRC that was 
pointed out to you in the last version. Am I supposed to review the 
whole thing again or is it unchanged or ???. I have no idea with no 
version history.

As there are other issues pointed out, I'm going with 'wait for the next 
version'.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
