Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ED29C48297
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 16:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYRCdC48DjPQ9n7ptOjsNaYf0Vk7Mz9/0U1pvljdNHk=; b=eT/d2sidsYcKaX
	GByuXc1yLUSylmRNFdxz/HNQ+Uukps6MAzYDlsLJrhG+dMslJNsk4wrss1CU+t3ZjsiKQDMCNo0T9
	IVlnvQNVPEXnNagkv7YPjsfxrPQGIPCv1OLYEplrAXVc7SDzwE8wugaMbATMXsvpVxpDWWV8Gu0aH
	ujXqEpvwjvSIheHBmFdWaseHF/BIHYrgacxUh/EcPmNWyxBFf5XcaC6s9cOrl/WLJAgq4ssgBPmkj
	kRGyGI96NbwOCF0W4SLpY6UK/mZP62bZohS7QlFKhsz1tVh7koz8oR/KCeTREQqhxKPP+TS8+5D6L
	uUkSspERSRKPjosSjB0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZZQT-00000006EA4-2f0C;
	Mon, 12 Feb 2024 16:45:01 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZZQQ-00000006E8G-2pld;
	Mon, 12 Feb 2024 16:45:00 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-33b86bc8974so500187f8f.2;
        Mon, 12 Feb 2024 08:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707756296; x=1708361096; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aogiPWx9iamxsGoJiTEZzs3mhZ4z87cPE84LPd+suNs=;
        b=Uui4XVQ0INtpLz8ZsUCVgtc+T+ih+z5buhUfF24KSpH+7+Ttk7TRqX7psI6EmiGC1C
         u8lSVESFOtRYgQg7UEsd9dKcDq4oREYKPGneA5xwxtf8vWMOj/0GIeQAdKX3ck2JKqFd
         FNx2MBSWd2RQboZ1d2oz210OtPXD08BsgblV/Rj4ZQDz0gIAkEXFTJBDvMdcLuLtYO8o
         9yRbyev4hK68wOfIcZamxmK3oLLr40lEGT6YHmA9BNkv2pvYj8sO7l97NpROLKXxCQil
         wuMMHNIjhgCC6y/8meQQQHNznVUZPK30uju3TMZKt9H6tv4+GJ9Ar3GGaUmsLdSQzAEY
         YC+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707756296; x=1708361096;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aogiPWx9iamxsGoJiTEZzs3mhZ4z87cPE84LPd+suNs=;
        b=n0Zw/ZYyxr+W3KJtwywJpAYNkYddJZA1QeJpMXDqvbBoS3B+umTPJVj9UxUJizm1qh
         7ZqcUR9HoLb6xNn/MjEPCjYhnKvBjxTkDNmDTpreefOYSS+4k4U8G0hRzl+Ij6sZDod5
         k2uQ2bYl+mSog4cM7kO+VB0GChNveTeTXb1QQsZr4VzMfeJc2KRv2fpAWZbmS3bx2LuT
         6Btus4Wf3FKAo3zKONRc0fgMLTk3JiDXm96mZy5RWdaRJSmYIs8ZoxeP146p4LsLhQY7
         wDwSJkjhpinnypecpKm3QCP2wnH1cyj33R/xHyXAcXF/DGdjN8lg1MXnxyQ46ZBod3xd
         rTBA==
X-Gm-Message-State: AOJu0YwwowUlWGW8zwJJ3qDXvuqc5rQTfhkBgc/4JcJf/Whcg901MbK6
	pCR0K49MwwbpK4PrxtCa4S6XQqOV3IS4bLdyZkSu5biv5p7CwQzN
