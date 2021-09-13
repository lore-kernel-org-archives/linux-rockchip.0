Return-Path: <SRS0=UDy9=OD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D3DDC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 12:36:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4467660F6D
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 12:36:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4467660F6D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BmKWhWp+9nCPLYHRy5hSlnjbvCO0ACzBHK4mRJ4GgMI=; b=ZEJhQiiI/q9QJH
	ZGyNn92WrFy4dPNf1dPT5n3yetceqxZAiVukaahBwwJ7HD1GQreqGpDFLAANpYXcuxSAO4YQIeRqI
	8suCn9WUKPkPSnPTu0XAkNpNDKE8Ynt7owUeDXpUKpj53mk2LL9ImTFDTxLJ+K0XxzPNYvhcaTME/
	wsTYZsJ+OyKS5lRTWzUWicvi9TxmwhsvGfPZkd9q+iJS1zceOPJ3VBTcFCBjVcZjBTH1is4mFHzfS
	lGwWkdoN2oT5nHmGAb0OBGsTW+WnPNC3mg1+RDWQ39xG1JEtYWkt0LMieyfuJez+sf6Gu3WEkFAqm
	I716GEcKPDZuBEqDdXYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPlC9-001bMO-QI; Mon, 13 Sep 2021 12:36:21 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPlC6-001bLX-IL
 for linux-rockchip@lists.infradead.org; Mon, 13 Sep 2021 12:36:20 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id i12so19884671ybq.9
 for <linux-rockchip@lists.infradead.org>; Mon, 13 Sep 2021 05:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8/7I4pp3bCeX5QtDeGFLNRIAdhczuRGJY+RZHqPbZaY=;
 b=v4RvoaeIBbVIdxvY8xRQ4WL4/b7BIh5z4yAdugyL3U40o0OAox8l/o86/wCLeuSVLY
 SkFl2x/4cP7fQHUKJB8Lum7jMTkL+sdW7a2alYIYIXzR0hK+km75ixtIK6FVRwCa1zwb
 Mrpaa3nC7c3HRCbgxOJjL40Sl+/Caliwzv1Lmb4FnJx2C+rIF1+zpzyjAIqHeHAO4cOz
 ew07jy2l/SUzCzjyxoGsRJVgwl7J9IxvHXVdwboZxIMKtsj/QHOe0G2/54yqlAI76mpi
 PdjYXZpimIImuJDxV+h7gP1v/xG11paG1BAUkn6RKxGfoc8sshK0JokDrcZIpsXsUphJ
 RCFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8/7I4pp3bCeX5QtDeGFLNRIAdhczuRGJY+RZHqPbZaY=;
 b=fCa35sxFBVFYgmjuGP2eTRXun2CkuMXI1yvOujErckt26KLKyw8Pn6lIBeFou/8Agc
 1O9qrTFUT+HvtgK/EYIUC03SkC99RNFQABykFgmM4AR3IsbqvZT15HIkymwlp2kOo/AT
 qxG6goKj6WPp7EyeSIFKTF12FB9k9qbOUvRMoedwHPyHn0KGEqzXnjIPbqMbY8iFyeXr
 Ebeahy0gRkxUsVXb57MWQDyK+D2zeI0KZLT5tETYg9CgMsVtrdPCsG7jkLhK7hoCQVx8
 NLDMX0KxPiXx+AChCNhoNeULI15VXqg5xUw0QsiJdW73HAy6t2a1/z5ZkVwrpSpWZeFm
 0k7Q==
X-Gm-Message-State: AOAM531jR8IpPbuclIbPwTVrgyf8LceS+m1ipHj0SHzffDdP7hdbCXG1
 E40Gq7stQenoOKONz9ovCO6Y3bW1hFSR4aDRjNA+7g==
X-Google-Smtp-Source: ABdhPJwxn1AKm92da/Waw57h9E+5bL6agaUKuU1Ri+g26ebKDO6jncg+nkjCj8CjiBlxY7UbSLfr+ulCb6LaiDBmvtI=
X-Received: by 2002:a25:388c:: with SMTP id
 f134mr15710121yba.209.1631536575709; 
 Mon, 13 Sep 2021 05:36:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210828121007.14865-1-jbx6244@gmail.com>
In-Reply-To: <20210828121007.14865-1-jbx6244@gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Mon, 13 Sep 2021 14:36:04 +0200
Message-ID: <CAMpxmJWncsMtjsjZY7c5aOtvf0+gxgui=yu27acouO1XjaGq7Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: add gpio-line-names to rockchip,
 gpio-bank.yaml
To: Johan Jonker <jbx6244@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 linux-gpio <linux-gpio@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-devicetree <devicetree@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_053618_674316_D9321CFC 
X-CRM114-Status: GOOD (  14.68  )
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

On Sat, Aug 28, 2021 at 2:10 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Some people and companies may want to add more description
> to there gpio pins. Add a gpio-line-names property to the
> rockchip,gpio-bank.yaml file to reduce the notifications
> from the existing mainline DT.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> index 0d62c28fb..d4e42c2b9 100644
> --- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> +++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> @@ -29,6 +29,8 @@ properties:
>
>    gpio-controller: true
>
> +  gpio-line-names: true
> +
>    "#gpio-cells":
>      const: 2
>
> --
> 2.20.1
>

Applied, thanks!

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
