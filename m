Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90480C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 15:15:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 56EA261186
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 15:15:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 56EA261186
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BtheDkJiamPLvysDOpgnRlYMM4XNI25kcpaR5amrpZU=; b=nwR3EVTMpEdpH9hm/+GYclZdo
	0UJGHyD1lnuLxzdJnpNiwlxcx/0h/e+7piESCA+xVhACeMnFoz1sqkEguk6buKpV0VAKpxn7vL05A
	ww4r6iaxhCb/rAVen+jyd6mcHrMuFHTkKz2YkSVGuDfJ059n3AsX1l8kr/sWNTUrLenaHF1vS6tqn
	U8IpzgBKrVRItA5c0fH77JO/kwHkU12wC3RFXzxLuxrq8MgM8ESf/hRi+J79EeF8nigfraXXb0ei6
	1Wcn0UwoIFz3q6nE9VVF3mvFVQo9Nk9O5IvDK6BNirWWeZsjZBXyxt0uInYhww9mv939ObxQKRzWl
	sd99cq8NQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcUrO-00837S-8T; Fri, 30 Apr 2021 15:15:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcUrN-00837A-7x
 for linux-rockchip@desiato.infradead.org; Fri, 30 Apr 2021 15:15:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Dls3JdP07FKx2SVUTP5QJwduat3Ev9SaPYcCsd8uxic=; b=3DysxQRNhpx85oF7xNlKZPCrZY
 OozgDqMCPWh46R8D1VPfUNikgwhvwNnTe2ACxebIJO3vGKEpLR+NwrPRbFqggNvU/KlDv5Hkj+J5Y
 aK1HfSfm+wZBqPfEUBWLJNVNpmbBm1wczoG6m6ZlwV/TWwDk2XgmF/UWnvYQ16bIZld2t4P5xCZYo
 9K5ORl1YWqrB32e49pnp1x5Kb8mbKMra49t4zbla6QDk/uPVVRZvpYszlIY43U1tEfGdm6OmBxcxR
 AsLkBLPxl9XsIngHn2SW7MV0XJk3Tdk5OhiVkTrCooX5qQZmu84i+8TIquqGu5svMOjpX1x1H+Ryt
 aOoDyLEw==;
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcUrK-001Tcc-U0
 for linux-rockchip@lists.infradead.org; Fri, 30 Apr 2021 15:15:16 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 v23-20020a9d60570000b02902a53bac99a3so9924772otj.5
 for <linux-rockchip@lists.infradead.org>; Fri, 30 Apr 2021 08:15:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Dls3JdP07FKx2SVUTP5QJwduat3Ev9SaPYcCsd8uxic=;
 b=DbE8cMHt/2NvvCJbiycOZBhOqKmrkwqWhvqLHzjLmCNaUkUS5RFjs77pip7BuFBE02
 0nlM20N//PQBbmd82OHnL3jLMavW9UsCyKfotG93Wy0KjW9UejvlTK2AhSnUUaxe1eLF
 2P4ZFOjY613Me/5bPO6S8+8mgNsekmujv9+idSh9jn/K4+huy7URMa4zaDnAZTLypvCu
 Vq8tvSISrJ35Xhto1uOmu6EVWIlqZUevzF7fXR8YWY+1m/f1RjWX6pFPg9T155liCze0
 oYLa19SZAvfJk4kREFcU+kGcnhWn3SRF79KjlahNreh9Wtlsl7OjF1Wwh/woR+Rcgr6t
 t02A==
X-Gm-Message-State: AOAM5328WKWp0D/9Z27lxulz9CnpSalD10/VBrarUCrSmc97Cs3NUxyg
 8wYyWaigMDWkiFZBEGxvrw==
X-Google-Smtp-Source: ABdhPJxQ0pmZoqSv25pyS7S6IMQ39fbYqMp3fwW33tkoGpP1gOT7WXDp5XjP3NMP4/rNcFCuR/h0sg==
X-Received: by 2002:a9d:7401:: with SMTP id n1mr4051873otk.28.1619795714359;
 Fri, 30 Apr 2021 08:15:14 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r189sm850355oif.8.2021.04.30.08.15.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 08:15:13 -0700 (PDT)
Received: (nullmailer pid 3338441 invoked by uid 1000);
 Fri, 30 Apr 2021 15:15:12 -0000
Date: Fri, 30 Apr 2021 10:15:12 -0500
From: Rob Herring <robh@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Finley Xiao <finley.xiao@rock-chips.com>, linux-pm@vger.kernel.org,
 Kever Yang <kever.yang@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, Zhang Rui <rui.zhang@intel.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] dt-bindings: rockchip-thermal: Support the RK3568
 SoC compatible
Message-ID: <20210430151512.GA3338364@robh.at.kernel.org>
References: <20210421200445.32977-1-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210421200445.32977-1-ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_081514_983584_14141CBC 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
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

On Wed, 21 Apr 2021 17:04:44 -0300, Ezequiel Garcia wrote:
> Add a new compatible for the thermal sensor device on RK3568 SoCs.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  Documentation/devicetree/bindings/thermal/rockchip-thermal.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