X-Google-Smtp-Source: AGHT+IE2bXWI0Cjr/ufrLe9ZMhXhO3vMwdu8pOdp7/5tmJ3s20byT+ET+47/262D86z59Rglhlix8A==
X-Received: by 2002:adf:f050:0:b0:33b:4967:4d2 with SMTP id t16-20020adff050000000b0033b496704d2mr5545729wro.41.1707756296237;
        Mon, 12 Feb 2024 08:44:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVCCznL4B0+Zm2htBLr3PiX2fwM06xhFy47awuh1W5sFjX6kE/NdvRa1VsW8o2EiNOyLJPpqDqnpRDm0A0virs6YAXAs1h+y5dAxKaWtTGGJmnWWeCrWifXynTD5NoZ5IWAwPWi9OFwgd3Kty8cGZk9M6DK1wjfo5HdKHtZO8AAepEqJjcpKF1Sztvp/dEMQn+D2P6JSrcGGsFoleyWTEPiWg4wsYu0Ly8YwjU17jLKHi6YkDIqNmc+2G7d6kLXRtJjxmxKPSUtiQC01KhIrnCnDdl0feWeSQTiADdogpq7NhOVI2TuznpdolRtXcL0NDPmpO0ol8BnWjCn185qaHb2QMyp4pCxci5B+P34vUhOUkEwKo3099qqeotcA3DG7cCc7nHWrFdlIe6ZHsQog5wKhzoGwOAzxHhTCLDeFCOQ5SJvFbvi5pa73e7FbnzSrh6XmaRBRKJEe0FlCjjqFNF1yWZWEIpPUP7OMWVEQJGhAme+ZI27yBklbw8w8HiVZtU3GEmL3hVkbhmomWScym9ZG7RVKPSx+x1wtjsFUz1jYSSDSaraXx73+oNLd0vYPlEvA49ICyZM84zKLm/gc/vqQ5hfr5H8JxZTl1M66F8PyrAnBCoNupbTquNGMFJvl5jpVKBh
Received: from [192.168.0.9] (cm-83-97-153-254.telecable.es. [83.97.153.254])
        by smtp.gmail.com with ESMTPSA id v7-20020a5d6787000000b0033b541e987csm7206803wru.33.2024.02.12.08.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 08:44:55 -0800 (PST)
Message-ID: <61af7b121b23fe8ed06df5348692f862b9b125bf.camel@gmail.com>
Subject: Re: [PATCH v2 2/2] phy: rockchip: Add Samsung HDMI/eDP Combo PHY
 driver
From: Luis de Arquer <ldearquer@gmail.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,  Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Philipp
 Zabel <p.zabel@pengutronix.de>, Algea Cao <algea.cao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, kernel@collabora.com
Date: Mon, 12 Feb 2024 17:44:43 +0100
In-Reply-To: <20240205-phy-hdptx-v2-2-a7150814c047@collabora.com>
References: <20240205-phy-hdptx-v2-0-a7150814c047@collabora.com>
	 <20240205-phy-hdptx-v2-2-a7150814c047@collabora.com>
User-Agent: Evolution 3.44.4-0ubuntu2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_084458_747991_FE2EB51A 
X-CRM114-Status: GOOD (  10.02  )
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

Hi Cristian,

On Mon, 2024-02-05 at 13:24 +0200, Cristian Ciocaltea wrote:
> +
> +static bool hdptx_phy_clk_pll_calc(unsigned int data_rate,
> +				   struct ropll_config *cfg)
> +{
> +	const unsigned int fout = data_rate / 2, fref = 24000;
> +	unsigned long k = 0, lc, k_sub, lc_sub;
> +	unsigned int fvco, sdc;
> +	u32 mdiv, sdiv, n = 8;
> +
> +	for (sdiv = 16; sdiv >= 1; sdiv--) {
> +		if (sdiv % 2 && sdiv != 1)
> +			continue;
> +
> +		fvco = fout * sdiv;
> +
> +		if (fvco < 2000000 || fvco > 4000000)
> +			continue;
> +

What about adding a check to data_rate, maybe like

if (fout > 0x0FFFFFFF)
	return false;

or similar, before the for loop, to keep the multiplication safe?

Right now it would be redundant, given that data_rate was, at some
point, encoded in 28 bits within bus_width. But can prevent future pain,
especially after changing to phy_configure_opts_hdmi.

Luis

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
