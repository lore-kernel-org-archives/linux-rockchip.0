Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13FBAC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 May 2022 17:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjOa1sOXZEXYB7KfbDebmn+46s63gfb42nKTyhFFzL0=; b=PFLbzrFt7TV3JM
	bhD9xVSRWvh694ghBfPXyTFLgW7b07UmXVWXs/qhSdjRNC23KdmKr6p8E6c5eIcSUPPsOnGjLsfFR
	rj8cElSwNIsV2YJSGcVBLoEV2DRU5HyJLXLD7WHK8yACBOZGo0Qs9GL2RU8Me+tIOB8CTyq7/72t1
	npqtnilef5Ud33ggtLVzy5B1Elg6ZzADBmoevodY4DuIslPAqAzsenK6Ei+D8+xCB3KVfnJT45Q1s
	DSuq/j/N5k/tAVHs8UDF7oJr/ZtISgRBpLWzMDUyvKlvbAUDNhp00hQBlmPbewgRevw5Y0ct/n1Sn
	etWxw4Tr6c5BqgX6wqVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noTXg-003LDt-MD; Tue, 10 May 2022 17:21:00 +0000
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noTXT-003L53-FP; Tue, 10 May 2022 17:20:48 +0000
Received: by mail-oi1-f169.google.com with SMTP id l16so19238141oil.6;
 Tue, 10 May 2022 10:20:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Hl+EeVfg1SG/ItNk+3j3E/1KiMEoNYf4v98cMSThK0w=;
 b=WhGJc+4duuX6xbVtlhU56G7J7iipaWXQb1WFoAdPlOzIgWFN1bEk2iqO/eKdmkST2F
 zek788LcRs6ndtwwKUG1gZ/Noix/T9L76IAHkep4B7Duqpk51X2+qWOEKqtziKo1nE1V
 BvJNNASduXPBPqfAqHzBH4tAsjK/vFUOEL/IXP+W4MFSMcVKFJOrXgjrvsl48XO93U7g
 7D1h9c8oQB8TC1Kbu5TZRdRzW1EdPuwCeAFisAMFnwPcV+mUqgAtYwVMZ/h27sUYo+hP
 6oNW4dI7d4QWPVnSSHF6nz4rBRkU6pktH0i2lAiFWVTdfU/LKEBjXjVTtfnfUHXhq+bJ
 4dWA==
X-Gm-Message-State: AOAM531sWy00AqEXfrfpb32GKQLhw2bXDZ+38Eq2JqGFcnCRbF71Htav
 zhvRall34L9azuWtTvs+YQ==
X-Google-Smtp-Source: ABdhPJwOTBdtvBdyjzF02XoaWDp7j9xraOoLUddz7oDSgLQpivKx7ligBzBxctKoqc23aW5jjq4W7w==
X-Received: by 2002:aca:ab54:0:b0:326:af63:7a7f with SMTP id
 u81-20020acaab54000000b00326af637a7fmr570106oie.26.1652203240858; 
 Tue, 10 May 2022 10:20:40 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 i10-20020a9d624a000000b0060603221267sm5934704otk.55.2022.05.10.10.20.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 May 2022 10:20:40 -0700 (PDT)
Received: (nullmailer pid 2230997 invoked by uid 1000);
 Tue, 10 May 2022 17:20:39 -0000
Date: Tue, 10 May 2022 12:20:39 -0500
From: Rob Herring <robh@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 krzk+dt@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: display: rockchip: make reg-names
 mandatory for VOP2
Message-ID: <Ynqe5zcWZw8KJMl1@robh.at.kernel.org>
References: <20220510070914.2346011-1-s.hauer@pengutronix.de>
 <20220510070914.2346011-2-s.hauer@pengutronix.de>
 <3353209.QJadu78ljV@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3353209.QJadu78ljV@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_102047_560511_A4E3F738 
X-CRM114-Status: GOOD (  15.76  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, May 10, 2022 at 04:08:02PM +0200, Heiko St=FCbner wrote:
> Hi Sascha,
> =

> Am Dienstag, 10. Mai 2022, 09:09:12 CEST schrieb Sascha Hauer:
> > The VOP2 driver relies on reg-names properties, but these are not
> > documented. Add the missing documentation, make reg-names mandatory
> > and increase minItems to 2 as always both register spaces are needed.
> > =

> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> =

> I'm not sure how the DT-people work - if they only track the devicetree l=
ist
> or their x+dt@kernel.org accounts or some mixture, but the patch was
> missing the maintainer email addresses - I've added them here now :-) .

I only see what is in DT PW. Since I'm copied on almost everything that =

goes to the DT list, CC'ing me has almost no effect.

> The change looks good to me and as I merged the original binding
> into drm-misc only some days ago, we also don't have a backwards-
> compat issue yet, so hopefully DT-people will think similarly .

It will fail checks... I can't run them as this doesn't apply, so =

hopefully someone does. Or I can complain when next breaks.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
