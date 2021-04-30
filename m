Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA178C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 21:28:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7F66F6144F
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 21:28:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7F66F6144F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i4brfKIB3/H3raXmMCiyTeDzCCGLFkYR4bRTGZqEkdo=; b=Z8sKNrP6TWd4jZk2E/Qes7Vys
	1YFFyova4QHH6vKbOSHw7+EbY6TdtMX0H7m4zEHZQOQP8Ufat5+pHPAowgLKvbKnBjhCtfZ58Bnul
	t6aLdHlq1rzyJ0bE10DcFITTnsvsT88m75Dl1mivZqLT3wYYm/p5cbs1I5m62MhOiNyHEqHb+Jw7j
	CaHh1P8IUFOL4EqbuI5WszDRa/5pCAB7dYDwjpcOMGHbxoPJaOjSn7B5kw8NYQDMi2+267W0KFVcV
	WTxfnzlNuiCRiwtjWPo2rCaflJrvFvqT+8AuAGMxVxXshYLl4dN0C0iMMn3uv2+FB+ztv+Iag7kND
	eU1RZz6WQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcaeq-008dp5-An; Fri, 30 Apr 2021 21:27:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcaSe-008cOd-Uy; Fri, 30 Apr 2021 21:14:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=CDPt1lBiiOE0WKtOJruhoq1YuZ11A6rZPPUGDESLxDI=; b=y2f+57ULeNS0FkZBotbqp3UAoD
 EWfC6fp+i38Jp1ZOnTplGpOQ+KvDdTBGCar/bKReb1R0BVlWaPhen9QWQLTrIuy22abZZjXjlspK6
 0B3u7KZOReT6L0Y/WQcirFqijJC5qS4STK33yvt0EPAotjNOQ6d7GvLg0JAbKsI9pEF3jAV/uuO4O
 /bOyJ7JU30XpoJ3L4hbookBBeI5AZ3m/ZQCPFI8crPVkREb+3c892zOV3Em0Pfbewv7O/y8Jsf+oP
 CdGUDbUJHZ0JcYzB+l8zQibDOPTnXI7bWpaOMtAhQvPVjuyIIkmMnb6L5LUesacwcDk9HnDeLxsjN
 lzourJFw==;
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcaSc-001fug-Kg; Fri, 30 Apr 2021 21:14:07 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 92-20020a9d02e50000b029028fcc3d2c9eso43146857otl.0; 
 Fri, 30 Apr 2021 14:14:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CDPt1lBiiOE0WKtOJruhoq1YuZ11A6rZPPUGDESLxDI=;
 b=VogO74jNi5fT/NKo4oD4yUyKJUsUJS0ZJ/wgguD8+41FxGdO4P3qcfrtqgEEw/d3jC
 dqIOozTaEh47DZtPt4TO3TV2BldLtIzqu81EWGooppR47izb3SPAS7kf5oeSksI3kiRF
 Q/uBPSzNec9iVvC9dPMQKt5E1JYdHV/X/KKWgSGJoZkxLgXX/BE/pISUlW+F8t4GSWjM
 XpBemrIpv6KrLQV1Lh4+/ttTNx23D40OtCwEyom2T6emLioxV4+OeWakNuM3QWZrLVxH
 lJqtN7szCed+3I1x3NJVU/OmU/STIba64nfd9X+32wqlFMNO+qTtr5dV1v5DX09eIa4c
 zbuQ==
X-Gm-Message-State: AOAM533mKSvc/DDlXeaKlUgUX+0WIk2rPBUWBlM4i62n/9ZG9mpwwxWZ
 P/+vF+BprTd9j0VDG32jAw==
X-Google-Smtp-Source: ABdhPJzdx/BWVIpfWhocJCf2pf7MdV4rc7xin+Os1AFkpy5q8NGKxfcVyvjvR9lR+wKITGbETRB26A==
X-Received: by 2002:a9d:5e0a:: with SMTP id d10mr4944801oti.44.1619817245659; 
 Fri, 30 Apr 2021 14:14:05 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e93sm943692otb.62.2021.04.30.14.14.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 14:14:05 -0700 (PDT)
Received: (nullmailer pid 3905201 invoked by uid 1000);
 Fri, 30 Apr 2021 21:14:03 -0000
Date: Fri, 30 Apr 2021 16:14:03 -0500
From: Rob Herring <robh@kernel.org>
To: cl@rock-chips.com
Cc: devicetree@vger.kernel.org, wens@csie.org, maz@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux@roeck-us.net,
 ulf.hansson@linaro.org, linux-i2c@vger.kernel.org, jagan@amarulasolutions.com,
 jamie@jamieiles.com, shawn.lin@rock-chips.com, mail@david-bauer.net,
 uwe@kleine-koenig.org, linux-serial@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
 gregkh@linuxfoundation.org, robh+dt@kernel.org, linux-mmc@vger.kernel.org,
 michael@amarulasolutions.com, jay.xu@rock-chips.com, cnsztl@gmail.com,
 wim@linux-watchdog.org, jbx6244@gmail.com, linux-rockchip@lists.infradead.org,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, jensenhuang@friendlyarm.com,
 david.wu@rock-chips.com
Subject: Re: [PATCH v4 04/10] dt-bindings: watchdog: dw-wdt: add description
 for rk3568
Message-ID: <20210430211403.GA3905172@robh.at.kernel.org>
References: <20210429081151.17558-1-cl@rock-chips.com>
 <20210429081151.17558-5-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210429081151.17558-5-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_141406_696865_D1007457 
X-CRM114-Status: GOOD (  10.09  )
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

On Thu, 29 Apr 2021 16:11:45 +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> add "rockchip,rk3568-wdt", "snps,dw-wdt" for watchdog nodes on
> a rk3568 platform to snps,dw-wdt.yaml.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
