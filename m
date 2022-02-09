Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEC7DC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 20:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JG6vl7WHSTqBATmo39nyCps3/mUFQznsH+3STqZX8EI=; b=NYU/P/wjp4UGMz
	kQXcqFr3Kot4CIVHicfBT9AIs+9cLtNcfhSj2uSmyLXFcIxIQHYDdTHtdLJ+GCHGwpWleq+IDKatB
	h9rVs080XqNh7x9KOgkexiAiZQqD5/b4GALTyHo4lLEo4l3RbNHcUVnwfpmeHnJu/Y0m+O/8GDGzv
	zcWitlAMKxqjzZFrbb4nGDmjsek8MG5R8TVKOLD3opR1hKQa44Fue0tHWfNkTyXyD3l3dX3QwiT3p
	WQz8Dekp7rVxfqsmn7h/Wnkg8VmgahHvOVHfgNmVuwI8lC5dW0X9snw69Q7rXise7PQ3nHK8U5ane
	L7grn2IZujQPkDo6NAzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHtTX-001XdH-17; Wed, 09 Feb 2022 20:22:03 +0000
Received: from mail-oo1-f51.google.com ([209.85.161.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHtTK-001Xa7-LI; Wed, 09 Feb 2022 20:21:51 +0000
Received: by mail-oo1-f51.google.com with SMTP id
 p190-20020a4a2fc7000000b0031820de484aso3797609oop.9; 
 Wed, 09 Feb 2022 12:21:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YmfSzxuqzirL1V0Zykp0UDWGW3LWKCMN5F4vQtCRtPI=;
 b=fG6iZHdd8E0SNxBQHrP39RZ7UnGWKS7N7y1CStNEBhd/XmNML5LVBTVKv3oeqzL210
 XIuO+gPhIOxRdGPXqqQOo+aUtgcsH7robYq/m+Kh4a6TGzc+1fsUxsb8J6nncIop7JRi
 rYcMV/nA+HmHEgYWP4DcwElvpNj05BfNC/cCi19Gosm7GIdse/rf6TCkgo3ug+VsDe+A
 SwFTKIp2xhLXs6F1HqBIwggoGUg0efkKaFuyzvoC4H/pETEkEIlcHVOoWcZk7gG3wTgW
 JsBRE8p6qbJZ7S737e6Wcb8lWnwfBAOjibPcJwMMGOPyAe24Wdv0jsAaDMNgDBl9VnDX
 rg1A==
X-Gm-Message-State: AOAM531/ITEfNXIHtwG8595C5sD7qLFjyOmxcbRPcbv+5BgXcOz3KS6j
 HSsMnQp4/tM3BhZQAFADtg==
X-Google-Smtp-Source: ABdhPJwRFJgoaGuDGAhOtb0UhcP86Z5hgt7jSmayowRpL9dQ8ELxljV7pJYS2pDBKJqnY1e6nyk9nQ==
X-Received: by 2002:a05:6870:d502:: with SMTP id
 b2mr1441779oan.94.1644438109620; 
 Wed, 09 Feb 2022 12:21:49 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id t4sm7283982oie.14.2022.02.09.12.21.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 12:21:48 -0800 (PST)
Received: (nullmailer pid 832955 invoked by uid 1000);
 Wed, 09 Feb 2022 20:21:47 -0000
Date: Wed, 9 Feb 2022 14:21:47 -0600
From: Rob Herring <robh@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-pm@vger.kernel.org, Lin Huang <hl@rock-chips.com>,
 linux-kernel@vger.kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Kyungmin Park <kyungmin.park@samsung.com>
Subject: Re: [PATCH v2 04/15] dt-bindings: devfreq: rk3399_dmc: Specify idle
 params in nanoseconds
Message-ID: <YgQiW8PhI/G6OqR6@robh.at.kernel.org>
References: <20220127230727.3369358-1-briannorris@chromium.org>
 <20220127150615.v2.4.I01c6a2b2db578136686b42d463af985cfdff2fd9@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220127150615.v2.4.I01c6a2b2db578136686b42d463af985cfdff2fd9@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_122150_714886_1CB84C91 
X-CRM114-Status: GOOD (  12.53  )
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

On Thu, 27 Jan 2022 15:07:15 -0800, Brian Norris wrote:
> It's inefficient to use the same number of cycles for all OPPs, since
> lower frequencies make for longer idle times. Let's specify the idle
> time instead, so software can pick the optimal number of cycles on its
> own.
> 
> NB: these bindings aren't used anywhere yet.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
> Changes in v2:
>  - New patch
> 
>  .../bindings/devfreq/rk3399_dmc.yaml          | 50 +++++++++++++++++--
>  1 file changed, 45 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
