Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D20C8C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 14:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0lqT2BlDR4/acpm0P1qIDL412i5F568rmcCsnCbQMk=; b=eMe+bkZN1r3mGO
	sCgDB2gB2xwEj0E3Pgv8RrGtjW1vTJf/Yt/y9pn8aHsZ8mhzNcqighZetyKzCFke6UvmLf+3xX8Xi
	w/VnrXz7RISoUs4z3tTkJT4/4TQUiL1N6LonzQuoIuUKz9OiH6yujBZ9N5MxMxGCNjZXewte+RcXa
	n30cw0XIT0YxXF3tsUiS4LDytSTyzchdoh1yKYADOyetuAiJGQS1pKQcrrrKh4jRNjWiV0E5q7ORL
	4r5kDAsZg1qP31LNaZuvEEeSiOPAcMAXziP5RWDQKxWoxY3nBNM431PLCOCeub3A9HBGICb91sKmG
	aKEvkATF8RFwTCYJ32AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjhdI-001nzX-2w;
	Tue, 04 Apr 2023 14:27:36 +0000
Received: from mail-il1-f177.google.com ([209.85.166.177])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjhdF-001nxQ-2M;
	Tue, 04 Apr 2023 14:27:34 +0000
Received: by mail-il1-f177.google.com with SMTP id u8so17153431ilb.2;
        Tue, 04 Apr 2023 07:27:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680618451;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E5fCjkpzhMrLdCd6YE6Gj8KInI7KEOI/E2WjYOm2J5E=;
        b=OjaUw7EUJU4rx5FtXEctgYkvS3Ixs4UmzJVceX6KNoxgkn5rJlVz7xkX5nF3p+RsHE
         NsTJHbgzMgaEKfRkUa+7HeUzX9j0bo6GeFveSa/3sEsmHbhGsjZDNYA01pDAczw1px0H
         H/yr8XMAwTD+W99SGo5p70uc/HA+5NVjvKKiIBqOS+G59Px1sKKAP+XCptuckY+6e7A9
         DmQtdj/4tJqWTUH76lAoJ5qIEIX9o9yvNrNBVQ1Wz8oyruqoUUdhst1JhNsOV94sz9WL
         o2ih52rsimCwBIDG9SIj0kt9iThgvIyTNngfyraHm9FF/P79TGE947mNO+ylqxi38Y5r
         DzZA==
X-Gm-Message-State: AAQBX9cojMVECE05vfsNju5EGvnIVJsqec2vsiygvf3tHm/lPV+cCvvI
	GdOBprp4UBePEVnzqJM5EQ==
X-Google-Smtp-Source: AKy350Ybe9J9RjgT9nlmTSU6u1gQPWSSnkUo94oqYTwSnLUpGluAy7QTWx0ofhWEzV3bvW1FerTVqw==
X-Received: by 2002:a92:c80c:0:b0:326:2c14:a718 with SMTP id v12-20020a92c80c000000b003262c14a718mr2808220iln.32.1680618451529;
        Tue, 04 Apr 2023 07:27:31 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bm12-20020a05663842cc00b0040631e8bf89sm3351879jab.38.2023.04.04.07.27.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 07:27:31 -0700 (PDT)
Received: (nullmailer pid 3836196 invoked by uid 1000);
	Tue, 04 Apr 2023 14:27:30 -0000
Date: Tue, 4 Apr 2023 09:27:30 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, kernel@collabora.com, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCHv2 2/7] dt-bindings: phy: rockchip,inno-usb2phy: add rk3588
Message-ID: <168061844969.3836135.11919397961372852948.robh@kernel.org>
References: <20230403202307.120562-1-sebastian.reichel@collabora.com>
 <20230403202307.120562-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230403202307.120562-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_072733_764754_F11DC605 
X-CRM114-Status: UNSURE (   8.95  )
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


On Mon, 03 Apr 2023 22:23:02 +0200, Sebastian Reichel wrote:
> Add compatible for the USB2 phy in the Rockchip RK3588 SoC.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/phy/rockchip,inno-usb2phy.yaml   | 21 ++++++++++++++++---
>  1 file changed, 18 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
