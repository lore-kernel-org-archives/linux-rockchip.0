Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F20FAC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Mar 2022 17:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BVmRIbXhc1CKTpRmDfPzBkBPshTuQKbmmCIS9PAKEA=; b=H5iJaJJHiDo8pE
	uG5nQOAv3KrXoQ6Dvb7nEVxiorvDF/qpZcpa7apWrdocaU7MBQfJZu07XlGM2VDh1VXbJKBru4B8z
	Ym0uV3JDo9RZF3u4bn4/kmTrlNNRyh5FpTRy5Ar9IbljRucL515LXOzzpdX9btxp2xEJ5SDrD8LMO
	x9KnXy17Ji+lJLvqDAvDelXvfAiA1oxejZSLJRLN/zoCmJH0Xroz+gxtATmwFK2mZSmd274xQIPl+
	0TKt/25DmfH2EI3OhROWfDzWG2rU50jMGJMuCwxtml6KuMAwWlkCCRp+l6VSBEdDM2+laPwFUWOnI
	NK2MW3JMiz1aKRJTm5zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYt9w-009dDU-9N; Mon, 28 Mar 2022 17:28:04 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYt9t-009dCD-7z; Mon, 28 Mar 2022 17:28:02 +0000
Received: by mail-oi1-f173.google.com with SMTP id k10so16353448oia.0;
 Mon, 28 Mar 2022 10:27:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pKj0Gjvro8HTxjGPukTbqzqx9n4h/OXOk7/nuTgNznk=;
 b=5oaxUELwV6uB9G56udzRx7OGj295NnBgW2qWqdaEKHV6trwpv7yDkxY9l8qRqJkeUs
 /F8d5l9IjvJmmn+WH3gOMIViCZC3lxPd8pV3sB05ERRnMi7TsPzn6kU2+0WtH5gKYmPo
 t5svWqnwUYxgytOqeksd66LxIyadB02CeypboDtS7jEOJJRraKNkIR3lP4RPbksEd2yH
 BgXZJXwnLEbpfZKPCPNjGojaLMh6nEfmb6U/uzkeTty6DRt/Dy5evjh2ZY/j5c6xYykT
 9M1vdctnxVETk83DfjeaX/CSX9tzHxZeau7yumw/sDWn2HEqA+xz+6K8UKBjsZxiDWom
 ENiw==
X-Gm-Message-State: AOAM530ua2zvGTdxa9Mvgri6CdsFsl9zihewbS0YsuxKprEzo/IurBFr
 xdeqSC4yC1SSPZZ0J5dyJg==
X-Google-Smtp-Source: ABdhPJy9zkdxb+G0m7ZY98qArUKWYEXV2InDfgYRh2KbJ2ffNuMS4F51mQaf1i8pp3e5obxjJ3g9Ng==
X-Received: by 2002:a05:6808:308c:b0:2f7:5d2e:1a5e with SMTP id
 bl12-20020a056808308c00b002f75d2e1a5emr102483oib.209.1648488477125; 
 Mon, 28 Mar 2022 10:27:57 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 x65-20020a9d20c7000000b005cdaeec68d5sm7389911ota.37.2022.03.28.10.27.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Mar 2022 10:27:56 -0700 (PDT)
Received: (nullmailer pid 2611453 invoked by uid 1000);
 Mon, 28 Mar 2022 17:27:55 -0000
Date: Mon, 28 Mar 2022 12:27:55 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: krzk+dt@kernel.org, mturquette@baylibre.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, heiko@sntech.de, sboyd@kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: clock: convert
 rockchip,rk3288-cru.txt to YAML
Message-ID: <YkHwG5SaXchzeJ7o@robh.at.kernel.org>
References: <20220326120942.24008-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220326120942.24008-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_102801_296631_48C86CF5 
X-CRM114-Status: GOOD (  10.14  )
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

On Sat, 26 Mar 2022 13:09:41 +0100, Johan Jonker wrote:
> Current dts files with RK3288 'cru' nodes are manually verified.
> In order to automate this process rockchip,rk3288-cru.txt has to be
> converted to YAML.
> 
> Changed:
>   Add properties to fix notifications by clocks.yaml for example:
>     clocks
>     clock-names
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3288-cru.txt    | 67 ---------------
>  .../bindings/clock/rockchip,rk3288-cru.yaml   | 83 +++++++++++++++++++
>  2 files changed, 83 insertions(+), 67 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
