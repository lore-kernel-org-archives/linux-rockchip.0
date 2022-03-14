Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABBDDC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Mar 2022 03:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmp7GKbk0ayc7Du+Xdws96SqTD+0CeMTvJVBr8jZ6ow=; b=wxshT+946IKvE0
	F4FwhBLi3AlLGpIlMGGajuJfnyQiGEkXoHEEA/6vZ2mlKvlfDt+5xHo1/hIn66el4AsAwfePcYFXS
	aXsAxOAhTGlxtYiQyRbbc0FlZ2VJJ9Tfc4zD43lahHR4uKkGFyO/UnJ3X4uzUTxgwrkVXodCsZep+
	2/YGCTNvlODCvvru0/fbspX8weQBD2Jg6tNPP+qUeeVk+qBvdZF4qrCfe27sOhVJe6ODg0wx5lVqc
	hRB+apb0EOpLNHUkFwuaHmU9Vjpg98jhI1eVy6otF+BESXBOlbRPQlU8xImtxyaTw7o7gi1Tv2BTF
	e8AkoEPpfmc2qdrO6KEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTbiW-003kIP-0J; Mon, 14 Mar 2022 03:49:56 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTbiK-003kFq-Il
 for linux-rockchip@lists.infradead.org; Mon, 14 Mar 2022 03:49:45 +0000
Received: by mail-pj1-x102d.google.com with SMTP id cx5so13324137pjb.1
 for <linux-rockchip@lists.infradead.org>; Sun, 13 Mar 2022 20:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Mrr28nJUCfgByHsWGp/lHeprSpd4BkVYd9lJAdXUu48=;
 b=FPB+lPM1wM0el3n1VYmlE5LDbRTs8sdcLP6rhLivQXbvVE/6OaSdvkuxVAWgW3GAS6
 mCMPT6yPPoLqUIWqzXKaXl49Jt30BLrmJOnguy7j+UnxbQTA0zSY4jNbIQh2b552WMCr
 BLspIouyPoT0BBBqWpQYuIb1WptiTqYoBJBCZtRSMdx6OIO33LoVdkbeOiVV2NUfmKcM
 rer+SutQKOCp+tKYwJ2sYviEeAxSgncvatqYsjAeLNOZsxgX3ubUvG6sbjPmA2rMvmLn
 RVlLSP1bvyDZLSkNDSC4so10uHrNNkh9L3S4BfBy8cytp3VvdbSBQIkc+FaPh13vvfRa
 R1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Mrr28nJUCfgByHsWGp/lHeprSpd4BkVYd9lJAdXUu48=;
 b=CPwFm3R9HTpabg9ouwnqVdfPNImpoQiSctUpVrhQbpnrQgRUkY+50hS/T7LQ/ttpMF
 aYAgPXLw/wXIY98cpeRFeq0jod53ztb1w4AGM6PENNTpJOmY73x9ZkQQz9UBJnrcteBA
 GkcmvhxnmRD2jjqav8l3NntOJ+soBm6bMrpT1xHNKmjVvkmjFTof3AHlH5qTdjbyTOoZ
 ncRtzJEnyqSetX7KXOCZo87kqm33FfV7Sb8iWRV0fkzvD5b3LC4UGoe5vT2Vcdx6YFi+
 fSGCw+9SX9mLak4DUFcZy7zoviF36imEGNaaz2Zz+OPZyE5xn0Fw2MagCr7R+JBgCYWF
 aHkw==
X-Gm-Message-State: AOAM530HvGg+QVKNqY8PJyrkLoijPrQmG0PYu7gMAnUpzVRIxBuWVD6x
 ukf3Q2LW09PoEe9dcJt2p36Vk9gv7WFjDg==
X-Google-Smtp-Source: ABdhPJxrhB5eKmRl1RqT3UBbRYo79qSooHLNLaD7StOCwa5jF/tglcgSr1X0UJm/D49ONUYxaDhZEA==
X-Received: by 2002:a17:902:d486:b0:151:8e66:621c with SMTP id
 c6-20020a170902d48600b001518e66621cmr21648715plg.141.1647229783099; 
 Sun, 13 Mar 2022 20:49:43 -0700 (PDT)
Received: from localhost ([223.184.83.228]) by smtp.gmail.com with ESMTPSA id
 m12-20020a17090a414c00b001bf6d88870csm15733286pjg.55.2022.03.13.20.49.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Mar 2022 20:49:42 -0700 (PDT)
Date: Mon, 14 Mar 2022 09:19:40 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: devicetree@vger.kernel.org, Frank Wunderlich <frank-w@public-files.de>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Viresh Kumar <vireshk@kernel.org>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
 Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 3/6] ARM: dts: spear13xx: Fix sata node name
Message-ID: <20220314034940.rxkgue2kllnqhucp@vireshk-i7>
References: <20220311210357.222830-1-linux@fw-web.de>
 <20220311210357.222830-4-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220311210357.222830-4-linux@fw-web.de>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220313_204944_676215_6704E443 
X-CRM114-Status: GOOD (  13.71  )
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

On 11-03-22, 22:03, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> After converting the binding to yaml the node name does
> not match the standard pattern, change it.
> 
> arch/arm/boot/dts/spear1340-evb.dt.yaml: ahci@b1000000:
> $nodename:0: 'ahci@b1000000' does not match '^sata(@.*)?$'
> 	From schema: Documentation/devicetree/bindings/ata/ahci-platform.yaml
> 
> Fixes: 07658d9a659b ("SPEAr13xx: Add dts and dtsi files")

I don't think this is correct. The above patch is correct. The first
patch in this series changes the names and that's where things break.

I think you could have added these patches before changing to yaml and
then nothing would ever have broken.

Since this isn't a big deal anyway, I think you can just drop the
Fixes tag here, and other dts patches you have.

-- 
viresh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
