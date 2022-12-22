Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A5F9C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 20:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ndp4SdHc7GyUjM9eKEGBS485SkWntbXJ68reH9uVMoQ=; b=hrr+4/68hWQ9LW
	nQ+9kn4WG5H6yD9igFze435UAoIxoUTDypicRoCLdgCvz6xTz4OMcYh34987jryHFjjB0Bzcdaz7J
	yx2qmTXlJ9ovpxomtTt/1K6zFEkwDowddDe0pAsUDXYJ3nKMvbiOr/9OrGrT+UPmjstdMNoSnDFMl
	r5rH8mXWvkZLDV9RocN4bGbm9O+GR2BXSy8TlmYaS2ese4Bm70IeW7e4p42A4KUvSeZn6R8eRBn0K
	uamXf35XKWmjJUxzs2BROP3jQ0j/Ulw+BfBsHCFPoHj9ySzt/6IoY3C0la1AJUSvFhGoOnQ34IfrZ
	wue5E6P7KKehjx4Lp/MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8SAC-00Gs9A-My; Thu, 22 Dec 2022 20:27:36 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8S9y-00Gs4M-Vi; Thu, 22 Dec 2022 20:27:24 +0000
Received: by mail-oi1-f173.google.com with SMTP id u204so2416359oib.7;
        Thu, 22 Dec 2022 12:27:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ifO+UAb4xNHYoZtmeqbH6nY6NZq3pB8gzBwpCbepYe8=;
        b=PoCyH9gry9eM3+XF9HUjxlQaITH9lwsuHK0G4KcOdRR1rSdYBPmqA0H+BQk63PHx5K
         CX9fbuutw4nU+VIrny6pAGssJUVLQyYJfTTqyGJSRjxv/S1QEie7M6JLX5tZddhpCwWh
         xcQ0XHFT6NdbdRRwuyV+ftSz1kuSCNCMT5nvX73ueFoZQD+pBey14yYfpFCSKvvKc4ng
         Lc2FWggrwbiO++HLkpg2HFUmDumX4u33P/lMCLD+T+KnHqzEbto8+h88B1O1nYtkeh7V
         G2GrPMTZBWI3DUcEA8QBjI1NA5bAwvg5qyqjt5o/8eWSRkVfB7YZWt0Xid8yyHLAxcRo
         TmIg==
X-Gm-Message-State: AFqh2ko1oyBnuYsofwYJW15LTzaeWvYnhYpEa/g3/+nSCKL+7MsKr8ps
	uV7V0IWJubpc4/ajw3olJg==
X-Google-Smtp-Source: AMrXdXsNV2YU4gEBnEdlry3c9jg4+8vMg41WSp11kX/VLN3MsjK7Vxqq46+/Co64urW6ujdTjBb0Fg==
X-Received: by 2002:aca:3205:0:b0:35e:b08e:13e with SMTP id y5-20020aca3205000000b0035eb08e013emr8711520oiy.18.1671740841648;
        Thu, 22 Dec 2022 12:27:21 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id l1-20020a05687014c100b0013b92b3ac64sm687863oab.3.2022.12.22.12.27.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 12:27:21 -0800 (PST)
Received: (nullmailer pid 2067521 invoked by uid 1000);
	Thu, 22 Dec 2022 20:27:19 -0000
Date: Thu, 22 Dec 2022 14:27:19 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: inki.dae@samsung.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, daniel@ffwll.ch, kyungmin.park@samsung.com, airlied@gmail.com, robh+dt@kernel.org, alim.akhtar@samsung.com, sw0312.kim@samsung.com, linux-samsung-soc@vger.kernel.org, jernej.skrabec@gmail.com, robert.foss@linaro.org, linus.walleij@linaro.org, jonas@kwiboo.se, Laurent.pinchart@ideasonboard.com, dri-devel@lists.freedesktop.org, andrzej.hajda@intel.com, hjc@rock-chips.com, neil.armstrong@linaro.org, philippe.cornu@foss.st.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v6 07/17] dt-bindings: display: rockchip: convert
 analogix_dp-rockchip.txt to yaml
Message-ID: <167174083761.2067426.17125312795413534693.robh@kernel.org>
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
 <88a5a9e3-9bc8-5966-22ec-5bdb1fa7a5b1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <88a5a9e3-9bc8-5966-22ec-5bdb1fa7a5b1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_122723_049986_8291FBDF 
X-CRM114-Status: UNSURE (   9.42  )
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


On Thu, 22 Dec 2022 15:27:35 +0100, Johan Jonker wrote:
> Convert analogix_dp-rockchip.txt to yaml.
> 
> Changed:
>   Add power-domains property
>   File name
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../display/rockchip/analogix_dp-rockchip.txt |  98 -----------------
>  .../rockchip/rockchip,analogix-dp.yaml        | 103 ++++++++++++++++++
>  2 files changed, 103 insertions(+), 98 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/analogix_dp-rockchip.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
