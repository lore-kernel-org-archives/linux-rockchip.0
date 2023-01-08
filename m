Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 404F5C54EBE
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Jan 2023 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZ/rk8ubXnhkrt6Yu7N8McgRAOlcjQqHHBHAqN/zirI=; b=hxkSZvJ010uTtI
	0+NKnglprSSknpOSduG8EuCq7s8A2RkONmZSNuNISyIl8UgLWmqgBgX1QB1vp6z8JfpulmXA8Fxya
	PAivILsWFjdQtAEpO7WJV0XuBSJHVc0deg70PqhfMYaaQLsxDeGgIkwkIiZhQzg4MuJf5fX5wuAuW
	+F2KRoYK3Rd5sKQvVfk8ZBGJeyXe9xUGMSpj3ys5SLJaCuRDKSHVkSyAJsPmtNdTA7MexKt644cCC
	2VG/R3CzwmxSBlvLOVpEyjq8TK543MH21nSgrmQv/fqaG2fN4ZCceIF8RIaW4LBZSAQ8G8ISbAzVW
	QIUC9t1BkvSbRhVfQAtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEaiq-00FLbl-4d; Sun, 08 Jan 2023 18:48:44 +0000
Received: from mail-io1-f54.google.com ([209.85.166.54])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEain-00FLat-7b; Sun, 08 Jan 2023 18:48:42 +0000
Received: by mail-io1-f54.google.com with SMTP id q190so3499794iod.10;
        Sun, 08 Jan 2023 10:48:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R7PW/o/diRa7/Am41wioDqKkxsPy6fmQIpL6zIC43hc=;
        b=siUs3MJrr5HFFJ/XvyozNiiL+rco8mArfSStz+twryvr3/8bxJRcc5gWXVip37Vxzu
         xZ/HB5aP27PJVNC4O6BMddghQalGHdD6pxWSumZkWQ2Hi7/T+iwpULeRjHAKQOgrHKWD
         fJar3q0Jj1ow3IJkMwSlPeQizEGJmvHNiNLCgKB+yXyT1B+VZK/MhzBtBCMtajINnop0
         0Pc95ECTTJTKH98C9Q8xznOsb5OVgt7WHkODC2sWgdNcLRoYDY2eHIoPzOcxoMqsSREG
         ZguxxqlzFpdgPV8s0Hw3N/tZJRFhC5ZgWNJ2hBgWOAQ85eSVfRB0Jfl8buTXOzMADZrE
         PcMA==
X-Gm-Message-State: AFqh2kr9MitZkx0cTXV8bpDRWXAawt40mJKeS15Or95M8mKCskkRlk3z
	EXa0Kr/v4SrJ7kn3DDNA0A==
X-Google-Smtp-Source: AMrXdXuhtO+M08JC7/4QfqX/IMjxH1Y4noojp79hTVa1fRuwb/wcR+bpS6KM3MVMHeIkYcbBuHX5Bw==
X-Received: by 2002:a05:6602:394e:b0:704:44a6:663 with SMTP id bt14-20020a056602394e00b0070444a60663mr1149378iob.15.1673203720080;
        Sun, 08 Jan 2023 10:48:40 -0800 (PST)
Received: from robh_at_kernel.org ([2605:ef80:8069:516a:f2b0:691e:4315:7c0f])
        by smtp.gmail.com with ESMTPSA id a17-20020a92d591000000b0030be6c79645sm2089120iln.68.2023.01.08.10.48.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 10:48:39 -0800 (PST)
Received: (nullmailer pid 196978 invoked by uid 1000);
	Sun, 08 Jan 2023 18:48:30 -0000
Date: Sun, 8 Jan 2023 12:48:30 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, robh+dt@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, kishon@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH v1] dt-bindings: phy: rename phy-rockchip-inno-usb2.yaml
Message-ID: <167320365145.195794.14991903357914132463.robh@kernel.org>
References: <99794484-d67e-ee1f-4e76-200de20a879c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <99794484-d67e-ee1f-4e76-200de20a879c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_104841_290848_6E0F4781 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
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


On Thu, 29 Dec 2022 12:39:17 +0100, Johan Jonker wrote:
> Rename phy-rockchip-inno-usb2.yaml to a more common format of
> rockchip,inno-usb2phy.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Apply after:
>   dt-bindings: soc: rockchip: grf: add rockchip,rk3288-dp-phy.yaml
> ---
>  .../{phy-rockchip-inno-usb2.yaml => rockchip,inno-usb2phy.yaml} | 2 +-
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml         | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>  rename Documentation/devicetree/bindings/phy/{phy-rockchip-inno-usb2.yaml => rockchip,inno-usb2phy.yaml} (98%)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
