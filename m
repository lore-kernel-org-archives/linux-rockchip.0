Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8277EC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 15:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/c/wnaXtHglcbMBDfQmB9+MBhuQpzhcwgjBSiSJKOo=; b=C1R7+v5HyReZ/W
	UCICpIK7se7JPDS4c4vKKGcg0P698sk5Q9/7dR2KjWhTwaul5IG44GUX3jiCgBy86sM50GCSBE6Wp
	6eL8joSktyWSXzJJoEBK/jaIRTX3khAuGJv0NmJpoyb4XJ8xPMob9gl5usNE26Mqd0VYmnaHsN0It
	CC2VzyPkVljD7Ux5I8yxy6bOnE3ZWub7L59hlvv/SGol2uRFj/pmIvCwICo2+gcGrLBH976aEVmHA
	V9kP8bAtV2JMMd3CIPjYAFeW4eSSem5tKtxZjxydCaISchIbFZ+DyO5c0s6YTCLnLRKjTWcYQGwUB
	sWe/+LtbDdJibDk79+Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njNKs-00FBgV-0A; Tue, 26 Apr 2022 15:42:42 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njNKo-00FBeW-C6; Tue, 26 Apr 2022 15:42:39 +0000
Received: by mail-pl1-x62d.google.com with SMTP id c23so30619703plo.0;
 Tue, 26 Apr 2022 08:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=mkAiWyPhdlD7e1Z/gpT9jMCqV3vsrhfRYPhRMfnvJO0=;
 b=TaHATRTJwJHqsCqS2xEBlv6yBrYs0VJr0ClZJaLQBGwXZBJagebc+1vGjE+iPkNmEu
 AfQg/LzWmCdvqI1dDWaDBGJYfmGPOQ2HJWGzcp2EneKB5omeAPGrlvMsiTly0xwPOl9+
 ZtJ4gZm1iZQpFGDYYtTUjn6XoMfZjg0f3ILxFQ0HkXlL4vsGaHlJrZiGol2Kf9z7+YK4
 KFQlKVFZp73718XauWKHrGCVSAsh33cMygLQ7ka4LZKHM5nmcsf86L23B/nl/H/t6SIc
 xsvqrdf07KEtHyfU5EoRjvP9XkDcJZgW0zl/gX1h4DBYTpTYQCqRpo9EaRX9QeJdLNPN
 JgZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=mkAiWyPhdlD7e1Z/gpT9jMCqV3vsrhfRYPhRMfnvJO0=;
 b=JcDxj2DDIE2dUA+jewacpNIgP9oGbUzi0bnXt3XptxLngvkI34swBQMFoXHi0igTlB
 LcUUAwbYOj9u0rmXPasGWJgtyfzmmXbvsEROcuf2u15peSvosVs1c+ztZHp7Up7ceigI
 SIAsbO+tgAHYF9tJcWcUKXtP4Zf2Xha4JCmsHJAuh/PYm5y9RTC42YidJVMTo1z7d2Kv
 6CUZXpPYqBucQhgOQZCR6Rd+2SN79kSzwPooaGqvEPCJh5SLG024uMS5yLKKzO2m2936
 KFz3OIa9PVIhlydB7i34kw9Z0tD6HBWt35WuQuX5IFOUvPZFSq0r2vWulnnRKqzl5rSc
 JsBQ==
X-Gm-Message-State: AOAM533OA4YpIoTyV0CahUi105qnHzgIsW4OdKimlOojuHc8p9w2nXFx
 e4FHjez6OOCv3F6W8eBqUKk=
X-Google-Smtp-Source: ABdhPJyo24E6WK3N7Y00h2mZM57XuguDl+o2a2UTKmV8d5ty3eJrQIQ9E7G31XihG1HfqrPrfocGrw==
X-Received: by 2002:a17:902:d545:b0:15d:4a7:d3c1 with SMTP id
 z5-20020a170902d54500b0015d04a7d3c1mr13148473plf.52.1650987755650; 
 Tue, 26 Apr 2022 08:42:35 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id
 j9-20020aa78009000000b004fde2dd78b0sm15040858pfi.109.2022.04.26.08.42.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 Apr 2022 08:42:35 -0700 (PDT)
Message-ID: <b2f06a62-6ad7-ea92-7035-2a29f0e6affd@gmail.com>
Date: Tue, 26 Apr 2022 08:42:32 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC v1 1/3] net: dsa: mt753x: make reset optional
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Sean Wang <sean.wang@mediatek.com>,
 Landen Chao <Landen.Chao@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
References: <20220426134924.30372-1-linux@fw-web.de>
 <20220426134924.30372-2-linux@fw-web.de>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220426134924.30372-2-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_084238_468880_2C252B91 
X-CRM114-Status: GOOD (  12.45  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 4/26/22 06:49, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Currently a reset line is required, but on BPI-R2-Pro board
> this reset is shared with the gmac and prevents the switch to
> be initialized because mdio is not ready fast enough after
> the reset.
> 
> So make the reset optional to allow shared reset lines.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

This looks fine however 
Documentation/devicetree/bindings/net/dsa/mt7530.txt still has some 
verbiage that suggests that the 'reset' property is mandatory, so you 
might need to update the binding (and as a separate patch we should make 
it YAML).
-- 
Florian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
