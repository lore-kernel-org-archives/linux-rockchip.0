Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E45ACC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 21:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fOHxnZEPA9wQUva8LNHDkGALg0mM/Saznvhr/j6nlg=; b=ABden5m8VktDXQ
	Gx+B8VZfFtjFRQSa/VMAbTOtCZ/TTIiB4Pa7UB7Fu+gFvNIxBQ8cJn99ZpZSJJWRiLmEFCVoJKyPp
	pZ57vJv1WCIDSHGbUHMMoGiWqWQogx08BHothRzzCh9cLpOLCqQpoK7pLYxBiC82SmJuGuZh1sZvH
	aIeGCkQ/t749kfJ8O6gqz9b3wvyN1SXmyG/7Xh65s9+0Xa4TvUqomBIhbLCW6jCkxUxxGGCbuoCva
	JT9UQVfah/5hBknlRdSGfDP/u/rd3Kr436VBIhMhtBai+9kIZwvjNFZPwNkTPxXsZ0ePg76R1yiwL
	xV2yE/Qnb6/xVpjwRi0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPWDu-004B46-WD; Wed, 02 Mar 2022 21:09:27 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPWDs-004B38-EQ
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 21:09:26 +0000
Received: by mail-wr1-x430.google.com with SMTP id x15so4700027wru.13
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 13:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=+SuWPZ2e/7zeEhPWaoi9jelX8WbYRm2ComoX27Rv4U4=;
 b=UKsy+0FXcuJ8Do65rOR9YbcsdUErJHZHS65EmTolGTe9BMmpHY619TGTyBALKgJSQV
 /i1o2tyB9QPtreYoRnIMoLZbDG5n0xaQdAS9OuAhsn8YYqeCNQXP7+VjbkJdmFP66N1B
 z8yQfrvD57bI9vn9nkGNVFzb3IJcIPmS4qZbw4d1GxTNx9FIRRuvvcp/20Bi1hUcPcXq
 1hERbZ3B8OhnuXlZidtmDufDMZ/s0ECxo6n3cVUnCFhP16ENoYDKdc0fgbCEviNgkzHa
 B1gumXaSx6XNweFhIzz6O6zFFm5tpE7+FudcurirFwo8fw6q/vXR8emE33TcuIBitk/1
 1u4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=+SuWPZ2e/7zeEhPWaoi9jelX8WbYRm2ComoX27Rv4U4=;
 b=zEiongMuGtRZiBz1H7Xzsx2mEiNIi8RRusT7N443tV+7pOjM5+WZoc2QJ9cTfZ6tXv
 SDlcyQSZBOGtwJYLtR1E0bMZU/rU7PYv0OQX4Mz9bVALryUFib98yRm3dZx5LUnA12ew
 uhd2tmmIt4xjJDtNUrKKtfLtUa+3GrjUVFee2aQ6nB9cXew3z2P+m0EGXevyAe20gxXk
 kYBLJYVKmKu5kdaoMsVXNzd0zjxbCEBVnvKfU2aSyvf3yVRFRt8qguhUEohBcapJhgFk
 C8juG/r7ANZw3Mfby1kx/szbeJ04tdiaxNWfA8ApMAQJgA8HzYKTddKNo7k+/FEjSP+Q
 9K2Q==
X-Gm-Message-State: AOAM530eAt/FTG/AQLMvdIbaxwljaRiReCvfgksAo/BGaQruwkpKlynX
 W5gJUItJ8ZCAkKHRbnj1w/KDx/q/gUMQSA==
X-Google-Smtp-Source: ABdhPJw1KQWknFtoCAT+qBKsppNuuDAWOhAm97zko+rTSN6HXr4brTteq/LgXKaMD610Tg1naQiAlg==
X-Received: by 2002:a05:6000:50a:b0:1e3:5af:153e with SMTP id
 a10-20020a056000050a00b001e305af153emr24268852wrf.385.1646255362131; 
 Wed, 02 Mar 2022 13:09:22 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 j27-20020adfd21b000000b001e519f3e0d0sm118605wrh.7.2022.03.02.13.09.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 13:09:21 -0800 (PST)
Date: Wed, 2 Mar 2022 22:09:19 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: John Keeping <john@metanate.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 10/16] crypto: rockchip: rework by using crypto_engine
Message-ID: <Yh/c//qzz6c20NI6@Red>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
 <20220228194037.1600509-11-clabbe@baylibre.com>
 <Yh4YLGeaXAzzr+PK@donbot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yh4YLGeaXAzzr+PK@donbot>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_130924_493230_392BE6AC 
X-CRM114-Status: GOOD (  14.95  )
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

Le Tue, Mar 01, 2022 at 12:57:16PM +0000, John Keeping a =E9crit :
> On Mon, Feb 28, 2022 at 07:40:31PM +0000, Corentin Labbe wrote:
> > Instead of doing manual queue management, let's use the crypto/engine
> > for that.
> > In the same time, rework the requests handling to be easier to
> > understand (and fix all bugs related to them).
> > =

> > Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> =

> In addition to the warnings reported by the kernel test robot, this
> needs to add select CRYPTO_ENGINE to Kconfig for the Rockchip driver.
> =


Hello

Thanks for the report, I will fix this in v2

Thanks

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
