Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3437CC2D0A8
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 14:01:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B43A5221EB
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 14:01:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="YHY3pEnX"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B43A5221EB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D+CGs8sFowi6eklIG3EjzZQllCrnLrFCHRnDfwudExE=; b=YHY3pEnXHSpitE0wJR7dP+Mts
	71msr03ZWRGVpr/iS+vVYk/ACL2P06tSgo7RG+83zQu8LyNHyU5wutQ208WmBnNZCyVuIaNBFqaNl
	C1PEeLTZ7E4/Mi6FFgvEIIxjohQVyNBaRhOTgAsCDU6hBA732ZgsTRVx345lx8IkNC6W/yCn2QtcH
	mzjl23CrS+orvgRNRZCPYjY0+/rwW2WxpTZJePoakL8lGnGAmcw47r7h5Aey2ylOuOe6ZE/VQBFlu
	gsxblA1H6fPZblG0Z2lL41R6Kq98K1o9fZFSd7fkyD5JNeyJqhPNyscNlN0GepCXRe7nsuv8oiuPv
	ixJEh/iAg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kL5Ka-0003jp-8d; Wed, 23 Sep 2020 14:01:12 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL5KV-0003iY-HN; Wed, 23 Sep 2020 14:01:08 +0000
Received: by mail-io1-f65.google.com with SMTP id v8so17033344iom.6;
 Wed, 23 Sep 2020 07:01:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=q/hlUq8eobAiNDFlqZ0J4DKuozfT+DsWKCaiVpcoTk4=;
 b=g6lP1xTWopW5eZiMveeu3lgPdcyhnl0htSKPxys0DiH49qxThy9CLYIwelveKuKhpJ
 3i/eKllDUniH71PVniehljvmyaF6wc+4PrpHDOzC8NZ7RBGiUk9UrKLW5vk2c0w8DN+I
 be46AVjWKFdchidNADVC4pqz4YjtvSv4sUpVEcdZdzcf2Lhupjyu1o2Gzc6yptcqqxp/
 tefNEgF76rFK7v7zO4/ElznmNMIk94pfwg08mEdI4Vt92IV6BoSrtjTfUWuz2mCIYT5p
 MWkJjP2kWVZxmXE7lE4zTjNnnEQMlWWy2f0Pper3BDSp8pXkDArcwVxvc1sirzacZMoI
 rR7w==
X-Gm-Message-State: AOAM53020jiThTEExmBdbezn3E7Mg5DXDq/fw4VWPplC9yArJMxhrbUe
 mtioV3FcexvLK84pQWZX6g==
X-Google-Smtp-Source: ABdhPJznZjM8RaB9aIdih0M5tEoPWkoWPTVzxIxxSw1QLzjFSVZJpxrNBxqIO2viIsDgtS9I8UaItw==
X-Received: by 2002:a02:69d1:: with SMTP id e200mr8447649jac.96.1600869666402; 
 Wed, 23 Sep 2020 07:01:06 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id b3sm8484259iow.28.2020.09.23.07.01.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 07:01:05 -0700 (PDT)
Received: (nullmailer pid 638883 invoked by uid 1000);
 Wed, 23 Sep 2020 14:01:04 -0000
Date: Wed, 23 Sep 2020 08:01:04 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: Re: [PATCH v3 1/3] media: dt-bindings: media: Document Rockchip VIP
 bindings
Message-ID: <20200923140104.GA638635@bogus>
References: <20200922165535.1356622-1-maxime.chevallier@bootlin.com>
 <20200922165535.1356622-2-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922165535.1356622-2-maxime.chevallier@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_100107_615610_1857A0C9 
X-CRM114-Status: GOOD (  14.54  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 22 Sep 2020 18:55:33 +0200, Maxime Chevallier wrote:
> Add a documentation for the Rockchip Camera Interface controller
> binding.
> 
> This controller can be found on platforms such as the PX30 or the
> RK3288, the PX30 being the only platform supported so far.
> 
> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> ---
> V3 :
>  - renamed the controller
> 
>  .../bindings/media/rockchip-vip.yaml          | 100 ++++++++++++++++++
>  1 file changed, 100 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-vip.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-vip.example.dt.yaml: example-0: vip@ff490000:reg:0: [0, 4282974208, 0, 512] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-vip.example.dt.yaml: vip@ff490000: clocks: [[4294967295, 179], [4294967295, 249], [4294967295, 352], [4294967295, 52]] is too long
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-vip.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-vip.example.dt.yaml: vip@ff490000: clocks: Additional items are not allowed ([4294967295, 52] was unexpected)
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-vip.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-vip.example.dt.yaml: vip@ff490000: clock-names:1: 'hclkf' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-vip.yaml


See https://patchwork.ozlabs.org/patch/1369131

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
