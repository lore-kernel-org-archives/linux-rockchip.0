Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1145DC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 21:29:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C78E56144F
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 21:29:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C78E56144F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t7J+RsSsI6VTaNiiE42DtjZ8ve3THuPwA9KCnMa0wUc=; b=eR9EyH0KZie2tFMbZGb4bdzJG
	qyl751wddxGai/L0hH6z4N7UDt9svgz2qFCUgo53oO5IdGbMkl/tv+2Hh4+a57xlppUDXZmDwF/YG
	H5nU5Zta0UtQX8T/5G/8E43Mp5FR8u+zErdNLG9Fq18B56yKN4pJRCPVrFjGVdRlMZMw1aHmMNJBf
	VaKy/k02fsgL+JsX64QJewnXHs3Syw19eit0+omRoVnkfCZyUpcDM6DqSERVMjMnFZ7wR4ARdYg0K
	D/GrRRnl7r8pxBb1xrJIy6x18D027K6gLQw5boio68PVIJx3t+aE99qgzXW1lnlU+BOd++wtHrg3z
	9u/ICNs3A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcah9-008e5n-96; Fri, 30 Apr 2021 21:29:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcaSx-008cPL-6A; Fri, 30 Apr 2021 21:14:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=EMqKtknFqehmn7rN033x+tvY3ntthgIPwO2iOKZYoag=; b=HFC6JSRYE7dmpD+8DdsthG+tmw
 E5AiBQj9nv0hQMWWKHKLla8qmt7oXOqedm7DjqG04OQAtkRwwn51zABF596p2XgQ7BLUWVttb98w8
 YlSe5jKrQaxSnIQTfnRX+vm9Kxj4YIEoB12psqswJHHifbGwTq+VUm+hz7VaeeVg5TcJt5mswS6A5
 3Sfifke5lm5Xh9NzepxkxcpRURZVuQp/oHuGcBgJtyBLSOfCKhk5KqfGnRSe8Yj/tZH3s2W42DJJ8
 6PPrfnfDuBgrabxcLN817ehuUJq33/rpWNysiFWvlAMmMP/iGMmGCl7mfE/fD1JQGIhudTw1peFkh
 XPSKSZDg==;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcaSu-001fvQ-Rw; Fri, 30 Apr 2021 21:14:26 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 y14-20020a056830208eb02902a1c9fa4c64so29141492otq.9; 
 Fri, 30 Apr 2021 14:14:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EMqKtknFqehmn7rN033x+tvY3ntthgIPwO2iOKZYoag=;
 b=os3v3YkrMvQc6wxR4CZ2T2SDU2GB9oR/olTY+sVWvgdYZZ6QVVk/6dL1/AJ+O9U569
 u6vyszDdWx8AozaFnxBeWfRUOVxTOFs7oZ5l3JIAFftiUrqLYkpkfB0WLWuXViVjRWSn
 0YOnyncC+EcV2pQeoi1ufEFwcLPHZVwt8T+Spc1p8PY34HQ7weREl05aY1MvlvNEhBWW
 ofnhVgVrQSX4WbiAi1xh3kgYzmzWMI69eYNe39gwjxxhIVK9jADEScIIuyKZmgyWvJ2G
 h0PNtqCuSAs8jhjDfLgVwaXuXaRRtwmxLSaNZFtOxzLVG6rjZ2Btww+xkCyct4BVSioZ
 c91w==
X-Gm-Message-State: AOAM530/Cd9gkYVPmlMff1iBAhisZNo8iA68EgdgscI7TKKj2LluCeZZ
 zZOTAzNi0S1Nxhn2bmFa2Q==
X-Google-Smtp-Source: ABdhPJyYa/c/d1x4QUaZh1rrRfInSBi7VljCcrNXjhzEZhKhhNGuLhnNgn0Ti2aCh0igIifuoLMBjA==
X-Received: by 2002:a05:6830:12c6:: with SMTP id
 a6mr4940474otq.239.1619817263859; 
 Fri, 30 Apr 2021 14:14:23 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 88sm958638otx.2.2021.04.30.14.14.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 14:14:23 -0700 (PDT)
Received: (nullmailer pid 3905795 invoked by uid 1000);
 Fri, 30 Apr 2021 21:14:21 -0000
Date: Fri, 30 Apr 2021 16:14:21 -0500
From: Rob Herring <robh@kernel.org>
To: cl@rock-chips.com
Cc: heiko@sntech.de, cnsztl@gmail.com, maz@kernel.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, jbx6244@gmail.com, mail@david-bauer.net,
 jagan@amarulasolutions.com, zhangqing@rock-chips.com,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jay.xu@rock-chips.com, huangtao@rock-chips.com, linux@roeck-us.net,
 jamie@jamieiles.com, uwe@kleine-koenig.org, linux-serial@vger.kernel.org,
 jensenhuang@friendlyarm.com, linux-watchdog@vger.kernel.org,
 gregkh@linuxfoundation.org, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 linux-mmc@vger.kernel.org, wim@linux-watchdog.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 wens@csie.org, ulf.hansson@linaro.org, michael@amarulasolutions.com
Subject: Re: [PATCH v4 05/10] dt-bindings: pwm: rockchip: add description for
 rk3568
Message-ID: <20210430211421.GA3905741@robh.at.kernel.org>
References: <20210429081151.17558-1-cl@rock-chips.com>
 <20210429081252.17711-1-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210429081252.17711-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_141424_920589_C44B1427 
X-CRM114-Status: GOOD (  10.23  )
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

On Thu, 29 Apr 2021 16:12:52 +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> add "rockchip,rk3568-pwm", "rockchip,rk3328-pwm" for pwm nodes on
> a rk3568 platform to pwm-rockchip.yaml.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
