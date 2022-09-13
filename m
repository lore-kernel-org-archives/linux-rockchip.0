Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D12ECC54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 14:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWylqUseWyoDjIgE0xgIDaT1im4YLpX+IkpO0vDjPZg=; b=ZAfdGyUV1s49To
	a0vR2yo1o1T/v1da7N/2jr6kfoE7bbiRPQZ+8JW1eTEoEJTKqY6jtp8VctbBMAMn0eVe/LyuC5YvK
	wAFkHlJYQU1f7FmV84AnUaripUmv1Ipnlzjm4Qo6kn7Db929YxTR2XrbmMbT7ShAYeNgMjsGOvKic
	6ODpn8zmropv4hdB36rZErtvKCKgj2Po1Oe1jmDUxICYWnoHHqhx8UcHD64tpGWNTkb6w/TMVh0GG
	FXe1LtplafLNRPtoFmKg/czBwL5zHqwzsl1UpbwDu4y6qiVvf5zcG/s0X473RT7lYwrIVorJMsiP/
	2qbCXmVyv+STu0l+bLEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7BZ-00Bsap-HY; Tue, 13 Sep 2022 14:46:50 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY6rp-00BZZL-Jr; Tue, 13 Sep 2022 14:26:34 +0000
Received: by mail-ot1-f52.google.com with SMTP id d25-20020a9d72d9000000b00655d70a1aeaso5114993otk.3;
        Tue, 13 Sep 2022 07:26:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=4gw0CfqCHcXqAoTLFj5CKupMrM0B3+NLn0hUfShCnJs=;
        b=g37958ZODSD3laoxQa/9OW4+6U7R4FDCAXpqZFe9ZKEmkp7yBXHaxwTEY3fcbzp/B+
         JfFcPw0ye23Ytdlcwb89NLhDTkIHFjSL16XjOOTytR/Rq1GrkDiYoFF0ETjc6jYPzVJK
         SfW+V6tZQuEXGLbB5eb9/lC0tqfxnA/35S3IXpgrXFComDk0WMufxG7hJ46IEtQ+h8Qj
         4+KIOTvLf2MqEQqlqcj5Jj4vyEbDcJlTIl922HXf0mTv0Dhgrsxlv/vnVA+wyf4rBv88
         4iVkzA9P+YaZGzYdPZewCdC5zc0JhtxGKADf6e3ZbtLJu5u/NR27Fl9Y9avyMteZaC/D
         3erg==
X-Gm-Message-State: ACgBeo3XLokOp/9NuwUFN6H1CO4Jy/LeE6JwNx4yUtfbgGNFPQDuKYTq
	2AJ30I8Pvgd/ojwACj1W3w==
X-Google-Smtp-Source: AA6agR4n0Ns56EN8nmYZqaKfPiqFjPvLKM2zBkaiEJuhTpw5P4+YOL15TzmiGoYt1IKTERcqsRj7vA==
X-Received: by 2002:a05:6830:9c8:b0:654:d91:222 with SMTP id y8-20020a05683009c800b006540d910222mr9721862ott.67.1663079183487;
        Tue, 13 Sep 2022 07:26:23 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r6-20020a056830418600b00618fa37308csm5999103otu.35.2022.09.13.07.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Sep 2022 07:26:23 -0700 (PDT)
Received: (nullmailer pid 3620466 invoked by uid 1000);
	Tue, 13 Sep 2022 14:26:21 -0000
Date: Tue, 13 Sep 2022 09:26:21 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: kever.yang@rock-chips.com, jamie@jamieiles.com, philipp.tomsich@vrull.eu, u.kleine-koenig@pengutronix.de, linux-spi@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, zhangqing@rock-chips.com, linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, linux@roeck-us.net, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, kishon@ti.com, linux-pwm@vger.kernel.org, linux-mmc@vger.kernel.org, sjg@chromium.org, gregkh@linuxfoundation.org, ulf.hansson@linaro.org, linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com, vigneshr@ti.com, thierry.reding@gmail.com, broonie@kernel.org, heiko@sntech.de, linux-mtd@lists.infradead.org, linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org, vkoul@kernel.org, wim@linux-watchdog.org, devicetree@vger.kernel.org, robh+dt@kernel.org, richard@nod.at
Subject: Re: [PATCH v1 02/11] dt-bindings: i2c: rockchip: add
 rockchip,rk3128-i2c
Message-ID: <20220913142621.GA3620421-robh@kernel.org>
References: <20220909212543.17428-1-jbx6244@gmail.com>
 <405db21d-154e-fed0-7524-ace1cef0203c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <405db21d-154e-fed0-7524-ace1cef0203c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_072633_654740_C7098B6C 
X-CRM114-Status: UNSURE (   7.58  )
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

On Sat, 10 Sep 2022 00:02:30 +0200, Johan Jonker wrote:
> Add rockchip,rk3128-i2c compatible string.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
